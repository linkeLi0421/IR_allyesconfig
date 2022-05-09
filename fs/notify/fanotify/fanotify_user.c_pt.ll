; ModuleID = '/llk/IR_all_yes/fs/notify/fanotify/fanotify_user.c_pt.bc'
source_filename = "../fs/notify/fanotify/fanotify_user.c"
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
%struct.atomic_t = type { i32 }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.30 }
%union.anon.30 = type { [5 x %struct.uid_gid_extent] }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.40, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.60, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23 }
%struct.llist_node = type { ptr }
%union.anon.23 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.25 }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.60 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.42 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.42 = type { %struct.callback_head }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.112 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.112 = type { %struct.fanotify_group_private_data }
%struct.fanotify_group_private_data = type { ptr, %struct.list_head, %struct.wait_queue_head, i32, i32, ptr, %struct.mempool_s }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.fanotify_event = type { %struct.fsnotify_event, %struct.hlist_node, i32, %struct.anon.114, ptr }
%struct.fsnotify_event = type { %struct.list_head }
%struct.anon.114 = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.18, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fanotify_perm_event = type { %struct.fanotify_event, %struct.path, i16, i16, i32 }
%struct.fanotify_response = type { i32, i32 }
%struct.fanotify_event_info_error = type { %struct.fanotify_event_info_header, i32, i32 }
%struct.fanotify_event_info_header = type { i8, i8, i16 }
%struct.fanotify_event_info_pidfd = type { %struct.fanotify_event_info_header, i32 }
%struct.fanotify_event_metadata = type { i32, i8, i8, i16, i64, i32, i32 }
%struct.fanotify_path_event = type { %struct.fanotify_event, %struct.path }
%struct.fanotify_name_event = type { %struct.fanotify_event, %struct.__kernel_fsid_t, %struct.fanotify_info }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.fanotify_info = type { i8, i8, i8, i8, i8, [3 x i8], [0 x i8] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.fanotify_error_event = type { %struct.fanotify_event, i32, i32, %struct.__kernel_fsid_t, %struct.anon.116 }
%struct.anon.116 = type { %struct.fanotify_fh, [128 x i8] }
%struct.fanotify_fh = type { i8, i8, i8, i8, [0 x i8] }
%struct.fanotify_fid_event = type { %struct.fanotify_event, %struct.__kernel_fsid_t, %struct.anon.115 }
%struct.anon.115 = type { %struct.fanotify_fh, [12 x i8] }
%struct.fanotify_event_info_fid = type { %struct.fanotify_event_info_header, %struct.__kernel_fsid_t, [0 x i8] }
%struct.file_handle = type { i32, i32, [0 x i8] }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.73, %struct.list_head, %struct.list_head, %union.anon.74 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.19, ptr }
%union.anon.19 = type { i64 }
%struct.lockref = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.spinlock, i32 }
%union.anon.73 = type { %struct.list_head }
%union.anon.74 = type { %struct.hlist_node }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.106, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.107, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.108, ptr, %struct.address_space, %struct.list_head, %union.anon.109, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.106 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.107 = type { %struct.callback_head }
%union.anon.108 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.109 = type { ptr }
%struct.ucounts = type { %struct.hlist_node, ptr, %struct.kuid_t, %struct.atomic_t, [16 x %struct.atomic_t] }
%struct.fsnotify_mark = type { i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.spinlock, %struct.hlist_node, ptr, i32, i32 }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_enter_fanotify_init\00", [40 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__fanotify_init = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 2, ptr @types__fanotify_init, ptr @args__fanotify_init, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fanotify_init, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fanotify_init, i64 20) }, ptr @event_enter__fanotify_init, ptr @event_exit__fanotify_init }, align 4
@event_enter__fanotify_init = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__fanotify_init, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fanotify_init = internal global ptr @event_enter__fanotify_init, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_exit_fanotify_init\00", [41 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__fanotify_init = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__fanotify_init, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fanotify_init = internal global ptr @event_exit__fanotify_init, section "_ftrace_events", align 4
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_fanotify_init\00", [46 x i8] zeroinitializer }, align 32
@types__fanotify_init = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.6, ptr @.str.6], [24 x i8] zeroinitializer }, align 32
@args__fanotify_init = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.7, ptr @.str.8], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fanotify_init = internal global ptr @__syscall_meta__fanotify_init, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_enter_fanotify_mark\00", [40 x i8] zeroinitializer }, align 32
@__syscall_meta__fanotify_mark = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 5, ptr @types__fanotify_mark, ptr @args__fanotify_mark, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fanotify_mark, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fanotify_mark, i64 20) }, ptr @event_enter__fanotify_mark, ptr @event_exit__fanotify_mark }, align 4
@event_enter__fanotify_mark = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__fanotify_mark, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fanotify_mark = internal global ptr @event_enter__fanotify_mark, section "_ftrace_events", align 4
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_exit_fanotify_mark\00", [41 x i8] zeroinitializer }, align 32
@event_exit__fanotify_mark = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__fanotify_mark, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fanotify_mark = internal global ptr @event_exit__fanotify_mark, section "_ftrace_events", align 4
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_fanotify_mark\00", [46 x i8] zeroinitializer }, align 32
@types__fanotify_mark = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.42, ptr @.str.6, ptr @.str.43, ptr @.str.42, ptr @.str.44], [44 x i8] zeroinitializer }, align 32
@args__fanotify_mark = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.45, ptr @.str.7, ptr @.str.46, ptr @.str.47, ptr @.str.48], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fanotify_mark = internal global ptr @__syscall_meta__fanotify_mark, section "__syscalls_metadata", align 4
@__initcall__kmod_fanotify_user__328_1754_fanotify_user_setup6 = internal global ptr @fanotify_user_setup, section ".initcall6.init", align 4
@fanotify_mark_cache = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@fanotify_fid_event_cachep = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@fanotify_path_event_cachep = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@fanotify_perm_event_cachep = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"event_f_flags\00", [18 x i8] zeroinitializer }, align 32
@__do_sys_fanotify_init.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, i8 1, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fanotify_user\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__do_sys_fanotify_init\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fs/notify/fanotify/fanotify_user.c\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: flags=%x event_f_flags=%x\0A\00", [33 x i8] zeroinitializer }, align 32
@fanotify_fsnotify_ops = external dso_local constant %struct.fsnotify_ops, align 4
@__do_sys_fanotify_init.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&group->fanotify_data.access_waitq\00", [61 x i8] zeroinitializer }, align 32
@fanotify_max_queued_events = internal global i32 0, section ".data..read_mostly", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[fanotify]\00", [21 x i8] zeroinitializer }, align 32
@fanotify_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @fanotify_read, ptr @fanotify_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fanotify_poll, ptr @fanotify_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @fanotify_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fanotify_show_fdinfo, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fanotify_read.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.16, ptr @.str.11, ptr @.str.17, i8 0, i8 -68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fanotify_read\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: group=%p\0A\00", [18 x i8] zeroinitializer }, align 32
@get_one_event.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.18, ptr @.str.11, ptr @.str.19, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_one_event\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: group=%p count=%zd\0A\00", [40 x i8] zeroinitializer }, align 32
@fanotify_info_dir_fh_len.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs/notify/fanotify/fanotify.h\00", [34 x i8] zeroinitializer }, align 32
@fanotify_info_dir2_fh_len.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_unhash_event.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.21, ptr @.str.11, ptr @.str.22, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fanotify_unhash_event\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: group=%p event=%p bucket=%u\0A\00", [63 x i8] zeroinitializer }, align 32
@fanotify_unhash_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@copy_event_to_user.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.23, ptr @.str.11, ptr @.str.24, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"copy_event_to_user\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: group=%p event=%p\0A\00", [41 x i8] zeroinitializer }, align 32
@copy_event_to_user.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@copy_event_to_user.__already_done.25 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@copy_fid_info_to_user.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.30, ptr @.str.11, ptr @.str.31, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"copy_fid_info_to_user\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: fh_len=%zu name_len=%zu, info_len=%zu, count=%zu\0A\00", [42 x i8] zeroinitializer }, align 32
@copy_fid_info_to_user.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@copy_fid_info_to_user.__already_done.32 = internal unnamed_addr global i1 false, section ".data.once", align 1
@copy_fid_info_to_user.__already_done.33 = internal unnamed_addr global i1 false, section ".data.once", align 1
@copy_fid_info_to_user.__already_done.34 = internal unnamed_addr global i1 false, section ".data.once", align 1
@copy_fid_info_to_user.__already_done.35 = internal unnamed_addr global i1 false, section ".data.once", align 1
@copy_fid_info_to_user.__already_done.36 = internal unnamed_addr global i1 false, section ".data.once", align 1
@copy_fid_info_to_user.__already_done.37 = internal unnamed_addr global i1 false, section ".data.once", align 1
@copy_pidfd_info_to_user.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_write.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.38, ptr @.str.11, ptr @.str.39, i8 0, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fanotify_write\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: group=%p count=%zu\0A\00", [40 x i8] zeroinitializer }, align 32
@process_access_response.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.40, ptr @.str.11, ptr @.str.41, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"process_access_response\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: group=%p fd=%d response=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"__u64\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fanotify_fd\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mask\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dfd\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pathname\00", [23 x i8] zeroinitializer }, align 32
@do_fanotify_mark.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.49, ptr @.str.11, ptr @.str.50, i8 1, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_fanotify_mark\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: fanotify_fd=%d flags=%x dfd=%d pathname=%p mask=%llx\0A\00", [38 x i8] zeroinitializer }, align 32
@fanotify_find_path.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.51, ptr @.str.11, ptr @.str.52, i8 0, i8 -18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fanotify_find_path\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: dfd=%d filename=%p flags=%x\0A\00", [63 x i8] zeroinitializer }, align 32
@fanotify_add_inode_mark.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.53, ptr @.str.11, ptr @.str.54, i8 1, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fanotify_add_inode_mark\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: group=%p inode=%p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsnotify_mark\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fanotify_fid_event\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fanotify_path_event\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fanotify_perm_event\00", [44 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fs/fanotify\00", [20 x i8] zeroinitializer }, align 32
@fanotify_table = internal global { [4 x %struct.ctl_table], [48 x i8] } { [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.60, ptr getelementptr (i8, ptr @init_user_ns, i64 488), i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ft_zero, ptr @ft_int_max }, %struct.ctl_table { ptr @.str.61, ptr getelementptr (i8, ptr @init_user_ns, i64 492), i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ft_zero, ptr @ft_int_max }, %struct.ctl_table { ptr @.str.62, ptr @fanotify_max_queued_events, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max_user_groups\00", [16 x i8] zeroinitializer }, align 32
@ft_zero = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ft_int_max = internal global { i32, [28 x i8] } { i32 2147483647, [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max_user_marks\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_queued_events\00", [46 x i8] zeroinitializer }, align 32
@sysctl_vals = external dso_local constant [0 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 8]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.68 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 10, i64 12]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 256]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 128]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 256]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 256]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 256]
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"event_enter__fanotify_init\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [26 x i8] c"event_exit__fanotify_init\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [21 x i8] c"types__fanotify_init\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [20 x i8] c"args__fanotify_init\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [27 x i8] c"event_enter__fanotify_mark\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [26 x i8] c"event_exit__fanotify_mark\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [21 x i8] c"types__fanotify_mark\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"args__fanotify_mark\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1257, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1265, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1371, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1409, i32 24 }
@___asan_gen_.144 = private unnamed_addr constant [14 x i8] c"fanotify_fops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 936, i32 37 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 755, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 223, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [33 x i8] c"../fs/notify/fanotify/fanotify.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 110, i32 6 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 200, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 629, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 230, i32 6 }
@___asan_gen_.178 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 214, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 174, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 563, i32 10 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 385, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 844, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 315, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1690, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1499, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 954, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1212, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1735, i32 24 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1737, i32 30 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1739, i32 31 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1743, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 94, i32 18 }
@___asan_gen_.258 = private unnamed_addr constant [15 x i8] c"fanotify_table\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 62, i32 25 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 64, i32 15 }
@___asan_gen_.264 = private unnamed_addr constant [8 x i8] c"ft_zero\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 59, i32 13 }
@___asan_gen_.267 = private unnamed_addr constant [11 x i8] c"ft_int_max\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 60, i32 13 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 73, i32 15 }
@___asan_gen_.273 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.274 = private constant [38 x i8] c"../fs/notify/fanotify/fanotify_user.c\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 82, i32 15 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__event_enter__fanotify_init, ptr @__event_enter__fanotify_mark, ptr @__event_exit__fanotify_init, ptr @__event_exit__fanotify_mark, ptr @__initcall__kmod_fanotify_user__328_1754_fanotify_user_setup6, ptr @__p_syscall_meta__fanotify_init, ptr @__p_syscall_meta__fanotify_mark, ptr @__syscall_meta__fanotify_init, ptr @__syscall_meta__fanotify_mark, ptr @event_enter__fanotify_init, ptr @event_enter__fanotify_mark, ptr @event_exit__fanotify_init, ptr @event_exit__fanotify_mark, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__fanotify_init, ptr @args__fanotify_init, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__fanotify_mark, ptr @args__fanotify_mark, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @fanotify_fops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @fanotify_table, ptr @.str.60, ptr @ft_zero, ptr @ft_int_max, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fanotify_init to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fanotify_init to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fanotify_init to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fanotify_init to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fanotify_mark to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fanotify_mark to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fanotify_mark to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fanotify_mark to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanotify_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanotify_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_zero to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_int_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_fanotify_init = dso_local alias i32 (i32, i32), ptr @__se_sys_fanotify_init
@sys_fanotify_mark = dso_local alias i32 (i32, i32, i64, i32, ptr), ptr @__se_sys_fanotify_mark

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fanotify_init(i32 noundef %flags, i32 noundef %event_f_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__do_sys_fanotify_init(i32 noundef %flags, i32 noundef %event_f_flags)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__do_sys_fanotify_init(i32 noundef %flags, i32 noundef %event_f_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %flags, 7680
  %and1 = and i32 %flags, 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__do_sys_fanotify_init.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__do_sys_fanotify_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__do_sys_fanotify_init.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %flags, i32 noundef %event_f_flags) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call4, label %do.end.if.end11_crit_edge, label %if.then5

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then5:                                         ; preds = %do.end
  %and6 = and i32 %flags, 444
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp ne i32 %and6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool7.not, %tobool8.not
  br i1 %or.cond, label %if.then5.cleanup_crit_edge, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %do.end.if.end11_crit_edge
  %internal_flags.0 = phi i32 [ 0, %do.end.if.end11_crit_edge ], [ -2147483648, %if.then5.if.end11_crit_edge ]
  %and12 = and i32 %flags, -8128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %0 = and i32 %flags, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %0)
  %1 = icmp ne i32 %0, 384
  %and22 = and i32 %event_f_flags, -1973252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %or.cond196 = and i1 %1, %tobool23.not
  %and26 = and i32 %event_f_flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and26)
  %switch = icmp ne i32 %and26, 3
  %or.cond197 = and i1 %switch, %or.cond196
  br i1 %or.cond197, label %sw.epilog, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp.not = icmp ne i32 %and1, 0
  %or.cond193.not = and i1 %tobool27.not, %cmp.not
  %2 = and i32 %flags, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %2)
  %.not = icmp eq i32 %2, 2048
  %or.cond200 = or i1 %.not, %or.cond193.not
  br i1 %or.cond200, label %sw.epilog.cleanup_crit_edge, label %if.end37

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37:                                         ; preds = %sw.epilog
  %and38 = and i32 %flags, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %3 = and i32 %flags, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %3)
  %.not199 = icmp eq i32 %3, 2560
  %or.cond201 = or i1 %tobool39.not, %.not199
  br i1 %or.cond201, label %if.end47, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %and48 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %spec.select = select i1 %tobool49.not, i32 67108866, i32 67633154
  %and53 = shl nuw nsw i32 %flags, 10
  %4 = and i32 %and53, 2048
  %5 = or i32 %spec.select, %4
  %call58 = tail call ptr @fsnotify_alloc_user_group(ptr noundef nonnull @fanotify_fsnotify_ops) #8
  %cmp.i = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then60, label %do.end66

if.then60:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call58 to i32
  br label %cleanup

do.end66:                                         ; preds = %if.end47
  %7 = tail call i32 @llvm.read_register.i32(metadata !163) #8
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 25
  %13 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %user_ns, align 4
  %euid = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 8
  %15 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %15)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %euid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call76 = tail call ptr @inc_ucount(ptr noundef %14, [1 x i32] %.fca.0.insert, i32 noundef 10) #8
  %ucounts = getelementptr inbounds %struct.fsnotify_group, ptr %call58, i32 0, i32 15, i32 0, i32 5
  %16 = ptrtoint ptr %ucounts to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call76, ptr %ucounts, align 4
  %tobool78.not = icmp eq ptr %call76, null
  br i1 %tobool78.not, label %do.end66.out_destroy_group_crit_edge, label %if.end80

do.end66.out_destroy_group_crit_edge:             ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_destroy_group

if.end80:                                         ; preds = %do.end66
  %17 = getelementptr inbounds %struct.fsnotify_group, ptr %call58, i32 0, i32 15
  %or81 = or i32 %internal_flags.0, %flags
  %flags82 = getelementptr inbounds %struct.fsnotify_group, ptr %call58, i32 0, i32 15, i32 0, i32 3
  %18 = ptrtoint ptr %flags82 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or81, ptr %flags82, align 4
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 53
  %21 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mm, align 8
  %call85 = tail call ptr @get_mem_cgroup_from_mm(ptr noundef %22) #8
  %memcg = getelementptr inbounds %struct.fsnotify_group, ptr %call58, i32 0, i32 14
  %23 = ptrtoint ptr %memcg to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call85, ptr %memcg, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 4197568, i32 noundef 512) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %fanotify_alloc_merge_hash.exit.thread, label %if.end90

fanotify_alloc_merge_hash.exit.thread:            ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %17, align 4
  br label %out_destroy_group

if.end90:                                         ; preds = %if.end80
  %26 = call ptr @memset(ptr %call7.i.i, i32 0, i32 512)
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %17, align 4
  %call91 = tail call fastcc ptr @fanotify_alloc_overflow_event()
  %overflow_event = getelementptr inbounds %struct.fsnotify_group, ptr %call58, i32 0, i32 13
  %28 = ptrtoint ptr %overflow_event to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call91, ptr %overflow_event, align 4
  %tobool93.not = icmp eq ptr %call91, null
  br i1 %tobool93.not, label %if.end90.out_destroy_group_crit_edge, label %if.end103, !prof !174

if.end90.out_destroy_group_crit_edge:             ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_destroy_group

if.end103:                                        ; preds = %if.end90
  %f_flags104 = getelementptr inbounds %struct.fsnotify_group, ptr %call58, i32 0, i32 15, i32 0, i32 4
  %29 = ptrtoint ptr %f_flags104 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %event_f_flags, ptr %f_flags104, align 4
  %access_waitq = getelementptr inbounds %struct.fsnotify_group, ptr %call58, i32 0, i32 15, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %access_waitq, ptr noundef nonnull @.str.14, ptr noundef nonnull @__do_sys_fanotify_init.__key) #8
  %access_list = getelementptr inbounds %struct.fsnotify_group, ptr %call58, i32 0, i32 15, i32 0, i32 1
  %30 = ptrtoint ptr %access_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %access_list, ptr %access_list, align 4
  %prev.i = getelementptr inbounds %struct.fsnotify_group, ptr %call58, i32 0, i32 15, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %access_list, ptr %prev.i, align 4
  %32 = zext i32 %and1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and1, label %if.end103.out_destroy_group_crit_edge [
    i32 0, label %if.end103.sw.epilog114_crit_edge
    i32 4, label %sw.bb109
    i32 8, label %sw.bb111
  ]

if.end103.sw.epilog114_crit_edge:                 ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog114

if.end103.out_destroy_group_crit_edge:            ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_destroy_group

sw.bb109:                                         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog114

sw.bb111:                                         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog114

sw.epilog114:                                     ; preds = %sw.bb111, %sw.bb109, %if.end103.sw.epilog114_crit_edge
  %.sink = phi i32 [ 2, %sw.bb111 ], [ 1, %sw.bb109 ], [ %and1, %if.end103.sw.epilog114_crit_edge ]
  %priority112 = getelementptr inbounds %struct.fsnotify_group, ptr %call58, i32 0, i32 7
  %33 = ptrtoint ptr %priority112 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %priority112, align 4
  %and115 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.else, label %if.then117

if.then117:                                       ; preds = %sw.epilog114
  %call118 = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call118, label %if.then117.if.end122_crit_edge, label %if.then117.out_destroy_group_crit_edge

if.then117.out_destroy_group_crit_edge:           ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_destroy_group

if.then117.if.end122_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.else:                                          ; preds = %sw.epilog114
  call void @__sanitizer_cov_trace_pc() #10
  %34 = load i32, ptr @fanotify_max_queued_events, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.else, %if.then117.if.end122_crit_edge
  %.sink202 = phi i32 [ %34, %if.else ], [ -1, %if.then117.if.end122_crit_edge ]
  %max_events121 = getelementptr inbounds %struct.fsnotify_group, ptr %call58, i32 0, i32 6
  %35 = ptrtoint ptr %max_events121 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink202, ptr %max_events121, align 4
  %and123 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end122.if.end129_crit_edge, label %if.then125

if.end122.if.end129_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then125:                                       ; preds = %if.end122
  %call126 = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call126, label %if.then125.if.end129_crit_edge, label %if.then125.out_destroy_group_crit_edge

if.then125.out_destroy_group_crit_edge:           ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_destroy_group

if.then125.if.end129_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.end129:                                        ; preds = %if.then125.if.end129_crit_edge, %if.end122.if.end129_crit_edge
  %and130 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.end129.if.end136_crit_edge, label %if.then132

if.end129.if.end136_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.then132:                                       ; preds = %if.end129
  %call133 = tail call zeroext i1 @capable(i32 noundef 29) #8
  br i1 %call133, label %if.then132.if.end136_crit_edge, label %if.then132.out_destroy_group_crit_edge

if.then132.out_destroy_group_crit_edge:           ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_destroy_group

