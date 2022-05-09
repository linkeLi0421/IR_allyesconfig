; ModuleID = '/llk/IR_all_yes/fs/notify/inotify/inotify_user.c_pt.bc'
source_filename = "../fs/notify/inotify/inotify_user.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.83, %struct.trace_event, ptr, ptr, %union.anon.85, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.83 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.85 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.atomic_t = type { i32 }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.40 }
%union.anon.40 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.42, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.107 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.107 = type { %struct.fanotify_group_private_data }
%struct.fanotify_group_private_data = type { ptr, %struct.list_head, %struct.wait_queue_head, i32, i32, ptr, %struct.mempool_s }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.inotify_inode_mark = type { %struct.fsnotify_mark, i32 }
%struct.fsnotify_mark = type { i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.spinlock, %struct.hlist_node, ptr, i32, i32 }
%struct.inotify_event_info = type { %struct.fsnotify_event, i32, i32, i32, i32, [0 x i8] }
%struct.fsnotify_event = type { %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.89, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25 }
%struct.llist_node = type { ptr }
%union.anon.25 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.89 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.44 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.44 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.101, %struct.list_head, %struct.list_head, %union.anon.102 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.101 = type { %struct.list_head }
%union.anon.102 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.103, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.104, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.105, ptr, %struct.address_space, %struct.list_head, %union.anon.106, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.103 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.104 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.106 = type { ptr }
%struct.ucounts = type { %struct.hlist_node, ptr, %struct.kuid_t, %struct.atomic_t, [16 x %struct.atomic_t] }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.inotify_event = type { i32, i32, i32, i32, [0 x i8] }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_enter_inotify_init1\00", [40 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__inotify_init1 = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 1, ptr @types__inotify_init1, ptr @args__inotify_init1, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__inotify_init1, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__inotify_init1, i64 20) }, ptr @event_enter__inotify_init1, ptr @event_exit__inotify_init1 }, align 4
@event_enter__inotify_init1 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.83 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.85 zeroinitializer, ptr @__syscall_meta__inotify_init1, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__inotify_init1 = internal global ptr @event_enter__inotify_init1, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_exit_inotify_init1\00", [41 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__inotify_init1 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.83 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.85 zeroinitializer, ptr @__syscall_meta__inotify_init1, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__inotify_init1 = internal global ptr @event_exit__inotify_init1, section "_ftrace_events", align 4
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_inotify_init1\00", [46 x i8] zeroinitializer }, align 32
@types__inotify_init1 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.18], [28 x i8] zeroinitializer }, align 32
@args__inotify_init1 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.19], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__inotify_init1 = internal global ptr @__syscall_meta__inotify_init1, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_enter_inotify_init\00", [41 x i8] zeroinitializer }, align 32
@__syscall_meta__inotify_init = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__inotify_init, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__inotify_init, i64 20) }, ptr @event_enter__inotify_init, ptr @event_exit__inotify_init }, align 4
@event_enter__inotify_init = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.83 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.85 zeroinitializer, ptr @__syscall_meta__inotify_init, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__inotify_init = internal global ptr @event_enter__inotify_init, section "_ftrace_events", align 4
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_exit_inotify_init\00", [42 x i8] zeroinitializer }, align 32
@event_exit__inotify_init = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.83 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.85 zeroinitializer, ptr @__syscall_meta__inotify_init, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__inotify_init = internal global ptr @event_exit__inotify_init, section "_ftrace_events", align 4
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_inotify_init\00", [47 x i8] zeroinitializer }, align 32
@__p_syscall_meta__inotify_init = internal global ptr @__syscall_meta__inotify_init, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sys_enter_inotify_add_watch\00", [36 x i8] zeroinitializer }, align 32
@__syscall_meta__inotify_add_watch = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 3, ptr @types__inotify_add_watch, ptr @args__inotify_add_watch, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__inotify_add_watch, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__inotify_add_watch, i64 20) }, ptr @event_enter__inotify_add_watch, ptr @event_exit__inotify_add_watch }, align 4
@event_enter__inotify_add_watch = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.83 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.85 zeroinitializer, ptr @__syscall_meta__inotify_add_watch, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__inotify_add_watch = internal global ptr @event_enter__inotify_add_watch, section "_ftrace_events", align 4
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_exit_inotify_add_watch\00", [37 x i8] zeroinitializer }, align 32
@event_exit__inotify_add_watch = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.83 { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.85 zeroinitializer, ptr @__syscall_meta__inotify_add_watch, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__inotify_add_watch = internal global ptr @event_exit__inotify_add_watch, section "_ftrace_events", align 4
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_inotify_add_watch\00", [42 x i8] zeroinitializer }, align 32
@types__inotify_add_watch = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.18, ptr @.str.37, ptr @.str.38], [20 x i8] zeroinitializer }, align 32
@args__inotify_add_watch = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.41], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__inotify_add_watch = internal global ptr @__syscall_meta__inotify_add_watch, section "__syscalls_metadata", align 4
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_enter_inotify_rm_watch\00", [37 x i8] zeroinitializer }, align 32
@__syscall_meta__inotify_rm_watch = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 2, ptr @types__inotify_rm_watch, ptr @args__inotify_rm_watch, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__inotify_rm_watch, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__inotify_rm_watch, i64 20) }, ptr @event_enter__inotify_rm_watch, ptr @event_exit__inotify_rm_watch }, align 4
@event_enter__inotify_rm_watch = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.83 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.85 zeroinitializer, ptr @__syscall_meta__inotify_rm_watch, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__inotify_rm_watch = internal global ptr @event_enter__inotify_rm_watch, section "_ftrace_events", align 4
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_exit_inotify_rm_watch\00", [38 x i8] zeroinitializer }, align 32
@event_exit__inotify_rm_watch = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.83 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.85 zeroinitializer, ptr @__syscall_meta__inotify_rm_watch, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__inotify_rm_watch = internal global ptr @event_exit__inotify_rm_watch, section "_ftrace_events", align 4
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_inotify_rm_watch\00", [43 x i8] zeroinitializer }, align 32
@types__inotify_rm_watch = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.18, ptr @.str.45], [24 x i8] zeroinitializer }, align 32
@args__inotify_rm_watch = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.39, ptr @.str.46], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__inotify_rm_watch = internal global ptr @__syscall_meta__inotify_rm_watch, section "__syscalls_metadata", align 4
@__initcall__kmod_inotify_user__329_864_inotify_user_setup5 = internal global ptr @inotify_user_setup, section ".initcall5.init", align 4
@inotify_inode_mark_cachep = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@inotify_remove_from_idr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fs/notify/inotify/inotify_user.c\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: i_mark=%p i_mark->wd=%d i_mark->group=%p\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.inotify_remove_from_idr = private unnamed_addr constant [24 x i8] c"inotify_remove_from_idr\00", align 1
@inotify_remove_from_idr.__already_done.14 = internal unnamed_addr global i1 false, section ".data.once", align 1
@inotify_remove_from_idr.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"%s: i_mark=%p i_mark->wd=%d i_mark->group=%p found_i_mark=%p found_i_mark->wd=%d found_i_mark->group=%p\0A\00", [55 x i8] zeroinitializer }, align 32
@inotify_remove_from_idr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.inotify_remove_from_idr, ptr @.str.12, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: i_mark=%p i_mark->wd=%d i_mark->group=%p\0A\00", [48 x i8] zeroinitializer }, align 32
@inotify_remove_from_idr._entry_ptr = internal global ptr @inotify_remove_from_idr._entry, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@inotify_max_queued_events = internal global i32 0, section ".data..read_mostly", align 4
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inotify\00", [24 x i8] zeroinitializer }, align 32
@inotify_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @inotify_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @inotify_poll, ptr @inotify_ioctl, ptr @inotify_ioctl, ptr null, i32 0, ptr null, ptr null, ptr @inotify_release, ptr null, ptr @fsnotify_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @inotify_show_fdinfo, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@inotify_fsnotify_ops = external dso_local constant %struct.fsnotify_ops, align 4
@inotify_new_group.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&group->inotify_data.idr_lock\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@inotify_read.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.12, ptr @.str.26, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"inotify_user\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"inotify_read\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: group=%p kevent=%p\0A\00", [40 x i8] zeroinitializer }, align 32
@get_one_event.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.27, ptr @.str.12, ptr @.str.28, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_one_event\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: group=%p event=%p\0A\00", [41 x i8] zeroinitializer }, align 32
@copy_event_to_user.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.29, ptr @.str.12, ptr @.str.28, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"copy_event_to_user\00", [45 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@inotify_ioctl.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.33, ptr @.str.12, ptr @.str.34, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"inotify_ioctl\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: group=%p cmd=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@inotify_release.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.35, ptr @.str.12, ptr @.str.36, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"inotify_release\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: group=%p\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pathname\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mask\00", [27 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"__s32\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wd\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"inotify_inode_mark\00", [45 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fs/inotify\00", [21 x i8] zeroinitializer }, align 32
@inotify_table = internal global { [4 x %struct.ctl_table], [48 x i8] } { [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.49, ptr getelementptr (i8, ptr @init_user_ns, i64 480), i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @it_zero, ptr @it_int_max }, %struct.ctl_table { ptr @.str.50, ptr getelementptr (i8, ptr @init_user_ns, i64 484), i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @it_zero, ptr @it_int_max }, %struct.ctl_table { ptr @.str.51, ptr @inotify_max_queued_events, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_user_instances\00", [45 x i8] zeroinitializer }, align 32
@it_zero = internal global { i32, [28 x i8] } zeroinitializer, align 32
@it_int_max = internal global { i32, [28 x i8] } { i32 2147483647, [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_user_watches\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_queued_events\00", [46 x i8] zeroinitializer }, align 32
@sysctl_vals = external dso_local constant [0 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 21531, i64 1074022656]
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"event_enter__inotify_init1\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [26 x i8] c"event_exit__inotify_init1\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [21 x i8] c"types__inotify_init1\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"args__inotify_init1\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [26 x i8] c"event_enter__inotify_init\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [25 x i8] c"event_exit__inotify_init\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 712, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant [31 x i8] c"event_enter__inotify_add_watch\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [30 x i8] c"event_exit__inotify_add_watch\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [25 x i8] c"types__inotify_add_watch\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [24 x i8] c"args__inotify_add_watch\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [30 x i8] c"event_enter__inotify_rm_watch\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [29 x i8] c"event_exit__inotify_rm_watch\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [24 x i8] c"types__inotify_rm_watch\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [23 x i8] c"args__inotify_rm_watch\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 454, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 473, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 486, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 707, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 699, i32 25 }
@___asan_gen_.154 = private unnamed_addr constant [13 x i8] c"inotify_fops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 343, i32 37 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 666, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 378, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 253, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 166, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 195, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 230, i32 6 }
@___asan_gen_.191 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 214, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 174, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 311, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 291, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 717, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 36, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 781, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 854, i32 30 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 93, i32 18 }
@___asan_gen_.244 = private unnamed_addr constant [14 x i8] c"inotify_table\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 61, i32 25 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 63, i32 15 }
@___asan_gen_.250 = private unnamed_addr constant [8 x i8] c"it_zero\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 58, i32 13 }
@___asan_gen_.253 = private unnamed_addr constant [11 x i8] c"it_int_max\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 59, i32 13 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 72, i32 15 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.260 = private constant [36 x i8] c"../fs/notify/inotify/inotify_user.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 81, i32 15 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__event_enter__inotify_add_watch, ptr @__event_enter__inotify_init, ptr @__event_enter__inotify_init1, ptr @__event_enter__inotify_rm_watch, ptr @__event_exit__inotify_add_watch, ptr @__event_exit__inotify_init, ptr @__event_exit__inotify_init1, ptr @__event_exit__inotify_rm_watch, ptr @__initcall__kmod_inotify_user__329_864_inotify_user_setup5, ptr @__p_syscall_meta__inotify_add_watch, ptr @__p_syscall_meta__inotify_init, ptr @__p_syscall_meta__inotify_init1, ptr @__p_syscall_meta__inotify_rm_watch, ptr @__syscall_meta__inotify_add_watch, ptr @__syscall_meta__inotify_init, ptr @__syscall_meta__inotify_init1, ptr @__syscall_meta__inotify_rm_watch, ptr @event_enter__inotify_add_watch, ptr @event_enter__inotify_init, ptr @event_enter__inotify_init1, ptr @event_enter__inotify_rm_watch, ptr @event_exit__inotify_add_watch, ptr @event_exit__inotify_init, ptr @event_exit__inotify_init1, ptr @event_exit__inotify_rm_watch, ptr @inotify_remove_from_idr._entry, ptr @inotify_remove_from_idr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__inotify_init1, ptr @args__inotify_init1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__inotify_add_watch, ptr @args__inotify_add_watch, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__inotify_rm_watch, ptr @args__inotify_rm_watch, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @inotify_fops, ptr @inotify_new_group.__key, ptr @.str.21, ptr @xa_init_flags.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @inotify_table, ptr @.str.49, ptr @it_zero, ptr @it_int_max, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__inotify_init1 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__inotify_init1 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__inotify_init1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__inotify_init1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__inotify_init to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__inotify_init to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__inotify_add_watch to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__inotify_add_watch to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__inotify_add_watch to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__inotify_add_watch to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__inotify_rm_watch to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__inotify_rm_watch to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__inotify_rm_watch to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__inotify_rm_watch to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inotify_remove_from_idr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inotify_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inotify_new_group.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inotify_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it_zero to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it_int_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_inotify_init1 = dso_local alias i32 (i32), ptr @__se_sys_inotify_init1
@sys_inotify_add_watch = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_inotify_add_watch
@sys_inotify_rm_watch = dso_local alias i32 (i32, i32), ptr @__se_sys_inotify_rm_watch

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inotify_ignored_and_remove_idr(ptr noundef %fsn_mark, ptr noundef %group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inotify_handle_inode_event(ptr noundef %fsn_mark, i32 noundef 32768, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #9
  tail call fastcc void @inotify_remove_from_idr(ptr noundef %group, ptr noundef %fsn_mark)
  %ucounts = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 6, i32 0, i32 0, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucounts, align 4
  tail call void @dec_ucount(ptr noundef %1, i32 noundef 9) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inotify_handle_inode_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @inotify_remove_from_idr(ptr noundef %group, ptr noundef %i_mark) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15
  %idr1 = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 2, i32 0, i32 0, i32 0, i32 4, i32 3
  tail call void @_raw_spin_lock(ptr noundef %0) #9
  %wd3 = getelementptr inbounds %struct.inotify_inode_mark, ptr %i_mark, i32 0, i32 1
  %1 = ptrtoint ptr %wd3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wd3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %land.end, label %if.end39

land.end:                                         ; preds = %entry
  %.b234 = load i1, ptr @inotify_remove_from_idr.__already_done, align 1
  br i1 %.b234, label %land.end.out.thread_crit_edge, label %if.then8, !prof !146

land.end.out.thread_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @inotify_remove_from_idr.__already_done, align 1
  %group19 = getelementptr inbounds %struct.fsnotify_mark, ptr %i_mark, i32 0, i32 2
  %3 = ptrtoint ptr %group19 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %group19, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 455, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.inotify_remove_from_idr, ptr noundef %i_mark, i32 noundef -1, ptr noundef %4) #9
  br label %out.thread

if.end39:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %0, align 4
  %6 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body6.i, label %do.end11.i, !prof !147

do.body6.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/inotify/inotify_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 407, 0\0A.popsection", ""() #9, !srcloc !148
  unreachable

do.end11.i:                                       ; preds = %if.end39
  %call12.i = tail call ptr @idr_find(ptr noundef %idr1, i32 noundef %2) #9
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %land.end56, label %if.then14.i

if.then14.i:                                      ; preds = %do.end11.i
  tail call void @fsnotify_get_mark(ptr noundef nonnull %call12.i) #9
  %refcnt.i = getelementptr inbounds %struct.fsnotify_mark, ptr %call12.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #9
  %7 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i = icmp ult i32 %8, 2
  br i1 %cmp.i, label %do.body25.i, label %if.end101, !prof !147

do.body25.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/inotify/inotify_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #9, !srcloc !149
  unreachable

land.end56:                                       ; preds = %do.end11.i
  %.b230233 = load i1, ptr @inotify_remove_from_idr.__already_done.14, align 1
  br i1 %.b230233, label %land.end56.out.thread_crit_edge, label %if.then63, !prof !146

land.end56.out.thread_crit_edge:                  ; preds = %land.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.then63:                                        ; preds = %land.end56
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @inotify_remove_from_idr.__already_done.14, align 1
  %9 = ptrtoint ptr %wd3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wd3, align 4
  %group79 = getelementptr inbounds %struct.fsnotify_mark, ptr %i_mark, i32 0, i32 2
  %11 = ptrtoint ptr %group79 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %group79, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 463, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.inotify_remove_from_idr, ptr noundef %i_mark, i32 noundef %10, ptr noundef %12) #9
  br label %out.thread

if.end101:                                        ; preds = %if.then14.i
  %cmp102.not = icmp eq ptr %call12.i, %i_mark
  br i1 %cmp102.not, label %if.end164, label %land.end116, !prof !146

land.end116:                                      ; preds = %if.end101
  %.b231232 = load i1, ptr @inotify_remove_from_idr.__already_done.15, align 1
  br i1 %.b231232, label %land.end116.if.then194_crit_edge, label %if.then123, !prof !146

land.end116.if.then194_crit_edge:                 ; preds = %land.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then194

if.then123:                                       ; preds = %land.end116
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @inotify_remove_from_idr.__already_done.15, align 1
  %13 = ptrtoint ptr %wd3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wd3, align 4
  %group139 = getelementptr inbounds %struct.fsnotify_mark, ptr %i_mark, i32 0, i32 2
  %15 = ptrtoint ptr %group139 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %group139, align 4
  %wd140 = getelementptr inbounds %struct.inotify_inode_mark, ptr %call12.i, i32 0, i32 1
  %17 = ptrtoint ptr %wd140 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wd140, align 4
  %group142 = getelementptr inbounds %struct.fsnotify_mark, ptr %call12.i, i32 0, i32 2
  %19 = ptrtoint ptr %group142 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %group142, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 477, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.inotify_remove_from_idr, ptr noundef %i_mark, i32 noundef %14, ptr noundef %16, ptr noundef nonnull %call12.i, i32 noundef %18, ptr noundef %20) #9
  br label %if.then194

if.end164:                                        ; preds = %if.end101
  %refcnt = getelementptr inbounds %struct.fsnotify_mark, ptr %i_mark, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #9
  %21 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp167 = icmp ult i32 %22, 2
  br i1 %cmp167, label %do.end177, label %if.end189, !prof !147

do.end177:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %wd3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wd3, align 4
  %group181 = getelementptr inbounds %struct.fsnotify_mark, ptr %i_mark, i32 0, i32 2
  %25 = ptrtoint ptr %group181 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %group181, align 4
  %call182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.inotify_remove_from_idr, ptr noundef %i_mark, i32 noundef %24, ptr noundef %26) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/inotify/inotify_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 489, 0\0A.popsection", ""() #9, !srcloc !150
  unreachable

if.end189:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  %call190 = tail call ptr @idr_remove(ptr noundef %idr1, i32 noundef %2) #9
  tail call void @fsnotify_put_mark(ptr noundef %i_mark) #9
  br label %if.then194

out.thread:                                       ; preds = %if.then63, %land.end56.out.thread_crit_edge, %if.then8, %land.end.out.thread_crit_edge
  %27 = ptrtoint ptr %wd3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %wd3, align 4
  tail call void @_raw_spin_unlock(ptr noundef %0) #9
  br label %if.end196

if.then194:                                       ; preds = %if.end189, %if.then123, %land.end116.if.then194_crit_edge
  %28 = ptrtoint ptr %wd3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %wd3, align 4
  tail call void @_raw_spin_unlock(ptr noundef %0) #9
  tail call void @fsnotify_put_mark(ptr noundef nonnull %call12.i) #9
  br label %if.end196

if.end196:                                        ; preds = %if.then194, %out.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_inotify_init1(i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @do_inotify_init(i32 noundef %flags) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_inotify_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @do_inotify_init(i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_inotify_init(i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, -526337
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @inotify_max_queued_events, align 4
  %call.i = tail call ptr @fsnotify_alloc_user_group(ptr noundef nonnull @inotify_fsnotify_ops) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.if.then5_crit_edge, label %if.end.i

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 4197568, i32 noundef 24) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.i.inotify_new_group.exit.thread_crit_edge, label %if.end8.i, !prof !147

if.end.i.inotify_new_group.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inotify_new_group.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %overflow_event.i = getelementptr inbounds %struct.fsnotify_group, ptr %call.i, i32 0, i32 13
  %2 = ptrtoint ptr %overflow_event.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %overflow_event.i, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %prev.i.i.i, align 4
  %mask.i = getelementptr inbounds %struct.inotify_event_info, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16384, ptr %mask.i, align 8
  %wd.i = getelementptr inbounds %struct.inotify_event_info, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %wd.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %wd.i, align 4
  %sync_cookie.i = getelementptr inbounds %struct.inotify_event_info, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %sync_cookie.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sync_cookie.i, align 8
  %name_len.i = getelementptr inbounds %struct.inotify_event_info, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %name_len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %name_len.i, align 4
  %max_events10.i = getelementptr inbounds %struct.fsnotify_group, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %max_events10.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %0, ptr %max_events10.i, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !136) #9
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 53
  %14 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mm.i, align 8
  %call12.i = tail call ptr @get_mem_cgroup_from_mm(ptr noundef %15) #9
  %memcg.i = getelementptr inbounds %struct.fsnotify_group, ptr %call.i, i32 0, i32 14
  %16 = ptrtoint ptr %memcg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call12.i, ptr %memcg.i, align 4
  %17 = getelementptr inbounds %struct.fsnotify_group, ptr %call.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %17, ptr noundef nonnull @.str.21, ptr noundef nonnull @inotify_new_group.__key, i16 noundef signext 3) #9
  %idr.i = getelementptr inbounds %struct.fsnotify_group, ptr %call.i, i32 0, i32 15, i32 0, i32 2, i32 0, i32 0, i32 0, i32 4, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %idr.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i.i.i.i = getelementptr inbounds %struct.fsnotify_group, ptr %call.i, i32 0, i32 15, i32 0, i32 6, i32 0, i32 0, i32 0, i32 3
  %18 = ptrtoint ptr %xa_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 67108868, ptr %xa_flags.i.i.i.i, align 4
  %xa_head.i.i.i.i = getelementptr inbounds %struct.fsnotify_group, ptr %call.i, i32 0, i32 15, i32 0, i32 6, i32 0, i32 0, i32 0, i32 4
  %19 = ptrtoint ptr %xa_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %xa_head.i.i.i.i, align 4
  %idr_base.i.i.i = getelementptr inbounds %struct.fsnotify_group, ptr %call.i, i32 0, i32 15, i32 0, i32 6, i32 0, i32 0, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %idr_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %idr_base.i.i.i, align 4
  %idr_next.i.i.i = getelementptr inbounds %struct.fsnotify_group, ptr %call.i, i32 0, i32 15, i32 0, i32 6, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %21 = ptrtoint ptr %idr_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %idr_next.i.i.i, align 4
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 99
  %24 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cred.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 25
  %26 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %user_ns.i, align 4
  %euid.i = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 8
  %28 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %euid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call27.i = tail call ptr @inc_ucount(ptr noundef %27, [1 x i32] %.fca.0.insert.i, i32 noundef 8) #9
  %ucounts.i = getelementptr inbounds %struct.fsnotify_group, ptr %call.i, i32 0, i32 15, i32 0, i32 6, i32 0, i32 0, i32 0, i32 4, i32 2
  %29 = ptrtoint ptr %ucounts.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call27.i, ptr %ucounts.i, align 4
  %tobool29.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool29.not.i, label %if.end8.i.inotify_new_group.exit.thread_crit_edge, label %if.end7

if.end8.i.inotify_new_group.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inotify_new_group.exit.thread

inotify_new_group.exit.thread:                    ; preds = %if.end8.i.inotify_new_group.exit.thread_crit_edge, %if.end.i.inotify_new_group.exit.thread_crit_edge
  %retval.0.ph.i = phi ptr [ inttoptr (i32 -12 to ptr), %if.end.i.inotify_new_group.exit.thread_crit_edge ], [ inttoptr (i32 -24 to ptr), %if.end8.i.inotify_new_group.exit.thread_crit_edge ]
  tail call void @fsnotify_destroy_group(ptr noundef %call.i) #9
  br label %if.then5

if.then5:                                         ; preds = %inotify_new_group.exit.thread, %if.end.if.then5_crit_edge
  %retval.0.i19 = phi ptr [ %retval.0.ph.i, %inotify_new_group.exit.thread ], [ %call.i, %if.end.if.then5_crit_edge ]
  %30 = ptrtoint ptr %retval.0.i19 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end8.i
  %call8 = tail call i32 @anon_inode_getfd(ptr noundef nonnull @.str.20, ptr noundef nonnull @inotify_fops, ptr noundef %call.i, i32 noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.then9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fsnotify_destroy_group(ptr noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.then5 ], [ -22, %entry.cleanup_crit_edge ], [ %call8, %if.then9 ], [ %call8, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_inotify_add_watch(i32 noundef %fd, i32 noundef %pathname, i32 noundef %mask) #0 align 64 {
entry:
  %path.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %pathname to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #9
  %1 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i, align 4, !annotation !151
  %2 = getelementptr inbounds %struct.path, ptr %path.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !151
  %and.i = and i32 %mask, 150933504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %and3.i = and i32 %mask, -150933505
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool4.not.i
  br i1 %or.cond.i, label %entry.__do_sys_inotify_add_watch.exit_crit_edge, label %if.end14.i, !prof !152

entry.__do_sys_inotify_add_watch.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_inotify_add_watch.exit

if.end14.i:                                       ; preds = %entry
  %call.i.i = tail call i32 @__fdget(i32 noundef %fd) #9, !noalias !153
  %and.i.i.i = and i32 %call.i.i, -4
  %4 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool15.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool15.not.i, label %if.end14.i.__do_sys_inotify_add_watch.exit_crit_edge, label %if.end25.i, !prof !147

if.end14.i.__do_sys_inotify_add_watch.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_inotify_add_watch.exit

if.end25.i:                                       ; preds = %if.end14.i
  %and26.i = and i32 %mask, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %and28.i = and i32 %mask, 268435456
  %5 = and i32 %mask, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %5)
  %.not.i = icmp eq i32 %5, 805306368
  br i1 %.not.i, label %if.end25.i.fput_and_out.i_crit_edge, label %if.end37.i, !prof !147

if.end25.i.fput_and_out.i_crit_edge:              ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fput_and_out.i

if.end37.i:                                       ; preds = %if.end25.i
  %f_op.i = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 3
  %6 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_op.i, align 4
  %cmp.not.i = icmp eq ptr %7, @inotify_fops
  br i1 %cmp.not.i, label %if.end46.i, label %if.end37.i.fput_and_out.i_crit_edge, !prof !146

if.end37.i.fput_and_out.i_crit_edge:              ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fput_and_out.i

if.end46.i:                                       ; preds = %if.end37.i
  %and47.i = lshr i32 %mask, 25
  %and47.lobit.i = and i32 %and47.i, 1
  %and51.i = lshr i32 %mask, 23
  %8 = and i32 %and51.i, 2
  %9 = or i32 %and47.lobit.i, %8
  %10 = xor i32 %9, 1
  %and56.i = and i32 %mask, 4095
  %conv.i = zext i32 %and56.i to i64
  %call.i.i.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef %10, ptr noundef nonnull %path.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end46.i.fput_and_out.i_crit_edge

if.end46.i.fput_and_out.i_crit_edge:              ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fput_and_out.i

if.end.i.i:                                       ; preds = %if.end46.i
  %11 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %path.i, align 4
  %mnt_userns.i.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %mnt_userns.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %mnt_userns.i.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !156
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %call2.i.i.i = call i32 @inode_permission(ptr noundef %14, ptr noundef %18, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.fput_and_out.sink.split.i_crit_edge

if.end.i.i.fput_and_out.sink.split.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fput_and_out.sink.split.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call5.i.i = call i32 @security_path_notify(ptr noundef nonnull %path.i, i64 noundef %conv.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end59.i, label %if.end4.i.i.fput_and_out.sink.split.i_crit_edge

if.end4.i.i.fput_and_out.sink.split.i_crit_edge:  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fput_and_out.sink.split.i

if.end59.i:                                       ; preds = %if.end4.i.i
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 16
  %23 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private_data.i, align 4
  %mark_mutex.i.i = getelementptr inbounds %struct.fsnotify_group, ptr %24, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %mark_mutex.i.i, i32 noundef 0) #9
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %22, align 8
  %27 = and i16 %26, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %27)
  %cmp.i.i.i.i = icmp eq i16 %27, 16384
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i, i32 134225920, i32 8192
  %and2.i.i.i.i = and i32 %mask, -2080370689
  %or3.i.i.i.i = or i32 %spec.select.i.i.i.i, %and2.i.i.i.i
  %i_fsnotify_marks.i.i.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 51
  %call2.i.i80.i = call ptr @fsnotify_find_mark(ptr noundef %i_fsnotify_marks.i.i.i, ptr noundef %24) #9
  %tobool.not.i.i.i = icmp eq ptr %call2.i.i80.i, null
  br i1 %tobool.not.i.i.i, label %if.end59.i.if.then.i.i_crit_edge, label %if.else.i.i.i

if.end59.i.if.then.i.i_crit_edge:                 ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.else.i.i.i:                                    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool3.not.i.i.i = icmp eq i32 %and28.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.else.i.i.i.if.end.sink.split.i.i_crit_edge

if.else.i.i.i.if.end.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.sink.split.i.i

if.end5.i.i.i:                                    ; preds = %if.else.i.i.i
  %lock.i.i.i = getelementptr inbounds %struct.fsnotify_mark, ptr %call2.i.i80.i, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %lock.i.i.i) #9
  %28 = ptrtoint ptr %call2.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call2.i.i80.i, align 4
  %or.i.i.i = select i1 %tobool27.not.i, i32 0, i32 %29
  %storemerge.i.i.i = or i32 %or3.i.i.i.i, %or.i.i.i
  store i32 %storemerge.i.i.i, ptr %call2.i.i80.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %storemerge.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %29, %storemerge.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end5.i.i.i.inotify_update_existing_watch.exit.i.i_crit_edge, label %if.then15.i.i.i

if.end5.i.i.i.inotify_update_existing_watch.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inotify_update_existing_watch.exit.i.i

if.then15.i.i.i:                                  ; preds = %if.end5.i.i.i
  %neg.i.i.i = xor i32 %storemerge.i.i.i, -1
  %and16.i.i.i = and i32 %29, %neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i.i)
  %tobool19.not.i.i.i = icmp eq i32 %and16.i.i.i, 0
  br i1 %tobool19.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.then15.i.i.i.if.then21.i.i.i_crit_edge

if.then15.i.i.i.if.then21.i.i.i_crit_edge:        ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then15.i.i.i
  %i_fsnotify_mask.i.i.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 50
  %30 = ptrtoint ptr %i_fsnotify_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_fsnotify_mask.i.i.i, align 4
  %neg17.i.i.i = xor i32 %31, -1
  %and18.i.i.i = and i32 %storemerge.i.i.i, %neg17.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i.i)
  %tobool20.not.i.i.i = icmp eq i32 %and18.i.i.i, 0
  br i1 %tobool20.not.i.i.i, label %lor.lhs.false.i.i.i.inotify_update_existing_watch.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i.if.then21.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.then21.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i.i.i