if.then132.if.end136_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.end136:                                        ; preds = %if.then132.if.end136_crit_edge, %if.end129.if.end136_crit_edge
  %call137 = tail call i32 @anon_inode_getfd(ptr noundef nonnull @.str.15, ptr noundef nonnull @fanotify_fops, ptr noundef %call58, i32 noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %cmp138 = icmp slt i32 %call137, 0
  br i1 %cmp138, label %if.end136.out_destroy_group_crit_edge, label %if.end136.cleanup_crit_edge

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end136.out_destroy_group_crit_edge:            ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_destroy_group

out_destroy_group:                                ; preds = %if.end136.out_destroy_group_crit_edge, %if.then132.out_destroy_group_crit_edge, %if.then125.out_destroy_group_crit_edge, %if.then117.out_destroy_group_crit_edge, %if.end103.out_destroy_group_crit_edge, %if.end90.out_destroy_group_crit_edge, %fanotify_alloc_merge_hash.exit.thread, %do.end66.out_destroy_group_crit_edge
  %fd.0 = phi i32 [ %call137, %if.end136.out_destroy_group_crit_edge ], [ -1, %if.then132.out_destroy_group_crit_edge ], [ -1, %if.then125.out_destroy_group_crit_edge ], [ -1, %if.then117.out_destroy_group_crit_edge ], [ -24, %do.end66.out_destroy_group_crit_edge ], [ -12, %if.end90.out_destroy_group_crit_edge ], [ -22, %if.end103.out_destroy_group_crit_edge ], [ -12, %fanotify_alloc_merge_hash.exit.thread ]
  tail call void @fsnotify_destroy_group(ptr noundef %call58) #8
  br label %cleanup

cleanup:                                          ; preds = %out_destroy_group, %if.end136.cleanup_crit_edge, %if.then60, %if.end37.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then60 ], [ %fd.0, %out_destroy_group ], [ -1, %if.then5.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ %call137, %if.end136.cleanup_crit_edge ], [ -22, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fanotify_mark(i32 noundef %fanotify_fd, i32 noundef %flags, i64 noundef %mask, i32 noundef %dfd, i32 noundef %pathname) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %pathname to ptr
  %call.i = tail call fastcc i32 @do_fanotify_mark(i32 noundef %fanotify_fd, i32 noundef %flags, i64 noundef %mask, i32 noundef %dfd, ptr noundef %0) #8
  ret i32 %call.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fanotify_user_setup() #3 section ".init.text" align 64 {
entry:
  %si = alloca %struct.sysinfo, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %si) #8
  %0 = call ptr @memset(ptr %si, i32 255, i32 64)
  call void @si_meminfo(ptr noundef nonnull %si) #8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 12846623, i32 %shl)
  %cmp = icmp ugt i32 %shl, 12846623
  %div1 = udiv i32 %shl, 1568
  %5 = call i32 @llvm.umin.i32(i32 %div1, i32 1048576)
  %6 = select i1 %cmp, i32 %5, i32 8192
  %call = call ptr @kmem_cache_create(ptr noundef nonnull @.str.55, i32 noundef 84, i32 noundef 4, i32 noundef 67371008, ptr noundef null) #8
  store ptr %call, ptr @fanotify_mark_cache, align 4
  %call14 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.56, i32 noundef 52, i32 noundef 4, i32 noundef 262144, ptr noundef null) #8
  store ptr %call14, ptr @fanotify_fid_event_cachep, align 4
  %call15 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.57, i32 noundef 36, i32 noundef 4, i32 noundef 262144, ptr noundef null) #8
  store ptr %call15, ptr @fanotify_path_event_cachep, align 4
  %call16 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.58, i32 noundef 44, i32 noundef 4, i32 noundef 262144, ptr noundef null) #8
  store ptr %call16, ptr @fanotify_perm_event_cachep, align 4
  store i32 16384, ptr @fanotify_max_queued_events, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 18, i32 10) to i32))
  store i32 128, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 18, i32 10), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 18, i32 11) to i32))
  store i32 %6, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 18, i32 11), align 4
  %call.i = call ptr @register_sysctl(ptr noundef nonnull @.str.59, ptr noundef nonnull @fanotify_table) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %si) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_alloc_user_group(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inc_ucount(ptr noundef, [1 x i32], i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mem_cgroup_from_mm(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fanotify_alloc_overflow_event() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 4197568, i32 noundef 28) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %prev.i.i.i, align 4
  %merge_list.i = getelementptr inbounds %struct.fanotify_event, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %merge_list.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %merge_list.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.fanotify_event, ptr %call7.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pprev.i.i, align 4
  %5 = getelementptr inbounds %struct.fanotify_event, ptr %call7.i, i32 0, i32 3
  %mask1.i = getelementptr inbounds %struct.fanotify_event, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %mask1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %mask1.i, align 8
  %pid.i = getelementptr inbounds %struct.fanotify_event, ptr %call7.i, i32 0, i32 4
  %7 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pid.i, align 8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -2147483648, ptr %5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_destroy_group(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fanotify_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !163) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fanotify_read.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fanotify_read, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fanotify_read.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, ptr noundef %14) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %notification_waitq = getelementptr inbounds %struct.fsnotify_group, ptr %14, i32 0, i32 4
  call void @add_wait_queue(ptr noundef %notification_waitq, ptr noundef nonnull %wait) #8
  call void @__might_resched(ptr noundef nonnull @.str.11, i32 noundef 763, i32 noundef 0) #8
  %call.i123130 = call i32 @__cond_resched() #8
  %call9124131 = call fastcc ptr @get_one_event(ptr noundef %14, i32 noundef %count)
  %cmp.i125132 = icmp ugt ptr %call9124131, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125132, label %do.end.if.then11_crit_edge, label %if.end13.lr.ph.lr.ph

do.end.if.then11_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.end13.lr.ph.lr.ph:                             ; preds = %do.end
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %notification_lock45 = getelementptr inbounds %struct.fsnotify_group, ptr %14, i32 0, i32 2
  %access_list = getelementptr inbounds %struct.fsnotify_group, ptr %14, i32 0, i32 15, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.fsnotify_group, ptr %14, i32 0, i32 15, i32 0, i32 1, i32 1
  %access_waitq = getelementptr inbounds %struct.fsnotify_group, ptr %14, i32 0, i32 15, i32 0, i32 2
  br label %if.end13.lr.ph

if.end13.lr.ph:                                   ; preds = %if.end52.if.end13.lr.ph_crit_edge, %if.end13.lr.ph.lr.ph
  %call9124136 = phi ptr [ %call9124131, %if.end13.lr.ph.lr.ph ], [ %call9124, %if.end52.if.end13.lr.ph_crit_edge ]
  %buf.addr.0.ph134 = phi ptr [ %buf, %if.end13.lr.ph.lr.ph ], [ %add.ptr, %if.end52.if.end13.lr.ph_crit_edge ]
  %count.addr.0.ph133 = phi i32 [ %count, %if.end13.lr.ph.lr.ph ], [ %sub, %if.end52.if.end13.lr.ph_crit_edge ]
  %cmp.not = icmp eq ptr %buf.addr.0.ph134, %buf
  br label %if.end13

if.then11:                                        ; preds = %if.end52.if.then11_crit_edge, %if.end26.if.then11_crit_edge, %do.end.if.then11_crit_edge
  %buf.addr.0.ph.lcssa120 = phi ptr [ %buf, %do.end.if.then11_crit_edge ], [ %buf, %if.end26.if.then11_crit_edge ], [ %add.ptr, %if.end52.if.then11_crit_edge ]
  %call9.lcssa = phi ptr [ %call9124131, %do.end.if.then11_crit_edge ], [ %call9, %if.end26.if.then11_crit_edge ], [ %call9124, %if.end52.if.then11_crit_edge ]
  %15 = ptrtoint ptr %call9.lcssa to i32
  br label %while.end

if.end13:                                         ; preds = %if.end26.if.end13_crit_edge, %if.end13.lr.ph
  %call9126 = phi ptr [ %call9124136, %if.end13.lr.ph ], [ %call9, %if.end26.if.end13_crit_edge ]
  %tobool14.not = icmp eq ptr %call9126, null
  br i1 %tobool14.not, label %if.then15, label %if.end28

if.then15:                                        ; preds = %if.end13
  %16 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_flags, align 4
  %and = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end18, label %if.then15.while.end_crit_edge

if.then15.while.end_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end18:                                         ; preds = %if.then15
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stack.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %24 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end18.while.end_crit_edge, !prof !175

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

signal_pending.exit:                              ; preds = %if.end18
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %21, align 4
  %and1.i.i.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool22.not = icmp eq i32 %and1.i.i.i.i.i, 0
  %or.cond = select i1 %tobool22.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end26, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end26:                                         ; preds = %signal_pending.exit
  %call27 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef 2147483647) #8
  call void @__might_resched(ptr noundef nonnull @.str.11, i32 noundef 763, i32 noundef 0) #8
  %call.i = call i32 @__cond_resched() #8
  %call9 = call fastcc ptr @get_one_event(ptr noundef %14, i32 noundef %count.addr.0.ph133)
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end26.if.then11_crit_edge, label %if.end26.if.end13_crit_edge

if.end26.if.end13_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end26.if.then11_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.end28:                                         ; preds = %if.end13
  %call29 = call fastcc i32 @copy_event_to_user(ptr noundef %14, ptr noundef nonnull %call9126, ptr noundef %buf.addr.0.ph134, i32 noundef %count.addr.0.ph133)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -518, i32 %call29)
  %cmp30 = icmp eq i32 %call29, -518
  %mask101 = getelementptr inbounds %struct.fanotify_event, ptr %call9126, i32 0, i32 2
  %27 = ptrtoint ptr %mask101 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mask101, align 4
  %and.i93102 = and i32 %28, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93102)
  %tobool.i103.not = icmp eq i32 %and.i93102, 0
  br i1 %cmp30, label %if.end38.thread, label %if.end38, !prof !174

if.end38:                                         ; preds = %if.end28
  br i1 %tobool.i103.not, label %if.end38.if.then40_crit_edge, label %if.else

if.end38.if.then40_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.end38.thread:                                  ; preds = %if.end28
  br i1 %tobool.i103.not, label %if.end38.thread.if.then40_crit_edge, label %if.end38.thread.if.then42_crit_edge

if.end38.thread.if.then42_crit_edge:              ; preds = %if.end38.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

if.end38.thread.if.then40_crit_edge:              ; preds = %if.end38.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.then40:                                        ; preds = %if.end38.thread.if.then40_crit_edge, %if.end38.if.then40_crit_edge
  %ret.0105 = phi i32 [ 0, %if.end38.thread.if.then40_crit_edge ], [ %call29, %if.end38.if.then40_crit_edge ]
  call void @fsnotify_destroy_event(ptr noundef %14, ptr noundef nonnull %call9126) #8
  br label %if.end49

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call29)
  %cmp41 = icmp slt i32 %call29, 1
  br i1 %cmp41, label %if.else.if.then42_crit_edge, label %if.else44

if.else.if.then42_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

if.then42:                                        ; preds = %if.else.if.then42_crit_edge, %if.end38.thread.if.then42_crit_edge
  %ret.0106109 = phi i32 [ %call29, %if.else.if.then42_crit_edge ], [ 0, %if.end38.thread.if.then42_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %notification_lock45) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %29 = ptrtoint ptr %notification_lock45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %notification_lock45, align 4
  %30 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !174

do.body4.i:                                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/fanotify/fanotify_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 297, 0\0A.popsection", ""() #8, !srcloc !176
  unreachable

do.end9.i:                                        ; preds = %if.then42
  %response10.i = getelementptr inbounds %struct.fanotify_perm_event, ptr %call9126, i32 0, i32 2
  %31 = ptrtoint ptr %response10.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 2, ptr %response10.i, align 4
  %state.i = getelementptr inbounds %struct.fanotify_perm_event, ptr %call9126, i32 0, i32 3
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %33)
  %cmp.i94 = icmp eq i16 %33, 3
  br i1 %cmp.i94, label %if.then18.critedge.i, label %if.else.i

if.else.i:                                        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2, ptr %state.i, align 2
  call void @_raw_spin_unlock(ptr noundef %notification_lock45) #8
  br label %finish_permission_event.exit

if.then18.critedge.i:                             ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %notification_lock45) #8
  call void @fsnotify_destroy_event(ptr noundef %14, ptr noundef nonnull %call9126) #8
  br label %finish_permission_event.exit

finish_permission_event.exit:                     ; preds = %if.then18.critedge.i, %if.else.i
  call void @__wake_up(ptr noundef %access_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end49

if.else44:                                        ; preds = %if.else
  call void @_raw_spin_lock(ptr noundef %notification_lock45) #8
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9126, ptr noundef %36, ptr noundef %access_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.else44.if.end49.thread_crit_edge

if.else44.if.end49.thread_crit_edge:              ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.thread

if.end.i.i:                                       ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call9126, ptr %prev.i, align 4
  %38 = ptrtoint ptr %call9126 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %access_list, ptr %call9126, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9126, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call9126, ptr %36, align 4
  br label %if.end49.thread

if.end49.thread:                                  ; preds = %if.end.i.i, %if.else44.if.end49.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef %notification_lock45) #8
  br label %if.end52

if.end49:                                         ; preds = %finish_permission_event.exit, %if.then40
  %ret.0104 = phi i32 [ %ret.0106109, %finish_permission_event.exit ], [ %ret.0105, %if.then40 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0104)
  %cmp50 = icmp slt i32 %ret.0104, 0
  br i1 %cmp50, label %if.end49.while.end_crit_edge, label %if.end49.if.end52_crit_edge

if.end49.if.end52_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end52:                                         ; preds = %if.end49.if.end52_crit_edge, %if.end49.thread
  %ret.0104112 = phi i32 [ %call29, %if.end49.thread ], [ %ret.0104, %if.end49.if.end52_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf.addr.0.ph134, i32 %ret.0104112
  %sub = sub i32 %count.addr.0.ph133, %ret.0104112
  call void @__might_resched(ptr noundef nonnull @.str.11, i32 noundef 763, i32 noundef 0) #8
  %call.i123 = call i32 @__cond_resched() #8
  %call9124 = call fastcc ptr @get_one_event(ptr noundef %14, i32 noundef %sub)
  %cmp.i125 = icmp ugt ptr %call9124, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %if.end52.if.then11_crit_edge, label %if.end52.if.end13.lr.ph_crit_edge

if.end52.if.end13.lr.ph_crit_edge:                ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.lr.ph

if.end52.if.then11_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

while.end:                                        ; preds = %if.end49.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %if.end18.while.end_crit_edge, %if.then15.while.end_crit_edge, %if.then11
  %buf.addr.0.ph121 = phi ptr [ %buf.addr.0.ph.lcssa120, %if.then11 ], [ %buf.addr.0.ph134, %if.then15.while.end_crit_edge ], [ %buf.addr.0.ph134, %signal_pending.exit.while.end_crit_edge ], [ %buf.addr.0.ph134, %if.end18.while.end_crit_edge ], [ %buf.addr.0.ph134, %if.end49.while.end_crit_edge ]
  %ret.1 = phi i32 [ %15, %if.then11 ], [ -512, %if.end18.while.end_crit_edge ], [ -512, %signal_pending.exit.while.end_crit_edge ], [ -11, %if.then15.while.end_crit_edge ], [ %ret.0104, %if.end49.while.end_crit_edge ]
  call void @remove_wait_queue(ptr noundef %notification_waitq, ptr noundef nonnull %wait) #8
  %cmp54.not = icmp eq ptr %buf.addr.0.ph121, %buf
  br i1 %cmp54.not, label %while.end.if.end57_crit_edge, label %land.lhs.true

while.end.if.end57_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

land.lhs.true:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %ret.1)
  %cmp55.not = icmp eq i32 %ret.1, -14
  br i1 %cmp55.not, label %land.lhs.true.if.end57_crit_edge, label %if.then56

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then56:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %sub.ptr.lhs.cast = ptrtoint ptr %buf.addr.0.ph121 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %land.lhs.true.if.end57_crit_edge, %while.end.if.end57_crit_edge
  %ret.2 = phi i32 [ %sub.ptr.sub, %if.then56 ], [ -14, %land.lhs.true.if.end57_crit_edge ], [ %ret.1, %while.end.if.end57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fanotify_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %response = alloca %struct.fanotify_response, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %response) #8
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %response, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count)
  %cmp = icmp ult i32 %count, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fanotify_write.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fanotify_write, %if.then3)) #8
          to label %if.then.i [label %if.then3], !srcloc !173

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fanotify_write.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, ptr noundef %2, i32 noundef 8) #8
  br label %if.then.i

if.then.i:                                        ; preds = %if.then3, %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 8, i32 -1226833920) #12, !srcloc !177
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !175

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %response, i32 noundef 8) #8
  %4 = call i32 @llvm.read_register.i32(metadata !163) #8
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !178
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !179
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %response, ptr noundef %buf, i32 noundef 8) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #8, !srcloc !179
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end8, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !175

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.then.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %response, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end8:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call fastcc i32 @process_access_response(ptr noundef %2, ptr noundef nonnull %response)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  %spec.select = select i1 %cmp10, i32 %call9, i32 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %response) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fanotify_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %notification_waitq = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %file, ptr noundef nonnull %notification_waitq, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %notification_lock) #8
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
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %fsnotify_notify_queue_is_empty.exit, !prof !174

do.body4.i:                                       ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/fsnotify_backend.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 588, 0\0A.popsection", ""() #8, !srcloc !181
  unreachable

fsnotify_notify_queue_is_empty.exit:              ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  %notification_list.i = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %notification_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %notification_list.i, align 4
  %cmp.i.i = icmp eq ptr %7, %notification_list.i
  %spec.select = select i1 %cmp.i.i, i32 0, i32 65
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #8
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fanotify_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 21531, i32 %cmd)
  %cond = icmp eq i32 %cmd, 21531
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %2, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %notification_lock) #8
  %notification_list = getelementptr inbounds %struct.fsnotify_group, ptr %2, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %sw.bb
  %send_len.0 = phi i32 [ 0, %sw.bb ], [ %add, %for.cond.for.cond_crit_edge ]
  %fsn_event.0.in = phi ptr [ %notification_list, %sw.bb ], [ %fsn_event.0, %for.cond.for.cond_crit_edge ]
  %3 = ptrtoint ptr %fsn_event.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %fsn_event.0 = load ptr, ptr %fsn_event.0.in, align 4
  %cmp.not = icmp eq ptr %fsn_event.0, %notification_list
  %add = add i32 %send_len.0, 24
  br i1 %cmp.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 929) #8
  %4 = tail call i32 @llvm.read_register.i32(metadata !163) #8
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !178
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  %7 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %send_len.0, i32 -1226833921) #8, !srcloc !182
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #8, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %7, %for.end ], [ -25, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fanotify_release(ptr nocapture noundef readnone %ignored, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i32 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @fsnotify_group_stop_queueing(ptr noundef %1) #8
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %notification_lock) #8
  %access_list = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 15, i32 0, i32 1
  %2 = ptrtoint ptr %access_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %access_list, align 4
  %cmp.i.not46 = icmp eq ptr %3, %access_list
  br i1 %cmp.i.not46, label %entry.while.cond3.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond3.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond3.preheader

while.cond3.preheader:                            ; preds = %finish_permission_event.exit.while.cond3.preheader_crit_edge, %entry.while.cond3.preheader_crit_edge
  %call447 = tail call ptr @fsnotify_remove_first_event(ptr noundef %1) #8
  %tobool5.not48 = icmp eq ptr %call447, null
  br i1 %tobool5.not48, label %while.cond3.preheader.while.end13_crit_edge, label %while.cond3.preheader.while.body6_crit_edge

while.cond3.preheader.while.body6_crit_edge:      ; preds = %while.cond3.preheader
  br label %while.body6

while.cond3.preheader.while.end13_crit_edge:      ; preds = %while.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end13

while.body:                                       ; preds = %finish_permission_event.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %20, %finish_permission_event.exit.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %4, ptr %4, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %4, ptr %prev.i3.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %13 = ptrtoint ptr %notification_lock to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %notification_lock, align 4
  %14 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !174

do.body4.i:                                       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/fanotify/fanotify_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 297, 0\0A.popsection", ""() #8, !srcloc !176
  unreachable

do.end9.i:                                        ; preds = %list_del_init.exit
  %response10.i = getelementptr inbounds %struct.fanotify_perm_event, ptr %4, i32 0, i32 2
  %15 = ptrtoint ptr %response10.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %response10.i, align 4
  %state.i = getelementptr inbounds %struct.fanotify_perm_event, ptr %4, i32 0, i32 3
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %17)
  %cmp.i31 = icmp eq i16 %17, 3
  br i1 %cmp.i31, label %if.then18.critedge.i, label %if.else.i

if.else.i:                                        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %state.i, align 2
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #8
  br label %finish_permission_event.exit

if.then18.critedge.i:                             ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #8
  tail call void @fsnotify_destroy_event(ptr noundef %1, ptr noundef %4) #8
  br label %finish_permission_event.exit

finish_permission_event.exit:                     ; preds = %if.then18.critedge.i, %if.else.i
  tail call void @_raw_spin_lock(ptr noundef %notification_lock) #8
  %19 = ptrtoint ptr %access_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %access_list, align 4
  %cmp.i.not = icmp eq ptr %20, %access_list
  br i1 %cmp.i.not, label %finish_permission_event.exit.while.cond3.preheader_crit_edge, label %finish_permission_event.exit.while.body_crit_edge

finish_permission_event.exit.while.body_crit_edge: ; preds = %finish_permission_event.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

finish_permission_event.exit.while.cond3.preheader_crit_edge: ; preds = %finish_permission_event.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond3.preheader

while.body6:                                      ; preds = %if.end.while.body6_crit_edge, %while.cond3.preheader.while.body6_crit_edge
  %call449 = phi ptr [ %call4, %if.end.while.body6_crit_edge ], [ %call447, %while.cond3.preheader.while.body6_crit_edge ]
  %mask = getelementptr inbounds %struct.fanotify_event, ptr %call449, i32 0, i32 2
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask, align 4
  %and = and i32 %22, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then, label %if.else

if.then:                                          ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #8
  tail call void @fsnotify_destroy_event(ptr noundef %1, ptr noundef nonnull %call449) #8
  br label %if.end

if.else:                                          ; preds = %while.body6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i32)
  %23 = ptrtoint ptr %notification_lock to i32
  call void @__asan_load4_noabort(i32 %23)
  %agg.tmp.sroa.0.0.copyload.i.i34 = load volatile i32, ptr %notification_lock, align 4
  %24 = ptrtoint ptr %agg.tmp.sroa.0.i.i32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i34, ptr %agg.tmp.sroa.0.i.i32, align 4
  %lock.sroa.0.0.extract.shift.i.i.i35 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i34, 16
  %conv.i.i.i36 = and i32 %agg.tmp.sroa.0.0.copyload.i.i34, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i36, i32 %lock.sroa.0.0.extract.shift.i.i.i35)
  %cmp.i.i.not.i37 = icmp eq i32 %conv.i.i.i36, %lock.sroa.0.0.extract.shift.i.i.i35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i32)
  br i1 %cmp.i.i.not.i37, label %do.body4.i38, label %do.end9.i42, !prof !174

do.body4.i38:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/fanotify/fanotify_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 297, 0\0A.popsection", ""() #8, !srcloc !176
  unreachable

do.end9.i42:                                      ; preds = %if.else
  %response10.i39 = getelementptr inbounds %struct.fanotify_perm_event, ptr %call449, i32 0, i32 2
  %25 = ptrtoint ptr %response10.i39 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %response10.i39, align 4
  %state.i40 = getelementptr inbounds %struct.fanotify_perm_event, ptr %call449, i32 0, i32 3
  %26 = ptrtoint ptr %state.i40 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %state.i40, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %27)
  %cmp.i41 = icmp eq i16 %27, 3
  br i1 %cmp.i41, label %if.then18.critedge.i44, label %if.else.i43

if.else.i43:                                      ; preds = %do.end9.i42
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %state.i40 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 2, ptr %state.i40, align 2
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #8
  br label %if.end

if.then18.critedge.i44:                           ; preds = %do.end9.i42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #8
  tail call void @fsnotify_destroy_event(ptr noundef %1, ptr noundef nonnull %call449) #8
  br label %if.end

if.end:                                           ; preds = %if.then18.critedge.i44, %if.else.i43, %if.then
  tail call void @_raw_spin_lock(ptr noundef %notification_lock) #8
  %call4 = tail call ptr @fsnotify_remove_first_event(ptr noundef %1) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.while.end13_crit_edge, label %if.end.while.body6_crit_edge

if.end.while.body6_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body6

if.end.while.end13_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end13

while.end13:                                      ; preds = %if.end.while.end13_crit_edge, %while.cond3.preheader.while.end13_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #8
  %access_waitq = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 15, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %access_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @fsnotify_destroy_group(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fanotify_show_fdinfo(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_one_event(ptr noundef %group, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 7808
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_one_event.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_one_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_one_event.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef %group, i32 noundef %count) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %notification_lock) #8
  %call3 = tail call ptr @fsnotify_peek_first_event(ptr noundef %group) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end.out_crit_edge, label %if.end6

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end6:                                          ; preds = %do.end
  %call8 = tail call fastcc i32 @fanotify_event_len(i32 noundef %and, ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %count)
  %cmp = icmp ugt i32 %call8, %count
  br i1 %cmp, label %if.end6.out_crit_edge, label %if.end11

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @fsnotify_remove_first_event(ptr noundef %group) #8
  %mask = getelementptr inbounds %struct.fanotify_event, ptr %call3, i32 0, i32 2
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %and.i = and i32 %3, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.fanotify_perm_event, ptr %call3, i32 0, i32 3
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %state, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  %7 = and i32 %6, 475136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %if.then19, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then19:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %9 = ptrtoint ptr %notification_lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %notification_lock, align 4
  %10 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.body8.i, !prof !174

do.body4.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/fanotify/fanotify_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 198, 0\0A.popsection", ""() #8, !srcloc !183
  unreachable

do.body8.i:                                       ; preds = %if.then19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fanotify_unhash_event.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_one_event, %if.then17.i)) #8
          to label %do.end20.i [label %if.then17.i], !srcloc !173

if.then17.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = getelementptr inbounds %struct.fanotify_event, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i.i = load i32, ptr %11, align 4
  %and.i.i = and i32 %bf.load.i.i, 127
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fanotify_unhash_event.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, ptr noundef %group, ptr noundef nonnull %call3, i32 noundef %and.i.i) #8
  br label %do.end20.i

do.end20.i:                                       ; preds = %if.then17.i, %do.body8.i
  %merge_list.i = getelementptr inbounds %struct.fanotify_event, ptr %call3, i32 0, i32 1
  %pprev.i.i = getelementptr inbounds %struct.fanotify_event, ptr %call3, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %land.rhs.i, label %if.then.i.i

land.rhs.i:                                       ; preds = %do.end20.i
  %.b82.i = load i1, ptr @fanotify_unhash_event.__already_done, align 1
  br i1 %.b82.i, label %land.rhs.i.out_crit_edge, label %if.then38.i, !prof !175

land.rhs.i.out_crit_edge:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then38.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fanotify_unhash_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 203, i32 noundef 9, ptr noundef null) #8
  br label %out

if.then.i.i:                                      ; preds = %do.end20.i
  %15 = ptrtoint ptr %merge_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %merge_list.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %14, align 4
  %tobool.not.i3.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %14, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %19 = ptrtoint ptr %merge_list.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %merge_list.i, align 4
  %20 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pprev.i.i, align 4
  br label %out