lor.lhs.false.i.i.i.inotify_update_existing_watch.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inotify_update_existing_watch.exit.i.i

if.then21.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.if.then21.i.i.i_crit_edge, %if.then15.i.i.i.if.then21.i.i.i_crit_edge
  %32 = ptrtoint ptr %i_fsnotify_marks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_fsnotify_marks.i.i.i, align 8
  call void @fsnotify_recalc_mask(ptr noundef %33) #9
  br label %inotify_update_existing_watch.exit.i.i

inotify_update_existing_watch.exit.i.i:           ; preds = %if.then21.i.i.i, %lor.lhs.false.i.i.i.inotify_update_existing_watch.exit.i.i_crit_edge, %if.end5.i.i.i.inotify_update_existing_watch.exit.i.i_crit_edge
  %wd.i.i.i = getelementptr inbounds %struct.inotify_inode_mark, ptr %call2.i.i80.i, i32 0, i32 1
  %34 = ptrtoint ptr %wd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wd.i.i.i, align 4
  call void @fsnotify_put_mark(ptr noundef nonnull %call2.i.i80.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %35)
  %cmp.i.i = icmp eq i32 %35, -2
  br i1 %cmp.i.i, label %inotify_update_existing_watch.exit.i.i.if.then.i.i_crit_edge, label %inotify_update_existing_watch.exit.i.i.inotify_update_watch.exit.i_crit_edge

inotify_update_existing_watch.exit.i.i.inotify_update_watch.exit.i_crit_edge: ; preds = %inotify_update_existing_watch.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inotify_update_watch.exit.i

inotify_update_existing_watch.exit.i.i.if.then.i.i_crit_edge: ; preds = %inotify_update_existing_watch.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %inotify_update_existing_watch.exit.i.i.if.then.i.i_crit_edge, %if.end59.i.if.then.i.i_crit_edge
  %36 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %22, align 8
  %38 = load ptr, ptr @inotify_inode_mark_cachep, align 4
  %call3.i.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %38, i32 noundef 3264) #9
  %tobool.not.i9.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool.not.i9.i.i, label %if.then.i.i.inotify_update_watch.exit.i_crit_edge, label %if.end.i.i.i, !prof !147

if.then.i.i.inotify_update_watch.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inotify_update_watch.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %39 = and i16 %37, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %39)
  %cmp.i.i10.i.i = icmp eq i16 %39, 16384
  %spec.select.i.i11.i.i = select i1 %cmp.i.i10.i.i, i32 134225920, i32 8192
  %or3.i.i13.i.i = or i32 %spec.select.i.i11.i.i, %and2.i.i.i.i
  %40 = getelementptr inbounds %struct.fsnotify_group, ptr %24, i32 0, i32 15
  %idr1.i.i.i = getelementptr inbounds %struct.fsnotify_group, ptr %24, i32 0, i32 15, i32 0, i32 2, i32 0, i32 0, i32 0, i32 4, i32 3
  call void @fsnotify_init_mark(ptr noundef nonnull %call3.i.i.i, ptr noundef %24) #9
  %41 = ptrtoint ptr %call3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or3.i.i13.i.i, ptr %call3.i.i.i, align 8
  %wd.i14.i.i = getelementptr inbounds %struct.inotify_inode_mark, ptr %call3.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %wd.i14.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %wd.i14.i.i, align 4
  call void @idr_preload(i32 noundef 3264) #9
  call void @_raw_spin_lock(ptr noundef %40) #9
  %call.i.i.i.i = call i32 @idr_alloc_cyclic(ptr noundef %idr1.i.i.i, ptr noundef nonnull %call3.i.i.i, i32 noundef 1, i32 noundef 0, i32 noundef 2048) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %cmp.i45.i.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %cmp.i45.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.inotify_add_to_idr.exit.i.i.i_crit_edge