out:                                              ; preds = %__hlist_del.exit.i.i, %if.then38.i, %land.rhs.i.out_crit_edge, %if.end16.out_crit_edge, %if.end6.out_crit_edge, %do.end.out_crit_edge
  %event.0 = phi ptr [ %call3, %if.end16.out_crit_edge ], [ null, %do.end.out_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end6.out_crit_edge ], [ %call3, %land.rhs.i.out_crit_edge ], [ %call3, %if.then38.i ], [ %call3, %__hlist_del.exit.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #8
  ret ptr %event.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_event_to_user(ptr noundef %group, ptr noundef %event, ptr noundef %buf, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %info.i241.i = alloca %struct.fanotify_event_info_error, align 4
  %info.i237.i = alloca %struct.fanotify_event_info_pidfd, align 8
  %metadata = alloca %struct.fanotify_event_metadata, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %metadata) #8
  %0 = getelementptr inbounds %struct.fanotify_event_metadata, ptr %metadata, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fanotify_event_metadata, ptr %metadata, i32 0, i32 2
  %2 = getelementptr inbounds %struct.fanotify_event_metadata, ptr %metadata, i32 0, i32 3
  %3 = getelementptr inbounds %struct.fanotify_event_metadata, ptr %metadata, i32 0, i32 4
  %4 = getelementptr inbounds %struct.fanotify_event_metadata, ptr %metadata, i32 0, i32 5
  %5 = getelementptr inbounds %struct.fanotify_event_metadata, ptr %metadata, i32 0, i32 6
  %6 = getelementptr inbounds %struct.fanotify_event, ptr %event, i32 0, i32 3
  %7 = call ptr @memset(ptr %metadata, i32 255, i32 24)
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i = load i32, ptr %6, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  %9 = zext i32 %bf.lshr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %bf.lshr.i, label %entry.fanotify_event_path.exit_crit_edge [
    i32 2, label %if.then.i
    i32 3, label %if.then4.i
  ]

entry.fanotify_event_path.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_path.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %path.i = getelementptr inbounds %struct.fanotify_path_event, ptr %event, i32 0, i32 1
  br label %fanotify_event_path.exit

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %path6.i = getelementptr inbounds %struct.fanotify_perm_event, ptr %event, i32 0, i32 1
  br label %fanotify_event_path.exit

fanotify_event_path.exit:                         ; preds = %if.then4.i, %if.then.i, %entry.fanotify_event_path.exit_crit_edge
  %retval.0.i250 = phi ptr [ %path.i, %if.then.i ], [ %path6.i, %if.then4.i ], [ null, %entry.fanotify_event_path.exit_crit_edge ]
  %bf.lshr.mask.i = and i32 %bf.load.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask.i)
  %cmp.i = icmp eq i32 %bf.lshr.mask.i, 536870912
  %info.i = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 0, i32 2
  %spec.select.i = select i1 %cmp.i, ptr %info.i, ptr null
  %flags = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 7808
  %and2 = and i32 %11, 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @copy_event_to_user.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@copy_event_to_user, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %fanotify_event_path.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @copy_event_to_user.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, ptr noundef %group, ptr noundef %event) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %fanotify_event_path.exit
  %call6 = tail call fastcc i32 @fanotify_event_len(i32 noundef %and, ptr noundef %event)
  %12 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call6, ptr %metadata, align 8
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 24, ptr %2, align 2
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %0, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %1, align 1
  %mask = getelementptr inbounds %struct.fanotify_event, ptr %event, i32 0, i32 2
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask, align 4
  %and7 = and i32 %17, 1342693375
  %conv = zext i32 %and7 to i64
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv, ptr %3, align 8
  %pid = getelementptr inbounds %struct.fanotify_event, ptr %event, i32 0, i32 4
  %19 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pid, align 4
  %call9 = tail call i32 @pid_vnr(ptr noundef %20) #8
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call9, ptr %5, align 4
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %tobool13.not = icmp sgt i32 %23, -1
  br i1 %tobool13.not, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %24 = tail call i32 @llvm.read_register.i32(metadata !163) #8
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 111
  %28 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %29, i32 0, i32 22, i32 1
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %32 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pid, align 4
  %cmp.not = icmp eq ptr %31, %33
  br i1 %cmp.not, label %land.lhs.true.if.end36_crit_edge, label %if.then18

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %5, align 4
  br label %if.end36

if.end20:                                         ; preds = %do.end
  %tobool25.not = icmp eq ptr %retval.0.i250, null
  br i1 %tobool25.not, label %if.end20.if.end36_crit_edge, label %land.lhs.true26

if.end20.if.end36_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true26:                                  ; preds = %if.end20
  %35 = ptrtoint ptr %retval.0.i250 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %retval.0.i250, align 4
  %tobool27.not = icmp eq ptr %36, null
  br i1 %tobool27.not, label %land.lhs.true26.if.end36_crit_edge, label %land.lhs.true28

land.lhs.true26.if.end36_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true28:                                  ; preds = %land.lhs.true26
  %dentry = getelementptr inbounds %struct.path, ptr %retval.0.i250, i32 0, i32 1
  %37 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dentry, align 4
  %tobool29.not = icmp eq ptr %38, null
  br i1 %tobool29.not, label %land.lhs.true28.if.end36_crit_edge, label %if.then30

land.lhs.true28.if.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then30:                                        ; preds = %land.lhs.true28
  %f_flags.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 4
  %39 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %f_flags.i, align 4
  %call.i = tail call i32 @get_unused_fd_flags(i32 noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i252 = icmp slt i32 %call.i, 0
  br i1 %cmp.i252, label %if.then30.cleanup_crit_edge, label %if.end.i

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then30
  %41 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %f_flags.i, align 4
  %or.i = or i32 %42, 67108864
  %43 = tail call i32 @llvm.read_register.i32(metadata !163) #8
  %and.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 99
  %47 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cred.i, align 16
  %call3.i = tail call ptr @dentry_open(ptr noundef nonnull %retval.0.i250, i32 noundef %or.i, ptr noundef %48) #8
  %cmp.i.i253 = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i253, label %create_fd.exit, label %if.end.i.if.end36_crit_edge

if.end.i.if.end36_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

create_fd.exit:                                   ; preds = %if.end.i
  tail call void @put_unused_fd(i32 noundef %call.i) #8
  %49 = ptrtoint ptr %call3.i to i32
  %cmp32 = icmp slt ptr %call3.i, null
  br i1 %cmp32, label %create_fd.exit.cleanup_crit_edge, label %create_fd.exit.if.end36_crit_edge

create_fd.exit.if.end36_crit_edge:                ; preds = %create_fd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

create_fd.exit.cleanup_crit_edge:                 ; preds = %create_fd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %create_fd.exit.if.end36_crit_edge, %if.end.i.if.end36_crit_edge, %land.lhs.true28.if.end36_crit_edge, %land.lhs.true26.if.end36_crit_edge, %if.end20.if.end36_crit_edge, %if.then18, %land.lhs.true.if.end36_crit_edge
  %f.1 = phi ptr [ null, %if.end20.if.end36_crit_edge ], [ null, %land.lhs.true26.if.end36_crit_edge ], [ null, %land.lhs.true28.if.end36_crit_edge ], [ null, %create_fd.exit.if.end36_crit_edge ], [ null, %if.then18 ], [ null, %land.lhs.true.if.end36_crit_edge ], [ %call3.i, %if.end.i.if.end36_crit_edge ]
  %fd.0 = phi i32 [ -1, %if.end20.if.end36_crit_edge ], [ -1, %land.lhs.true26.if.end36_crit_edge ], [ -1, %land.lhs.true28.if.end36_crit_edge ], [ %49, %create_fd.exit.if.end36_crit_edge ], [ -1, %if.then18 ], [ -1, %land.lhs.true.if.end36_crit_edge ], [ %call.i, %if.end.i.if.end36_crit_edge ]
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %fd.0, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool38.not = icmp eq i32 %and2, 0
  br i1 %tobool38.not, label %if.end36.if.end106_crit_edge, label %if.then39

if.end36.if.end106_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.then39:                                        ; preds = %if.end36
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %and41 = and i32 %52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then39.if.end85_crit_edge, label %land.rhs

if.then39.if.end85_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

land.rhs:                                         ; preds = %if.then39
  %.b248 = load i1, ptr @copy_event_to_user.__already_done, align 1
  br i1 %.b248, label %land.rhs.if.end85_crit_edge, label %if.then59, !prof !175

land.rhs.if.end85_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then59:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @copy_event_to_user.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 667, i32 noundef 9, ptr noundef null) #8
  br label %if.end85

if.end85:                                         ; preds = %if.then59, %land.rhs.if.end85_crit_edge, %if.then39.if.end85_crit_edge
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp94 = icmp eq i32 %54, 0
  br i1 %cmp94, label %if.end85.if.end106_crit_edge, label %lor.lhs.false

if.end85.if.end106_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

lor.lhs.false:                                    ; preds = %if.end85
  %55 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pid, align 4
  %arrayidx.i255 = getelementptr %struct.pid, ptr %56, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %arrayidx.i255 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %arrayidx.i255, align 4
  %tobool.not.i.i.not = icmp eq ptr %58, null
  br i1 %tobool.not.i.i.not, label %lor.lhs.false.if.end106_crit_edge, label %if.else

lor.lhs.false.if.end106_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %call100 = tail call i32 @pidfd_create(ptr noundef %56, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  %spec.store.select = select i1 %cmp101, i32 -2, i32 %call100
  br label %if.end106

if.end106:                                        ; preds = %if.else, %lor.lhs.false.if.end106_crit_edge, %if.end85.if.end106_crit_edge, %if.end36.if.end106_crit_edge
  %pidfd.0 = phi i32 [ %spec.store.select, %if.else ], [ -1, %if.end36.if.end106_crit_edge ], [ -1, %lor.lhs.false.if.end106_crit_edge ], [ -1, %if.end85.if.end106_crit_edge ]
  %59 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %metadata, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %count)
  %cmp109 = icmp ugt i32 %60, %count
  br i1 %cmp109, label %land.rhs118, label %if.end59.i.i

land.rhs118:                                      ; preds = %if.end106
  %.b246247 = load i1, ptr @copy_event_to_user.__already_done.25, align 1
  br i1 %.b246247, label %land.rhs118.out_close_fd_crit_edge, label %if.then129, !prof !175

land.rhs118.out_close_fd_crit_edge:               ; preds = %land.rhs118
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_close_fd

if.then129:                                       ; preds = %land.rhs118
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @copy_event_to_user.__already_done.25, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 692, i32 noundef 9, ptr noundef null) #8
  br label %out_close_fd

if.end59.i.i:                                     ; preds = %if.end106
  tail call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end59.i.i.out_close_fd_crit_edge, label %if.end.i.i

if.end59.i.i.out_close_fd_crit_edge:              ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_close_fd

if.end.i.i:                                       ; preds = %if.end59.i.i
  %61 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 24, i32 -1226833920) #12, !srcloc !184
  %asmresult.i.i = extractvalue { i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.out_close_fd_crit_edge

if.end.i.i.out_close_fd_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_close_fd

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %metadata, i32 noundef 24) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %metadata, i32 noundef 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool168.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool168.not, label %if.end170, label %copy_to_user.exit.out_close_fd_crit_edge

copy_to_user.exit.out_close_fd_crit_edge:         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_close_fd

if.end170:                                        ; preds = %copy_to_user.exit
  %add.ptr = getelementptr i8, ptr %buf, i32 24
  %sub = add i32 %count, -24
  %62 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mask, align 4
  %and.i256 = and i32 %63, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i256)
  %tobool.i.not = icmp eq i32 %and.i256, 0
  br i1 %tobool.i.not, label %if.end170.if.end176_crit_edge, label %if.then173

if.end170.if.end176_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176

if.then173:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  %fd175 = getelementptr inbounds %struct.fanotify_perm_event, ptr %event, i32 0, i32 4
  %64 = ptrtoint ptr %fd175 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %fd.0, ptr %fd175, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.then173, %if.end170.if.end176_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool177.not = icmp eq i32 %and, 0
  br i1 %tobool177.not, label %if.end176.if.end184_crit_edge, label %if.then178

if.end176.if.end184_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end184

if.then178:                                       ; preds = %if.end176
  %and.i257 = and i32 %11, 7680
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf.load.i.i.i.i = load i32, ptr %6, align 4
  %bf.lshr.mask.i.i.i.i = and i32 %bf.load.i.i.i.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %bf.lshr.mask.i.i.i.i, 536870912
  br i1 %cmp.i.i.not.i.i, label %cond.true.i.i.i, label %if.then178.if.end14.i_crit_edge

if.then178.if.end14.i_crit_edge:                  ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

cond.true.i.i.i:                                  ; preds = %if.then178
  %66 = ptrtoint ptr %info.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i.i.i.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i.i.i.i, label %cond.true.i.i.i.if.end14.i_crit_edge, label %lor.lhs.false.i.i.i.i

cond.true.i.i.i.if.end14.i_crit_edge:             ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

lor.lhs.false.i.i.i.i:                            ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %67)
  %cmp.i3.i.i.i = icmp ult i8 %67, 4
  br i1 %cmp.i3.i.i.i, label %land.rhs.i.i.i.i, label %fanotify_event_has_dir_fh.exit.i

land.rhs.i.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.i
  %.b48.i.i.i.i = load i1, ptr @fanotify_info_dir_fh_len.__already_done, align 1
  br i1 %.b48.i.i.i.i, label %land.rhs.i.i.i.i.if.end14.i_crit_edge, label %if.then.i.i.i.i, !prof !175

land.rhs.i.i.i.i.if.end14.i_crit_edge:            ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fanotify_info_dir_fh_len.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 110, i32 noundef 9, ptr noundef null) #8
  br label %if.end14.i

fanotify_event_has_dir_fh.exit.i:                 ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %67)
  %phi.cmp.i.not.i = icmp eq i8 %67, 4
  br i1 %phi.cmp.i.not.i, label %fanotify_event_has_dir_fh.exit.i.if.end14.i_crit_edge, label %if.else.i.i

fanotify_event_has_dir_fh.exit.i.if.end14.i_crit_edge: ; preds = %fanotify_event_has_dir_fh.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.else.i.i:                                      ; preds = %fanotify_event_has_dir_fh.exit.i
  %name_len.i = getelementptr inbounds %struct.fanotify_info, ptr %spec.select.i, i32 0, i32 3
  %68 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %name_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i = icmp eq i8 %69, 0
  %cond.i = select i1 %tobool.not.i, i32 3, i32 2
  %and2.i = and i32 %63, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %spec.store.select.i = select i1 %tobool3.not.i, i32 %cond.i, i32 10
  %fsid6.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 0, i32 1
  %buf.i.i = getelementptr inbounds %struct.fanotify_info, ptr %spec.select.i, i32 0, i32 6
  br i1 %tobool.not.i, label %if.else.i.i.fanotify_info_name.exit.i_crit_edge, label %if.end.i.i261

if.else.i.i.fanotify_info_name.exit.i_crit_edge:  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_info_name.exit.i

if.end.i.i261:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %spec.select.i, align 4
  %conv.i.i = zext i8 %71 to i32
  %dir2_fh_totlen.i.i = getelementptr inbounds %struct.fanotify_info, ptr %spec.select.i, i32 0, i32 1
  %72 = ptrtoint ptr %dir2_fh_totlen.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %dir2_fh_totlen.i.i, align 1
  %conv1.i.i = zext i8 %73 to i32
  %add2.i.i = add nuw nsw i32 %conv1.i.i, %conv.i.i
  %file_fh_totlen.i.i = getelementptr inbounds %struct.fanotify_info, ptr %spec.select.i, i32 0, i32 2
  %74 = ptrtoint ptr %file_fh_totlen.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %file_fh_totlen.i.i, align 2
  %conv3.i.i = zext i8 %75 to i32
  %add4.i.i = add nuw nsw i32 %add2.i.i, %conv3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf.i.i, i32 %add4.i.i
  br label %fanotify_info_name.exit.i

fanotify_info_name.exit.i:                        ; preds = %if.end.i.i261, %if.else.i.i.fanotify_info_name.exit.i_crit_edge
  %retval.0.i169.i = phi ptr [ %add.ptr.i.i, %if.end.i.i261 ], [ null, %if.else.i.i.fanotify_info_name.exit.i_crit_edge ]
  %conv9.i = zext i8 %69 to i32
  %call10.i = call fastcc i32 @copy_fid_info_to_user(ptr noundef %fsid6.i.i, ptr noundef %buf.i.i, i32 noundef %spec.store.select.i, ptr noundef %retval.0.i169.i, i32 noundef %conv9.i, ptr noundef %add.ptr, i32 noundef %sub) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i262 = icmp slt i32 %call10.i, 0
  br i1 %cmp.i262, label %fanotify_info_name.exit.i.out_close_fd_crit_edge, label %if.end13.i

fanotify_info_name.exit.i.out_close_fd_crit_edge: ; preds = %fanotify_info_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_close_fd

if.end13.i:                                       ; preds = %fanotify_info_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %call10.i
  %sub.i = sub i32 %sub, %call10.i
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end13.i, %fanotify_event_has_dir_fh.exit.i.if.end14.i_crit_edge, %if.then.i.i.i.i, %land.rhs.i.i.i.i.if.end14.i_crit_edge, %cond.true.i.i.i.if.end14.i_crit_edge, %if.then178.if.end14.i_crit_edge
  %buf.addr.0.i = phi ptr [ %add.ptr.i, %if.end13.i ], [ %add.ptr, %fanotify_event_has_dir_fh.exit.i.if.end14.i_crit_edge ], [ %add.ptr, %if.then178.if.end14.i_crit_edge ], [ %add.ptr, %if.then.i.i.i.i ], [ %add.ptr, %cond.true.i.i.i.if.end14.i_crit_edge ], [ %add.ptr, %land.rhs.i.i.i.i.if.end14.i_crit_edge ]
  %count.addr.0.i = phi i32 [ %sub.i, %if.end13.i ], [ %sub, %fanotify_event_has_dir_fh.exit.i.if.end14.i_crit_edge ], [ %sub, %if.then178.if.end14.i_crit_edge ], [ %sub, %if.then.i.i.i.i ], [ %sub, %cond.true.i.i.i.if.end14.i_crit_edge ], [ %sub, %land.rhs.i.i.i.i.if.end14.i_crit_edge ]
  %total_bytes.0.i = phi i32 [ %call10.i, %if.end13.i ], [ 0, %fanotify_event_has_dir_fh.exit.i.if.end14.i_crit_edge ], [ 0, %if.then178.if.end14.i_crit_edge ], [ 0, %if.then.i.i.i.i ], [ 0, %cond.true.i.i.i.if.end14.i_crit_edge ], [ 0, %land.rhs.i.i.i.i.if.end14.i_crit_edge ]
  %info_type.0.i = phi i32 [ %spec.store.select.i, %if.end13.i ], [ 0, %fanotify_event_has_dir_fh.exit.i.if.end14.i_crit_edge ], [ 0, %if.then178.if.end14.i_crit_edge ], [ 0, %if.then.i.i.i.i ], [ 0, %cond.true.i.i.i.if.end14.i_crit_edge ], [ 0, %land.rhs.i.i.i.i.if.end14.i_crit_edge ]
  %76 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %76)
  %bf.load.i.i.i170.i = load i32, ptr %6, align 4
  %bf.lshr.mask.i.i.i171.i = and i32 %bf.load.i.i.i170.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask.i.i.i171.i)
  %cmp.i.i.not.i172.i = icmp eq i32 %bf.lshr.mask.i.i.i171.i, 536870912
  br i1 %cmp.i.i.not.i172.i, label %cond.true.i.i174.i, label %if.end14.i.if.end29.i_crit_edge

if.end14.i.if.end29.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

cond.true.i.i174.i:                               ; preds = %if.end14.i
  %dir2_fh_totlen.i.i.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 0, i32 2, i32 1
  %77 = ptrtoint ptr %dir2_fh_totlen.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %dir2_fh_totlen.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i.i173.i = icmp eq i8 %78, 0
  br i1 %tobool.not.i.i.i173.i, label %cond.true.i.i174.i.if.end29thread-pre-split.i_crit_edge, label %lor.lhs.false.i.i.i176.i

cond.true.i.i174.i.if.end29thread-pre-split.i_crit_edge: ; preds = %cond.true.i.i174.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29thread-pre-split.i

lor.lhs.false.i.i.i176.i:                         ; preds = %cond.true.i.i174.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %78)
  %cmp.i3.i.i175.i = icmp ult i8 %78, 4
  br i1 %cmp.i3.i.i175.i, label %land.rhs.i.i.i178.i, label %fanotify_event_has_dir2_fh.exit.i

land.rhs.i.i.i178.i:                              ; preds = %lor.lhs.false.i.i.i176.i
  %.b48.i.i.i177.i = load i1, ptr @fanotify_info_dir2_fh_len.__already_done, align 1
  br i1 %.b48.i.i.i177.i, label %land.rhs.i.i.i178.i.if.end29thread-pre-split.i_crit_edge, label %if.then.i.i.i179.i, !prof !175

land.rhs.i.i.i178.i.if.end29thread-pre-split.i_crit_edge: ; preds = %land.rhs.i.i.i178.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29thread-pre-split.i

if.then.i.i.i179.i:                               ; preds = %land.rhs.i.i.i178.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fanotify_info_dir2_fh_len.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 126, i32 noundef 9, ptr noundef null) #8
  br label %if.end29thread-pre-split.i

fanotify_event_has_dir2_fh.exit.i:                ; preds = %lor.lhs.false.i.i.i176.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %78)
  %phi.cmp.i180.not.i = icmp eq i8 %78, 4
  br i1 %phi.cmp.i180.not.i, label %fanotify_event_has_dir2_fh.exit.i.if.end29thread-pre-split.i_crit_edge, label %if.else.i188.i

fanotify_event_has_dir2_fh.exit.i.if.end29thread-pre-split.i_crit_edge: ; preds = %fanotify_event_has_dir2_fh.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29thread-pre-split.i

if.else.i188.i:                                   ; preds = %fanotify_event_has_dir2_fh.exit.i
  %fsid6.i189.i = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 0, i32 1
  %buf.i195.i = getelementptr inbounds %struct.fanotify_info, ptr %spec.select.i, i32 0, i32 6
  %79 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %spec.select.i, align 4
  %conv.i196.i = zext i8 %80 to i32
  %add.ptr.i197.i = getelementptr i8, ptr %buf.i195.i, i32 %conv.i196.i
  %name2_len.i.i = getelementptr inbounds %struct.fanotify_info, ptr %spec.select.i, i32 0, i32 4
  %81 = ptrtoint ptr %name2_len.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %name2_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i198.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i198.i, label %if.else.i188.i.fanotify_info_name2.exit.i_crit_edge, label %if.end.i209.i

if.else.i188.i.fanotify_info_name2.exit.i_crit_edge: ; preds = %if.else.i188.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_info_name2.exit.i

if.end.i209.i:                                    ; preds = %if.else.i188.i
  call void @__sanitizer_cov_trace_pc() #10
  %dir2_fh_totlen.i201.i = getelementptr inbounds %struct.fanotify_info, ptr %spec.select.i, i32 0, i32 1
  %83 = ptrtoint ptr %dir2_fh_totlen.i201.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %dir2_fh_totlen.i201.i, align 1
  %conv1.i202.i = zext i8 %84 to i32
  %file_fh_totlen.i203.i = getelementptr inbounds %struct.fanotify_info, ptr %spec.select.i, i32 0, i32 2
  %85 = ptrtoint ptr %file_fh_totlen.i203.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %file_fh_totlen.i203.i, align 2
  %conv3.i204.i = zext i8 %86 to i32
  %name_len.i205.i = getelementptr inbounds %struct.fanotify_info, ptr %spec.select.i, i32 0, i32 3
  %87 = ptrtoint ptr %name_len.i205.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %name_len.i205.i, align 1
  %conv5.i.i = zext i8 %88 to i32
  %add6.i.i = add nuw nsw i32 %conv.i196.i, 1
  %add2.i206.i = add nuw nsw i32 %add6.i.i, %conv1.i202.i
  %add4.i207.i = add nuw nsw i32 %add2.i206.i, %conv3.i204.i
  %add7.i.i = add nuw nsw i32 %add4.i207.i, %conv5.i.i
  %add.ptr.i208.i = getelementptr i8, ptr %buf.i195.i, i32 %add7.i.i
  br label %fanotify_info_name2.exit.i

fanotify_info_name2.exit.i:                       ; preds = %if.end.i209.i, %if.else.i188.i.fanotify_info_name2.exit.i_crit_edge
  %retval.0.i210.i = phi ptr [ %add.ptr.i208.i, %if.end.i209.i ], [ null, %if.else.i188.i.fanotify_info_name2.exit.i_crit_edge ]
  %conv20.i = zext i8 %82 to i32
  %call21.i = call fastcc i32 @copy_fid_info_to_user(ptr noundef %fsid6.i189.i, ptr noundef %add.ptr.i197.i, i32 noundef 12, ptr noundef %retval.0.i210.i, i32 noundef %conv20.i, ptr noundef %buf.addr.0.i, i32 noundef %count.addr.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %fanotify_info_name2.exit.i.out_close_fd_crit_edge, label %if.end25.i

fanotify_info_name2.exit.i.out_close_fd_crit_edge: ; preds = %fanotify_info_name2.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_close_fd

if.end25.i:                                       ; preds = %fanotify_info_name2.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr26.i = getelementptr i8, ptr %buf.addr.0.i, i32 %call21.i
  %sub27.i = sub i32 %count.addr.0.i, %call21.i
  %add28.i = add nuw i32 %call21.i, %total_bytes.0.i
  br label %if.end29thread-pre-split.i

if.end29thread-pre-split.i:                       ; preds = %if.end25.i, %fanotify_event_has_dir2_fh.exit.i.if.end29thread-pre-split.i_crit_edge, %if.then.i.i.i179.i, %land.rhs.i.i.i178.i.if.end29thread-pre-split.i_crit_edge, %cond.true.i.i174.i.if.end29thread-pre-split.i_crit_edge
  %buf.addr.1.ph.i = phi ptr [ %buf.addr.0.i, %land.rhs.i.i.i178.i.if.end29thread-pre-split.i_crit_edge ], [ %buf.addr.0.i, %cond.true.i.i174.i.if.end29thread-pre-split.i_crit_edge ], [ %buf.addr.0.i, %if.then.i.i.i179.i ], [ %buf.addr.0.i, %fanotify_event_has_dir2_fh.exit.i.if.end29thread-pre-split.i_crit_edge ], [ %add.ptr26.i, %if.end25.i ]
  %count.addr.1.ph.i = phi i32 [ %count.addr.0.i, %land.rhs.i.i.i178.i.if.end29thread-pre-split.i_crit_edge ], [ %count.addr.0.i, %cond.true.i.i174.i.if.end29thread-pre-split.i_crit_edge ], [ %count.addr.0.i, %if.then.i.i.i179.i ], [ %count.addr.0.i, %fanotify_event_has_dir2_fh.exit.i.if.end29thread-pre-split.i_crit_edge ], [ %sub27.i, %if.end25.i ]
  %total_bytes.1.ph.i = phi i32 [ %total_bytes.0.i, %land.rhs.i.i.i178.i.if.end29thread-pre-split.i_crit_edge ], [ %total_bytes.0.i, %cond.true.i.i174.i.if.end29thread-pre-split.i_crit_edge ], [ %total_bytes.0.i, %if.then.i.i.i179.i ], [ %total_bytes.0.i, %fanotify_event_has_dir2_fh.exit.i.if.end29thread-pre-split.i_crit_edge ], [ %add28.i, %if.end25.i ]
  %info_type.1.ph.i = phi i32 [ %info_type.0.i, %land.rhs.i.i.i178.i.if.end29thread-pre-split.i_crit_edge ], [ %info_type.0.i, %cond.true.i.i174.i.if.end29thread-pre-split.i_crit_edge ], [ %info_type.0.i, %if.then.i.i.i179.i ], [ %info_type.0.i, %fanotify_event_has_dir2_fh.exit.i.if.end29thread-pre-split.i_crit_edge ], [ 12, %if.end25.i ]
  %89 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %89)
  %bf.load.i211.pr.i = load i32, ptr %6, align 4
  %.pre.i = and i32 %bf.load.i211.pr.i, -536870912
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end29thread-pre-split.i, %if.end14.i.if.end29.i_crit_edge
  %bf.lshr.mask.i.pre-phi.i = phi i32 [ %.pre.i, %if.end29thread-pre-split.i ], [ %bf.lshr.mask.i.i.i171.i, %if.end14.i.if.end29.i_crit_edge ]
  %bf.load.i211.i = phi i32 [ %bf.load.i211.pr.i, %if.end29thread-pre-split.i ], [ %bf.load.i.i.i170.i, %if.end14.i.if.end29.i_crit_edge ]
  %buf.addr.1.i = phi ptr [ %buf.addr.1.ph.i, %if.end29thread-pre-split.i ], [ %buf.addr.0.i, %if.end14.i.if.end29.i_crit_edge ]
  %count.addr.1.i = phi i32 [ %count.addr.1.ph.i, %if.end29thread-pre-split.i ], [ %count.addr.0.i, %if.end14.i.if.end29.i_crit_edge ]
  %total_bytes.1.i = phi i32 [ %total_bytes.1.ph.i, %if.end29thread-pre-split.i ], [ %total_bytes.0.i, %if.end14.i.if.end29.i_crit_edge ]
  %info_type.1.i = phi i32 [ %info_type.1.ph.i, %if.end29thread-pre-split.i ], [ %info_type.0.i, %if.end14.i.if.end29.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612736, i32 %bf.lshr.mask.i.pre-phi.i)
  %cmp.i212.i = icmp eq i32 %bf.lshr.mask.i.pre-phi.i, -1610612736
  br i1 %cmp.i212.i, label %if.end29.i.if.then31.i_crit_edge, label %if.end.i214.i

if.end29.i.if.then31.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i

if.end.i214.i:                                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask.i.pre-phi.i)
  %cmp.i.i.i.i = icmp eq i32 %bf.lshr.mask.i.pre-phi.i, 536870912
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i, ptr %info.i, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i211.i)
  %cmp.i17.i.i.i = icmp ult i32 %bf.load.i211.i, 536870912
  br i1 %cmp.i17.i.i.i, label %if.end.i214.i.fanotify_event_object_fh.exit.i.i.i_crit_edge, label %if.else.i.i.i.i

if.end.i214.i.fanotify_event_object_fh.exit.i.i.i_crit_edge: ; preds = %if.end.i214.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_object_fh.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i214.i
  %bf.lshr.i.i.i.i = lshr i32 %bf.load.i211.i, 29
  %90 = zext i32 %bf.lshr.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %bf.lshr.i.i.i.i, label %fanotify_event_object_fh.exit.thread.i.i.i [
    i32 1, label %if.then4.i.i.i.i
    i32 5, label %if.then11.i.i.i.i
  ]

if.then4.i.i.i.i:                                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %buf.i.i.i.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 1
  %91 = ptrtoint ptr %info.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %info.i, align 4
  %conv.i.i.i.i.i = zext i8 %92 to i32
  %dir2_fh_totlen.i.i.i.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 0, i32 2, i32 1
  %93 = ptrtoint ptr %dir2_fh_totlen.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %dir2_fh_totlen.i.i.i.i.i, align 1
  %conv1.i.i.i.i.i = zext i8 %94 to i32
  %add2.i.i.i.i.i = add nuw nsw i32 %conv1.i.i.i.i.i, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %buf.i.i.i.i.i, i32 %add2.i.i.i.i.i
  br label %fanotify_event_object_fh.exit.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = getelementptr inbounds %struct.fanotify_error_event, ptr %event, i32 0, i32 4
  br label %fanotify_event_object_fh.exit.i.i.i

fanotify_event_object_fh.exit.i.i.i:              ; preds = %if.then11.i.i.i.i, %if.then4.i.i.i.i, %if.end.i214.i.fanotify_event_object_fh.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then4.i.i.i.i ], [ %95, %if.then11.i.i.i.i ], [ %info.i, %if.end.i214.i.fanotify_event_object_fh.exit.i.i.i_crit_edge ]
  %tobool.not.i.i.i = icmp eq ptr %spec.select.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %fanotify_event_object_fh.exit.i.i.i.if.then.i.i.i_crit_edge

fanotify_event_object_fh.exit.i.i.i.if.then.i.i.i_crit_edge: ; preds = %fanotify_event_object_fh.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

fanotify_event_object_fh.exit.thread.i.i.i:       ; preds = %if.else.i.i.i.i
  %tobool.not20.i.i.i = icmp eq ptr %spec.select.i.i.i.i, null
  br i1 %tobool.not20.i.i.i, label %fanotify_event_object_fh.exit.thread.i.i.i.if.end66.i_crit_edge, label %fanotify_event_object_fh.exit.thread.i.i.i.if.then.i.i.i_crit_edge

fanotify_event_object_fh.exit.thread.i.i.i.if.then.i.i.i_crit_edge: ; preds = %fanotify_event_object_fh.exit.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

fanotify_event_object_fh.exit.thread.i.i.i.if.end66.i_crit_edge: ; preds = %fanotify_event_object_fh.exit.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

if.then.i.i.i:                                    ; preds = %fanotify_event_object_fh.exit.thread.i.i.i.if.then.i.i.i_crit_edge, %fanotify_event_object_fh.exit.i.i.i.if.then.i.i.i_crit_edge
  %retval.0.i22.i.i.i = phi ptr [ null, %fanotify_event_object_fh.exit.thread.i.i.i.if.then.i.i.i_crit_edge ], [ %retval.0.i.i.i.i, %fanotify_event_object_fh.exit.i.i.i.if.then.i.i.i_crit_edge ]
  %file_fh_totlen.i.i.i = getelementptr inbounds %struct.fanotify_info, ptr %spec.select.i.i.i.i, i32 0, i32 2
  %96 = ptrtoint ptr %file_fh_totlen.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %file_fh_totlen.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool2.not.i.i.i = icmp eq i8 %97, 0
  br i1 %tobool2.not.i.i.i, label %if.then.i.i.i.if.end66.i_crit_edge, label %if.then.i.i.i.fanotify_event_has_object_fh.exit.i_crit_edge

if.then.i.i.i.fanotify_event_has_object_fh.exit.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_has_object_fh.exit.i

if.then.i.i.i.if.end66.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

if.else.i.i.i:                                    ; preds = %fanotify_event_object_fh.exit.i.i.i
  %tobool4.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  br i1 %tobool4.not.i.i.i, label %if.else.i.i.i.if.end66.i_crit_edge, label %if.else.i.i.i.fanotify_event_has_object_fh.exit.i_crit_edge

if.else.i.i.i.fanotify_event_has_object_fh.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_has_object_fh.exit.i

if.else.i.i.i.if.end66.i_crit_edge:               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

fanotify_event_has_object_fh.exit.i:              ; preds = %if.else.i.i.i.fanotify_event_has_object_fh.exit.i_crit_edge, %if.then.i.i.i.fanotify_event_has_object_fh.exit.i_crit_edge
  %retval.0.i.sink.i.i.i = phi ptr [ %retval.0.i22.i.i.i, %if.then.i.i.i.fanotify_event_has_object_fh.exit.i_crit_edge ], [ %retval.0.i.i.i.i, %if.else.i.i.i.fanotify_event_has_object_fh.exit.i_crit_edge ]
  %len6.i.i.i = getelementptr inbounds %struct.fanotify_fh, ptr %retval.0.i.sink.i.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %len6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %len6.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %phi.cmp.i215.not.i = icmp eq i8 %99, 0
  br i1 %phi.cmp.i215.not.i, label %fanotify_event_has_object_fh.exit.i.if.end66.i_crit_edge, label %fanotify_event_has_object_fh.exit.i.if.then31.i_crit_edge

fanotify_event_has_object_fh.exit.i.if.then31.i_crit_edge: ; preds = %fanotify_event_has_object_fh.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i

fanotify_event_has_object_fh.exit.i.if.end66.i_crit_edge: ; preds = %fanotify_event_has_object_fh.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

if.then31.i:                                      ; preds = %fanotify_event_has_object_fh.exit.i.if.then31.i_crit_edge, %if.end29.i.if.then31.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i257)
  %cmp32.i = icmp ne i32 %and.i257, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %info_type.1.i)
  %tobool34.not.i = icmp eq i32 %info_type.1.i, 0
  %or.cond.i = select i1 %cmp32.i, i1 %tobool34.not.i, i1 false
  br i1 %or.cond.i, label %if.else.i263, label %if.then31.i.if.end54.i_crit_edge

if.then31.i.if.end54.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.else.i263:                                     ; preds = %if.then31.i
  %and36.i = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.else.i263.if.else42.i_crit_edge, label %land.lhs.true.i

if.else.i263.if.else42.i_crit_edge:               ; preds = %if.else.i263
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else42.i

land.lhs.true.i:                                  ; preds = %if.else.i263
  %100 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mask, align 4
  %and39.i = and i32 %101, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %land.lhs.true.i.if.else42.i_crit_edge, label %land.lhs.true.i.if.end54.i_crit_edge

land.lhs.true.i.if.end54.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

land.lhs.true.i.if.else42.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else42.i

if.else42.i:                                      ; preds = %land.lhs.true.i.if.else42.i_crit_edge, %if.else.i263.if.else42.i_crit_edge
  %102 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mask, align 4
  %104 = and i32 %103, 1342178240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %105 = icmp eq i32 %104, 0
  %spec.select.i264 = select i1 %105, i32 1, i32 3
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.else42.i, %land.lhs.true.i.if.end54.i_crit_edge, %if.then31.i.if.end54.i_crit_edge
  %info_type.2.i = phi i32 [ 1, %if.then31.i.if.end54.i_crit_edge ], [ 2, %land.lhs.true.i.if.end54.i_crit_edge ], [ %spec.select.i264, %if.else42.i ]
  %dot.0.i = phi ptr [ null, %if.then31.i.if.end54.i_crit_edge ], [ @.str.29, %land.lhs.true.i.if.end54.i_crit_edge ], [ null, %if.else42.i ]
  %dot_len.0.i = phi i32 [ 0, %if.then31.i.if.end54.i_crit_edge ], [ 1, %land.lhs.true.i.if.end54.i_crit_edge ], [ 0, %if.else42.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i211.i)
  %cmp.i218.i = icmp ult i32 %bf.load.i211.i, 536870912
  br i1 %cmp.i218.i, label %if.then.i231.i, label %if.else.i222.i

if.else.i222.i:                                   ; preds = %if.end54.i
  %bf.lshr.i221.i = lshr i32 %bf.load.i211.i, 29
  %106 = zext i32 %bf.lshr.i221.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %bf.lshr.i221.i, label %if.else.i222.i.fanotify_event_object_fh.exit.i_crit_edge [
    i32 1, label %if.else.i233.thread.i
    i32 5, label %if.else.i233.thread267.i
  ]

if.else.i222.i.fanotify_event_object_fh.exit.i_crit_edge: ; preds = %if.else.i222.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_object_fh.exit.i

if.else.i233.thread.i:                            ; preds = %if.else.i222.i
  call void @__sanitizer_cov_trace_pc() #10
  %fsid6.i223.i = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 0, i32 1
  %buf.i.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 1
  %107 = ptrtoint ptr %info.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %info.i, align 4
  %conv.i.i.i = zext i8 %108 to i32
  %dir2_fh_totlen.i.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 0, i32 2, i32 1
  %109 = ptrtoint ptr %dir2_fh_totlen.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %dir2_fh_totlen.i.i.i, align 1
  %conv1.i.i.i = zext i8 %110 to i32
  %add2.i.i.i = add nuw nsw i32 %conv1.i.i.i, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %buf.i.i.i, i32 %add2.i.i.i
  br label %fanotify_event_object_fh.exit.i

if.else.i233.thread267.i:                         ; preds = %if.else.i222.i
  call void @__sanitizer_cov_trace_pc() #10
  %111 = getelementptr inbounds %struct.fanotify_error_event, ptr %event, i32 0, i32 4
  br label %fanotify_event_object_fh.exit.i

if.then.i231.i:                                   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  %fsid.i219.i = getelementptr inbounds %struct.fanotify_fid_event, ptr %event, i32 0, i32 1
  br label %fanotify_event_object_fh.exit.i

fanotify_event_object_fh.exit.i:                  ; preds = %if.then.i231.i, %if.else.i233.thread267.i, %if.else.i233.thread.i, %if.else.i222.i.fanotify_event_object_fh.exit.i_crit_edge
  %retval.0.i227257.i = phi ptr [ %fsid.i219.i, %if.then.i231.i ], [ %fsid6.i223.i, %if.else.i233.thread.i ], [ %info.i, %if.else.i233.thread267.i ], [ null, %if.else.i222.i.fanotify_event_object_fh.exit.i_crit_edge ]
  %retval.0.i236.i = phi ptr [ %info.i, %if.then.i231.i ], [ %add.ptr.i.i.i, %if.else.i233.thread.i ], [ %111, %if.else.i233.thread267.i ], [ null, %if.else.i222.i.fanotify_event_object_fh.exit.i_crit_edge ]
  %call57.i = call fastcc i32 @copy_fid_info_to_user(ptr noundef %retval.0.i227257.i, ptr noundef %retval.0.i236.i, i32 noundef %info_type.2.i, ptr noundef %dot.0.i, i32 noundef %dot_len.0.i, ptr noundef %buf.addr.1.i, i32 noundef %count.addr.1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  %add.ptr62.i = getelementptr i8, ptr %buf.addr.1.i, i32 %call57.i
  %sub63.i = sub i32 %count.addr.1.i, %call57.i
  %add64.i = add i32 %call57.i, %total_bytes.1.i
  br i1 %cmp58.i, label %fanotify_event_object_fh.exit.i.out_close_fd_crit_edge, label %fanotify_event_object_fh.exit.i.if.end66.i_crit_edge

fanotify_event_object_fh.exit.i.if.end66.i_crit_edge: ; preds = %fanotify_event_object_fh.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

fanotify_event_object_fh.exit.i.out_close_fd_crit_edge: ; preds = %fanotify_event_object_fh.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_close_fd

if.end66.i:                                       ; preds = %fanotify_event_object_fh.exit.i.if.end66.i_crit_edge, %fanotify_event_has_object_fh.exit.i.if.end66.i_crit_edge, %if.else.i.i.i.if.end66.i_crit_edge, %if.then.i.i.i.if.end66.i_crit_edge, %fanotify_event_object_fh.exit.thread.i.i.i.if.end66.i_crit_edge
  %buf.addr.3.i = phi ptr [ %add.ptr62.i, %fanotify_event_object_fh.exit.i.if.end66.i_crit_edge ], [ %buf.addr.1.i, %fanotify_event_has_object_fh.exit.i.if.end66.i_crit_edge ], [ %buf.addr.1.i, %if.then.i.i.i.if.end66.i_crit_edge ], [ %buf.addr.1.i, %if.else.i.i.i.if.end66.i_crit_edge ], [ %buf.addr.1.i, %fanotify_event_object_fh.exit.thread.i.i.i.if.end66.i_crit_edge ]
  %count.addr.3.i = phi i32 [ %sub63.i, %fanotify_event_object_fh.exit.i.if.end66.i_crit_edge ], [ %count.addr.1.i, %fanotify_event_has_object_fh.exit.i.if.end66.i_crit_edge ], [ %count.addr.1.i, %if.then.i.i.i.if.end66.i_crit_edge ], [ %count.addr.1.i, %if.else.i.i.i.if.end66.i_crit_edge ], [ %count.addr.1.i, %fanotify_event_object_fh.exit.thread.i.i.i.if.end66.i_crit_edge ]
  %total_bytes.3.i = phi i32 [ %add64.i, %fanotify_event_object_fh.exit.i.if.end66.i_crit_edge ], [ %total_bytes.1.i, %fanotify_event_has_object_fh.exit.i.if.end66.i_crit_edge ], [ %total_bytes.1.i, %if.then.i.i.i.if.end66.i_crit_edge ], [ %total_bytes.1.i, %if.else.i.i.i.if.end66.i_crit_edge ], [ %total_bytes.1.i, %fanotify_event_object_fh.exit.thread.i.i.i.if.end66.i_crit_edge ]
  br i1 %tobool38.not, label %if.end66.i.if.end77.i_crit_edge, label %if.then68.i

if.end66.i.if.end77.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i

if.then68.i:                                      ; preds = %if.end66.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %info.i237.i) #8
  %112 = ptrtoint ptr %info.i237.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 288230410511450112, ptr %info.i237.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count.addr.3.i)
  %cmp.i238.i = icmp ult i32 %count.addr.3.i, 8
  br i1 %cmp.i238.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.then68.i
  %.b49.i.i = load i1, ptr @copy_pidfd_info_to_user.__already_done, align 1
  br i1 %.b49.i.i, label %land.rhs.i.i.copy_pidfd_info_to_user.exit.thread.i_crit_edge, label %if.then.i239.i, !prof !175

land.rhs.i.i.copy_pidfd_info_to_user.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_pidfd_info_to_user.exit.thread.i

if.then.i239.i:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @copy_pidfd_info_to_user.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 480, i32 noundef 9, ptr noundef null) #8
  br label %copy_pidfd_info_to_user.exit.thread.i

if.end37.i.i:                                     ; preds = %if.then68.i
  %pidfd39.i.i = getelementptr inbounds %struct.fanotify_event_info_pidfd, ptr %info.i237.i, i32 0, i32 1
  %113 = ptrtoint ptr %pidfd39.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %pidfd.0, ptr %pidfd39.i.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 174) #8
  %call.i.i.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i.i, label %if.end37.i.i.copy_pidfd_info_to_user.exit.thread.i_crit_edge, label %if.end.i.i.i.i

if.end37.i.i.copy_pidfd_info_to_user.exit.thread.i_crit_edge: ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_pidfd_info_to_user.exit.thread.i

if.end.i.i.i.i:                                   ; preds = %if.end37.i.i
  %114 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.3.i, i32 8, i32 -1226833920) #12, !srcloc !184
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %114, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %copy_to_user.exit.i.i, label %if.end.i.i.i.i.copy_pidfd_info_to_user.exit.thread.i_crit_edge

if.end.i.i.i.i.copy_pidfd_info_to_user.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_pidfd_info_to_user.exit.thread.i

copy_to_user.exit.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i237.i, i32 noundef 8) #8
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.3.i, ptr noundef nonnull %info.i237.i, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i)
  %tobool40.not.i.i = icmp eq i32 %call.i12.i.i.i.i, 0
  br i1 %tobool40.not.i.i, label %if.end73.i, label %copy_to_user.exit.i.i.copy_pidfd_info_to_user.exit.thread.i_crit_edge

copy_to_user.exit.i.i.copy_pidfd_info_to_user.exit.thread.i_crit_edge: ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_pidfd_info_to_user.exit.thread.i

copy_pidfd_info_to_user.exit.thread.i:            ; preds = %copy_to_user.exit.i.i.copy_pidfd_info_to_user.exit.thread.i_crit_edge, %if.end.i.i.i.i.copy_pidfd_info_to_user.exit.thread.i_crit_edge, %if.end37.i.i.copy_pidfd_info_to_user.exit.thread.i_crit_edge, %if.then.i239.i, %land.rhs.i.i.copy_pidfd_info_to_user.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info.i237.i) #8
  br label %out_close_fd

if.end73.i:                                       ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info.i237.i) #8
  %add.ptr74.i = getelementptr i8, ptr %buf.addr.3.i, i32 8
  %sub75.i = add i32 %count.addr.3.i, -8
  %add76.i = add i32 %total_bytes.3.i, 8
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.end73.i, %if.end66.i.if.end77.i_crit_edge
  %buf.addr.4.i = phi ptr [ %add.ptr74.i, %if.end73.i ], [ %buf.addr.3.i, %if.end66.i.if.end77.i_crit_edge ]
  %count.addr.4.i = phi i32 [ %sub75.i, %if.end73.i ], [ %count.addr.3.i, %if.end66.i.if.end77.i_crit_edge ]
  %total_bytes.4.i = phi i32 [ %add76.i, %if.end73.i ], [ %total_bytes.3.i, %if.end66.i.if.end77.i_crit_edge ]
  %115 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %mask, align 4
  %and.i.i265 = and i32 %116, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i265)
  %tobool.i.not.i = icmp eq i32 %and.i.i265, 0
  br i1 %tobool.i.not.i, label %if.end77.i.copy_info_records_to_user.exit_crit_edge, label %if.then80.i

if.end77.i.copy_info_records_to_user.exit_crit_edge: ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_info_records_to_user.exit

if.then80.i:                                      ; preds = %if.end77.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info.i241.i) #8
  %117 = ptrtoint ptr %info.i241.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 83886092, ptr %info.i241.i, align 4
  %len.i.i = getelementptr inbounds %struct.fanotify_event_info_header, ptr %info.i241.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %count.addr.4.i)
  %cmp.i242.i = icmp slt i32 %count.addr.4.i, 12
  br i1 %cmp.i242.i, label %do.end.i.i, label %if.end25.i.i, !prof !174

do.end.i.i:                                       ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 361, i32 noundef 9, ptr noundef null) #8
  br label %copy_error_info_to_user.exit.thread.i

if.end25.i.i:                                     ; preds = %if.then80.i
  %error.i.i = getelementptr inbounds %struct.fanotify_error_event, ptr %event, i32 0, i32 1
  %118 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %error.i.i, align 4
  %error26.i.i = getelementptr inbounds %struct.fanotify_event_info_error, ptr %info.i241.i, i32 0, i32 1
  %120 = ptrtoint ptr %error26.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %error26.i.i, align 4
  %err_count.i.i = getelementptr inbounds %struct.fanotify_error_event, ptr %event, i32 0, i32 2
  %121 = ptrtoint ptr %err_count.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %err_count.i.i, align 4
  %error_count.i.i = getelementptr inbounds %struct.fanotify_event_info_error, ptr %info.i241.i, i32 0, i32 2
  %123 = ptrtoint ptr %error_count.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %error_count.i.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 174) #8
  %call.i.i.i243.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i243.i, label %if.end25.i.i.copy_error_info_to_user.exit.thread.i_crit_edge, label %if.end.i.i.i246.i

if.end25.i.i.copy_error_info_to_user.exit.thread.i_crit_edge: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_error_info_to_user.exit.thread.i

if.end.i.i.i246.i:                                ; preds = %if.end25.i.i
  %124 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.4.i, i32 12, i32 -1226833920) #12, !srcloc !184
  %asmresult.i.i.i244.i = extractvalue { i32, i32 } %124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i244.i)
  %cmp.i6.i.i245.i = icmp eq i32 %asmresult.i.i.i244.i, 0
  br i1 %cmp.i6.i.i245.i, label %copy_to_user.exit.i249.i, label %if.end.i.i.i246.i.copy_error_info_to_user.exit.thread.i_crit_edge

if.end.i.i.i246.i.copy_error_info_to_user.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i246.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_error_info_to_user.exit.thread.i

copy_to_user.exit.i249.i:                         ; preds = %if.end.i.i.i246.i
  %call.i.i.i.i247.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i241.i, i32 noundef 12) #8
  %call.i12.i.i.i248.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.4.i, ptr noundef nonnull %info.i241.i, i32 noundef 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i248.i)
  %tobool28.not.i.i = icmp eq i32 %call.i12.i.i.i248.i, 0
  br i1 %tobool28.not.i.i, label %copy_error_info_to_user.exit.i, label %copy_to_user.exit.i249.i.copy_error_info_to_user.exit.thread.i_crit_edge

copy_to_user.exit.i249.i.copy_error_info_to_user.exit.thread.i_crit_edge: ; preds = %copy_to_user.exit.i249.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_error_info_to_user.exit.thread.i

copy_error_info_to_user.exit.thread.i:            ; preds = %copy_to_user.exit.i249.i.copy_error_info_to_user.exit.thread.i_crit_edge, %if.end.i.i.i246.i.copy_error_info_to_user.exit.thread.i_crit_edge, %if.end25.i.i.copy_error_info_to_user.exit.thread.i_crit_edge, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info.i241.i) #8
  br label %out_close_fd

copy_error_info_to_user.exit.i:                   ; preds = %copy_to_user.exit.i249.i
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %len.i.i, align 2
  %conv33.i.i = zext i16 %126 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info.i241.i) #8
  %add88.i = add i32 %total_bytes.4.i, %conv33.i.i
  br label %copy_info_records_to_user.exit