if.end.i.i.i.inotify_add_to_idr.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inotify_add_to_idr.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %wd.i14.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call.i.i.i.i, ptr %wd.i14.i.i, align 4
  call void @fsnotify_get_mark(ptr noundef nonnull %call3.i.i.i) #9
  br label %inotify_add_to_idr.exit.i.i.i

inotify_add_to_idr.exit.i.i.i:                    ; preds = %if.then.i.i.i.i, %if.end.i.i.i.inotify_add_to_idr.exit.i.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %40) #9
  %44 = call i32 @llvm.read_register.i32(metadata !136) #9
  %and.i.i.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %49, ptrtoint (ptr @radix_tree_preloads to i32)
  %50 = inttoptr i32 %add.i.i.i.i.i to ptr
  call fastcc void @local_lock_release(ptr noundef %50) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !157
  %51 = call i32 @llvm.read_register.i32(metadata !136) #9
  %and.i.i.i.i.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %55 = call i32 @llvm.smin.i32(i32 %call.i.i.i.i, i32 0) #9
  br i1 %cmp.i45.i.i.i, label %if.end12.i.i.i, label %inotify_add_to_idr.exit.i.i.i.if.end.sink.split.i.i_crit_edge

inotify_add_to_idr.exit.i.i.i.if.end.sink.split.i.i_crit_edge: ; preds = %inotify_add_to_idr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.sink.split.i.i