copy_info_records_to_user.exit:                   ; preds = %copy_error_info_to_user.exit.i, %if.end77.i.copy_info_records_to_user.exit_crit_edge
  %retval.1.i = phi i32 [ %total_bytes.4.i, %if.end77.i.copy_info_records_to_user.exit_crit_edge ], [ %add88.i, %copy_error_info_to_user.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %cmp180 = icmp slt i32 %retval.1.i, 0
  br i1 %cmp180, label %copy_info_records_to_user.exit.out_close_fd_crit_edge, label %copy_info_records_to_user.exit.if.end184_crit_edge

copy_info_records_to_user.exit.if.end184_crit_edge: ; preds = %copy_info_records_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end184

copy_info_records_to_user.exit.out_close_fd_crit_edge: ; preds = %copy_info_records_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_close_fd

if.end184:                                        ; preds = %copy_info_records_to_user.exit.if.end184_crit_edge, %if.end176.if.end184_crit_edge
  %tobool185.not = icmp eq ptr %f.1, null
  br i1 %tobool185.not, label %if.end184.if.end187_crit_edge, label %if.then186

if.end184.if.end187_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

if.then186:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #10
  call void @fd_install(i32 noundef %fd.0, ptr noundef nonnull %f.1) #8
  br label %if.end187

if.end187:                                        ; preds = %if.then186, %if.end184.if.end187_crit_edge
  %127 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %metadata, align 8
  br label %cleanup

out_close_fd:                                     ; preds = %copy_info_records_to_user.exit.out_close_fd_crit_edge, %copy_error_info_to_user.exit.thread.i, %copy_pidfd_info_to_user.exit.thread.i, %fanotify_event_object_fh.exit.i.out_close_fd_crit_edge, %fanotify_info_name2.exit.i.out_close_fd_crit_edge, %fanotify_info_name.exit.i.out_close_fd_crit_edge, %copy_to_user.exit.out_close_fd_crit_edge, %if.end.i.i.out_close_fd_crit_edge, %if.end59.i.i.out_close_fd_crit_edge, %if.then129, %land.rhs118.out_close_fd_crit_edge
  %ret.0 = phi i32 [ -14, %copy_to_user.exit.out_close_fd_crit_edge ], [ %retval.1.i, %copy_info_records_to_user.exit.out_close_fd_crit_edge ], [ -14, %if.then129 ], [ -14, %land.rhs118.out_close_fd_crit_edge ], [ -14, %if.end59.i.i.out_close_fd_crit_edge ], [ -14, %if.end.i.i.out_close_fd_crit_edge ], [ -14, %copy_error_info_to_user.exit.thread.i ], [ -14, %copy_pidfd_info_to_user.exit.thread.i ], [ %call21.i, %fanotify_info_name2.exit.i.out_close_fd_crit_edge ], [ %call10.i, %fanotify_info_name.exit.i.out_close_fd_crit_edge ], [ %call57.i, %fanotify_event_object_fh.exit.i.out_close_fd_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %fd.0)
  %cmp189.not = icmp eq i32 %fd.0, -1
  br i1 %cmp189.not, label %out_close_fd.if.end192_crit_edge, label %if.then191

out_close_fd.if.end192_crit_edge:                 ; preds = %out_close_fd
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end192

if.then191:                                       ; preds = %out_close_fd
  call void @__sanitizer_cov_trace_pc() #10
  call void @put_unused_fd(i32 noundef %fd.0) #8
  call void @fput(ptr noundef %f.1) #8
  br label %if.end192

if.end192:                                        ; preds = %if.then191, %out_close_fd.if.end192_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pidfd.0)
  %cmp193 = icmp sgt i32 %pidfd.0, -1
  br i1 %cmp193, label %if.then195, label %if.end192.cleanup_crit_edge

if.end192.cleanup_crit_edge:                      ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then195:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  %call196 = call i32 @close_fd(i32 noundef %pidfd.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then195, %if.end192.cleanup_crit_edge, %if.end187, %create_fd.exit.cleanup_crit_edge, %if.then30.cleanup_crit_edge
  %retval.0 = phi i32 [ %128, %if.end187 ], [ %49, %create_fd.exit.cleanup_crit_edge ], [ %ret.0, %if.then195 ], [ %ret.0, %if.end192.cleanup_crit_edge ], [ %call.i, %if.then30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %metadata) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_destroy_event(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_peek_first_event(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fanotify_event_len(i32 noundef %info_mode, ptr noundef readonly %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %info_mode)
  %tobool.not = icmp eq i32 %info_mode, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mask = getelementptr inbounds %struct.fanotify_event, ptr %event, i32 0, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %and.i = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, i32 24, i32 36
  %2 = getelementptr inbounds %struct.fanotify_event, ptr %event, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i.i.i.i = load i32, ptr %2, align 4
  %bf.lshr.mask.i.i.i.i = and i32 %bf.load.i.i.i.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %bf.lshr.mask.i.i.i.i, 536870912
  br i1 %cmp.i.i.not.i.i, label %cond.true.i.i.i, label %if.end.lor.rhs.i_crit_edge

if.end.lor.rhs.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i

cond.true.i.i.i:                                  ; preds = %if.end
  %info.i.i.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 0, i32 2
  %4 = ptrtoint ptr %info.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %info.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i.i.i, label %cond.true.i.i.i.lor.rhs.i_crit_edge, label %lor.lhs.false.i.i.i.i

cond.true.i.i.i.lor.rhs.i_crit_edge:              ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i

lor.lhs.false.i.i.i.i:                            ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp.i3.i.i.i = icmp ult i8 %5, 4
  br i1 %cmp.i3.i.i.i, label %land.rhs.i.i.i.i, label %fanotify_event_has_dir_fh.exit.i

land.rhs.i.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.i
  %.b48.i.i.i.i = load i1, ptr @fanotify_info_dir_fh_len.__already_done, align 1
  br i1 %.b48.i.i.i.i, label %land.rhs.i.i.i.i.lor.rhs.i_crit_edge, label %if.then.i.i.i.i, !prof !175

land.rhs.i.i.i.i.lor.rhs.i_crit_edge:             ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fanotify_info_dir_fh_len.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 110, i32 noundef 9, ptr noundef null) #8
  br label %lor.rhs.i

fanotify_event_has_dir_fh.exit.i:                 ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %phi.cmp.i.not.i = icmp eq i8 %5, 4
  br i1 %phi.cmp.i.not.i, label %fanotify_event_has_dir_fh.exit.i.lor.rhs.i_crit_edge, label %fanotify_event_has_dir_fh.exit.i.if.then4_crit_edge

fanotify_event_has_dir_fh.exit.i.if.then4_crit_edge: ; preds = %fanotify_event_has_dir_fh.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

fanotify_event_has_dir_fh.exit.i.lor.rhs.i_crit_edge: ; preds = %fanotify_event_has_dir_fh.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %fanotify_event_has_dir_fh.exit.i.lor.rhs.i_crit_edge, %if.then.i.i.i.i, %land.rhs.i.i.i.i.lor.rhs.i_crit_edge, %cond.true.i.i.i.lor.rhs.i_crit_edge, %if.end.lor.rhs.i_crit_edge
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i.i.i3.i = load i32, ptr %2, align 4
  %bf.lshr.mask.i.i.i4.i = and i32 %bf.load.i.i.i3.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask.i.i.i4.i)
  %cmp.i.i.not.i5.i = icmp eq i32 %bf.lshr.mask.i.i.i4.i, 536870912
  br i1 %cmp.i.i.not.i5.i, label %cond.true.i.i7.i, label %lor.rhs.i.if.else_crit_edge

lor.rhs.i.if.else_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

cond.true.i.i7.i:                                 ; preds = %lor.rhs.i
  %dir2_fh_totlen.i.i.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %dir2_fh_totlen.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dir2_fh_totlen.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i.i6.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i.i6.i, label %cond.true.i.i7.i.if.else_crit_edge, label %lor.lhs.false.i.i.i9.i

cond.true.i.i7.i.if.else_crit_edge:               ; preds = %cond.true.i.i7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

lor.lhs.false.i.i.i9.i:                           ; preds = %cond.true.i.i7.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp.i3.i.i8.i = icmp ult i8 %8, 4
  br i1 %cmp.i3.i.i8.i, label %land.rhs.i.i.i11.i, label %fanotify_event_has_any_dir_fh.exit

land.rhs.i.i.i11.i:                               ; preds = %lor.lhs.false.i.i.i9.i
  %.b48.i.i.i10.i = load i1, ptr @fanotify_info_dir2_fh_len.__already_done, align 1
  br i1 %.b48.i.i.i10.i, label %land.rhs.i.i.i11.i.if.else_crit_edge, label %if.then.i.i.i12.i, !prof !175

land.rhs.i.i.i11.i.if.else_crit_edge:             ; preds = %land.rhs.i.i.i11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then.i.i.i12.i:                                ; preds = %land.rhs.i.i.i11.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fanotify_info_dir2_fh_len.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 126, i32 noundef 9, ptr noundef null) #8
  br label %if.else

fanotify_event_has_any_dir_fh.exit:               ; preds = %lor.lhs.false.i.i.i9.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %phi.cmp.i13.i.not = icmp eq i8 %8, 4
  br i1 %phi.cmp.i13.i.not, label %fanotify_event_has_any_dir_fh.exit.if.else_crit_edge, label %fanotify_event_has_any_dir_fh.exit.if.then4_crit_edge

fanotify_event_has_any_dir_fh.exit.if.then4_crit_edge: ; preds = %fanotify_event_has_any_dir_fh.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

fanotify_event_has_any_dir_fh.exit.if.else_crit_edge: ; preds = %fanotify_event_has_any_dir_fh.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then4:                                         ; preds = %fanotify_event_has_any_dir_fh.exit.if.then4_crit_edge, %fanotify_event_has_dir_fh.exit.i.if.then4_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load.i.i = load i32, ptr %2, align 4
  %bf.lshr.mask.i.i = and i32 %bf.load.i.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask.i.i)
  %cmp.i.i = icmp eq i32 %bf.lshr.mask.i.i, 536870912
  %info.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 0, i32 2
  %spec.select.i.i = select i1 %cmp.i.i, ptr %info.i.i, ptr null
  br i1 %cmp.i.i, label %cond.true.i.i, label %if.then4.fanotify_event_dir_fh_len.exit.i_crit_edge

if.then4.fanotify_event_dir_fh_len.exit.i_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_dir_fh_len.exit.i

cond.true.i.i:                                    ; preds = %if.then4
  %10 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %info.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i.i, label %cond.true.i.i.fanotify_event_dir_fh_len.exit.i_crit_edge, label %lor.lhs.false.i.i.i

cond.true.i.i.fanotify_event_dir_fh_len.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_dir_fh_len.exit.i

lor.lhs.false.i.i.i:                              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp.i3.i.i = icmp ult i8 %11, 4
  br i1 %cmp.i3.i.i, label %land.rhs.i.i.i, label %if.end41.i.i.i

land.rhs.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %.b48.i.i.i = load i1, ptr @fanotify_info_dir_fh_len.__already_done, align 1
  br i1 %.b48.i.i.i, label %land.rhs.i.i.i.fanotify_event_dir_fh_len.exit.i_crit_edge, label %if.then.i.i.i, !prof !175

land.rhs.i.i.i.fanotify_event_dir_fh_len.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_dir_fh_len.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fanotify_info_dir_fh_len.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 110, i32 noundef 9, ptr noundef null) #8
  br label %fanotify_event_dir_fh_len.exit.i

if.end41.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv43.i.i.i = zext i8 %11 to i32
  %sub.i.i.i = add nsw i32 %conv43.i.i.i, -4
  br label %fanotify_event_dir_fh_len.exit.i

fanotify_event_dir_fh_len.exit.i:                 ; preds = %if.end41.i.i.i, %if.then.i.i.i, %land.rhs.i.i.i.fanotify_event_dir_fh_len.exit.i_crit_edge, %cond.true.i.i.fanotify_event_dir_fh_len.exit.i_crit_edge, %if.then4.fanotify_event_dir_fh_len.exit.i_crit_edge
  %cond.i.i = phi i32 [ 0, %if.then4.fanotify_event_dir_fh_len.exit.i_crit_edge ], [ %sub.i.i.i, %if.end41.i.i.i ], [ 0, %if.then.i.i.i ], [ 0, %cond.true.i.i.fanotify_event_dir_fh_len.exit.i_crit_edge ], [ 0, %land.rhs.i.i.i.fanotify_event_dir_fh_len.exit.i_crit_edge ]
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i.i17.i = load i32, ptr %2, align 4
  %bf.lshr.mask.i.i18.i = and i32 %bf.load.i.i17.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask.i.i18.i)
  %cmp.i.i19.not.i = icmp eq i32 %bf.lshr.mask.i.i18.i, 536870912
  br i1 %cmp.i.i19.not.i, label %cond.true.i22.i, label %fanotify_event_dir_fh_len.exit.i.fanotify_event_dir2_fh_len.exit.i_crit_edge

fanotify_event_dir_fh_len.exit.i.fanotify_event_dir2_fh_len.exit.i_crit_edge: ; preds = %fanotify_event_dir_fh_len.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_dir2_fh_len.exit.i

cond.true.i22.i:                                  ; preds = %fanotify_event_dir_fh_len.exit.i
  %dir2_fh_totlen.i.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %dir2_fh_totlen.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dir2_fh_totlen.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i21.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i.i21.i, label %cond.true.i22.i.fanotify_event_dir2_fh_len.exit.i_crit_edge, label %lor.lhs.false.i.i24.i

cond.true.i22.i.fanotify_event_dir2_fh_len.exit.i_crit_edge: ; preds = %cond.true.i22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_dir2_fh_len.exit.i

lor.lhs.false.i.i24.i:                            ; preds = %cond.true.i22.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %14)
  %cmp.i3.i23.i = icmp ult i8 %14, 4
  br i1 %cmp.i3.i23.i, label %land.rhs.i.i26.i, label %if.end41.i.i30.i

land.rhs.i.i26.i:                                 ; preds = %lor.lhs.false.i.i24.i
  %.b48.i.i25.i = load i1, ptr @fanotify_info_dir2_fh_len.__already_done, align 1
  br i1 %.b48.i.i25.i, label %land.rhs.i.i26.i.fanotify_event_dir2_fh_len.exit.i_crit_edge, label %if.then.i.i27.i, !prof !175

land.rhs.i.i26.i.fanotify_event_dir2_fh_len.exit.i_crit_edge: ; preds = %land.rhs.i.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_dir2_fh_len.exit.i

if.then.i.i27.i:                                  ; preds = %land.rhs.i.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fanotify_info_dir2_fh_len.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 126, i32 noundef 9, ptr noundef null) #8
  br label %fanotify_event_dir2_fh_len.exit.i

if.end41.i.i30.i:                                 ; preds = %lor.lhs.false.i.i24.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv43.i.i28.i = zext i8 %14 to i32
  %sub.i.i29.i = add nsw i32 %conv43.i.i28.i, -4
  br label %fanotify_event_dir2_fh_len.exit.i

fanotify_event_dir2_fh_len.exit.i:                ; preds = %if.end41.i.i30.i, %if.then.i.i27.i, %land.rhs.i.i26.i.fanotify_event_dir2_fh_len.exit.i_crit_edge, %cond.true.i22.i.fanotify_event_dir2_fh_len.exit.i_crit_edge, %fanotify_event_dir_fh_len.exit.i.fanotify_event_dir2_fh_len.exit.i_crit_edge
  %cond.i31.i = phi i32 [ 0, %fanotify_event_dir_fh_len.exit.i.fanotify_event_dir2_fh_len.exit.i_crit_edge ], [ %sub.i.i29.i, %if.end41.i.i30.i ], [ 0, %if.then.i.i27.i ], [ 0, %cond.true.i22.i.fanotify_event_dir2_fh_len.exit.i_crit_edge ], [ 0, %land.rhs.i.i26.i.fanotify_event_dir2_fh_len.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %tobool.not.i = icmp eq i32 %cond.i.i, 0
  br i1 %tobool.not.i, label %fanotify_event_dir2_fh_len.exit.i.if.end.i_crit_edge, label %if.then.i

fanotify_event_dir2_fh_len.exit.i.if.end.i_crit_edge: ; preds = %fanotify_event_dir2_fh_len.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %fanotify_event_dir2_fh_len.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %name_len.i = getelementptr inbounds %struct.fanotify_info, ptr %spec.select.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %name_len.i, align 1
  %conv.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  %add.i.i = add nuw nsw i32 %conv.i, 1
  %add1.i.i = select i1 %tobool.not.i.i, i32 0, i32 %add.i.i
  %info_len.0.i.i = add nuw nsw i32 %cond.i.i, 23
  %add3.i.i = add nuw nsw i32 %info_len.0.i.i, %add1.i.i
  %div8.i.i = and i32 %add3.i.i, -4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %fanotify_event_dir2_fh_len.exit.i.if.end.i_crit_edge
  %info_len.0.i = phi i32 [ %div8.i.i, %if.then.i ], [ 0, %fanotify_event_dir2_fh_len.exit.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i31.i)
  %tobool4.not.i = icmp eq i32 %cond.i31.i, 0
  br i1 %tobool4.not.i, label %if.end.i.fanotify_dir_name_info_len.exit_crit_edge, label %if.then5.i

if.end.i.fanotify_dir_name_info_len.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_dir_name_info_len.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %name2_len.i = getelementptr inbounds %struct.fanotify_info, ptr %spec.select.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %name2_len.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %name2_len.i, align 4
  %conv6.i = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i32.i = icmp eq i8 %18, 0
  %add.i33.i = add nuw nsw i32 %conv6.i, 1
  %add1.i34.i = select i1 %tobool.not.i32.i, i32 0, i32 %add.i33.i
  %info_len.0.i35.i = add nuw nsw i32 %cond.i31.i, 23
  %add3.i36.i = add nuw nsw i32 %info_len.0.i35.i, %add1.i34.i
  %div8.i37.i = and i32 %add3.i36.i, -4
  %add8.i = add nuw nsw i32 %div8.i37.i, %info_len.0.i
  br label %fanotify_dir_name_info_len.exit

fanotify_dir_name_info_len.exit:                  ; preds = %if.then5.i, %if.end.i.fanotify_dir_name_info_len.exit_crit_edge
  %info_len.1.i = phi i32 [ %add8.i, %if.then5.i ], [ %info_len.0.i, %if.end.i.fanotify_dir_name_info_len.exit_crit_edge ]
  %add6 = add nuw nsw i32 %info_len.1.i, %spec.select
  br label %if.end13

if.else:                                          ; preds = %fanotify_event_has_any_dir_fh.exit.if.else_crit_edge, %if.then.i.i.i12.i, %land.rhs.i.i.i11.i.if.else_crit_edge, %cond.true.i.i7.i.if.else_crit_edge, %lor.rhs.i.if.else_crit_edge
  %and = and i32 %info_mode, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else.if.end13_crit_edge, label %land.lhs.true

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask, align 4
  %and9 = lshr i32 %20, 30
  %and9.lobit = and i32 %and9, 1
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.else.if.end13_crit_edge, %fanotify_dir_name_info_len.exit
  %event_len.1 = phi i32 [ %add6, %fanotify_dir_name_info_len.exit ], [ %spec.select, %if.else.if.end13_crit_edge ], [ %spec.select, %land.lhs.true ]
  %dot_len.0 = phi i32 [ 0, %fanotify_dir_name_info_len.exit ], [ 0, %if.else.if.end13_crit_edge ], [ %and9.lobit, %land.lhs.true ]
  %and14 = and i32 %info_mode, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %add17 = add nuw nsw i32 %event_len.1, 8
  %spec.select40 = select i1 %tobool15.not, i32 %event_len.1, i32 %add17
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load.i = load i32, ptr %2, align 4
  %bf.lshr.mask.i = and i32 %bf.load.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612736, i32 %bf.lshr.mask.i)
  %cmp.i = icmp eq i32 %bf.lshr.mask.i, -1610612736
  br i1 %cmp.i, label %if.then20.thread, label %if.end.i41

if.then20.thread:                                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %info.i.i4761 = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 0, i32 2
  br label %if.else.i.i49

if.end.i41:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask.i)
  %cmp.i.i.i = icmp eq i32 %bf.lshr.mask.i, 536870912
  %info.i.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 0, i32 2
  %spec.select.i.i.i = select i1 %cmp.i.i.i, ptr %info.i.i.i, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i)
  %cmp.i17.i.i = icmp ult i32 %bf.load.i, 536870912
  br i1 %cmp.i17.i.i, label %if.end.i41.fanotify_event_object_fh.exit.i.i_crit_edge, label %if.else.i.i.i

if.end.i41.fanotify_event_object_fh.exit.i.i_crit_edge: ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_object_fh.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i41
  %bf.lshr.i.i.i = lshr i32 %bf.load.i, 29
  %22 = zext i32 %bf.lshr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %bf.lshr.i.i.i, label %fanotify_event_object_fh.exit.thread.i.i [
    i32 1, label %if.then4.i.i.i
    i32 5, label %if.then11.i.i.i
  ]

if.then4.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %buf.i.i.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 1
  %23 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %info.i.i.i, align 4
  %conv.i.i.i.i = zext i8 %24 to i32
  %dir2_fh_totlen.i.i.i.i42 = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %dir2_fh_totlen.i.i.i.i42 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dir2_fh_totlen.i.i.i.i42, align 1
  %conv1.i.i.i.i = zext i8 %26 to i32
  %add2.i.i.i.i = add nuw nsw i32 %conv1.i.i.i.i, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %buf.i.i.i.i, i32 %add2.i.i.i.i
  br label %fanotify_event_object_fh.exit.i.i

if.then11.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = getelementptr inbounds %struct.fanotify_error_event, ptr %event, i32 0, i32 4
  br label %fanotify_event_object_fh.exit.i.i

fanotify_event_object_fh.exit.i.i:                ; preds = %if.then11.i.i.i, %if.then4.i.i.i, %if.end.i41.fanotify_event_object_fh.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then4.i.i.i ], [ %27, %if.then11.i.i.i ], [ %info.i.i.i, %if.end.i41.fanotify_event_object_fh.exit.i.i_crit_edge ]
  %tobool.not.i.i43 = icmp eq ptr %spec.select.i.i.i, null
  br i1 %tobool.not.i.i43, label %if.else.i.i, label %fanotify_event_object_fh.exit.i.i.if.then.i.i_crit_edge

fanotify_event_object_fh.exit.i.i.if.then.i.i_crit_edge: ; preds = %fanotify_event_object_fh.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

fanotify_event_object_fh.exit.thread.i.i:         ; preds = %if.else.i.i.i
  %tobool.not20.i.i = icmp eq ptr %spec.select.i.i.i, null
  br i1 %tobool.not20.i.i, label %fanotify_event_object_fh.exit.thread.i.i.cleanup_crit_edge, label %fanotify_event_object_fh.exit.thread.i.i.if.then.i.i_crit_edge

fanotify_event_object_fh.exit.thread.i.i.if.then.i.i_crit_edge: ; preds = %fanotify_event_object_fh.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

fanotify_event_object_fh.exit.thread.i.i.cleanup_crit_edge: ; preds = %fanotify_event_object_fh.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %fanotify_event_object_fh.exit.thread.i.i.if.then.i.i_crit_edge, %fanotify_event_object_fh.exit.i.i.if.then.i.i_crit_edge
  %retval.0.i22.i.i = phi ptr [ null, %fanotify_event_object_fh.exit.thread.i.i.if.then.i.i_crit_edge ], [ %retval.0.i.i.i, %fanotify_event_object_fh.exit.i.i.if.then.i.i_crit_edge ]
  %file_fh_totlen.i.i = getelementptr inbounds %struct.fanotify_info, ptr %spec.select.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %file_fh_totlen.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %file_fh_totlen.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool2.not.i.i = icmp eq i8 %29, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.fanotify_event_has_object_fh.exit_crit_edge

if.then.i.i.fanotify_event_has_object_fh.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_has_object_fh.exit

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i.i:                                      ; preds = %fanotify_event_object_fh.exit.i.i
  %tobool4.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool4.not.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.fanotify_event_has_object_fh.exit_crit_edge

if.else.i.i.fanotify_event_has_object_fh.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_has_object_fh.exit

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fanotify_event_has_object_fh.exit:                ; preds = %if.else.i.i.fanotify_event_has_object_fh.exit_crit_edge, %if.then.i.i.fanotify_event_has_object_fh.exit_crit_edge
  %retval.0.i.sink.i.i = phi ptr [ %retval.0.i22.i.i, %if.then.i.i.fanotify_event_has_object_fh.exit_crit_edge ], [ %retval.0.i.i.i, %if.else.i.i.fanotify_event_has_object_fh.exit_crit_edge ]
  %len6.i.i = getelementptr inbounds %struct.fanotify_fh, ptr %retval.0.i.sink.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %len6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %phi.cmp.i.not = icmp eq i8 %31, 0
  br i1 %phi.cmp.i.not, label %fanotify_event_has_object_fh.exit.cleanup_crit_edge, label %if.then20

fanotify_event_has_object_fh.exit.cleanup_crit_edge: ; preds = %fanotify_event_has_object_fh.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %fanotify_event_has_object_fh.exit
  br i1 %cmp.i17.i.i, label %if.then20.fanotify_event_object_fh.exit.i_crit_edge, label %if.then20.if.else.i.i49_crit_edge

if.then20.if.else.i.i49_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i49

if.then20.fanotify_event_object_fh.exit.i_crit_edge: ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_object_fh.exit.i

if.else.i.i49:                                    ; preds = %if.then20.if.else.i.i49_crit_edge, %if.then20.thread
  %spec.select.i.i4865 = phi ptr [ null, %if.then20.thread ], [ %spec.select.i.i.i, %if.then20.if.else.i.i49_crit_edge ]
  %info.i.i4764 = phi ptr [ %info.i.i4761, %if.then20.thread ], [ %info.i.i.i, %if.then20.if.else.i.i49_crit_edge ]
  %bf.lshr.i.i = lshr i32 %bf.load.i, 29
  %32 = zext i32 %bf.lshr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %bf.lshr.i.i, label %fanotify_event_object_fh.exit.thread.i [
    i32 1, label %if.then4.i.i
    i32 5, label %if.then11.i.i
  ]

if.then4.i.i:                                     ; preds = %if.else.i.i49
  call void @__sanitizer_cov_trace_pc() #10
  %buf.i.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 1
  %33 = ptrtoint ptr %info.i.i4764 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %info.i.i4764, align 4
  %conv.i.i.i = zext i8 %34 to i32
  %dir2_fh_totlen.i.i.i50 = getelementptr inbounds %struct.fanotify_name_event, ptr %event, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %dir2_fh_totlen.i.i.i50 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dir2_fh_totlen.i.i.i50, align 1
  %conv1.i.i.i = zext i8 %36 to i32
  %add2.i.i.i = add nuw nsw i32 %conv1.i.i.i, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %buf.i.i.i, i32 %add2.i.i.i
  br label %fanotify_event_object_fh.exit.i

if.then11.i.i:                                    ; preds = %if.else.i.i49
  call void @__sanitizer_cov_trace_pc() #10
  %37 = getelementptr inbounds %struct.fanotify_error_event, ptr %event, i32 0, i32 4
  br label %fanotify_event_object_fh.exit.i

fanotify_event_object_fh.exit.i:                  ; preds = %if.then11.i.i, %if.then4.i.i, %if.then20.fanotify_event_object_fh.exit.i_crit_edge
  %spec.select.i.i4866 = phi ptr [ %spec.select.i.i4865, %if.then4.i.i ], [ %spec.select.i.i4865, %if.then11.i.i ], [ %spec.select.i.i.i, %if.then20.fanotify_event_object_fh.exit.i_crit_edge ]
  %retval.0.i.i = phi ptr [ %add.ptr.i.i.i, %if.then4.i.i ], [ %37, %if.then11.i.i ], [ %info.i.i.i, %if.then20.fanotify_event_object_fh.exit.i_crit_edge ]
  %tobool.not.i51 = icmp eq ptr %spec.select.i.i4866, null
  br i1 %tobool.not.i51, label %if.else.i, label %fanotify_event_object_fh.exit.i.if.then.i52_crit_edge

fanotify_event_object_fh.exit.i.if.then.i52_crit_edge: ; preds = %fanotify_event_object_fh.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i52

fanotify_event_object_fh.exit.thread.i:           ; preds = %if.else.i.i49
  %tobool.not20.i = icmp eq ptr %spec.select.i.i4865, null
  br i1 %tobool.not20.i, label %fanotify_event_object_fh.exit.thread.i.fanotify_event_object_fh_len.exit_crit_edge, label %fanotify_event_object_fh.exit.thread.i.if.then.i52_crit_edge

fanotify_event_object_fh.exit.thread.i.if.then.i52_crit_edge: ; preds = %fanotify_event_object_fh.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i52

fanotify_event_object_fh.exit.thread.i.fanotify_event_object_fh_len.exit_crit_edge: ; preds = %fanotify_event_object_fh.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_object_fh_len.exit

if.then.i52:                                      ; preds = %fanotify_event_object_fh.exit.thread.i.if.then.i52_crit_edge, %fanotify_event_object_fh.exit.i.if.then.i52_crit_edge
  %spec.select.i.i4867 = phi ptr [ %spec.select.i.i4865, %fanotify_event_object_fh.exit.thread.i.if.then.i52_crit_edge ], [ %spec.select.i.i4866, %fanotify_event_object_fh.exit.i.if.then.i52_crit_edge ]
  %retval.0.i22.i = phi ptr [ null, %fanotify_event_object_fh.exit.thread.i.if.then.i52_crit_edge ], [ %retval.0.i.i, %fanotify_event_object_fh.exit.i.if.then.i52_crit_edge ]
  %file_fh_totlen.i = getelementptr inbounds %struct.fanotify_info, ptr %spec.select.i.i4867, i32 0, i32 2
  %38 = ptrtoint ptr %file_fh_totlen.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %file_fh_totlen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool2.not.i = icmp eq i8 %39, 0
  br i1 %tobool2.not.i, label %if.then.i52.fanotify_event_object_fh_len.exit_crit_edge, label %if.then.i52.cleanup.sink.split.i_crit_edge

if.then.i52.cleanup.sink.split.i_crit_edge:       ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.then.i52.fanotify_event_object_fh_len.exit_crit_edge: ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_object_fh_len.exit

if.else.i:                                        ; preds = %fanotify_event_object_fh.exit.i
  %tobool4.not.i53 = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool4.not.i53, label %if.else.i.fanotify_event_object_fh_len.exit_crit_edge, label %if.else.i.cleanup.sink.split.i_crit_edge

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.else.i.fanotify_event_object_fh_len.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_event_object_fh_len.exit

cleanup.sink.split.i:                             ; preds = %if.else.i.cleanup.sink.split.i_crit_edge, %if.then.i52.cleanup.sink.split.i_crit_edge
  %retval.0.i.sink.i = phi ptr [ %retval.0.i22.i, %if.then.i52.cleanup.sink.split.i_crit_edge ], [ %retval.0.i.i, %if.else.i.cleanup.sink.split.i_crit_edge ]
  %len6.i = getelementptr inbounds %struct.fanotify_fh, ptr %retval.0.i.sink.i, i32 0, i32 1
  %40 = ptrtoint ptr %len6.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %len6.i, align 1
  %phi.cast.i = zext i8 %41 to i32
  %phi.bo = add nuw nsw i32 %phi.cast.i, 23
  br label %fanotify_event_object_fh_len.exit

fanotify_event_object_fh_len.exit:                ; preds = %cleanup.sink.split.i, %if.else.i.fanotify_event_object_fh_len.exit_crit_edge, %if.then.i52.fanotify_event_object_fh_len.exit_crit_edge, %fanotify_event_object_fh.exit.thread.i.fanotify_event_object_fh_len.exit_crit_edge
  %retval.0.shrunk.i = phi i32 [ 23, %if.then.i52.fanotify_event_object_fh_len.exit_crit_edge ], [ 23, %if.else.i.fanotify_event_object_fh_len.exit_crit_edge ], [ 23, %fanotify_event_object_fh.exit.thread.i.fanotify_event_object_fh_len.exit_crit_edge ], [ %phi.bo, %cleanup.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dot_len.0)
  %tobool.not.i54 = icmp eq i32 %dot_len.0, 0
  %add.i = add nuw nsw i32 %dot_len.0, 1
  %add1.i = select i1 %tobool.not.i54, i32 0, i32 %add.i
  %add3.i = add nuw nsw i32 %retval.0.shrunk.i, %add1.i
  %div8.i = and i32 %add3.i, -4
  %add23 = add nuw nsw i32 %div8.i, %spec.select40
  br label %cleanup

cleanup:                                          ; preds = %fanotify_event_object_fh_len.exit, %fanotify_event_has_object_fh.exit.cleanup_crit_edge, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %fanotify_event_object_fh.exit.thread.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 24, %entry.cleanup_crit_edge ], [ %add23, %fanotify_event_object_fh_len.exit ], [ %spec.select40, %fanotify_event_has_object_fh.exit.cleanup_crit_edge ], [ %spec.select40, %if.then.i.i.cleanup_crit_edge ], [ %spec.select40, %if.else.i.i.cleanup_crit_edge ], [ %spec.select40, %fanotify_event_object_fh.exit.thread.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_remove_first_event(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pidfd_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @close_fd(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_fid_info_to_user(ptr nocapture noundef readonly %fsid, ptr noundef %fh, i32 noundef %info_type, ptr noundef %name, i32 noundef %name_len, ptr noundef %buf, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.fanotify_event_info_fid, align 4
  %handle = alloca %struct.file_handle, align 8
  %bounce = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info) #8
  %0 = call ptr @memset(ptr %info, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %handle) #8
  %1 = ptrtoint ptr %handle to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %handle, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bounce) #8
  %tobool.not = icmp eq ptr %fh, null
  %2 = call ptr @memset(ptr %bounce, i32 255, i32 12)
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr inbounds %struct.fanotify_fh, ptr %fh, i32 0, i32 1
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %len, align 1
  %conv = zext i8 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %name_len)
  %tobool.not.i = icmp eq i32 %name_len, 0
  %add.i = add i32 %name_len, 1
  %add.i.op = add i32 %name_len, 24
  %info_len.0.i = select i1 %tobool.not.i, i32 23, i32 %add.i.op
  %add3.i = add i32 %info_len.0.i, %cond
  %div8.i = and i32 %add3.i, -4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @copy_fid_info_to_user.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@copy_fid_info_to_user, %if.then)) #8
          to label %lor.rhs [label %if.then], !srcloc !173

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @copy_fid_info_to_user.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %cond, i32 noundef %name_len, i32 noundef %div8.i, i32 noundef %count) #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %if.then, %cond.end
  call void @__sanitizer_cov_trace_cmp4(i32 %div8.i, i32 %count)
  %cmp7 = icmp ugt i32 %div8.i, %count
  br i1 %cmp7, label %land.rhs, label %if.end61

land.rhs:                                         ; preds = %lor.rhs
  %.b549 = load i1, ptr @copy_fid_info_to_user.__already_done, align 1
  br i1 %.b549, label %land.rhs.cleanup_crit_edge, label %if.then25, !prof !175

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then25:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @copy_fid_info_to_user.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 388, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end61:                                         ; preds = %lor.rhs
  %5 = zext i32 %info_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %info_type, label %if.end61.cleanup_crit_edge [
    i32 1, label %if.end61.sw.bb_crit_edge
    i32 3, label %if.end61.sw.bb_crit_edge611
    i32 2, label %if.end61.sw.bb120_crit_edge
    i32 10, label %if.end61.sw.bb120_crit_edge612
    i32 12, label %if.end61.sw.bb120_crit_edge613
  ]

if.end61.sw.bb120_crit_edge613:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb120

if.end61.sw.bb120_crit_edge612:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb120

if.end61.sw.bb120_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb120

if.end61.sw.bb_crit_edge611:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end61.sw.bb_crit_edge:                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end61.sw.bb_crit_edge, %if.end61.sw.bb_crit_edge611
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %land.rhs71

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.rhs71:                                       ; preds = %sw.bb
  %.b537548 = load i1, ptr @copy_fid_info_to_user.__already_done.32, align 1
  br i1 %.b537548, label %land.rhs71.cleanup_crit_edge, label %if.then82, !prof !175

land.rhs71.cleanup_crit_edge:                     ; preds = %land.rhs71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then82:                                        ; preds = %land.rhs71
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @copy_fid_info_to_user.__already_done.32, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 398, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

sw.bb120:                                         ; preds = %if.end61.sw.bb120_crit_edge, %if.end61.sw.bb120_crit_edge612, %if.end61.sw.bb120_crit_edge613
  %tobool122.not = icmp eq ptr %name, null
  %spec.select = or i1 %tobool122.not, %tobool.not.i
  br i1 %spec.select, label %land.rhs135, label %sw.bb120.sw.epilog_crit_edge

sw.bb120.sw.epilog_crit_edge:                     ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.rhs135:                                      ; preds = %sw.bb120
  %.b538547 = load i1, ptr @copy_fid_info_to_user.__already_done.33, align 1
  br i1 %.b538547, label %land.rhs135.cleanup_crit_edge, label %if.then146, !prof !175

land.rhs135.cleanup_crit_edge:                    ; preds = %land.rhs135
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then146:                                       ; preds = %land.rhs135
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @copy_fid_info_to_user.__already_done.33, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 404, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb120.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %conv184 = trunc i32 %info_type to i8
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv184, ptr %info, align 4
  %conv186 = trunc i32 %div8.i to i16
  %len188 = getelementptr inbounds %struct.fanotify_event_info_header, ptr %info, i32 0, i32 2
  %7 = ptrtoint ptr %len188 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv186, ptr %len188, align 2
  %fsid189 = getelementptr inbounds %struct.fanotify_event_info_fid, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %fsid to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %fsid, align 4
  %10 = ptrtoint ptr %fsid189 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %fsid189, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %sw.epilog.cleanup_crit_edge, label %if.end.i.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.epilog
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 12, i32 -1226833920) #12, !srcloc !184
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info, i32 noundef 12) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %info, i32 noundef 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool191.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool191.not, label %if.end193, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end193:                                        ; preds = %copy_to_user.exit
  %add.ptr = getelementptr i8, ptr %buf, i32 12
  %sub = add i32 %div8.i, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp195 = icmp ult i32 %sub, 8
  br i1 %cmp195, label %land.rhs204, label %if.end252

land.rhs204:                                      ; preds = %if.end193
  %.b539546 = load i1, ptr @copy_fid_info_to_user.__already_done.34, align 1
  br i1 %.b539546, label %land.rhs204.cleanup_crit_edge, label %if.then215, !prof !175

land.rhs204.cleanup_crit_edge:                    ; preds = %land.rhs204
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then215:                                       ; preds = %land.rhs204
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @copy_fid_info_to_user.__already_done.34, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 419, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end252:                                        ; preds = %if.end193
  %12 = ptrtoint ptr %fh to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fh, align 4
  %conv253 = zext i8 %13 to i32
  %handle_type = getelementptr inbounds %struct.file_handle, ptr %handle, i32 0, i32 1
  %14 = ptrtoint ptr %handle_type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv253, ptr %handle_type, align 4
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond, ptr %handle, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool254.not = icmp eq i32 %cond, 0
  br i1 %tobool254.not, label %if.then255, label %if.end252.if.end59.i.i560_crit_edge

if.end252.if.end59.i.i560_crit_edge:              ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i.i560

if.then255:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %handle_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 255, ptr %handle_type, align 4
  br label %if.end59.i.i560

if.end59.i.i560:                                  ; preds = %if.then255, %if.end252.if.end59.i.i560_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 174) #8
  %call.i.i561 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i561, label %if.end59.i.i560.cleanup_crit_edge, label %if.end.i.i564

if.end59.i.i560.cleanup_crit_edge:                ; preds = %if.end59.i.i560
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i564:                                    ; preds = %if.end59.i.i560
  %17 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 8, i32 -1226833920) #12, !srcloc !184
  %asmresult.i.i562 = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i562)
  %cmp.i6.i563 = icmp eq i32 %asmresult.i.i562, 0
  br i1 %cmp.i6.i563, label %copy_to_user.exit569, label %if.end.i.i564.cleanup_crit_edge

if.end.i.i564.cleanup_crit_edge:                  ; preds = %if.end.i.i564
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit569:                             ; preds = %if.end.i.i564
  %call.i.i.i565 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %handle, i32 noundef 8) #8
  %call.i12.i.i566 = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef nonnull %handle, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i566)
  %tobool259.not = icmp eq i32 %call.i12.i.i566, 0
  br i1 %tobool259.not, label %if.end261, label %copy_to_user.exit569.cleanup_crit_edge

copy_to_user.exit569.cleanup_crit_edge:           ; preds = %copy_to_user.exit569
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end261:                                        ; preds = %copy_to_user.exit569
  %add.ptr262 = getelementptr i8, ptr %buf, i32 20
  %sub263 = add i32 %div8.i, -20
  call void @__sanitizer_cov_trace_cmp4(i32 %sub263, i32 %cond)
  %cmp265 = icmp ult i32 %sub263, %cond
  br i1 %cmp265, label %land.rhs274, label %if.end322

land.rhs274:                                      ; preds = %if.end261
  %.b540545 = load i1, ptr @copy_fid_info_to_user.__already_done.35, align 1
  br i1 %.b540545, label %land.rhs274.cleanup_crit_edge, label %if.then285, !prof !175

land.rhs274.cleanup_crit_edge:                    ; preds = %land.rhs274
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then285:                                       ; preds = %land.rhs274
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @copy_fid_info_to_user.__already_done.35, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 434, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end322:                                        ; preds = %if.end261
  %flags.i.i = getelementptr inbounds %struct.fanotify_fh, ptr %fh, i32 0, i32 2
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags.i.i, align 2
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.i.not.i = icmp eq i8 %20, 0
  %buf.i = getelementptr inbounds %struct.fanotify_fh, ptr %fh, i32 0, i32 4
  br i1 %tobool.i.not.i, label %if.end322.fanotify_fh_buf.exit_crit_edge, label %cond.true.i

if.end322.fanotify_fh_buf.exit_crit_edge:         ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_fh_buf.exit

cond.true.i:                                      ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %buf.i to i32
  %add.i.i.i = add i32 %21, 3
  %and.i.i.i = and i32 %add.i.i.i, -4
  %22 = inttoptr i32 %and.i.i.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  br label %fanotify_fh_buf.exit

fanotify_fh_buf.exit:                             ; preds = %cond.true.i, %if.end322.fanotify_fh_buf.exit_crit_edge
  %cond.i = phi ptr [ %24, %cond.true.i ], [ %buf.i, %if.end322.fanotify_fh_buf.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond)
  %cmp324 = icmp ult i32 %cond, 13
  br i1 %cmp324, label %if.then326, label %fanotify_fh_buf.exit.if.then.i.i.i_crit_edge

fanotify_fh_buf.exit.if.then.i.i.i_crit_edge:     ; preds = %fanotify_fh_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then326:                                       ; preds = %fanotify_fh_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  %25 = call ptr @memcpy(ptr %bounce, ptr %cond.i, i32 %cond)
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then326, %fanotify_fh_buf.exit.if.then.i.i.i_crit_edge
  %fh_buf.0 = phi ptr [ %bounce, %if.then326 ], [ %cond.i, %fanotify_fh_buf.exit.if.then.i.i.i_crit_edge ]
  call void @__check_object_size(ptr noundef %fh_buf.0, i32 noundef %cond, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 174) #8
  %call.i.i574 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i574, label %if.then.i.i.i.copy_to_user.exit582_crit_edge, label %if.end.i.i577

if.then.i.i.i.copy_to_user.exit582_crit_edge:     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit582

if.end.i.i577:                                    ; preds = %if.then.i.i.i
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr262, i32 %cond, i32 -1226833920) #12, !srcloc !184
  %asmresult.i.i575 = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i575)
  %cmp.i6.i576 = icmp eq i32 %asmresult.i.i575, 0
  br i1 %cmp.i6.i576, label %if.then2.i.i580, label %if.end.i.i577.copy_to_user.exit582_crit_edge

if.end.i.i577.copy_to_user.exit582_crit_edge:     ; preds = %if.end.i.i577
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit582

if.then2.i.i580:                                  ; preds = %if.end.i.i577
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i578 = call zeroext i1 @__kasan_check_read(ptr noundef %fh_buf.0, i32 noundef %cond) #8
  %call.i12.i.i579 = call i32 @arm_copy_to_user(ptr noundef %add.ptr262, ptr noundef %fh_buf.0, i32 noundef %cond) #8
  br label %copy_to_user.exit582

copy_to_user.exit582:                             ; preds = %if.then2.i.i580, %if.end.i.i577.copy_to_user.exit582_crit_edge, %if.then.i.i.i.copy_to_user.exit582_crit_edge
  %n.addr.0.i581 = phi i32 [ %cond, %if.then.i.i.i.copy_to_user.exit582_crit_edge ], [ %call.i12.i.i579, %if.then2.i.i580 ], [ %cond, %if.end.i.i577.copy_to_user.exit582_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i581)
  %tobool330.not = icmp eq i32 %n.addr.0.i581, 0
  br i1 %tobool330.not, label %if.end332, label %copy_to_user.exit582.cleanup_crit_edge

copy_to_user.exit582.cleanup_crit_edge:           ; preds = %copy_to_user.exit582
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end332:                                        ; preds = %copy_to_user.exit582
  %add.ptr333 = getelementptr i8, ptr %add.ptr262, i32 %cond
  %sub334 = sub i32 %sub263, %cond
  br i1 %tobool.not.i, label %if.end332.lor.end409_crit_edge, label %if.then336

if.end332.lor.end409_crit_edge:                   ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end409

if.then336:                                       ; preds = %if.end332
  call void @__sanitizer_cov_trace_cmp4(i32 %sub334, i32 %add.i)
  %cmp338 = icmp ult i32 %sub334, %add.i
  br i1 %cmp338, label %land.rhs347, label %if.then.i.i.i590

land.rhs347:                                      ; preds = %if.then336
  %.b541544 = load i1, ptr @copy_fid_info_to_user.__already_done.36, align 1
  br i1 %.b541544, label %land.rhs347.cleanup_crit_edge, label %if.then358, !prof !175

land.rhs347.cleanup_crit_edge:                    ; preds = %land.rhs347
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then358:                                       ; preds = %land.rhs347
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @copy_fid_info_to_user.__already_done.36, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 455, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.then.i.i.i590:                                 ; preds = %if.then336
  call void @__check_object_size(ptr noundef %name, i32 noundef %add.i, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 174) #8
  %call.i.i591 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i591, label %if.then.i.i.i590.copy_to_user.exit600_crit_edge, label %if.end.i.i595

if.then.i.i.i590.copy_to_user.exit600_crit_edge:  ; preds = %if.then.i.i.i590
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit600

if.end.i.i595:                                    ; preds = %if.then.i.i.i590
  %27 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr333, i32 %add.i, i32 -1226833920) #12, !srcloc !184
  %asmresult.i.i593 = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i593)
  %cmp.i6.i594 = icmp eq i32 %asmresult.i.i593, 0
  br i1 %cmp.i6.i594, label %if.then2.i.i598, label %if.end.i.i595.copy_to_user.exit600_crit_edge

if.end.i.i595.copy_to_user.exit600_crit_edge:     ; preds = %if.end.i.i595
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit600

if.then2.i.i598:                                  ; preds = %if.end.i.i595
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i596 = call zeroext i1 @__kasan_check_read(ptr noundef %name, i32 noundef %add.i) #8
  %call.i12.i.i597 = call i32 @arm_copy_to_user(ptr noundef %add.ptr333, ptr noundef %name, i32 noundef %add.i) #8
  br label %copy_to_user.exit600

copy_to_user.exit600:                             ; preds = %if.then2.i.i598, %if.end.i.i595.copy_to_user.exit600_crit_edge, %if.then.i.i.i590.copy_to_user.exit600_crit_edge
  %n.addr.0.i599 = phi i32 [ %add.i, %if.then.i.i.i590.copy_to_user.exit600_crit_edge ], [ %call.i12.i.i597, %if.then2.i.i598 ], [ %add.i, %if.end.i.i595.copy_to_user.exit600_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i599)
  %tobool397.not = icmp eq i32 %n.addr.0.i599, 0
  br i1 %tobool397.not, label %if.end399, label %copy_to_user.exit600.cleanup_crit_edge

copy_to_user.exit600.cleanup_crit_edge:           ; preds = %copy_to_user.exit600
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end399:                                        ; preds = %copy_to_user.exit600
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr400 = getelementptr i8, ptr %add.ptr333, i32 %add.i
  %sub401 = sub i32 %sub334, %add.i
  br label %lor.end409

lor.end409:                                       ; preds = %if.end399, %if.end332.lor.end409_crit_edge
  %len1.0 = phi i32 [ %sub401, %if.end399 ], [ %sub334, %if.end332.lor.end409_crit_edge ]
  %buf.addr.0 = phi ptr [ %add.ptr400, %if.end399 ], [ %add.ptr333, %if.end332.lor.end409_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len1.0)
  %cmp407 = icmp ugt i32 %len1.0, 3
  br i1 %cmp407, label %land.rhs417, label %if.end455

land.rhs417:                                      ; preds = %lor.end409
  %.b542543 = load i1, ptr @copy_fid_info_to_user.__already_done.37, align 1
  br i1 %.b542543, label %land.rhs417.land.lhs.true_crit_edge, label %if.then428, !prof !175

land.rhs417.land.lhs.true_crit_edge:              ; preds = %land.rhs417
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then428:                                       ; preds = %land.rhs417
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @copy_fid_info_to_user.__already_done.37, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 466, i32 noundef 9, ptr noundef null) #8
  br label %land.lhs.true

if.end455:                                        ; preds = %lor.end409
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len1.0)
  %cmp463.not = icmp eq i32 %len1.0, 0
  br i1 %cmp463.not, label %if.end455.if.end468_crit_edge, label %if.end455.land.lhs.true_crit_edge

if.end455.land.lhs.true_crit_edge:                ; preds = %if.end455
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end455.if.end468_crit_edge:                    ; preds = %if.end455
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end468

land.lhs.true:                                    ; preds = %if.end455.land.lhs.true_crit_edge, %if.then428, %land.rhs417.land.lhs.true_crit_edge
  %call465 = call fastcc i32 @clear_user(ptr noundef %buf.addr.0, i32 noundef %len1.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call465)
  %tobool466.not = icmp eq i32 %call465, 0
  br i1 %tobool466.not, label %land.lhs.true.if.end468_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end468_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end468