if.end12.i.i.i:                                   ; preds = %inotify_add_to_idr.exit.i.i.i
  %ucounts.i.i.i = getelementptr inbounds %struct.fsnotify_group, ptr %24, i32 0, i32 15, i32 0, i32 6, i32 0, i32 0, i32 0, i32 4, i32 2
  %56 = ptrtoint ptr %ucounts.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ucounts.i.i.i, align 4
  %ns.i.i.i.i = getelementptr inbounds %struct.ucounts, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %ns.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ns.i.i.i.i, align 4
  %uid.i.i.i.i = getelementptr inbounds %struct.ucounts, ptr %57, i32 0, i32 2
  %60 = ptrtoint ptr %uid.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.unpack.i.i.i.i = load i32, ptr %uid.i.i.i.i, align 4
  %61 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i.i, 0
  %call.i46.i.i.i = call ptr @inc_ucount(ptr noundef %59, [1 x i32] %61, i32 noundef 9) #9
  %tobool14.not.i.i.i = icmp eq ptr %call.i46.i.i.i, null
  br i1 %tobool14.not.i.i.i, label %if.then15.i15.i.i, label %if.end16.i.i.i

if.then15.i15.i.i:                                ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @inotify_remove_from_idr(ptr noundef %24, ptr noundef nonnull %call3.i.i.i) #9
  br label %if.end.sink.split.i.i

if.end16.i.i.i:                                   ; preds = %if.end12.i.i.i
  %call.i47.i.i.i = call i32 @fsnotify_add_mark_locked(ptr noundef nonnull %call3.i.i.i, ptr noundef %i_fsnotify_marks.i.i.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i.i.i)
  %tobool19.not.i16.i.i = icmp eq i32 %call.i47.i.i.i, 0
  br i1 %tobool19.not.i16.i.i, label %if.end21.i.i.i, label %if.then20.i.i.i

if.then20.i.i.i:                                  ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @inotify_remove_from_idr(ptr noundef %24, ptr noundef nonnull %call3.i.i.i) #9
  br label %if.end.sink.split.i.i

if.end21.i.i.i:                                   ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %wd.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %wd.i14.i.i, align 4
  br label %if.end.sink.split.i.i

if.end.sink.split.i.i:                            ; preds = %if.end21.i.i.i, %if.then20.i.i.i, %if.then15.i15.i.i, %inotify_add_to_idr.exit.i.i.i.if.end.sink.split.i.i_crit_edge, %if.else.i.i.i.if.end.sink.split.i.i_crit_edge
  %call3.i.sink.i.i = phi ptr [ %call2.i.i80.i, %if.else.i.i.i.if.end.sink.split.i.i_crit_edge ], [ %call3.i.i.i, %if.end21.i.i.i ], [ %call3.i.i.i, %if.then20.i.i.i ], [ %call3.i.i.i, %if.then15.i15.i.i ], [ %call3.i.i.i, %inotify_add_to_idr.exit.i.i.i.if.end.sink.split.i.i_crit_edge ]
  %ret.0.ph.i.i = phi i32 [ -17, %if.else.i.i.i.if.end.sink.split.i.i_crit_edge ], [ %63, %if.end21.i.i.i ], [ %call.i47.i.i.i, %if.then20.i.i.i ], [ -28, %if.then15.i15.i.i ], [ %55, %inotify_add_to_idr.exit.i.i.i.if.end.sink.split.i.i_crit_edge ]
  call void @fsnotify_put_mark(ptr noundef nonnull %call3.i.sink.i.i) #9
  br label %inotify_update_watch.exit.i

inotify_update_watch.exit.i:                      ; preds = %if.end.sink.split.i.i, %if.then.i.i.inotify_update_watch.exit.i_crit_edge, %inotify_update_existing_watch.exit.i.i.inotify_update_watch.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %35, %inotify_update_existing_watch.exit.i.i.inotify_update_watch.exit.i_crit_edge ], [ -12, %if.then.i.i.inotify_update_watch.exit.i_crit_edge ], [ %ret.0.ph.i.i, %if.end.sink.split.i.i ]
  call void @mutex_unlock(ptr noundef %mark_mutex.i.i) #9
  br label %fput_and_out.sink.split.i

fput_and_out.sink.split.i:                        ; preds = %inotify_update_watch.exit.i, %if.end4.i.i.fput_and_out.sink.split.i_crit_edge, %if.end.i.i.fput_and_out.sink.split.i_crit_edge
  %ret.0.ph.i = phi i32 [ %ret.0.i.i, %inotify_update_watch.exit.i ], [ %call2.i.i.i, %if.end.i.i.fput_and_out.sink.split.i_crit_edge ], [ %call5.i.i, %if.end4.i.i.fput_and_out.sink.split.i_crit_edge ]
  call void @path_put(ptr noundef nonnull %path.i) #9
  br label %fput_and_out.i

fput_and_out.i:                                   ; preds = %fput_and_out.sink.split.i, %if.end46.i.fput_and_out.i_crit_edge, %if.end37.i.fput_and_out.i_crit_edge, %if.end25.i.fput_and_out.i_crit_edge
  %ret.0.i = phi i32 [ -22, %if.end25.i.fput_and_out.i_crit_edge ], [ -22, %if.end37.i.fput_and_out.i_crit_edge ], [ %call.i.i.i, %if.end46.i.fput_and_out.i_crit_edge ], [ %ret.0.ph.i, %fput_and_out.sink.split.i ]
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i83.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i83.i, label %fput_and_out.i.__do_sys_inotify_add_watch.exit_crit_edge, label %if.then.i84.i

fput_and_out.i.__do_sys_inotify_add_watch.exit_crit_edge: ; preds = %fput_and_out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_inotify_add_watch.exit

if.then.i84.i:                                    ; preds = %fput_and_out.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @fput(ptr noundef nonnull %4) #9
  br label %__do_sys_inotify_add_watch.exit

__do_sys_inotify_add_watch.exit:                  ; preds = %if.then.i84.i, %fput_and_out.i.__do_sys_inotify_add_watch.exit_crit_edge, %if.end14.i.__do_sys_inotify_add_watch.exit_crit_edge, %entry.__do_sys_inotify_add_watch.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__do_sys_inotify_add_watch.exit_crit_edge ], [ -9, %if.end14.i.__do_sys_inotify_add_watch.exit_crit_edge ], [ %ret.0.i, %fput_and_out.i.__do_sys_inotify_add_watch.exit_crit_edge ], [ %ret.0.i, %if.then.i84.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_inotify_rm_watch(i32 noundef %fd, i32 noundef %wd) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @__fdget(i32 noundef %fd) #9, !noalias !158
  %and.i.i.i = and i32 %call.i.i, -4
  %0 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %entry.__do_sys_inotify_rm_watch.exit_crit_edge, label %if.end.i, !prof !147

entry.__do_sys_inotify_rm_watch.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_inotify_rm_watch.exit

if.end.i:                                         ; preds = %entry
  %f_op.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_op.i, align 4
  %cmp.not.i = icmp eq ptr %2, @inotify_fops
  br i1 %cmp.not.i, label %if.end12.i, label %if.end.i.out.i_crit_edge, !prof !146

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end12.i:                                       ; preds = %if.end.i
  %private_data.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 16
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %5 = getelementptr inbounds %struct.fsnotify_group, ptr %4, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %agg.tmp.sroa.0.0.copyload.i.i.i.i = load volatile i32, ptr %5, align 4
  %7 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, ptr %agg.tmp.sroa.0.i.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 16
  %conv.i.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i.i)
  %cmp.i.i.not.i.i.i = icmp eq i32 %conv.i.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  br i1 %cmp.i.i.not.i.i.i, label %do.body6.i.i.i, label %do.end11.i.i.i, !prof !147

do.body6.i.i.i:                                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/inotify/inotify_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 407, 0\0A.popsection", ""() #9, !srcloc !148
  unreachable

do.end11.i.i.i:                                   ; preds = %if.end12.i
  %idr1.i.i.i = getelementptr inbounds %struct.fsnotify_group, ptr %4, i32 0, i32 15, i32 0, i32 2, i32 0, i32 0, i32 0, i32 4, i32 3
  %call12.i.i.i = tail call ptr @idr_find(ptr noundef %idr1.i.i.i, i32 noundef %wd) #9
  %tobool13.not.i.i.i = icmp eq ptr %call12.i.i.i, null
  br i1 %tobool13.not.i.i.i, label %inotify_idr_find.exit.thread.i, label %if.then14.i.i.i

inotify_idr_find.exit.thread.i:                   ; preds = %do.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %5) #9
  br label %out.i

if.then14.i.i.i:                                  ; preds = %do.end11.i.i.i
  tail call void @fsnotify_get_mark(ptr noundef nonnull %call12.i.i.i) #9
  %refcnt.i.i.i = getelementptr inbounds %struct.fsnotify_mark, ptr %call12.i.i.i, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i.i.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcnt.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i.i.i = icmp ult i32 %9, 2
  br i1 %cmp.i.i.i, label %do.body25.i.i.i, label %if.end24.i, !prof !147

do.body25.i.i.i:                                  ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/inotify/inotify_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #9, !srcloc !149
  unreachable

if.end24.i:                                       ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %5) #9
  tail call void @fsnotify_destroy_mark(ptr noundef nonnull %call12.i.i.i, ptr noundef %4) #9
  tail call void @fsnotify_put_mark(ptr noundef nonnull %call12.i.i.i) #9
  br label %out.i

out.i:                                            ; preds = %if.end24.i, %inotify_idr_find.exit.thread.i, %if.end.i.out.i_crit_edge
  %ret.0.i = phi i32 [ -22, %if.end.i.out.i_crit_edge ], [ 0, %if.end24.i ], [ -22, %inotify_idr_find.exit.thread.i ]
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %out.i.__do_sys_inotify_rm_watch.exit_crit_edge, label %if.then.i.i

out.i.__do_sys_inotify_rm_watch.exit_crit_edge:   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_inotify_rm_watch.exit

if.then.i.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fput(ptr noundef nonnull %0) #9
  br label %__do_sys_inotify_rm_watch.exit

__do_sys_inotify_rm_watch.exit:                   ; preds = %if.then.i.i, %out.i.__do_sys_inotify_rm_watch.exit_crit_edge, %entry.__do_sys_inotify_rm_watch.exit_crit_edge
  %retval.0.i = phi i32 [ -9, %entry.__do_sys_inotify_rm_watch.exit_crit_edge ], [ %ret.0.i, %out.i.__do_sys_inotify_rm_watch.exit_crit_edge ], [ %ret.0.i, %if.then.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @inotify_user_setup() #3 section ".init.text" align 64 {
entry:
  %si = alloca %struct.sysinfo, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %si) #9
  %0 = call ptr @memset(ptr %si, i32 255, i32 64)
  call void @si_meminfo(ptr noundef nonnull %si) #9
  %totalram = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 2
  %1 = ptrtoint ptr %totalram to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %totalram, align 4
  %totalhigh = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 10
  %3 = ptrtoint ptr %totalhigh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %totalhigh, align 4
  %sub = sub i32 %2, %4
  %div = udiv i32 %sub, 100
  %shl = shl i32 %div, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 13567607, i32 %shl)
  %cmp = icmp ugt i32 %shl, 13567607
  %div1 = udiv i32 %shl, 1656
  %5 = call i32 @llvm.umin.i32(i32 %div1, i32 1048576)
  %6 = select i1 %cmp, i32 %5, i32 8192
  %call = call ptr @kmem_cache_create(ptr noundef nonnull @.str.47, i32 noundef 88, i32 noundef 4, i32 noundef 67371008, ptr noundef null) #9
  store ptr %call, ptr @inotify_inode_mark_cachep, align 4
  store i32 16384, ptr @inotify_max_queued_events, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 18, i32 8) to i32))
  store i32 128, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 18, i32 8), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 18, i32 9) to i32))
  store i32 %6, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 18, i32 9), align 4
  %call.i = call ptr @register_sysctl(ptr noundef nonnull @.str.48, ptr noundef nonnull @inotify_table) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %si) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_put_mark(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_get_mark(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_ucount(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_destroy_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_alloc_user_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mem_cgroup_from_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inc_ucount(ptr noundef, [1 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inotify_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !136) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @woken_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data, align 4
  %notification_waitq = getelementptr inbounds %struct.fsnotify_group, ptr %14, i32 0, i32 4
  call void @add_wait_queue(ptr noundef %notification_waitq, ptr noundef nonnull %wait) #9
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %14, i32 0, i32 2
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end17, %entry
  %count.addr.0.ph = phi i32 [ %sub, %if.end17 ], [ %count, %entry ]
  %buf.addr.0.ph = phi ptr [ %add.ptr, %if.end17 ], [ %buf, %entry ]
  %cmp28.not = icmp eq ptr %buf.addr.0.ph, %buf
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %while.cond.outer
  call void @_raw_spin_lock(ptr noundef %notification_lock) #9
  %call.i = call ptr @fsnotify_peek_first_event(ptr noundef %14) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.cond.get_one_event.exit_crit_edge, label %do.body.i

while.cond.get_one_event.exit_crit_edge:          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_one_event.exit

do.body.i:                                        ; preds = %while.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_one_event.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inotify_read, %if.then5.i)) #9
          to label %do.end.i [label %if.then5.i], !srcloc !161

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_one_event.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, ptr noundef %14, ptr noundef nonnull %call.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %do.body.i
  %name_len.i.i = getelementptr inbounds %struct.inotify_event_info, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %name_len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %name_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  %17 = add i32 %16, 32
  %div6.i.op.i = and i32 %17, -16
  %add.i = select i1 %tobool.not.i.i, i32 16, i32 %div6.i.op.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %count.addr.0.ph)
  %cmp.i = icmp ugt i32 %add.i, %count.addr.0.ph
  br i1 %cmp.i, label %do.end.i.get_one_event.exit_crit_edge, label %if.end10.i

do.end.i.get_one_event.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_one_event.exit

if.end10.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = call ptr @fsnotify_remove_first_event(ptr noundef %14) #9
  br label %get_one_event.exit

get_one_event.exit:                               ; preds = %if.end10.i, %do.end.i.get_one_event.exit_crit_edge, %while.cond.get_one_event.exit_crit_edge
  %retval.0.i62 = phi ptr [ %call.i, %if.end10.i ], [ null, %while.cond.get_one_event.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i.get_one_event.exit_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %notification_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inotify_read.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inotify_read, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %get_one_event.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @inotify_read.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, ptr noundef %14, ptr noundef %retval.0.i62) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %get_one_event.exit
  %tobool9.not = icmp eq ptr %retval.0.i62, null
  br i1 %tobool9.not, label %if.end18, label %if.then10

if.then10:                                        ; preds = %do.end
  %cmp.i63 = icmp ugt ptr %retval.0.i62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63, label %while.end.loopexit71.split.loop.exit, label %if.end14

if.end14:                                         ; preds = %if.then10
  %call15 = call fastcc i32 @copy_event_to_user(ptr noundef %14, ptr noundef nonnull %retval.0.i62, ptr noundef %buf.addr.0.ph)
  call void @fsnotify_destroy_event(ptr noundef %14, ptr noundef nonnull %retval.0.i62) #9
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end14.while.end_crit_edge, label %if.end17

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end17:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %buf.addr.0.ph, i32 %call15
  %sub = sub i32 %count.addr.0.ph, %call15
  br label %while.cond.outer

if.end18:                                         ; preds = %do.end
  %18 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %f_flags, align 4
  %and = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end21, label %if.end18.while.end_crit_edge

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end21:                                         ; preds = %if.end18
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stack.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i64 = icmp eq i32 %26, 0
  br i1 %tobool.not.i64, label %signal_pending.exit, label %if.end21.while.end_crit_edge, !prof !146

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

signal_pending.exit:                              ; preds = %if.end21
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %23, align 4
  %and1.i.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool25.not = icmp eq i32 %and1.i.i.i.i.i, 0
  %or.cond = select i1 %tobool25.not, i1 %cmp28.not, i1 false
  br i1 %or.cond, label %if.end30, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end30:                                         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef 2147483647) #9
  br label %while.cond

while.end.loopexit71.split.loop.exit:             ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %retval.0.i62 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit71.split.loop.exit, %signal_pending.exit.while.end_crit_edge, %if.end21.while.end_crit_edge, %if.end18.while.end_crit_edge, %if.end14.while.end_crit_edge
  %ret.0 = phi i32 [ %29, %while.end.loopexit71.split.loop.exit ], [ -11, %if.end18.while.end_crit_edge ], [ -512, %signal_pending.exit.while.end_crit_edge ], [ -512, %if.end21.while.end_crit_edge ], [ %call15, %if.end14.while.end_crit_edge ]
  call void @remove_wait_queue(ptr noundef %notification_waitq, ptr noundef nonnull %wait) #9
  br i1 %cmp28.not, label %while.end.if.end36_crit_edge, label %land.lhs.true

while.end.if.end36_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %ret.0)
  %cmp34.not = icmp eq i32 %ret.0, -14
  br i1 %cmp34.not, label %land.lhs.true.if.end36_crit_edge, label %if.then35

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.lhs.cast = ptrtoint ptr %buf.addr.0.ph to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %land.lhs.true.if.end36_crit_edge, %while.end.if.end36_crit_edge
  %ret.1 = phi i32 [ %sub.ptr.sub, %if.then35 ], [ -14, %land.lhs.true.if.end36_crit_edge ], [ %ret.0, %while.end.if.end36_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inotify_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %notification_waitq = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %notification_waitq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %file, ptr noundef nonnull %notification_waitq, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %notification_lock) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %4 = ptrtoint ptr %notification_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %notification_lock, align 4
  %5 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %fsnotify_notify_queue_is_empty.exit, !prof !147