if.end468:                                        ; preds = %land.lhs.true.if.end468_crit_edge, %if.end455.if.end468_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end468, %land.lhs.true.cleanup_crit_edge, %copy_to_user.exit600.cleanup_crit_edge, %if.then358, %land.rhs347.cleanup_crit_edge, %copy_to_user.exit582.cleanup_crit_edge, %if.then285, %land.rhs274.cleanup_crit_edge, %copy_to_user.exit569.cleanup_crit_edge, %if.end.i.i564.cleanup_crit_edge, %if.end59.i.i560.cleanup_crit_edge, %if.then215, %land.rhs204.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then146, %land.rhs135.cleanup_crit_edge, %if.then82, %land.rhs71.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.then25, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %div8.i, %if.end468 ], [ -14, %if.then25 ], [ -14, %if.then82 ], [ -14, %if.then146 ], [ -14, %if.end61.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then215 ], [ -14, %copy_to_user.exit569.cleanup_crit_edge ], [ -14, %if.then285 ], [ -14, %copy_to_user.exit582.cleanup_crit_edge ], [ -14, %if.then358 ], [ -14, %copy_to_user.exit600.cleanup_crit_edge ], [ -14, %land.lhs.true.cleanup_crit_edge ], [ -14, %land.rhs.cleanup_crit_edge ], [ -14, %land.rhs71.cleanup_crit_edge ], [ -14, %land.rhs135.cleanup_crit_edge ], [ -14, %land.rhs204.cleanup_crit_edge ], [ -14, %land.rhs274.cleanup_crit_edge ], [ -14, %land.rhs347.cleanup_crit_edge ], [ -14, %sw.epilog.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.end59.i.i560.cleanup_crit_edge ], [ -14, %if.end.i.i564.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bounce) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %handle) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clear_user(ptr noundef %to, i32 noundef %n) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %to, i32 %n, i32 -1226833920) #12, !srcloc !185
  %asmresult = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp = icmp eq i32 %asmresult, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = tail call i32 @llvm.read_register.i32(metadata !163) #8
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #5, !srcloc !178
  %and.i.i = and i32 %3, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #8, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  %call1.i = tail call i32 @arm_clear_user(ptr noundef %to, i32 noundef %n) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #8, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %n.addr.0 = phi i32 [ %call1.i, %if.then ], [ %n, %entry.if.end_crit_edge ]
  ret i32 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_access_response(ptr noundef %group, ptr nocapture noundef readonly %response_struct) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %response_struct to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %response_struct, align 4
  %response2 = getelementptr inbounds %struct.fanotify_response, ptr %response_struct, i32 0, i32 1
  %2 = ptrtoint ptr %response2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %response2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_access_response.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_access_response, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_access_response.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, ptr noundef %group, i32 noundef %1, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %3, -17
  %4 = add i32 %and, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %4)
  %switch = icmp ult i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  %or.cond = select i1 %switch, i1 true, i1 %cmp
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %and7 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %land.lhs.true

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end6
  %flags = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and9 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %notification_lock) #8
  %access_list = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end12
  %event.0.in = phi ptr [ %access_list, %if.end12 ], [ %event.0, %for.body.for.cond_crit_edge ]
  %7 = ptrtoint ptr %event.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %event.0 = load ptr, ptr %event.0.in, align 4
  %cmp15.not = icmp eq ptr %event.0, %access_list
  br i1 %cmp15.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %fd18 = getelementptr inbounds %struct.fanotify_perm_event, ptr %event.0, i32 0, i32 4
  %8 = ptrtoint ptr %fd18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fd18, align 4
  %cmp19.not = icmp eq i32 %9, %1
  br i1 %cmp19.not, label %if.end21, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.end21:                                         ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %event.0) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.list_del_init.exit_crit_edge

if.end21.list_del_init.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %event.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %event.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %event.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end21.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %event.0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %event.0, ptr %event.0, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %event.0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %event.0, ptr %prev.i3.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %18 = ptrtoint ptr %notification_lock to i32
  call void @__asan_load4_noabort(i32 %18)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %notification_lock, align 4
  %19 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !174

do.body4.i:                                       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/fanotify/fanotify_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 297, 0\0A.popsection", ""() #8, !srcloc !176
  unreachable

do.end9.i:                                        ; preds = %list_del_init.exit
  %conv.i = trunc i32 %3 to i16
  %response10.i = getelementptr inbounds %struct.fanotify_perm_event, ptr %event.0, i32 0, i32 2
  %20 = ptrtoint ptr %response10.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %response10.i, align 4
  %state.i = getelementptr inbounds %struct.fanotify_perm_event, ptr %event.0, i32 0, i32 3
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %22)
  %cmp.i = icmp eq i16 %22, 3
  br i1 %cmp.i, label %if.then18.critedge.i, label %if.else.i

if.else.i:                                        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2, ptr %state.i, align 2
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #8
  br label %finish_permission_event.exit

if.then18.critedge.i:                             ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #8
  tail call void @fsnotify_destroy_event(ptr noundef %group, ptr noundef %event.0) #8
  br label %finish_permission_event.exit

finish_permission_event.exit:                     ; preds = %if.then18.critedge.i, %if.else.i
  %access_waitq = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %access_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %finish_permission_event.exit, %land.lhs.true.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %finish_permission_event.exit ], [ -2, %for.end ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_group_stop_queueing(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_fanotify_mark(i32 noundef %fanotify_fd, i32 noundef %flags, i64 noundef %mask, i32 noundef %dfd, ptr noundef %pathname) unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  %__fsid = alloca %struct.__kernel_fsid_t, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #8
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !186
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !186
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %__fsid) #8
  %3 = ptrtoint ptr %__fsid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %__fsid, align 4, !annotation !186
  %4 = getelementptr inbounds [2 x i32], ptr %__fsid, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !186
  %and = and i32 %flags, 272
  %and1 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_fanotify_mark.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_fanotify_mark, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_fanotify_mark.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %fanotify_fd, i32 noundef %flags, i32 noundef %dfd, ptr noundef %pathname, i64 noundef %mask) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mask)
  %tobool7.not = icmp ult i64 %mask, 4294967296
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %flags)
  %tobool11.not = icmp ult i32 %flags, 512
  %or.cond301 = and i1 %tobool11.not, %tobool7.not
  br i1 %or.cond301, label %if.end13, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %and, label %if.end13.cleanup_crit_edge [
    i32 0, label %if.end13.sw.epilog_crit_edge
    i32 16, label %sw.bb14
    i32 256, label %sw.bb15
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb14:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb14, %if.end13.sw.epilog_crit_edge
  %obj_type.0 = phi i32 [ 2, %sw.bb15 ], [ 1, %sw.bb14 ], [ %and, %if.end13.sw.epilog_crit_edge ]
  %7 = trunc i32 %flags to i8
  %trunc = and i8 %7, -125
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %trunc, label %sw.epilog.cleanup_crit_edge [
    i8 1, label %sw.epilog.sw.bb17_crit_edge
    i8 2, label %sw.epilog.sw.bb17_crit_edge329
    i8 -128, label %sw.bb21
  ]

sw.epilog.sw.bb17_crit_edge329:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

sw.epilog.sw.bb17_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb17:                                          ; preds = %sw.epilog.sw.bb17_crit_edge, %sw.epilog.sw.bb17_crit_edge329
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mask)
  %tobool18.not = icmp eq i64 %mask, 0
  br i1 %tobool18.not, label %sw.bb17.cleanup_crit_edge, label %sw.bb17.sw.epilog27_crit_edge

sw.bb17.sw.epilog27_crit_edge:                    ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog27

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb21:                                          ; preds = %sw.epilog
  %and22 = and i32 %flags, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %sw.bb21.sw.epilog27_crit_edge, label %sw.bb21.cleanup_crit_edge

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb21.sw.epilog27_crit_edge:                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %sw.bb21.sw.epilog27_crit_edge, %sw.bb17.sw.epilog27_crit_edge
  %and29 = and i64 %mask, 2818072576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and29)
  %tobool30.not = icmp eq i64 %and29, 0
  br i1 %tobool30.not, label %if.end32, label %sw.epilog27.cleanup_crit_edge

sw.epilog27.cleanup_crit_edge:                    ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %sw.epilog27
  %and35 = and i64 %mask, -1207959553
  %spec.select = select i1 %tobool.not, i64 %mask, i64 %and35
  %call.i = tail call i32 @__fdget(i32 noundef %fanotify_fd) #8, !noalias !187
  %and.i.i = and i32 %call.i, -4
  %9 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool38.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool38.not, label %if.end32.cleanup_crit_edge, label %if.end48, !prof !174

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %if.end32
  %f_op = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_op, align 4
  %cmp.not = icmp eq ptr %11, @fanotify_fops
  br i1 %cmp.not, label %if.end58, label %if.end48.fput_and_out_crit_edge, !prof !175

if.end48.fput_and_out_crit_edge:                  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %fput_and_out

if.end58:                                         ; preds = %if.end48
  %private_data = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 16
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data, align 4
  %call60 = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call60, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end58
  %flags61 = getelementptr inbounds %struct.fsnotify_group, ptr %13, i32 0, i32 15, i32 0, i32 3
  %14 = ptrtoint ptr %flags61 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool63.not = icmp sgt i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp64.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp64.not, %tobool63.not
  br i1 %or.cond, label %lor.lhs.false.if.end67_crit_edge, label %lor.lhs.false.fput_and_out_crit_edge

lor.lhs.false.fput_and_out_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %fput_and_out

lor.lhs.false.if.end67_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

land.lhs.true:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp64.not.old = icmp eq i32 %and, 0
  br i1 %cmp64.not.old, label %land.lhs.true.if.end67_crit_edge, label %land.lhs.true.fput_and_out_crit_edge

land.lhs.true.fput_and_out_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %fput_and_out

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.end67:                                         ; preds = %land.lhs.true.if.end67_crit_edge, %lor.lhs.false.if.end67_crit_edge
  %and68 = and i64 %spec.select, 458752
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and68)
  %tobool69.not = icmp eq i64 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end74_crit_edge, label %land.lhs.true70

if.end67.if.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

land.lhs.true70:                                  ; preds = %if.end67
  %priority = getelementptr inbounds %struct.fsnotify_group, ptr %13, i32 0, i32 7
  %16 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp71 = icmp eq i32 %17, 0
  br i1 %cmp71, label %land.lhs.true70.fput_and_out_crit_edge, label %land.lhs.true70.if.end74_crit_edge

land.lhs.true70.if.end74_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

land.lhs.true70.fput_and_out_crit_edge:           ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  br label %fput_and_out

if.end74:                                         ; preds = %land.lhs.true70.if.end74_crit_edge, %if.end67.if.end74_crit_edge
  %and75 = and i64 %spec.select, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and75)
  %tobool76.not = icmp eq i64 %and75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and)
  %cmp78.not = icmp eq i32 %and, 256
  %or.cond298 = or i1 %cmp78.not, %tobool76.not
  br i1 %or.cond298, label %if.end81, label %if.end74.fput_and_out_crit_edge

if.end74.fput_and_out_crit_edge:                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %fput_and_out

if.end81:                                         ; preds = %if.end74
  %flags82 = getelementptr inbounds %struct.fsnotify_group, ptr %13, i32 0, i32 15, i32 0, i32 3
  %18 = ptrtoint ptr %flags82 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags82, align 4
  %and83 = and i32 %19, 7680
  %and84 = and i64 %spec.select, -1208422460
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and84)
  %tobool85.not = icmp eq i64 %and84, 0
  br i1 %tobool85.not, label %if.end81.if.end92_crit_edge, label %land.lhs.true86

if.end81.if.end92_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

land.lhs.true86:                                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool87.not = icmp eq i32 %and83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp89 = icmp eq i32 %and, 16
  %or.cond299 = or i1 %cmp89, %tobool87.not
  br i1 %or.cond299, label %land.lhs.true86.fput_and_out_crit_edge, label %land.lhs.true86.if.end92_crit_edge

land.lhs.true86.if.end92_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

land.lhs.true86.fput_and_out_crit_edge:           ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #10
  br label %fput_and_out

if.end92:                                         ; preds = %land.lhs.true86.if.end92_crit_edge, %if.end81.if.end92_crit_edge
  %and93 = and i64 %spec.select, 268435456
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and93)
  %tobool94.not = icmp ne i64 %and93, 0
  %and96 = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  %or.cond300 = select i1 %tobool94.not, i1 %tobool97.not, i1 false
  br i1 %or.cond300, label %if.end92.fput_and_out_crit_edge, label %if.end99

if.end92.fput_and_out_crit_edge:                  ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %fput_and_out

if.end99:                                         ; preds = %if.end92
  %and100 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end112, label %if.then102

if.then102:                                       ; preds = %if.end99
  %20 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %and, label %if.else109 [
    i32 16, label %if.then105
    i32 256, label %if.then108
  ]

if.then105:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fsnotify_clear_marks_by_group(ptr noundef %13, i32 noundef 1) #8
  br label %fput_and_out

if.then108:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fsnotify_clear_marks_by_group(ptr noundef %13, i32 noundef 2) #8
  br label %fput_and_out

if.else109:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fsnotify_clear_marks_by_group(ptr noundef %13, i32 noundef 0) #8
  br label %fput_and_out

if.end112:                                        ; preds = %if.end99
  %and113 = and i64 %spec.select, 268959743
  %call114 = call fastcc i32 @fanotify_find_path(i32 noundef %dfd, ptr noundef %pathname, ptr noundef nonnull %path, i32 noundef %flags, i64 noundef %and113, i32 noundef %obj_type.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.end112.fput_and_out_crit_edge

if.end112.fput_and_out_crit_edge:                 ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %fput_and_out

if.end117:                                        ; preds = %if.end112
  %and118 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  %brmerge = or i1 %tobool119.not, %tobool69.not
  br i1 %brmerge, label %if.end117.if.end125_crit_edge, label %land.lhs.true.i

if.end117.if.end125_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

land.lhs.true.i:                                  ; preds = %if.end117
  %21 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %path, align 4
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mnt_sb.i, align 4
  %s_type.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %s_type.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_type.i, align 32
  %fs_flags.i = getelementptr inbounds %struct.file_system_type, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %fs_flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fs_flags.i, align 4
  %and1.i = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end125_crit_edge, label %land.lhs.true.i.path_put_and_out_crit_edge

land.lhs.true.i.path_put_and_out_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %path_put_and_out

land.lhs.true.i.if.end125_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.end125:                                        ; preds = %land.lhs.true.i.if.end125_crit_edge, %if.end117.if.end125_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool126.not = icmp eq i32 %and83, 0
  br i1 %tobool126.not, label %if.end125.if.end137_crit_edge, label %if.then127

if.end125.if.end137_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.then127:                                       ; preds = %if.end125
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call128 = call fastcc i32 @fanotify_test_fsid(ptr noundef %30, ptr noundef nonnull %__fsid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.then127.path_put_and_out_crit_edge

if.then127.path_put_and_out_crit_edge:            ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #10
  br label %path_put_and_out

if.end131:                                        ; preds = %if.then127
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_sb.i, align 4
  %s_export_op.i = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %s_export_op.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_export_op.i, align 16
  %tobool.not.i303 = icmp eq ptr %36, null
  br i1 %tobool.not.i303, label %if.end131.path_put_and_out_crit_edge, label %lor.lhs.false.i

if.end131.path_put_and_out_crit_edge:             ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %path_put_and_out

lor.lhs.false.i:                                  ; preds = %if.end131
  %fh_to_dentry.i = getelementptr inbounds %struct.export_operations, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %fh_to_dentry.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fh_to_dentry.i, align 4
  %tobool3.not.i = icmp eq ptr %38, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.path_put_and_out_crit_edge, label %lor.lhs.false.i.if.end137_crit_edge

lor.lhs.false.i.if.end137_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

lor.lhs.false.i.path_put_and_out_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %path_put_and_out

if.end137:                                        ; preds = %lor.lhs.false.i.if.end137_crit_edge, %if.end125.if.end137_crit_edge
  %fsid.0 = phi ptr [ null, %if.end125.if.end137_crit_edge ], [ %__fsid, %lor.lhs.false.i.if.end137_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp138 = icmp eq i32 %and, 0
  br i1 %cmp138, label %if.end144.thread, label %if.end144

if.end144.thread:                                 ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %d_inode, align 8
  br label %lor.lhs.false146

if.end144:                                        ; preds = %if.end137
  %43 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %path, align 4
  %tobool145.not = icmp eq ptr %44, null
  br i1 %tobool145.not, label %if.end144.lor.lhs.false146_crit_edge, label %if.end144.if.then151_crit_edge

if.end144.lor.lhs.false146_crit_edge:             ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false146

if.end144.if.then151_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = trunc i64 %spec.select to i32
  br label %if.then151

lor.lhs.false146:                                 ; preds = %if.end144.lor.lhs.false146_crit_edge, %if.end144.thread
  %inode.0324 = phi ptr [ %42, %if.end144.thread ], [ null, %if.end144.lor.lhs.false146_crit_edge ]
  %45 = ptrtoint ptr %inode.0324 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %inode.0324, align 8
  %47 = and i16 %46, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %47)
  %cmp149 = icmp eq i16 %47, 16384
  %extract.t297 = trunc i64 %spec.select to i32
  br i1 %cmp149, label %lor.lhs.false146.if.end163_crit_edge, label %lor.lhs.false146.if.then151_crit_edge

lor.lhs.false146.if.then151_crit_edge:            ; preds = %lor.lhs.false146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then151

lor.lhs.false146.if.end163_crit_edge:             ; preds = %lor.lhs.false146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

if.then151:                                       ; preds = %lor.lhs.false146.if.then151_crit_edge, %if.end144.if.then151_crit_edge
  %.pre-phi = phi i32 [ %.pre, %if.end144.if.then151_crit_edge ], [ %extract.t297, %lor.lhs.false146.if.then151_crit_edge ]
  %mnt.0325 = phi ptr [ %44, %if.end144.if.then151_crit_edge ], [ null, %lor.lhs.false146.if.then151_crit_edge ]
  %inode.0322 = phi ptr [ null, %if.end144.if.then151_crit_edge ], [ %inode.0324, %lor.lhs.false146.if.then151_crit_edge ]
  %and153 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  %extract.t296 = and i32 %.pre-phi, -134217729
  br i1 %tobool154.not, label %if.then151.if.end163_crit_edge, label %land.lhs.true155

if.then151.if.end163_crit_edge:                   ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

land.lhs.true155:                                 ; preds = %if.then151
  br i1 %tobool119.not, label %land.lhs.true155.if.end163_crit_edge, label %land.lhs.true158

land.lhs.true155.if.end163_crit_edge:             ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

land.lhs.true158:                                 ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #10
  %48 = shl nuw nsw i32 %and1, 22
  %49 = or i32 %48, %extract.t296
  %spec.select328 = xor i32 %49, 134217728
  br label %if.end163

if.end163:                                        ; preds = %land.lhs.true158, %land.lhs.true155.if.end163_crit_edge, %if.then151.if.end163_crit_edge, %lor.lhs.false146.if.end163_crit_edge
  %mnt.0326 = phi ptr [ %mnt.0325, %land.lhs.true155.if.end163_crit_edge ], [ %mnt.0325, %if.then151.if.end163_crit_edge ], [ null, %lor.lhs.false146.if.end163_crit_edge ], [ %mnt.0325, %land.lhs.true158 ]
  %inode.0323 = phi ptr [ %inode.0322, %land.lhs.true155.if.end163_crit_edge ], [ %inode.0322, %if.then151.if.end163_crit_edge ], [ %inode.0324, %lor.lhs.false146.if.end163_crit_edge ], [ %inode.0322, %land.lhs.true158 ]
  %umask.0 = phi i32 [ 134217728, %land.lhs.true155.if.end163_crit_edge ], [ 134217728, %if.then151.if.end163_crit_edge ], [ 0, %lor.lhs.false146.if.end163_crit_edge ], [ 134217728, %land.lhs.true158 ]
  %mask.addr.1.off0 = phi i32 [ %extract.t296, %land.lhs.true155.if.end163_crit_edge ], [ %extract.t296, %if.then151.if.end163_crit_edge ], [ %extract.t297, %lor.lhs.false146.if.end163_crit_edge ], [ %spec.select328, %land.lhs.true158 ]
  %and164 = and i32 %flags, 3
  %50 = zext i32 %and164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %and164, label %if.end163.path_put_and_out_crit_edge [
    i32 1, label %sw.bb165
    i32 2, label %sw.bb182
  ]

if.end163.path_put_and_out_crit_edge:             ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %path_put_and_out

sw.bb165:                                         ; preds = %if.end163
  %51 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %and, label %if.else177 [
    i32 16, label %if.then168
    i32 256, label %if.then174
  ]

if.then168:                                       ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #10
  %mnt_fsnotify_marks.i = getelementptr i8, ptr %mnt.0326, i32 124
  %call1.i = call fastcc i32 @fanotify_add_mark(ptr noundef %13, ptr noundef %mnt_fsnotify_marks.i, i32 noundef 1, i32 noundef %mask.addr.1.off0, i32 noundef %flags, ptr noundef %fsid.0) #8
  br label %path_put_and_out

if.then174:                                       ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #10
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %mnt.0326, i32 0, i32 1
  %52 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mnt_sb, align 4
  %s_fsnotify_marks.i = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 38
  %call.i305 = call fastcc i32 @fanotify_add_mark(ptr noundef %13, ptr noundef %s_fsnotify_marks.i, i32 noundef 2, i32 noundef %mask.addr.1.off0, i32 noundef %flags, ptr noundef %fsid.0) #8
  br label %path_put_and_out

if.else177:                                       ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #10
  %call179 = call fastcc i32 @fanotify_add_inode_mark(ptr noundef %13, ptr noundef %inode.0323, i32 noundef %mask.addr.1.off0, i32 noundef %flags, ptr noundef %fsid.0)
  br label %path_put_and_out

sw.bb182:                                         ; preds = %if.end163
  %54 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %and, label %if.else195 [
    i32 16, label %if.then185
    i32 256, label %if.then191
  ]

if.then185:                                       ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #10
  %mnt_fsnotify_marks.i306 = getelementptr i8, ptr %mnt.0326, i32 124
  %call1.i307 = call fastcc i32 @fanotify_remove_mark(ptr noundef %13, ptr noundef %mnt_fsnotify_marks.i306, i32 noundef %mask.addr.1.off0, i32 noundef %flags, i32 noundef %umask.0) #8
  br label %path_put_and_out

if.then191:                                       ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #10
  %mnt_sb192 = getelementptr inbounds %struct.vfsmount, ptr %mnt.0326, i32 0, i32 1
  %55 = ptrtoint ptr %mnt_sb192 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mnt_sb192, align 4
  %s_fsnotify_marks.i308 = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 38
  %call.i309 = call fastcc i32 @fanotify_remove_mark(ptr noundef %13, ptr noundef %s_fsnotify_marks.i308, i32 noundef %mask.addr.1.off0, i32 noundef %flags, i32 noundef %umask.0) #8
  br label %path_put_and_out

if.else195:                                       ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #10
  %i_fsnotify_marks.i = getelementptr inbounds %struct.inode, ptr %inode.0323, i32 0, i32 51
  %call.i310 = call fastcc i32 @fanotify_remove_mark(ptr noundef %13, ptr noundef %i_fsnotify_marks.i, i32 noundef %mask.addr.1.off0, i32 noundef %flags, i32 noundef %umask.0) #8
  br label %path_put_and_out

path_put_and_out:                                 ; preds = %if.else195, %if.then191, %if.then185, %if.else177, %if.then174, %if.then168, %if.end163.path_put_and_out_crit_edge, %lor.lhs.false.i.path_put_and_out_crit_edge, %if.end131.path_put_and_out_crit_edge, %if.then127.path_put_and_out_crit_edge, %land.lhs.true.i.path_put_and_out_crit_edge
  %ret.0 = phi i32 [ %call128, %if.then127.path_put_and_out_crit_edge ], [ %call1.i307, %if.then185 ], [ %call.i309, %if.then191 ], [ %call.i310, %if.else195 ], [ %call1.i, %if.then168 ], [ %call.i305, %if.then174 ], [ %call179, %if.else177 ], [ -22, %if.end163.path_put_and_out_crit_edge ], [ -22, %land.lhs.true.i.path_put_and_out_crit_edge ], [ -95, %if.end131.path_put_and_out_crit_edge ], [ -95, %lor.lhs.false.i.path_put_and_out_crit_edge ]
  call void @path_put(ptr noundef nonnull %path) #8
  br label %fput_and_out

fput_and_out:                                     ; preds = %path_put_and_out, %if.end112.fput_and_out_crit_edge, %if.else109, %if.then108, %if.then105, %if.end92.fput_and_out_crit_edge, %land.lhs.true86.fput_and_out_crit_edge, %if.end74.fput_and_out_crit_edge, %land.lhs.true70.fput_and_out_crit_edge, %land.lhs.true.fput_and_out_crit_edge, %lor.lhs.false.fput_and_out_crit_edge, %if.end48.fput_and_out_crit_edge
  %ret.1 = phi i32 [ -22, %if.end48.fput_and_out_crit_edge ], [ -1, %land.lhs.true.fput_and_out_crit_edge ], [ -22, %land.lhs.true70.fput_and_out_crit_edge ], [ 0, %if.then105 ], [ 0, %if.then108 ], [ 0, %if.else109 ], [ %call114, %if.end112.fput_and_out_crit_edge ], [ %ret.0, %path_put_and_out ], [ -22, %land.lhs.true86.fput_and_out_crit_edge ], [ -1, %lor.lhs.false.fput_and_out_crit_edge ], [ -22, %if.end74.fput_and_out_crit_edge ], [ -22, %if.end92.fput_and_out_crit_edge ]
  %and.i311 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i311)
  %tobool.not.i312 = icmp eq i32 %and.i311, 0
  br i1 %tobool.not.i312, label %fput_and_out.cleanup_crit_edge, label %if.then.i

fput_and_out.cleanup_crit_edge:                   ; preds = %fput_and_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %fput_and_out
  call void @__sanitizer_cov_trace_pc() #10
  call void @fput(ptr noundef nonnull %9) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %fput_and_out.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %sw.epilog27.cleanup_crit_edge, %sw.bb21.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %sw.bb17.cleanup_crit_edge ], [ -22, %sw.bb21.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog27.cleanup_crit_edge ], [ -9, %if.end32.cleanup_crit_edge ], [ %ret.1, %fput_and_out.cleanup_crit_edge ], [ %ret.1, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__fsid) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fanotify_find_path(i32 noundef %dfd, ptr noundef %filename, ptr noundef %path, i32 noundef %flags, i64 noundef %mask, i32 noundef %obj_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fanotify_find_path.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fanotify_find_path, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fanotify_find_path.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i32 noundef %dfd, ptr noundef %filename, i32 noundef %flags) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq ptr %filename, null
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %do.end
  %call.i = tail call i32 @__fdget(i32 noundef %dfd) #8, !noalias !190
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool4.not, label %if.then3.cleanup41_crit_edge, label %if.end6