do.body4.i:                                       ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/fsnotify_backend.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 588, 0\0A.popsection", ""() #9, !srcloc !162
  unreachable

fsnotify_notify_queue_is_empty.exit:              ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  %notification_list.i = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %notification_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %notification_list.i, align 4
  %cmp.i.i = icmp eq ptr %7, %notification_list.i
  %spec.select = select i1 %cmp.i.i, i32 0, i32 65
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #9
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inotify_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inotify_ioctl.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inotify_ioctl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @inotify_ioctl.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, ptr noundef %1, i32 noundef %cmd) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.end.sw.epilog_crit_edge [
    i32 21531, label %sw.bb
    i32 1074022656, label %sw.bb21
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %notification_lock) #9
  %notification_list = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %notification_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %fsn_event.044 = load ptr, ptr %notification_list, align 4
  %cmp.not45 = icmp eq ptr %fsn_event.044, %notification_list
  br i1 %cmp.not45, label %sw.bb.for.end_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

sw.bb.for.end_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %fsn_event.047 = phi ptr [ %fsn_event.0, %for.body.for.body_crit_edge ], [ %fsn_event.044, %sw.bb.for.body_crit_edge ]
  %send_len.046 = phi i32 [ %add8, %for.body.for.body_crit_edge ], [ 0, %sw.bb.for.body_crit_edge ]
  %add = add i32 %send_len.046, 16
  %name_len.i = getelementptr inbounds %struct.inotify_event_info, ptr %fsn_event.047, i32 0, i32 4
  %5 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %name_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %add2.i = add i32 %6, 16
  %div6.i = and i32 %add2.i, -16
  %retval.0.i42 = select i1 %tobool.not.i, i32 0, i32 %div6.i
  %add8 = add i32 %add, %retval.0.i42
  %7 = ptrtoint ptr %fsn_event.047 to i32
  call void @__asan_load4_noabort(i32 %7)
  %fsn_event.0 = load ptr, ptr %fsn_event.047, align 4
  %cmp.not = icmp eq ptr %fsn_event.0, %notification_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.bb.for.end_crit_edge
  %send_len.0.lcssa = phi i32 [ 0, %sw.bb.for.end_crit_edge ], [ %add8, %for.body.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 322) #9
  %8 = tail call i32 @llvm.read_register.i32(metadata !136) #9
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !163
  %and.i = and i32 %10, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  %11 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %send_len.0.lcssa, i32 -1226833921) #9, !srcloc !166
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  br label %sw.epilog

sw.bb21:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %12 = icmp sgt i32 %arg, 0
  br i1 %12, label %if.then24, label %sw.bb21.sw.epilog_crit_edge

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then24:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  %13 = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %13) #9
  %idr_next.i = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 15, i32 0, i32 6, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %14 = ptrtoint ptr %idr_next.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %arg, ptr %idr_next.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %13) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then24, %sw.bb21.sw.epilog_crit_edge, %for.end, %do.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -25, %do.end.sw.epilog_crit_edge ], [ 0, %if.then24 ], [ -22, %sw.bb21.sw.epilog_crit_edge ], [ %11, %for.end ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inotify_release(ptr nocapture noundef readnone %ignored, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inotify_release.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inotify_release, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @inotify_release.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @fsnotify_destroy_group(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify_fasync(i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inotify_show_fdinfo(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_event_to_user(ptr noundef %group, ptr noundef %fsn_event, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  %inotify_event = alloca %struct.inotify_event, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inotify_event) #9
  %0 = getelementptr inbounds %struct.inotify_event, ptr %inotify_event, i32 0, i32 1
  %1 = getelementptr inbounds %struct.inotify_event, ptr %inotify_event, i32 0, i32 2
  %2 = getelementptr inbounds %struct.inotify_event, ptr %inotify_event, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @copy_event_to_user.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@copy_event_to_user, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @copy_event_to_user.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef %group, ptr noundef %fsn_event) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %name_len4 = getelementptr inbounds %struct.inotify_event_info, ptr %fsn_event, i32 0, i32 4
  %3 = ptrtoint ptr %name_len4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %name_len4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %add2.i = add i32 %4, 16
  %div6.i = and i32 %add2.i, -16
  %retval.0.i60 = select i1 %tobool.not.i, i32 0, i32 %div6.i
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %retval.0.i60, ptr %2, align 4
  %mask = getelementptr inbounds %struct.inotify_event_info, ptr %fsn_event, i32 0, i32 1
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %and.i = and i32 %7, 1073803263
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %0, align 4
  %wd = getelementptr inbounds %struct.inotify_event_info, ptr %fsn_event, i32 0, i32 2
  %9 = ptrtoint ptr %wd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wd, align 4
  %11 = ptrtoint ptr %inotify_event to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %inotify_event, align 4
  %sync_cookie = getelementptr inbounds %struct.inotify_event_info, ptr %fsn_event, i32 0, i32 3
  %12 = ptrtoint ptr %sync_cookie to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sync_cookie, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %1, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %do.end.cleanup_crit_edge, label %if.end.i.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %do.end
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 16, i32 -1226833920) #14, !srcloc !167
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %inotify_event, i32 noundef 16) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %inotify_event, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool10.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool10.not, label %if.end12, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %copy_to_user.exit
  %add.ptr = getelementptr i8, ptr %buf, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i60)
  %tobool13.not = icmp eq i32 %retval.0.i60, 0
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  %name = getelementptr inbounds %struct.inotify_event_info, ptr %fsn_event, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp9.i.i = icmp slt i32 %4, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then14
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !146

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then14
  call void @__check_object_size(ptr noundef %name, i32 noundef %4, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #9
  %call.i.i51 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i51, label %if.then.i.i.i.copy_to_user.exit59_crit_edge, label %if.end.i.i54

if.then.i.i.i.copy_to_user.exit59_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit59

if.end.i.i54:                                     ; preds = %if.then.i.i.i
  %16 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %4, i32 -1226833920) #14, !srcloc !167
  %asmresult.i.i52 = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i52)
  %cmp.i6.i53 = icmp eq i32 %asmresult.i.i52, 0
  br i1 %cmp.i6.i53, label %if.then2.i.i57, label %if.end.i.i54.copy_to_user.exit59_crit_edge

if.end.i.i54.copy_to_user.exit59_crit_edge:       ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit59

if.then2.i.i57:                                   ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i55 = call zeroext i1 @__kasan_check_read(ptr noundef %name, i32 noundef %4) #9
  %call.i12.i.i56 = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef %name, i32 noundef %4) #9
  br label %copy_to_user.exit59

copy_to_user.exit59:                              ; preds = %if.then2.i.i57, %if.end.i.i54.copy_to_user.exit59_crit_edge, %if.then.i.i.i.copy_to_user.exit59_crit_edge
  %n.addr.0.i58 = phi i32 [ %4, %if.then.i.i.i.copy_to_user.exit59_crit_edge ], [ %call.i12.i.i56, %if.then2.i.i57 ], [ %4, %if.end.i.i54.copy_to_user.exit59_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i58)
  %tobool16.not = icmp eq i32 %n.addr.0.i58, 0
  br i1 %tobool16.not, label %if.end18, label %copy_to_user.exit59.cleanup_crit_edge

copy_to_user.exit59.cleanup_crit_edge:            ; preds = %copy_to_user.exit59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %copy_to_user.exit59
  %add.ptr19 = getelementptr i8, ptr %add.ptr, i32 %4
  %sub = sub i32 %retval.0.i60, %4
  %17 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr19, i32 %sub, i32 -1226833920) #14, !srcloc !168
  %asmresult.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i, label %if.then.i61, label %if.end18.clear_user.exit_crit_edge

if.end18.clear_user.exit_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear_user.exit

if.then.i61:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %18 = call i32 @llvm.read_register.i32(metadata !136) #9
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #6, !srcloc !163
  %and.i.i.i = and i32 %20, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #9, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  %call1.i.i = call i32 @arm_clear_user(ptr noundef %add.ptr19, i32 noundef %sub) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #9, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  br label %clear_user.exit