if.then3.cleanup41_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

if.end6:                                          ; preds = %if.then3
  %and = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.if.end14_crit_edge, label %land.lhs.true

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end6
  %f_inode.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %5)
  %cmp11 = icmp eq i16 %5, 16384
  br i1 %cmp11, label %land.lhs.true.if.end14_crit_edge, label %if.then13

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %land.lhs.true
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then13.cleanup41_crit_edge, label %if.then.i

if.then13.cleanup41_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fput(ptr noundef nonnull %0) #8
  br label %cleanup41

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %f_path = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %6 = ptrtoint ptr %f_path to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %f_path, align 8
  %8 = ptrtoint ptr %path to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %path, align 4
  tail call void @path_get(ptr noundef %path) #8
  %and.i68 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool.not.i69 = icmp eq i32 %and.i68, 0
  br i1 %tobool.not.i69, label %if.end14.if.end32_crit_edge, label %if.then.i70

if.end14.if.end32_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then.i70:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fput(ptr noundef nonnull %0) #8
  br label %if.end32

if.else:                                          ; preds = %do.end
  %and16 = lshr i32 %flags, 2
  %9 = and i32 %and16, 3
  %10 = xor i32 %9, 1
  %call.i72 = tail call i32 @user_path_at_empty(i32 noundef %dfd, ptr noundef nonnull %filename, i32 noundef %10, ptr noundef %path, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool26.not = icmp eq i32 %call.i72, 0
  br i1 %tobool26.not, label %if.else.if.end32_crit_edge, label %if.else.cleanup41_crit_edge

if.else.cleanup41_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end32:                                         ; preds = %if.else.if.end32_crit_edge, %if.then.i70, %if.end14.if.end32_crit_edge
  %11 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %path, align 4
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !193
  %dentry.i = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %15 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dentry.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i.i, align 8
  %call2.i = tail call i32 @inode_permission(ptr noundef %14, ptr noundef %18, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool34.not = icmp eq i32 %call2.i, 0
  br i1 %tobool34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @path_put(ptr noundef %path) #8
  br label %cleanup41

if.end36:                                         ; preds = %if.end32
  %call37 = tail call i32 @security_path_notify(ptr noundef %path, i64 noundef %mask, i32 noundef %obj_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end36.cleanup41_crit_edge, label %if.then39

if.end36.cleanup41_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @path_put(ptr noundef %path) #8
  br label %cleanup41

cleanup41:                                        ; preds = %if.then39, %if.end36.cleanup41_crit_edge, %if.then35, %if.else.cleanup41_crit_edge, %if.then.i, %if.then13.cleanup41_crit_edge, %if.then3.cleanup41_crit_edge
  %retval.0 = phi i32 [ %call2.i, %if.then35 ], [ %call37, %if.then39 ], [ 0, %if.end36.cleanup41_crit_edge ], [ %call.i72, %if.else.cleanup41_crit_edge ], [ -20, %if.then.i ], [ -20, %if.then13.cleanup41_crit_edge ], [ -9, %if.then3.cleanup41_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fanotify_test_fsid(ptr noundef %dentry, ptr noundef %fsid) unnamed_addr #0 align 64 {
entry:
  %root_fsid = alloca %struct.__kernel_fsid_t, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %root_fsid) #8
  %0 = ptrtoint ptr %root_fsid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %root_fsid, align 4, !annotation !186
  %1 = getelementptr inbounds [2 x i32], ptr %root_fsid, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !186
  %call = tail call i32 @vfs_get_fsid(ptr noundef %dentry, ptr noundef %fsid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %fsid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fsid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %arrayidx3 = getelementptr [2 x i32], ptr %fsid, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %7 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_sb, align 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_root, align 64
  %call7 = call i32 @vfs_get_fsid(ptr noundef %10, ptr noundef nonnull %root_fsid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %root_fsid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %root_fsid, align 4
  %13 = ptrtoint ptr %fsid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fsid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not = icmp eq i32 %12, %14
  br i1 %cmp.not, label %lor.lhs.false, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %arrayidx18 = getelementptr [2 x i32], ptr %fsid, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp19.not = icmp eq i32 %16, %18
  %spec.select = select i1 %cmp19.not, i32 0, i32 -18
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ -18, %if.end10.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %root_fsid) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fanotify_add_inode_mark(ptr noundef %group, ptr noundef %inode, i32 noundef %mask, i32 noundef %flags, ptr noundef %fsid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fanotify_add_inode_mark.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fanotify_add_inode_mark, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fanotify_add_inode_mark.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, ptr noundef %group, ptr noundef %inode) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = and i32 %flags, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %1 = icmp eq i32 %0, 32
  br i1 %1, label %land.lhs.true6, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true6:                                   ; preds = %do.end
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 42
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_writecount.i, i32 noundef 4) #8
  %2 = ptrtoint ptr %i_writecount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_writecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp sgt i32 %3, 0
  br i1 %cmp.i, label %land.lhs.true6.return_crit_edge, label %land.lhs.true6.if.end9_crit_edge

land.lhs.true6.if.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true6.return_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end9:                                          ; preds = %land.lhs.true6.if.end9_crit_edge, %do.end.if.end9_crit_edge
  %i_fsnotify_marks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 51
  %call10 = tail call fastcc i32 @fanotify_add_mark(ptr noundef %group, ptr noundef %i_fsnotify_marks, i32 noundef 0, i32 noundef %mask, i32 noundef %flags, ptr noundef %fsid)
  br label %return

return:                                           ; preds = %if.end9, %land.lhs.true6.return_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ 0, %land.lhs.true6.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_clear_marks_by_group(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_path_notify(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_get_fsid(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fanotify_add_mark(ptr noundef %group, ptr noundef %connp, i32 noundef %obj_type, i32 noundef %mask, i32 noundef %flags, ptr noundef %fsid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mark_mutex = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mark_mutex, i32 noundef 0) #8
  %call = tail call ptr @fsnotify_find_mark(ptr noundef %connp, ptr noundef %group) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %ucounts1.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 5
  %0 = ptrtoint ptr %ucounts1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucounts1.i, align 4
  %flags.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %ns.i = getelementptr inbounds %struct.ucounts, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns.i, align 4
  %uid.i = getelementptr inbounds %struct.ucounts, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack.i = load i32, ptr %uid.i, align 4
  %7 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call.i = tail call ptr @inc_ucount(ptr noundef %5, [1 x i32] %7, i32 noundef 11) #8
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.then3_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.if.then3_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %8 = load ptr, ptr @fanotify_mark_cache, align 4
  %call4.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %8, i32 noundef 3264) #8
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i.out_dec_ucounts.i_crit_edge, label %if.end7.i

if.end.i.out_dec_ucounts.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_dec_ucounts.i

if.end7.i:                                        ; preds = %if.end.i
  tail call void @fsnotify_init_mark(ptr noundef nonnull %call4.i, ptr noundef %group) #8
  %call8.i = tail call i32 @fsnotify_add_mark_locked(ptr noundef nonnull %call4.i, ptr noundef %connp, i32 noundef %obj_type, i32 noundef 0, ptr noundef %fsid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.fanotify_add_new_mark.exit_crit_edge, label %if.then10.i

if.end7.i.fanotify_add_new_mark.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_add_new_mark.exit

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fsnotify_put_mark(ptr noundef nonnull %call4.i) #8
  %phi.cast.i = inttoptr i32 %call8.i to ptr
  br label %out_dec_ucounts.i

out_dec_ucounts.i:                                ; preds = %if.then10.i, %if.end.i.out_dec_ucounts.i_crit_edge
  %ret.0.i = phi ptr [ %phi.cast.i, %if.then10.i ], [ inttoptr (i32 -12 to ptr), %if.end.i.out_dec_ucounts.i_crit_edge ]
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and13.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %out_dec_ucounts.i.fanotify_add_new_mark.exit_crit_edge

out_dec_ucounts.i.fanotify_add_new_mark.exit_crit_edge: ; preds = %out_dec_ucounts.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_add_new_mark.exit

if.then15.i:                                      ; preds = %out_dec_ucounts.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dec_ucount(ptr noundef %1, i32 noundef 11) #8
  br label %fanotify_add_new_mark.exit

fanotify_add_new_mark.exit:                       ; preds = %if.then15.i, %out_dec_ucounts.i.fanotify_add_new_mark.exit_crit_edge, %if.end7.i.fanotify_add_new_mark.exit_crit_edge
  %retval.0.i = phi ptr [ %call4.i, %if.end7.i.fanotify_add_new_mark.exit_crit_edge ], [ %ret.0.i, %if.then15.i ], [ %ret.0.i, %out_dec_ucounts.i.fanotify_add_new_mark.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %fanotify_add_new_mark.exit.if.then3_crit_edge, label %fanotify_add_new_mark.exit.if.end6_crit_edge

fanotify_add_new_mark.exit.if.end6_crit_edge:     ; preds = %fanotify_add_new_mark.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

fanotify_add_new_mark.exit.if.then3_crit_edge:    ; preds = %fanotify_add_new_mark.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %fanotify_add_new_mark.exit.if.then3_crit_edge, %land.lhs.true.i.if.then3_crit_edge
  %retval.0.i48 = phi ptr [ %retval.0.i, %fanotify_add_new_mark.exit.if.then3_crit_edge ], [ inttoptr (i32 -28 to ptr), %land.lhs.true.i.if.then3_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mark_mutex) #8
  %11 = ptrtoint ptr %retval.0.i48 to i32
  br label %cleanup

if.end6:                                          ; preds = %fanotify_add_new_mark.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  %fsn_mark.0 = phi ptr [ %call, %entry.if.end6_crit_edge ], [ %retval.0.i, %fanotify_add_new_mark.exit.if.end6_crit_edge ]
  %and = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp ne i32 %and, 0
  %and8 = and i32 %mask, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or.cond = or i1 %tobool9.not, %tobool7.not
  br i1 %or.cond, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.end6
  %elements.i.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %elements.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %elements.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %13, null
  br i1 %cmp.i.not.i, label %fanotify_group_init_error_pool.exit, label %if.then10.if.end15.thread_crit_edge

if.then10.if.end15.thread_crit_edge:              ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.thread

fanotify_group_init_error_pool.exit:              ; preds = %if.then10
  %error_events_pool.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 6
  %call.i.i = tail call i32 @mempool_init(ptr noundef %error_events_pool.i, i32 noundef 32, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 176 to ptr)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not, label %fanotify_group_init_error_pool.exit.if.end15.thread_crit_edge, label %fanotify_group_init_error_pool.exit.out_crit_edge

fanotify_group_init_error_pool.exit.out_crit_edge: ; preds = %fanotify_group_init_error_pool.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

fanotify_group_init_error_pool.exit.if.end15.thread_crit_edge: ; preds = %fanotify_group_init_error_pool.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.thread

if.end15.thread:                                  ; preds = %fanotify_group_init_error_pool.exit.if.end15.thread_crit_edge, %if.then10.if.end15.thread_crit_edge
  %lock.i51 = getelementptr inbounds %struct.fsnotify_mark, ptr %fsn_mark.0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i51) #8
  br label %if.then.i

if.end15:                                         ; preds = %if.end6
  %lock.i = getelementptr inbounds %struct.fsnotify_mark, ptr %fsn_mark.0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i44 = icmp eq i32 %and, 0
  br i1 %tobool.not.i44, label %if.end15.if.then.i_crit_edge, label %if.else.i

if.end15.if.then.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.end15.if.then.i_crit_edge, %if.end15.thread
  %lock.i54 = phi ptr [ %lock.i51, %if.end15.thread ], [ %lock.i, %if.end15.if.then.i_crit_edge ]
  %14 = ptrtoint ptr %fsn_mark.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fsn_mark.0, align 4
  %or.i = or i32 %15, %mask
  store i32 %or.i, ptr %fsn_mark.0, align 4
  %phi.bo.i = xor i32 %15, -1
  br label %fanotify_mark_add_to_mask.exit

if.else.i:                                        ; preds = %if.end15
  %ignored_mask.i = getelementptr inbounds %struct.fsnotify_mark, ptr %fsn_mark.0, i32 0, i32 7
  %16 = ptrtoint ptr %ignored_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ignored_mask.i, align 4
  %or3.i = or i32 %17, %mask
  store i32 %or3.i, ptr %ignored_mask.i, align 4
  %and4.i = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i45 = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i45, label %if.else.i.fanotify_mark_add_to_mask.exit_crit_edge, label %if.then6.i

if.else.i.fanotify_mark_add_to_mask.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fanotify_mark_add_to_mask.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags7.i = getelementptr inbounds %struct.fsnotify_mark, ptr %fsn_mark.0, i32 0, i32 8
  %18 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags7.i, align 4
  %or8.i = or i32 %19, 1
  store i32 %or8.i, ptr %flags7.i, align 4
  br label %fanotify_mark_add_to_mask.exit

fanotify_mark_add_to_mask.exit:                   ; preds = %if.then6.i, %if.else.i.fanotify_mark_add_to_mask.exit_crit_edge, %if.then.i
  %lock.i53 = phi ptr [ %lock.i, %if.then6.i ], [ %lock.i, %if.else.i.fanotify_mark_add_to_mask.exit_crit_edge ], [ %lock.i54, %if.then.i ]
  %oldmask.0.i = phi i32 [ 0, %if.then6.i ], [ 0, %if.else.i.fanotify_mark_add_to_mask.exit_crit_edge ], [ %phi.bo.i, %if.then.i ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i53) #8
  %and11.i = and i32 %oldmask.0.i, %mask
  %connector = getelementptr inbounds %struct.fsnotify_mark, ptr %fsn_mark.0, i32 0, i32 6
  %20 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %connector, align 4
  %call17 = tail call i32 @fsnotify_conn_mask(ptr noundef %21) #8
  %neg = xor i32 %call17, -1
  %and18 = and i32 %and11.i, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %fanotify_mark_add_to_mask.exit.out_crit_edge, label %if.then20

fanotify_mark_add_to_mask.exit.out_crit_edge:     ; preds = %fanotify_mark_add_to_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then20:                                        ; preds = %fanotify_mark_add_to_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %connector, align 4
  tail call void @fsnotify_recalc_mask(ptr noundef %23) #8
  br label %out

out:                                              ; preds = %if.then20, %fanotify_mark_add_to_mask.exit.out_crit_edge, %fanotify_group_init_error_pool.exit.out_crit_edge
  %ret.1 = phi i32 [ 0, %if.then20 ], [ 0, %fanotify_mark_add_to_mask.exit.out_crit_edge ], [ %call.i.i, %fanotify_group_init_error_pool.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mark_mutex) #8
  tail call void @fsnotify_put_mark(ptr noundef %fsn_mark.0) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then3
  %retval.0 = phi i32 [ %ret.1, %out ], [ %11, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_find_mark(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify_conn_mask(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_recalc_mask(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_put_mark(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_init_mark(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify_add_mark_locked(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_ucount(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_kmalloc(i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_kfree(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fanotify_remove_mark(ptr noundef %group, ptr noundef %connp, i32 noundef %mask, i32 noundef %flags, i32 noundef %umask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mark_mutex = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mark_mutex, i32 noundef 0) #8
  %call = tail call ptr @fsnotify_find_mark(ptr noundef %connp, ptr noundef %group) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %mark_mutex) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %neg.i = xor i32 %umask, -1
  %and.i = and i32 %neg.i, %mask
  %lock.i = getelementptr inbounds %struct.fsnotify_mark, ptr %call, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #8
  %and1.i = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %neg3.i = xor i32 %and.i, -1
  %and5.i = and i32 %1, %neg3.i
  store i32 %and5.i, ptr %call, align 4
  br label %fanotify_mark_remove_from_mask.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %neg6.i = xor i32 %and.i, -1
  %ignored_mask.i = getelementptr inbounds %struct.fsnotify_mark, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %ignored_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ignored_mask.i, align 4
  %and7.i = and i32 %3, %neg6.i
  store i32 %and7.i, ptr %ignored_mask.i, align 4
  br label %fanotify_mark_remove_from_mask.exit

fanotify_mark_remove_from_mask.exit:              ; preds = %if.else.i, %if.then.i
  %oldmask.0.i = phi i32 [ 0, %if.else.i ], [ %1, %if.then.i ]
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 4
  %ignored_mask9.i = getelementptr inbounds %struct.fsnotify_mark, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %ignored_mask9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ignored_mask9.i, align 4
  %or.i = or i32 %7, %5
  %and11.i = and i32 %or.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i.not = icmp eq i32 %and11.i, 0
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #8
  %and14.i = and i32 %oldmask.0.i, %and.i
  %connector = getelementptr inbounds %struct.fsnotify_mark, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connector, align 4
  %call3 = tail call i32 @fsnotify_conn_mask(ptr noundef %9) #8
  %and = and i32 %and14.i, %call3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %fanotify_mark_remove_from_mask.exit.if.end7_crit_edge, label %if.then5

fanotify_mark_remove_from_mask.exit.if.end7_crit_edge: ; preds = %fanotify_mark_remove_from_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %fanotify_mark_remove_from_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %connector, align 4
  tail call void @fsnotify_recalc_mask(ptr noundef %11) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %fanotify_mark_remove_from_mask.exit.if.end7_crit_edge
  br i1 %tobool12.not.i.not, label %if.then13, label %if.end10.thread

if.end10.thread:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %mark_mutex) #8
  br label %if.end14

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fsnotify_detach_mark(ptr noundef nonnull %call) #8
  tail call void @mutex_unlock(ptr noundef %mark_mutex) #8
  tail call void @fsnotify_free_mark(ptr noundef nonnull %call) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.thread
  tail call void @fsnotify_put_mark(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_detach_mark(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_free_mark(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !43, !45, !47, !48, !50, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !69, !70, !71, !73, !75, !76, !77, !79, !81, !83, !85, !86, !88, !90, !92, !94, !95, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161}
!llvm.named.register.sp = !{!163}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 1257, i32 1}
!2 = !{ptr @event_enter__fanotify_init, !1, !"event_enter__fanotify_init", i1 false, i1 false}
!3 = !{ptr @__event_enter__fanotify_init, !1, !"__event_enter__fanotify_init", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__fanotify_init, !1, !"event_exit__fanotify_init", i1 false, i1 false}
!6 = !{ptr @__event_exit__fanotify_init, !1, !"__event_exit__fanotify_init", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__fanotify_init, !1, !"__syscall_meta__fanotify_init", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__fanotify_init, !1, !"__p_syscall_meta__fanotify_init", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 1690, i32 1}
!12 = !{ptr @event_enter__fanotify_mark, !11, !"event_enter__fanotify_mark", i1 false, i1 false}
!13 = !{ptr @__event_enter__fanotify_mark, !11, !"__event_enter__fanotify_mark", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__fanotify_mark, !11, !"event_exit__fanotify_mark", i1 false, i1 false}
!16 = !{ptr @__event_exit__fanotify_mark, !11, !"__event_exit__fanotify_mark", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__fanotify_mark, !11, !"__syscall_meta__fanotify_mark", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__fanotify_mark, !11, !"__p_syscall_meta__fanotify_mark", i1 false, i1 false}
!20 = !{ptr @__initcall__kmod_fanotify_user__328_1754_fanotify_user_setup6, !21, !"__initcall__kmod_fanotify_user__328_1754_fanotify_user_setup6", i1 false, i1 false}
!21 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 1754, i32 1}
!22 = !{ptr @fanotify_mark_cache, !23, !"fanotify_mark_cache", i1 false, i1 false}
!23 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 115, i32 20}
!24 = !{ptr @fanotify_fid_event_cachep, !25, !"fanotify_fid_event_cachep", i1 false, i1 false}
!25 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 116, i32 20}
!26 = !{ptr @fanotify_path_event_cachep, !27, !"fanotify_path_event_cachep", i1 false, i1 false}
!27 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 117, i32 20}
!28 = !{ptr @fanotify_perm_event_cachep, !29, !"fanotify_perm_event_cachep", i1 false, i1 false}
!29 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 118, i32 20}
!30 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @types__fanotify_init, !1, !"types__fanotify_init", i1 false, i1 false}
!32 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @args__fanotify_init, !1, !"args__fanotify_init", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 1265, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__do_sys_fanotify_init.__UNIQUE_ID_ddebug319, !36, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 1345, i32 44}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 1346, i32 9}
!45 = !{ptr @__do_sys_fanotify_init.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 1371, i32 2}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 1409, i32 24}
!50 = !{ptr @fanotify_max_queued_events, !51, !"fanotify_max_queued_events", i1 false, i1 false}
!51 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 53, i32 12}
!52 = !{ptr @fanotify_fops, !53, !"fanotify_fops", i1 false, i1 false}
!53 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 936, i32 37}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 755, i32 2}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @fanotify_read.__UNIQUE_ID_ddebug315, !55, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 223, i32 2}
!60 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @get_one_event.__UNIQUE_ID_ddebug311, !59, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../fs/notify/fanotify/fanotify.h", i32 110, i32 6}
!64 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../fs/notify/fanotify/fanotify.h", i32 126, i32 6}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 200, i32 2}
!69 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @fanotify_unhash_event.__UNIQUE_ID_ddebug310, !68, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 203, i32 6}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 629, i32 2}
!75 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @copy_event_to_user.__UNIQUE_ID_ddebug314, !74, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 667, i32 3}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 692, i32 6}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 268, i32 11}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!85 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 563, i32 10}
!92 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 385, i32 2}
!94 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @copy_fid_info_to_user.__UNIQUE_ID_ddebug313, !93, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 388, i32 6}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 398, i32 7}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 404, i32 7}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 419, i32 6}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 434, i32 6}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 455, i32 7}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 466, i32 2}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 480, i32 6}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 844, i32 2}
!114 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @fanotify_write.__UNIQUE_ID_ddebug316, !113, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 315, i32 2}
!118 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @process_access_response.__UNIQUE_ID_ddebug312, !117, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!120 = !{ptr @.str.42, !11, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.43, !11, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.44, !11, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @types__fanotify_mark, !11, !"types__fanotify_mark", i1 false, i1 false}
!124 = !{ptr @.str.45, !11, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.46, !11, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.47, !11, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.48, !11, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @args__fanotify_mark, !11, !"args__fanotify_mark", i1 false, i1 false}
!129 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 1499, i32 2}
!131 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @do_fanotify_mark.__UNIQUE_ID_ddebug320, !130, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 954, i32 2}
!135 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @fanotify_find_path.__UNIQUE_ID_ddebug317, !134, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!137 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 1212, i32 2}
!139 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @fanotify_add_inode_mark.__UNIQUE_ID_ddebug318, !138, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 1735, i32 24}
!143 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 1737, i32 30}
!145 = !{ptr @.str.57, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 1739, i32 31}
!147 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 1743, i32 4}
!149 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 94, i32 18}
!151 = !{ptr @.str.60, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 64, i32 15}
!153 = !{ptr @.str.61, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 73, i32 15}
!155 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 82, i32 15}
!157 = !{ptr @fanotify_table, !158, !"fanotify_table", i1 false, i1 false}
!158 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 62, i32 25}
!159 = !{ptr @ft_zero, !160, !"ft_zero", i1 false, i1 false}
!160 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 59, i32 13}
!161 = !{ptr @ft_int_max, !162, !"ft_int_max", i1 false, i1 false}
!162 = !{!"../fs/notify/fanotify/fanotify_user.c", i32 60, i32 13}
!163 = !{!"sp"}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{i64 2148790291, i64 2148790296, i64 2148790309, i64 2148790353, i64 2148790387, i64 2148790408}
!174 = !{!"branch_weights", i32 1, i32 2000}
!175 = !{!"branch_weights", i32 2000, i32 1}
!176 = !{i64 2155604603, i64 2155605102, i64 2155604640, i64 2155604696, i64 2155604730, i64 2155604754, i64 2155604795, i64 2155604816, i64 2155604844, i64 2155604878}
!177 = !{i64 2152262811, i64 2152262836}
!178 = !{i64 4758366}
!179 = !{i64 4758563}
!180 = !{i64 2152243796}
!181 = !{i64 2152690457, i64 2152690954, i64 2152690494, i64 2152690550, i64 2152690584, i64 2152690608, i64 2152690649, i64 2152690670, i64 2152690698, i64 2152690732}
!182 = !{i64 2155652106, i64 2155652386, i64 2155652720, i64 2155653054}
!183 = !{i64 2155595411, i64 2155595910, i64 2155595448, i64 2155595504, i64 2155595538, i64 2155595562, i64 2155595603, i64 2155595624, i64 2155595652, i64 2155595686}
!184 = !{i64 2152263492, i64 2152263517}
!185 = !{i64 2152259613, i64 2152259638}
!186 = !{!"auto-init"}
!187 = !{!188}
!188 = distinct !{!188, !189, !"fdget: %agg.result"}
!189 = distinct !{!189, !"fdget"}
!190 = !{!191}
!191 = distinct !{!191, !192, !"fdget: %agg.result"}
!192 = distinct !{!192, !"fdget"}
!193 = !{i64 2152465886}