clear_user.exit:                                  ; preds = %if.then.i61, %if.end18.clear_user.exit_crit_edge
  %n.addr.0.i62 = phi i32 [ %call1.i.i, %if.then.i61 ], [ %sub, %if.end18.clear_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i62)
  %tobool21.not = icmp eq i32 %n.addr.0.i62, 0
  %add = add i32 %retval.0.i60, 16
  %spec.select = select i1 %tobool21.not, i32 %add, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %clear_user.exit, %copy_to_user.exit59.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit59.cleanup_crit_edge ], [ 16, %if.end12.cleanup_crit_edge ], [ %spec.select, %clear_user.exit ], [ -14, %do.end.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inotify_event) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_destroy_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_peek_first_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_remove_first_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_path_notify(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_find_mark(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_recalc_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_init_mark(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !136) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !146

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify_add_mark_locked(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_destroy_mark(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !44, !46, !47, !48, !49, !51, !53, !54, !56, !57, !58, !59, !60, !61, !62, !64, !66, !67, !69, !71, !73, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !95, !97, !99, !100, !101, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !114, !115, !116, !117, !118, !119, !120, !122, !124, !126, !128, !130, !132, !134}
!llvm.named.register.sp = !{!136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/notify/inotify/inotify_user.c", i32 707, i32 1}
!2 = !{ptr @event_enter__inotify_init1, !1, !"event_enter__inotify_init1", i1 false, i1 false}
!3 = !{ptr @__event_enter__inotify_init1, !1, !"__event_enter__inotify_init1", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__inotify_init1, !1, !"event_exit__inotify_init1", i1 false, i1 false}
!6 = !{ptr @__event_exit__inotify_init1, !1, !"__event_exit__inotify_init1", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__inotify_init1, !1, !"__syscall_meta__inotify_init1", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__inotify_init1, !1, !"__p_syscall_meta__inotify_init1", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/notify/inotify/inotify_user.c", i32 712, i32 1}
!12 = !{ptr @event_enter__inotify_init, !11, !"event_enter__inotify_init", i1 false, i1 false}
!13 = !{ptr @__event_enter__inotify_init, !11, !"__event_enter__inotify_init", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__inotify_init, !11, !"event_exit__inotify_init", i1 false, i1 false}
!16 = !{ptr @__event_exit__inotify_init, !11, !"__event_exit__inotify_init", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__inotify_init, !11, !"__syscall_meta__inotify_init", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__inotify_init, !11, !"__p_syscall_meta__inotify_init", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/notify/inotify/inotify_user.c", i32 717, i32 1}
!22 = !{ptr @event_enter__inotify_add_watch, !21, !"event_enter__inotify_add_watch", i1 false, i1 false}
!23 = !{ptr @__event_enter__inotify_add_watch, !21, !"__event_enter__inotify_add_watch", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @event_exit__inotify_add_watch, !21, !"event_exit__inotify_add_watch", i1 false, i1 false}
!26 = !{ptr @__event_exit__inotify_add_watch, !21, !"__event_exit__inotify_add_watch", i1 false, i1 false}
!27 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__syscall_meta__inotify_add_watch, !21, !"__syscall_meta__inotify_add_watch", i1 false, i1 false}
!29 = !{ptr @__p_syscall_meta__inotify_add_watch, !21, !"__p_syscall_meta__inotify_add_watch", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/notify/inotify/inotify_user.c", i32 781, i32 1}
!32 = !{ptr @event_enter__inotify_rm_watch, !31, !"event_enter__inotify_rm_watch", i1 false, i1 false}
!33 = !{ptr @__event_enter__inotify_rm_watch, !31, !"__event_enter__inotify_rm_watch", i1 false, i1 false}
!34 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @event_exit__inotify_rm_watch, !31, !"event_exit__inotify_rm_watch", i1 false, i1 false}
!36 = !{ptr @__event_exit__inotify_rm_watch, !31, !"__event_exit__inotify_rm_watch", i1 false, i1 false}
!37 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__syscall_meta__inotify_rm_watch, !31, !"__syscall_meta__inotify_rm_watch", i1 false, i1 false}
!39 = !{ptr @__p_syscall_meta__inotify_rm_watch, !31, !"__p_syscall_meta__inotify_rm_watch", i1 false, i1 false}
!40 = !{ptr @__initcall__kmod_inotify_user__329_864_inotify_user_setup5, !41, !"__initcall__kmod_inotify_user__329_864_inotify_user_setup5", i1 false, i1 false}
!41 = !{!"../fs/notify/inotify/inotify_user.c", i32 864, i32 1}
!42 = !{ptr @inotify_inode_mark_cachep, !43, !"inotify_inode_mark_cachep", i1 false, i1 false}
!43 = !{!"../fs/notify/inotify/inotify_user.c", i32 52, i32 20}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../fs/notify/inotify/inotify_user.c", i32 454, i32 3}
!46 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__func__.inotify_remove_from_idr, !45, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../fs/notify/inotify/inotify_user.c", i32 462, i32 3}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../fs/notify/inotify/inotify_user.c", i32 473, i32 3}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/notify/inotify/inotify_user.c", i32 486, i32 3}
!56 = !{ptr @inotify_remove_from_idr._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @inotify_remove_from_idr._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @types__inotify_init1, !1, !"types__inotify_init1", i1 false, i1 false}
!60 = !{ptr @.str.19, !1, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @args__inotify_init1, !1, !"args__inotify_init1", i1 false, i1 false}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/notify/inotify/inotify_user.c", i32 699, i32 25}
!64 = !{ptr @inotify_new_group.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../fs/notify/inotify/inotify_user.c", i32 666, i32 2}
!66 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../fs/notify/inotify/inotify_user.c", i32 668, i32 43}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../fs/notify/inotify/inotify_user.c", i32 669, i32 8}
!71 = !{ptr @xa_init_flags.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!73 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @inotify_max_queued_events, !75, !"inotify_max_queued_events", i1 false, i1 false}
!75 = !{!"../fs/notify/inotify/inotify_user.c", i32 50, i32 12}
!76 = !{ptr @inotify_fops, !77, !"inotify_fops", i1 false, i1 false}
!77 = !{!"../fs/notify/inotify/inotify_user.c", i32 343, i32 37}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/notify/inotify/inotify_user.c", i32 253, i32 3}
!80 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @inotify_read.__UNIQUE_ID_ddebug301, !79, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/notify/inotify/inotify_user.c", i32 166, i32 2}
!85 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @get_one_event.__UNIQUE_ID_ddebug299, !84, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/notify/inotify/inotify_user.c", i32 195, i32 2}
!89 = !{ptr @copy_event_to_user.__UNIQUE_ID_ddebug300, !88, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!92 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/notify/inotify/inotify_user.c", i32 311, i32 2}
!99 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @inotify_ioctl.__UNIQUE_ID_ddebug303, !98, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/notify/inotify/inotify_user.c", i32 291, i32 2}
!103 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @inotify_release.__UNIQUE_ID_ddebug302, !102, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!105 = !{ptr @.str.37, !21, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.38, !21, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @types__inotify_add_watch, !21, !"types__inotify_add_watch", i1 false, i1 false}
!108 = !{ptr @.str.39, !21, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.40, !21, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.41, !21, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @args__inotify_add_watch, !21, !"args__inotify_add_watch", i1 false, i1 false}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!114 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.45, !31, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @types__inotify_rm_watch, !31, !"types__inotify_rm_watch", i1 false, i1 false}
!118 = !{ptr @.str.46, !31, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @args__inotify_rm_watch, !31, !"args__inotify_rm_watch", i1 false, i1 false}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/notify/inotify/inotify_user.c", i32 854, i32 30}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/notify/inotify/inotify_user.c", i32 93, i32 18}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/notify/inotify/inotify_user.c", i32 63, i32 15}
!126 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/notify/inotify/inotify_user.c", i32 72, i32 15}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/notify/inotify/inotify_user.c", i32 81, i32 15}
!130 = !{ptr @inotify_table, !131, !"inotify_table", i1 false, i1 false}
!131 = !{!"../fs/notify/inotify/inotify_user.c", i32 61, i32 25}
!132 = !{ptr @it_zero, !133, !"it_zero", i1 false, i1 false}
!133 = !{!"../fs/notify/inotify/inotify_user.c", i32 58, i32 13}
!134 = !{ptr @it_int_max, !135, !"it_int_max", i1 false, i1 false}
!135 = !{!"../fs/notify/inotify/inotify_user.c", i32 59, i32 13}
!136 = !{!"sp"}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"branch_weights", i32 2000, i32 1}
!147 = !{!"branch_weights", i32 1, i32 2000}
!148 = !{i64 2155404655, i64 2155405152, i64 2155404692, i64 2155404748, i64 2155404782, i64 2155404806, i64 2155404847, i64 2155404868, i64 2155404896, i64 2155404930}
!149 = !{i64 2155406322, i64 2155406819, i64 2155406359, i64 2155406415, i64 2155406449, i64 2155406473, i64 2155406514, i64 2155406535, i64 2155406563, i64 2155406597}
!150 = !{i64 2155414325, i64 2155414822, i64 2155414362, i64 2155414418, i64 2155414452, i64 2155414476, i64 2155414517, i64 2155414538, i64 2155414566, i64 2155414600}
!151 = !{!"auto-init"}
!152 = !{!"branch_weights", i32 4001, i32 4000000}
!153 = !{!154}
!154 = distinct !{!154, !155, !"fdget: %agg.result"}
!155 = distinct !{!155, !"fdget"}
!156 = !{i64 2152428038}
!157 = !{i64 2152606278}
!158 = !{!159}
!159 = distinct !{!159, !160, !"fdget: %agg.result"}
!160 = distinct !{!160, !"fdget"}
!161 = !{i64 2148502714, i64 2148502719, i64 2148502732, i64 2148502776, i64 2148502810, i64 2148502831}
!162 = !{i64 2152632016, i64 2152632513, i64 2152632053, i64 2152632109, i64 2152632143, i64 2152632167, i64 2152632208, i64 2152632229, i64 2152632257, i64 2152632291}
!163 = !{i64 4684612}
!164 = !{i64 4684809}
!165 = !{i64 2152170042}
!166 = !{i64 2155400140, i64 2155400420, i64 2155400754, i64 2155401088}
!167 = !{i64 2152189738, i64 2152189763}
!168 = !{i64 2152185859, i64 2152185884}
