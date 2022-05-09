; ModuleID = '/llk/IR_all_yes/ipc/mqueue.c_pt.bc'
source_filename = "../ipc/mqueue.c"
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
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.24 }
%union.anon.24 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
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
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, i32, %struct.rhashtable }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.path = type { ptr, ptr }
%struct.mq_attr = type { i32, i32, i32, i32, [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.106, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.79 }
%union.anon.79 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.106 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.121, %struct.list_head, %struct.list_head, %union.anon.122 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.19, ptr }
%union.anon.19 = type { i64 }
%struct.lockref = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.spinlock, i32 }
%union.anon.121 = type { %struct.list_head }
%union.anon.122 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.151, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.152, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.153, ptr, %struct.address_space, %struct.list_head, %union.anon.154, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.151 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.152 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.153 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.154 = type { ptr }
%struct.sigevent = type { %union.sigval, i32, i32, %union.anon.172 }
%union.sigval = type { i32 }
%union.anon.172 = type { [13 x i32] }
%struct.sk_buff = type { %union.anon.46, %union.anon.49, %union.anon.50, [48 x i8], %union.anon.51, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.53, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { ptr, ptr, %union.anon.48 }
%union.anon.48 = type { ptr }
%union.anon.49 = type { ptr }
%union.anon.50 = type { i64 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { i32, ptr }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.55, i32, i32, i32, i16, i16, %union.anon.57, i32, %union.anon.58, %union.anon.59, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.55 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i32 }
%union.anon.59 = type { i16 }
%struct.file = type { %union.anon.18, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.86 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.86 = type { %struct.callback_head }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
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
%struct.mqueue_inode_info = type { %struct.spinlock, %struct.inode, %struct.wait_queue_head, %struct.rb_root, ptr, ptr, %struct.mq_attr, %struct.sigevent, ptr, i32, ptr, ptr, ptr, ptr, [2 x %struct.ext_wait_queue], i32 }
%struct.ext_wait_queue = type { ptr, %struct.list_head, ptr, i32 }
%struct.kernel_siginfo = type { %struct.anon.92 }
%struct.anon.92 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.96 }
%struct.anon.96 = type { i32, i32, i32, i32, i32 }
%struct.wake_q_head = type { ptr, ptr }
%struct.msg_msg = type { %struct.list_head, i32, i32, ptr, ptr }
%struct.posix_msg_tree_node = type { %struct.rb_node, %struct.list_head, i32 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_mq_open\00", [46 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__mq_open = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 4, ptr @types__mq_open, ptr @args__mq_open, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__mq_open, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__mq_open, i64 20) }, ptr @event_enter__mq_open, ptr @event_exit__mq_open }, align 4
@event_enter__mq_open = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mq_open, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__mq_open = internal global ptr @event_enter__mq_open, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_mq_open\00", [47 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__mq_open = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mq_open, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__mq_open = internal global ptr @event_exit__mq_open, section "_ftrace_events", align 4
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_mq_open\00", [20 x i8] zeroinitializer }, align 32
@types__mq_open = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [16 x i8] zeroinitializer }, align 32
@args__mq_open = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__mq_open = internal global ptr @__syscall_meta__mq_open, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_mq_unlink\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__mq_unlink = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 1, ptr @types__mq_unlink, ptr @args__mq_unlink, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__mq_unlink, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__mq_unlink, i64 20) }, ptr @event_enter__mq_unlink, ptr @event_exit__mq_unlink }, align 4
@event_enter__mq_unlink = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mq_unlink, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__mq_unlink = internal global ptr @event_enter__mq_unlink, section "_ftrace_events", align 4
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_mq_unlink\00", [45 x i8] zeroinitializer }, align 32
@event_exit__mq_unlink = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mq_unlink, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__mq_unlink = internal global ptr @event_exit__mq_unlink, section "_ftrace_events", align 4
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_mq_unlink\00", [18 x i8] zeroinitializer }, align 32
@types__mq_unlink = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.24], [28 x i8] zeroinitializer }, align 32
@args__mq_unlink = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__mq_unlink = internal global ptr @__syscall_meta__mq_unlink, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_enter_mq_timedsend\00", [41 x i8] zeroinitializer }, align 32
@__syscall_meta__mq_timedsend = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 5, ptr @types__mq_timedsend, ptr @args__mq_timedsend, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__mq_timedsend, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__mq_timedsend, i64 20) }, ptr @event_enter__mq_timedsend, ptr @event_exit__mq_timedsend }, align 4
@event_enter__mq_timedsend = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mq_timedsend, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__mq_timedsend = internal global ptr @event_enter__mq_timedsend, section "_ftrace_events", align 4
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_exit_mq_timedsend\00", [42 x i8] zeroinitializer }, align 32
@event_exit__mq_timedsend = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mq_timedsend, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__mq_timedsend = internal global ptr @event_exit__mq_timedsend, section "_ftrace_events", align 4
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_mq_timedsend\00", [47 x i8] zeroinitializer }, align 32
@types__mq_timedsend = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.41, ptr @.str.24, ptr @.str.42, ptr @.str.43, ptr @.str.44], [44 x i8] zeroinitializer }, align 32
@args__mq_timedsend = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__mq_timedsend = internal global ptr @__syscall_meta__mq_timedsend, section "__syscalls_metadata", align 4
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_mq_timedreceive\00", [38 x i8] zeroinitializer }, align 32
@__syscall_meta__mq_timedreceive = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 5, ptr @types__mq_timedreceive, ptr @args__mq_timedreceive, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__mq_timedreceive, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__mq_timedreceive, i64 20) }, ptr @event_enter__mq_timedreceive, ptr @event_exit__mq_timedreceive }, align 4
@event_enter__mq_timedreceive = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mq_timedreceive, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__mq_timedreceive = internal global ptr @event_enter__mq_timedreceive, section "_ftrace_events", align 4
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_mq_timedreceive\00", [39 x i8] zeroinitializer }, align 32
@event_exit__mq_timedreceive = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mq_timedreceive, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__mq_timedreceive = internal global ptr @event_exit__mq_timedreceive, section "_ftrace_events", align 4
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_mq_timedreceive\00", [44 x i8] zeroinitializer }, align 32
@types__mq_timedreceive = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.41, ptr @.str.54, ptr @.str.42, ptr @.str.55, ptr @.str.44], [44 x i8] zeroinitializer }, align 32
@args__mq_timedreceive = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.56, ptr @.str.49], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__mq_timedreceive = internal global ptr @__syscall_meta__mq_timedreceive, section "__syscalls_metadata", align 4
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_mq_notify\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__mq_notify = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 2, ptr @types__mq_notify, ptr @args__mq_notify, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__mq_notify, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__mq_notify, i64 20) }, ptr @event_enter__mq_notify, ptr @event_exit__mq_notify }, align 4
@event_enter__mq_notify = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mq_notify, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__mq_notify = internal global ptr @event_enter__mq_notify, section "_ftrace_events", align 4
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_mq_notify\00", [45 x i8] zeroinitializer }, align 32
@event_exit__mq_notify = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mq_notify, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__mq_notify = internal global ptr @event_exit__mq_notify, section "_ftrace_events", align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_mq_notify\00", [18 x i8] zeroinitializer }, align 32
@types__mq_notify = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.41, ptr @.str.63], [24 x i8] zeroinitializer }, align 32
@args__mq_notify = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.45, ptr @.str.64], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__mq_notify = internal global ptr @__syscall_meta__mq_notify, section "__syscalls_metadata", align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_enter_mq_getsetattr\00", [40 x i8] zeroinitializer }, align 32
@__syscall_meta__mq_getsetattr = internal global %struct.syscall_metadata { ptr @.str.17, i32 -1, i32 3, ptr @types__mq_getsetattr, ptr @args__mq_getsetattr, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__mq_getsetattr, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__mq_getsetattr, i64 20) }, ptr @event_enter__mq_getsetattr, ptr @event_exit__mq_getsetattr }, align 4
@event_enter__mq_getsetattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mq_getsetattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__mq_getsetattr = internal global ptr @event_enter__mq_getsetattr, section "_ftrace_events", align 4
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_exit_mq_getsetattr\00", [41 x i8] zeroinitializer }, align 32
@event_exit__mq_getsetattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.16 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mq_getsetattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__mq_getsetattr = internal global ptr @event_exit__mq_getsetattr, section "_ftrace_events", align 4
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_mq_getsetattr\00", [46 x i8] zeroinitializer }, align 32
@types__mq_getsetattr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.41, ptr @.str.65, ptr @.str.27], [20 x i8] zeroinitializer }, align 32
@args__mq_getsetattr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.45, ptr @.str.66, ptr @.str.67], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__mq_getsetattr = internal global ptr @__syscall_meta__mq_getsetattr, section "__syscalls_metadata", align 4
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sys_enter_mq_timedsend_time32\00", [34 x i8] zeroinitializer }, align 32
@__syscall_meta__mq_timedsend_time32 = internal global %struct.syscall_metadata { ptr @.str.20, i32 -1, i32 5, ptr @types__mq_timedsend_time32, ptr @args__mq_timedsend_time32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__mq_timedsend_time32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__mq_timedsend_time32, i64 20) }, ptr @event_enter__mq_timedsend_time32, ptr @event_exit__mq_timedsend_time32 }, align 4
@event_enter__mq_timedsend_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.18 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mq_timedsend_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__mq_timedsend_time32 = internal global ptr @event_enter__mq_timedsend_time32, section "_ftrace_events", align 4
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sys_exit_mq_timedsend_time32\00", [35 x i8] zeroinitializer }, align 32
@event_exit__mq_timedsend_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.19 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mq_timedsend_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__mq_timedsend_time32 = internal global ptr @event_exit__mq_timedsend_time32, section "_ftrace_events", align 4
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_mq_timedsend_time32\00", [40 x i8] zeroinitializer }, align 32
@types__mq_timedsend_time32 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.41, ptr @.str.24, ptr @.str.43, ptr @.str.43, ptr @.str.68], [44 x i8] zeroinitializer }, align 32
@args__mq_timedsend_time32 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__mq_timedsend_time32 = internal global ptr @__syscall_meta__mq_timedsend_time32, section "__syscalls_metadata", align 4
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sys_enter_mq_timedreceive_time32\00", [63 x i8] zeroinitializer }, align 32
@__syscall_meta__mq_timedreceive_time32 = internal global %struct.syscall_metadata { ptr @.str.23, i32 -1, i32 5, ptr @types__mq_timedreceive_time32, ptr @args__mq_timedreceive_time32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__mq_timedreceive_time32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__mq_timedreceive_time32, i64 20) }, ptr @event_enter__mq_timedreceive_time32, ptr @event_exit__mq_timedreceive_time32 }, align 4
@event_enter__mq_timedreceive_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.21 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mq_timedreceive_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__mq_timedreceive_time32 = internal global ptr @event_enter__mq_timedreceive_time32, section "_ftrace_events", align 4
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sys_exit_mq_timedreceive_time32\00", [32 x i8] zeroinitializer }, align 32
@event_exit__mq_timedreceive_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.22 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mq_timedreceive_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__mq_timedreceive_time32 = internal global ptr @event_exit__mq_timedreceive_time32, section "_ftrace_events", align 4
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_mq_timedreceive_time32\00", [37 x i8] zeroinitializer }, align 32
@types__mq_timedreceive_time32 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.41, ptr @.str.54, ptr @.str.43, ptr @.str.55, ptr @.str.68], [44 x i8] zeroinitializer }, align 32
@args__mq_timedreceive_time32 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.56, ptr @.str.49], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__mq_timedreceive_time32 = internal global ptr @__syscall_meta__mq_timedreceive_time32, section "__syscalls_metadata", align 4
@__initcall__kmod_mqueue__487_1740_init_mqueue_fs6 = internal global ptr @init_mqueue_fs, section ".initcall6.init", align 4
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"umode_t\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"struct mq_attr *\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"u_name\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"oflag\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"u_attr\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@prepare_open.oflag2acc = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 2, i32 6], [20 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@mq_lock = external dso_local global %struct.spinlock, align 4
@mqueue_file_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @mqueue_read_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mqueue_poll_file, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @mqueue_flush_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mqueue_get_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&info->lock\00", [20 x i8] zeroinitializer }, align 32
@mqueue_get_inode.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&info->wait_q\00", [18 x i8] zeroinitializer }, align 32
@mqueue_dir_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr @mqueue_create, ptr null, ptr @mqueue_unlink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@.str.40 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"QSIZE:%-10lu NOTIFY:%-5d SIGNO:%-5d NOTIFY_PID:%-6d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mqd_t\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"const struct __kernel_timespec *\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mqdes\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"u_msg_ptr\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msg_len\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"msg_prio\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"u_abs_timeout\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipc/mqueue.c\00", [19 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"char *\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unsigned int *\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"u_msg_prio\00", [21 x i8] zeroinitializer }, align 32
@msg_get.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@msg_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.50, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\014Inconsistency in POSIX message queue, no tree element, but supposedly messages should exist!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msg_get\00", [24 x i8] zeroinitializer }, align 32
@msg_get._entry_ptr = internal global ptr @msg_get._entry, section ".printk_index", align 4
@msg_get.__already_done.59 = internal unnamed_addr global i1 false, section ".data.once", align 1
@msg_get._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.58, ptr @.str.50, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\014Inconsistency in POSIX message queue, empty leaf node but we haven't implemented lazy leaf delete!\0A\00", [58 x i8] zeroinitializer }, align 32
@msg_get._entry_ptr.62 = internal global ptr @msg_get._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"const struct sigevent *\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"u_notification\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"const struct mq_attr *\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"u_mqstat\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"u_omqstat\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"const struct old_timespec32 *\00", [34 x i8] zeroinitializer }, align 32
@mqueue_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.69, i32 8, ptr @mqueue_init_fs_context, ptr null, ptr null, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mqueue\00", [25 x i8] zeroinitializer }, align 32
@mqueue_fs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @mqueue_fs_context_free, ptr null, ptr null, ptr null, ptr @mqueue_get_tree, ptr null }, [40 x i8] zeroinitializer }, align 32
@mqueue_super_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @mqueue_alloc_inode, ptr null, ptr @mqueue_free_inode, ptr null, ptr null, ptr null, ptr @mqueue_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mqueue_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mqueue_inode_cache\00", [45 x i8] zeroinitializer }, align 32
@mq_sysctl_table = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@init_mqueue_fs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&mq_lock\00", [23 x i8] zeroinitializer }, align 32
@init_ipc_ns = external dso_local global %struct.ipc_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.79 = private unnamed_addr constant [21 x i8] c"event_enter__mq_open\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c"event_exit__mq_open\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"types__mq_open\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"args__mq_open\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [23 x i8] c"event_enter__mq_unlink\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [22 x i8] c"event_exit__mq_unlink\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"types__mq_unlink\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"args__mq_unlink\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 940, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant [26 x i8] c"event_enter__mq_timedsend\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [25 x i8] c"event_exit__mq_timedsend\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"types__mq_timedsend\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"args__mq_timedsend\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [29 x i8] c"event_enter__mq_timedreceive\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [28 x i8] c"event_exit__mq_timedreceive\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [23 x i8] c"types__mq_timedreceive\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"args__mq_timedreceive\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [23 x i8] c"event_enter__mq_notify\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [22 x i8] c"event_exit__mq_notify\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"types__mq_notify\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [16 x i8] c"args__mq_notify\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [27 x i8] c"event_enter__mq_getsetattr\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [26 x i8] c"event_exit__mq_getsetattr\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [21 x i8] c"types__mq_getsetattr\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c"args__mq_getsetattr\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [33 x i8] c"event_enter__mq_timedsend_time32\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [32 x i8] c"event_exit__mq_timedsend_time32\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [27 x i8] c"types__mq_timedsend_time32\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [26 x i8] c"args__mq_timedsend_time32\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [36 x i8] c"event_enter__mq_timedreceive_time32\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [35 x i8] c"event_exit__mq_timedreceive_time32\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [30 x i8] c"types__mq_timedreceive_time32\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [29 x i8] c"args__mq_timedreceive_time32\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1630, i32 1 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 930, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 156, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [10 x i8] c"oflag2acc\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 858, i32 19 }
@___asan_gen_.274 = private unnamed_addr constant [23 x i8] c"mqueue_file_operations\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1652, i32 37 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 316, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 317, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 632, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1273, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 712, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 695, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 723, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1287, i32 1 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 264, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 273, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1429, i32 1 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1485, i32 1 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1615, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant [15 x i8] c"mqueue_fs_type\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1671, i32 32 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1672, i32 12 }
@___asan_gen_.379 = private unnamed_addr constant [22 x i8] c"mqueue_fs_context_ops\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1666, i32 43 }
@___asan_gen_.382 = private unnamed_addr constant [17 x i8] c"mqueue_super_ops\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1659, i32 38 }
@___asan_gen_.385 = private unnamed_addr constant [20 x i8] c"mqueue_inode_cachep\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 164, i32 27 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1710, i32 42 }
@___asan_gen_.391 = private unnamed_addr constant [16 x i8] c"mq_sysctl_table\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 166, i32 33 }
@___asan_gen_.394 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.397 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.398 = private constant [16 x i8] c"../ipc/mqueue.c\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1723, i32 2 }
@llvm.compiler.used = appending global [143 x ptr] [ptr @__event_enter__mq_getsetattr, ptr @__event_enter__mq_notify, ptr @__event_enter__mq_open, ptr @__event_enter__mq_timedreceive, ptr @__event_enter__mq_timedreceive_time32, ptr @__event_enter__mq_timedsend, ptr @__event_enter__mq_timedsend_time32, ptr @__event_enter__mq_unlink, ptr @__event_exit__mq_getsetattr, ptr @__event_exit__mq_notify, ptr @__event_exit__mq_open, ptr @__event_exit__mq_timedreceive, ptr @__event_exit__mq_timedreceive_time32, ptr @__event_exit__mq_timedsend, ptr @__event_exit__mq_timedsend_time32, ptr @__event_exit__mq_unlink, ptr @__initcall__kmod_mqueue__487_1740_init_mqueue_fs6, ptr @__p_syscall_meta__mq_getsetattr, ptr @__p_syscall_meta__mq_notify, ptr @__p_syscall_meta__mq_open, ptr @__p_syscall_meta__mq_timedreceive, ptr @__p_syscall_meta__mq_timedreceive_time32, ptr @__p_syscall_meta__mq_timedsend, ptr @__p_syscall_meta__mq_timedsend_time32, ptr @__p_syscall_meta__mq_unlink, ptr @__syscall_meta__mq_getsetattr, ptr @__syscall_meta__mq_notify, ptr @__syscall_meta__mq_open, ptr @__syscall_meta__mq_timedreceive, ptr @__syscall_meta__mq_timedreceive_time32, ptr @__syscall_meta__mq_timedsend, ptr @__syscall_meta__mq_timedsend_time32, ptr @__syscall_meta__mq_unlink, ptr @event_enter__mq_getsetattr, ptr @event_enter__mq_notify, ptr @event_enter__mq_open, ptr @event_enter__mq_timedreceive, ptr @event_enter__mq_timedreceive_time32, ptr @event_enter__mq_timedsend, ptr @event_enter__mq_timedsend_time32, ptr @event_enter__mq_unlink, ptr @event_exit__mq_getsetattr, ptr @event_exit__mq_notify, ptr @event_exit__mq_open, ptr @event_exit__mq_timedreceive, ptr @event_exit__mq_timedreceive_time32, ptr @event_exit__mq_timedsend, ptr @event_exit__mq_timedsend_time32, ptr @event_exit__mq_unlink, ptr @msg_get._entry, ptr @msg_get._entry.60, ptr @msg_get._entry_ptr, ptr @msg_get._entry_ptr.62, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__mq_open, ptr @args__mq_open, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__mq_unlink, ptr @args__mq_unlink, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__mq_timedsend, ptr @args__mq_timedsend, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__mq_timedreceive, ptr @args__mq_timedreceive, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__mq_notify, ptr @args__mq_notify, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @types__mq_getsetattr, ptr @args__mq_getsetattr, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @types__mq_timedsend_time32, ptr @args__mq_timedsend_time32, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @types__mq_timedreceive_time32, ptr @args__mq_timedreceive_time32, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @prepare_open.oflag2acc, ptr @mqueue_file_operations, ptr @mqueue_get_inode.__key, ptr @.str.36, ptr @mqueue_get_inode.__key.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @mqueue_fs_type, ptr @.str.69, ptr @mqueue_fs_context_ops, ptr @mqueue_super_ops, ptr @mqueue_inode_cachep, ptr @.str.70, ptr @mq_sysctl_table, ptr @init_mqueue_fs.__key, ptr @.str.71], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__mq_open to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__mq_open to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__mq_open to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__mq_open to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__mq_unlink to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__mq_unlink to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__mq_unlink to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__mq_unlink to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__mq_timedsend to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__mq_timedsend to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__mq_timedsend to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__mq_timedsend to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__mq_timedreceive to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__mq_timedreceive to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__mq_timedreceive to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__mq_timedreceive to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__mq_notify to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__mq_notify to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__mq_notify to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__mq_notify to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__mq_getsetattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__mq_getsetattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__mq_getsetattr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__mq_getsetattr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__mq_timedsend_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__mq_timedsend_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__mq_timedsend_time32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__mq_timedsend_time32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__mq_timedreceive_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__mq_timedreceive_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__mq_timedreceive_time32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__mq_timedreceive_time32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_open.oflag2acc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mqueue_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mqueue_get_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mqueue_get_inode.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_get._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mqueue_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mqueue_fs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mqueue_super_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mqueue_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mq_sysctl_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_mqueue_fs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_mq_open = dso_local alias i32 (ptr, i32, i16, ptr), ptr @__se_sys_mq_open
@sys_mq_unlink = dso_local alias i32 (ptr), ptr @__se_sys_mq_unlink
@sys_mq_timedsend = dso_local alias i32 (i32, ptr, i32, i32, ptr), ptr @__se_sys_mq_timedsend
@sys_mq_timedreceive = dso_local alias i32 (i32, ptr, i32, ptr, ptr), ptr @__se_sys_mq_timedreceive
@sys_mq_notify = dso_local alias i32 (i32, ptr), ptr @__se_sys_mq_notify
@sys_mq_getsetattr = dso_local alias i32 (i32, ptr, ptr), ptr @__se_sys_mq_getsetattr
@sys_mq_timedsend_time32 = dso_local alias i32 (i32, ptr, i32, i32, ptr), ptr @__se_sys_mq_timedsend_time32
@sys_mq_timedreceive_time32 = dso_local alias i32 (i32, ptr, i32, ptr, ptr), ptr @__se_sys_mq_timedreceive_time32

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mq_open(i32 noundef %u_name, i32 noundef %oflag, i32 noundef %mode, i32 noundef %u_attr) #0 align 64 {
entry:
  %path.i.i = alloca %struct.path, align 4
  %attr.i = alloca %struct.mq_attr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %u_name to ptr
  %conv = trunc i32 %mode to i16
  %1 = inttoptr i32 %u_attr to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %attr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u_attr)
  %tobool.not.i = icmp eq i32 %u_attr, 0
  %2 = call ptr @memset(ptr %attr.i, i32 255, i32 32)
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.end59.i.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end59.i.i.i:                                   ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #13
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.end59.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end59.i.i.i.if.then11.i.i.i_crit_edge:         ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end59.i.i.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 32, i32 -1226833920) #16, !srcloc !205
  %asmresult.i.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !206

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %attr.i, i32 noundef 32) #13
  %4 = call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !207
  %and.i.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !209
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %attr.i, ptr noundef nonnull %1, i32 noundef 32) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #13, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end.i_crit_edge, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !206

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i.if.end.i_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end59.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i11.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 32, %if.end59.i.i.i.if.then11.i.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 32, %res.0.i.i11.i
  %add.ptr.i.i.i = getelementptr i8, ptr %attr.i, i32 %sub.i.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i11.i)
  br label %__do_sys_mq_open.exit

if.end.i:                                         ; preds = %if.end.i.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %attr..i = phi ptr [ null, %entry.if.end.i_crit_edge ], [ %attr.i, %if.end.i.i.i.if.end.i_crit_edge ]
  %8 = call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i, align 8
  %nsproxy.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 110
  %12 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nsproxy.i.i, align 4
  %ipc_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ipc_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipc_ns.i.i, align 4
  %mq_mnt.i.i = getelementptr inbounds %struct.ipc_namespace, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %mq_mnt.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mq_mnt.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i.i) #13
  %20 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i.i, align 4, !annotation !210
  %21 = getelementptr inbounds %struct.path, ptr %path.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %21, align 4, !annotation !210
  %call1.i.i = call ptr @getname(ptr noundef %0) #13
  %cmp.i.i6.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i6.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %call1.i.i to i32
  br label %do_mq_open.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %call4.i.i = call i32 @get_unused_fd_flags(i32 noundef 524288) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.out_putname.i.i_crit_edge, label %if.end6.i.i

if.end.i.i.out_putname.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_putname.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %call7.i.i = call i32 @mnt_want_write(ptr noundef %17) #13
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 5
  %24 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i.i) #13
  %26 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call1.i.i, align 4
  %call11.i.i = call i32 @strlen(ptr noundef %27) #17
  %call12.i.i = call ptr @lookup_one_len(ptr noundef %27, ptr noundef %19, i32 noundef %call11.i.i) #13
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call12.i.i, ptr %21, align 4
  %cmp.i66.i.i = icmp ugt ptr %call12.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66.i.i, label %if.then15.i.i, label %if.end18.i.i

if.then15.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %call12.i.i to i32
  br label %out_putfd.i.i

if.end18.i.i:                                     ; preds = %if.end6.i.i
  %call19.i.i = call ptr @mntget(ptr noundef %17) #13
  %30 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call19.i.i, ptr %path.i.i, align 4
  %31 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %21, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %cmp.i.i.i.i = icmp eq ptr %34, null
  br i1 %cmp.i.i.i.i, label %if.then.i.i7.i, label %if.end9.i.i.i

if.then.i.i7.i:                                   ; preds = %if.end18.i.i
  %and.i67.i.i = and i32 %oflag, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i67.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i7.i.if.end31.i.i_crit_edge, label %if.end.i.i8.i

if.then.i.i7.i.if.end31.i.i_crit_edge:            ; preds = %if.then.i.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i.i

if.end.i.i8.i:                                    ; preds = %if.then.i.i7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end4.i.i.i, label %if.end.i.i8.i.if.end31.i.i_crit_edge

if.end.i.i8.i.if.end31.i.i_crit_edge:             ; preds = %if.end.i.i8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i8.i
  call void @__sanitizer_cov_trace_pc() #15
  %call5.i.i.i = call i32 @current_umask() #13
  %35 = trunc i32 %call5.i.i.i to i16
  %36 = xor i16 %35, -1
  %conv7.i.i.i = and i16 %36, %conv
  %call8.i.i.i = call i32 @vfs_mkobj(ptr noundef %32, i16 noundef zeroext %conv7.i.i.i, ptr noundef nonnull @mqueue_create_attr, ptr noundef %attr..i) #13
  br label %prepare_open.exit.i.i

if.end9.i.i.i:                                    ; preds = %if.end18.i.i
  %and10.i.i.i = and i32 %oflag, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and10.i.i.i)
  %cmp.i68.i.i = icmp eq i32 %and10.i.i.i, 192
  br i1 %cmp.i68.i.i, label %if.end9.i.i.i.if.end31.i.i_crit_edge, label %if.end13.i.i.i

if.end9.i.i.i.if.end31.i.i_crit_edge:             ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i.i

if.end13.i.i.i:                                   ; preds = %if.end9.i.i.i
  %and14.i.i.i = and i32 %oflag, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and14.i.i.i)
  %cmp15.i.i.i = icmp eq i32 %and14.i.i.i, 3
  br i1 %cmp15.i.i.i, label %if.end13.i.i.i.if.end31.i.i_crit_edge, label %if.end18.i.i.i

if.end13.i.i.i.if.end31.i.i_crit_edge:            ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i.i

if.end18.i.i.i:                                   ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i = getelementptr [3 x i32], ptr @prepare_open.oflag2acc, i32 0, i32 %and14.i.i.i
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i.i, align 4
  %call21.i.i.i = call i32 @inode_permission(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %34, i32 noundef %38) #13
  br label %prepare_open.exit.i.i

prepare_open.exit.i.i:                            ; preds = %if.end18.i.i.i, %if.end4.i.i.i
  %retval.0.i.i.i = phi i32 [ %call8.i.i.i, %if.end4.i.i.i ], [ %call21.i.i.i, %if.end18.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool.not.i.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then23.i.i, label %prepare_open.exit.i.i.if.end31.i.i_crit_edge

prepare_open.exit.i.i.if.end31.i.i_crit_edge:     ; preds = %prepare_open.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i.i

if.then23.i.i:                                    ; preds = %prepare_open.exit.i.i
  %39 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 99
  %41 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cred.i.i, align 16
  %call26.i.i = call ptr @dentry_open(ptr noundef nonnull %path.i.i, i32 noundef %oflag, ptr noundef %42) #13
  %cmp.i69.i.i = icmp ugt ptr %call26.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69.i.i, label %if.else.i.i, label %if.then28.i.i

if.then28.i.i:                                    ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @fd_install(i32 noundef %call4.i.i, ptr noundef %call26.i.i) #13
  br label %if.end31.i.i

if.else.i.i:                                      ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %call26.i.i to i32
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.else.i.i, %if.then28.i.i, %prepare_open.exit.i.i.if.end31.i.i_crit_edge, %if.end13.i.i.i.if.end31.i.i_crit_edge, %if.end9.i.i.i.if.end31.i.i_crit_edge, %if.end.i.i8.i.if.end31.i.i_crit_edge, %if.then.i.i7.i.if.end31.i.i_crit_edge
  %error.1.i.i = phi i32 [ %retval.0.i.i.i, %prepare_open.exit.i.i.if.end31.i.i_crit_edge ], [ %43, %if.else.i.i ], [ 0, %if.then28.i.i ], [ -22, %if.end13.i.i.i.if.end31.i.i_crit_edge ], [ -17, %if.end9.i.i.i.if.end31.i.i_crit_edge ], [ %call7.i.i, %if.end.i.i8.i.if.end31.i.i_crit_edge ], [ -2, %if.then.i.i7.i.if.end31.i.i_crit_edge ]
  call void @path_put(ptr noundef nonnull %path.i.i) #13
  br label %out_putfd.i.i

out_putfd.i.i:                                    ; preds = %if.end31.i.i, %if.then15.i.i
  %error.2.i.i = phi i32 [ %29, %if.then15.i.i ], [ %error.1.i.i, %if.end31.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2.i.i)
  %tobool32.not.i.i = icmp eq i32 %error.2.i.i, 0
  br i1 %tobool32.not.i.i, label %out_putfd.i.i.if.end34.i.i_crit_edge, label %if.then33.i.i

out_putfd.i.i.if.end34.i.i_crit_edge:             ; preds = %out_putfd.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i.i

if.then33.i.i:                                    ; preds = %out_putfd.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @put_unused_fd(i32 noundef %call4.i.i) #13
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then33.i.i, %out_putfd.i.i.if.end34.i.i_crit_edge
  %fd.0.i.i = phi i32 [ %error.2.i.i, %if.then33.i.i ], [ %call4.i.i, %out_putfd.i.i.if.end34.i.i_crit_edge ]
  %44 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_rwsem.i71.i.i = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i71.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool36.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool36.not.i.i, label %if.then37.i.i, label %if.end34.i.i.out_putname.i.i_crit_edge

if.end34.i.i.out_putname.i.i_crit_edge:           ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_putname.i.i

if.then37.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @mnt_drop_write(ptr noundef %17) #13
  br label %out_putname.i.i

out_putname.i.i:                                  ; preds = %if.then37.i.i, %if.end34.i.i.out_putname.i.i_crit_edge, %if.end.i.i.out_putname.i.i_crit_edge
  %fd.1.i.i = phi i32 [ %call4.i.i, %if.end.i.i.out_putname.i.i_crit_edge ], [ %fd.0.i.i, %if.end34.i.i.out_putname.i.i_crit_edge ], [ %fd.0.i.i, %if.then37.i.i ]
  call void @putname(ptr noundef %call1.i.i) #13
  br label %do_mq_open.exit.i

do_mq_open.exit.i:                                ; preds = %out_putname.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %23, %if.then.i.i ], [ %fd.1.i.i, %out_putname.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #13
  br label %__do_sys_mq_open.exit

__do_sys_mq_open.exit:                            ; preds = %do_mq_open.exit.i, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %retval.0.i.i, %do_mq_open.exit.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %attr.i) #13
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mq_unlink(i32 noundef %u_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %u_name to ptr
  %1 = tail call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 110
  %5 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nsproxy.i, align 4
  %ipc_ns1.i = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %ipc_ns1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipc_ns1.i, align 4
  %mq_mnt.i = getelementptr inbounds %struct.ipc_namespace, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %mq_mnt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mq_mnt.i, align 4
  %call2.i = tail call ptr @getname(ptr noundef %0) #13
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %call2.i to i32
  br label %__do_sys_mq_unlink.exit

if.end.i:                                         ; preds = %entry
  %call5.i = tail call i32 @mnt_want_write(ptr noundef %10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end.i.out_name.i_crit_edge

if.end.i.out_name.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_name.i

if.end7.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #13
  %16 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call2.i, align 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %10, align 4
  %call13.i = tail call i32 @strlen(ptr noundef %17) #17
  %call14.i = tail call ptr @lookup_one_len(ptr noundef %17, ptr noundef %19, i32 noundef %call13.i) #13
  %cmp.i54.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54.i, label %if.then16.i, label %if.end18.i

if.then16.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %call14.i to i32
  br label %out_unlock.i

if.end18.i:                                       ; preds = %if.end7.i
  %d_inode.i55.i = getelementptr inbounds %struct.dentry, ptr %call14.i, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode.i55.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i55.i, align 8
  %tobool20.not.i = icmp eq ptr %22, null
  br i1 %tobool20.not.i, label %if.end18.i.if.end24.i_crit_edge, label %if.else.i

if.end18.i.if.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i

if.else.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ihold(ptr noundef nonnull %22) #13
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %call14.i, i32 0, i32 3
  %23 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_parent.i, align 8
  %d_inode.i56.i = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %d_inode.i56.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i56.i, align 8
  %call23.i = tail call i32 @vfs_unlink(ptr noundef nonnull @init_user_ns, ptr noundef %26, ptr noundef %call14.i, ptr noundef null) #13
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else.i, %if.end18.i.if.end24.i_crit_edge
  %err.0.i = phi i32 [ %call23.i, %if.else.i ], [ -2, %if.end18.i.if.end24.i_crit_edge ]
  tail call void @dput(ptr noundef %call14.i) #13
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %if.end24.i, %if.then16.i
  %err.1.i = phi i32 [ %20, %if.then16.i ], [ %err.0.i, %if.end24.i ]
  %inode.0.i = phi ptr [ null, %if.then16.i ], [ %22, %if.end24.i ]
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %10, align 4
  %d_inode.i57.i = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %d_inode.i57.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_inode.i57.i, align 8
  %i_rwsem.i58.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i58.i) #13
  %tobool27.not.i = icmp eq ptr %inode.0.i, null
  br i1 %tobool27.not.i, label %out_unlock.i.if.end29.i_crit_edge, label %if.then28.i

out_unlock.i.if.end29.i_crit_edge:                ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.then28.i:                                      ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iput(ptr noundef nonnull %inode.0.i) #13
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then28.i, %out_unlock.i.if.end29.i_crit_edge
  tail call void @mnt_drop_write(ptr noundef %10) #13
  br label %out_name.i

out_name.i:                                       ; preds = %if.end29.i, %if.end.i.out_name.i_crit_edge
  %err.2.i = phi i32 [ %call5.i, %if.end.i.out_name.i_crit_edge ], [ %err.1.i, %if.end29.i ]
  tail call void @putname(ptr noundef %call2.i) #13
  br label %__do_sys_mq_unlink.exit

__do_sys_mq_unlink.exit:                          ; preds = %out_name.i, %if.then.i
  %retval.0.i = phi i32 [ %11, %if.then.i ], [ %err.2.i, %out_name.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mq_timedsend(i32 noundef %mqdes, i32 noundef %u_msg_ptr, i32 noundef %msg_len, i32 noundef %msg_prio, i32 noundef %u_abs_timeout) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %u_msg_ptr to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #13
  %1 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u_abs_timeout)
  %tobool.not.i = icmp eq i32 %u_abs_timeout, 0
  br i1 %tobool.not.i, label %entry.if.end3.i_crit_edge, label %if.then.i

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then.i:                                        ; preds = %entry
  %2 = inttoptr i32 %u_abs_timeout to ptr
  %call.i.i = call i32 @get_timespec64(ptr noundef nonnull %ts.i, ptr noundef nonnull %2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.__do_sys_mq_timedsend.exit_crit_edge

if.then.i.__do_sys_mq_timedsend.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_timedsend.exit

if.end.i.i:                                       ; preds = %if.then.i
  %3 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i.i.i = icmp slt i64 %4, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.__do_sys_mq_timedsend.exit_crit_edge, label %timespec64_valid.exit.i.i

if.end.i.i.__do_sys_mq_timedsend.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_timedsend.exit

timespec64_valid.exit.i.i:                        ; preds = %if.end.i.i
  %tv_nsec.i.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %5 = ptrtoint ptr %tv_nsec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tv_nsec.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %6)
  %cmp1.i.i.i = icmp ult i32 %6, 1000000000
  br i1 %cmp1.i.i.i, label %timespec64_valid.exit.i.i.if.end3.i_crit_edge, label %timespec64_valid.exit.i.i.__do_sys_mq_timedsend.exit_crit_edge

timespec64_valid.exit.i.i.__do_sys_mq_timedsend.exit_crit_edge: ; preds = %timespec64_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_timedsend.exit

timespec64_valid.exit.i.i.if.end3.i_crit_edge:    ; preds = %timespec64_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.end3.i:                                        ; preds = %timespec64_valid.exit.i.i.if.end3.i_crit_edge, %entry.if.end3.i_crit_edge
  %p.1.i = phi ptr [ null, %entry.if.end3.i_crit_edge ], [ %ts.i, %timespec64_valid.exit.i.i.if.end3.i_crit_edge ]
  %call4.i = call fastcc i32 @do_mq_timedsend(i32 noundef %mqdes, ptr noundef %0, i32 noundef %msg_len, i32 noundef %msg_prio, ptr noundef %p.1.i) #13
  br label %__do_sys_mq_timedsend.exit

__do_sys_mq_timedsend.exit:                       ; preds = %if.end3.i, %timespec64_valid.exit.i.i.__do_sys_mq_timedsend.exit_crit_edge, %if.end.i.i.__do_sys_mq_timedsend.exit_crit_edge, %if.then.i.__do_sys_mq_timedsend.exit_crit_edge
  %retval.1.i = phi i32 [ %call4.i, %if.end3.i ], [ -22, %timespec64_valid.exit.i.i.__do_sys_mq_timedsend.exit_crit_edge ], [ -22, %if.end.i.i.__do_sys_mq_timedsend.exit_crit_edge ], [ -14, %if.then.i.__do_sys_mq_timedsend.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #13
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mq_timedreceive(i32 noundef %mqdes, i32 noundef %u_msg_ptr, i32 noundef %msg_len, i32 noundef %u_msg_prio, i32 noundef %u_abs_timeout) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %u_msg_ptr to ptr
  %1 = inttoptr i32 %u_msg_prio to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #13
  %2 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u_abs_timeout)
  %tobool.not.i = icmp eq i32 %u_abs_timeout, 0
  br i1 %tobool.not.i, label %entry.if.end3.i_crit_edge, label %if.then.i

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then.i:                                        ; preds = %entry
  %3 = inttoptr i32 %u_abs_timeout to ptr
  %call.i.i = call i32 @get_timespec64(ptr noundef nonnull %ts.i, ptr noundef nonnull %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.__do_sys_mq_timedreceive.exit_crit_edge

if.then.i.__do_sys_mq_timedreceive.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_timedreceive.exit

if.end.i.i:                                       ; preds = %if.then.i
  %4 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp.i.i.i = icmp slt i64 %5, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.__do_sys_mq_timedreceive.exit_crit_edge, label %timespec64_valid.exit.i.i

if.end.i.i.__do_sys_mq_timedreceive.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_timedreceive.exit

timespec64_valid.exit.i.i:                        ; preds = %if.end.i.i
  %tv_nsec.i.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %6 = ptrtoint ptr %tv_nsec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tv_nsec.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %7)
  %cmp1.i.i.i = icmp ult i32 %7, 1000000000
  br i1 %cmp1.i.i.i, label %timespec64_valid.exit.i.i.if.end3.i_crit_edge, label %timespec64_valid.exit.i.i.__do_sys_mq_timedreceive.exit_crit_edge

timespec64_valid.exit.i.i.__do_sys_mq_timedreceive.exit_crit_edge: ; preds = %timespec64_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_timedreceive.exit

timespec64_valid.exit.i.i.if.end3.i_crit_edge:    ; preds = %timespec64_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.end3.i:                                        ; preds = %timespec64_valid.exit.i.i.if.end3.i_crit_edge, %entry.if.end3.i_crit_edge
  %p.1.i = phi ptr [ null, %entry.if.end3.i_crit_edge ], [ %ts.i, %timespec64_valid.exit.i.i.if.end3.i_crit_edge ]
  %call4.i = call fastcc i32 @do_mq_timedreceive(i32 noundef %mqdes, ptr noundef %0, i32 noundef %msg_len, ptr noundef %1, ptr noundef %p.1.i) #13
  br label %__do_sys_mq_timedreceive.exit

__do_sys_mq_timedreceive.exit:                    ; preds = %if.end3.i, %timespec64_valid.exit.i.i.__do_sys_mq_timedreceive.exit_crit_edge, %if.end.i.i.__do_sys_mq_timedreceive.exit_crit_edge, %if.then.i.__do_sys_mq_timedreceive.exit_crit_edge
  %retval.1.i = phi i32 [ %call4.i, %if.end3.i ], [ -22, %timespec64_valid.exit.i.i.__do_sys_mq_timedreceive.exit_crit_edge ], [ -22, %if.end.i.i.__do_sys_mq_timedreceive.exit_crit_edge ], [ -14, %if.then.i.__do_sys_mq_timedreceive.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #13
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mq_notify(i32 noundef %mqdes, i32 noundef %u_notification) #0 align 64 {
entry:
  %timeo.i.i = alloca i32, align 4
  %tmp69.i.i = alloca %struct.timespec64, align 8
  %tmp103.i.i = alloca %struct.timespec64, align 8
  %n.i = alloca %struct.sigevent, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %u_notification to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %n.i) #13
  %1 = call ptr @memset(ptr %n.i, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u_notification)
  %tobool.not.i = icmp eq i32 %u_notification, 0
  br i1 %tobool.not.i, label %entry.if.end44.i.i_crit_edge, label %if.end59.i.i.i

entry.if.end44.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44.i.i

if.end59.i.i.i:                                   ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #13
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.end59.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end59.i.i.i.if.then11.i.i.i_crit_edge:         ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end59.i.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %0, i32 64, i32 -1226833920) #16, !srcloc !205
  %asmresult.i.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !206

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %n.i, i32 noundef 64) #13
  %3 = call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !207
  %and.i.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !209
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %n.i, ptr noundef nonnull %0, i32 noundef 64) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #13, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.then.i.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !206

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end59.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i14.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 64, %if.end59.i.i.i.if.then11.i.i.i_crit_edge ], [ 64, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 64, %res.0.i.i14.i
  %add.ptr.i.i.i = getelementptr i8, ptr %n.i, i32 %sub.i.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i14.i)
  br label %__do_sys_mq_notify.exit

if.then.i.i:                                      ; preds = %if.end.i.i.i
  %sigev_notify.i.i = getelementptr inbounds %struct.sigevent, ptr %n.i, i32 0, i32 2
  %7 = ptrtoint ptr %sigev_notify.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sigev_notify.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %switch.i.i = icmp ult i32 %8, 3
  br i1 %switch.i.i, label %if.end.i.i, label %if.then.i.i.__do_sys_mq_notify.exit_crit_edge

if.then.i.i.__do_sys_mq_notify.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_notify.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end.i.i.if.end44.i.i_crit_edge [
    i32 0, label %land.lhs.true10.i.i
    i32 2, label %if.then16.i.i
  ]

if.end.i.i.if.end44.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44.i.i

land.lhs.true10.i.i:                              ; preds = %if.end.i.i
  %sigev_signo.i.i = getelementptr inbounds %struct.sigevent, ptr %n.i, i32 0, i32 1
  %10 = ptrtoint ptr %sigev_signo.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sigev_signo.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %11)
  %cmp.i.i7.i = icmp ugt i32 %11, 64
  br i1 %cmp.i.i7.i, label %land.lhs.true10.i.i.__do_sys_mq_notify.exit_crit_edge, label %land.lhs.true10.i.i.if.end44.i.i_crit_edge

land.lhs.true10.i.i.if.end44.i.i_crit_edge:       ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44.i.i

land.lhs.true10.i.i.__do_sys_mq_notify.exit_crit_edge: ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_notify.exit

if.then16.i.i:                                    ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo.i.i) #13
  %12 = ptrtoint ptr %timeo.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %timeo.i.i, align 4, !annotation !210
  %call.i.i8.i = call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #13
  %tobool18.not.i.i = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool18.not.i.i, label %if.then16.i.i.cleanup.thread.i.i_crit_edge, label %if.end20.i.i

if.then16.i.i.cleanup.thread.i.i_crit_edge:       ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i

if.end20.i.i:                                     ; preds = %if.then16.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i8.i, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i, align 4
  %15 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %n.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #13
  %call.i.i.i9.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i9.i, label %if.end20.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end20.i.i.if.then11.i.i.i.i_crit_edge:         ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end20.i.i
  %17 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 32, i32 -1226833920) #16, !srcloc !205
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !206

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %14, i32 noundef 32) #13
  %18 = call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i.i.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #5, !srcloc !207
  %and.i.i.i.i.i.i = and i32 %20, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #13, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !209
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef %14, ptr noundef %16, i32 noundef 32) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #13, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end24.i.i, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !206

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end20.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i208.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 32, %if.end20.i.i.if.then11.i.i.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 32, %res.0.i.i208.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %14, i32 %sub.i.i.i.i
  %21 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i208.i.i)
  br label %cleanup.thread216.i.i

if.end24.i.i:                                     ; preds = %if.end.i.i.i.i
  %call25.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i8.i, i32 noundef 32) #13
  %sigev_signo26.i.i = getelementptr inbounds %struct.sigevent, ptr %n.i, i32 0, i32 1
  br label %retry.i.i

retry.i.i:                                        ; preds = %if.end35.i.i.retry.i.i_crit_edge, %if.end24.i.i
  %22 = ptrtoint ptr %sigev_signo26.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sigev_signo26.i.i, align 4
  %call.i178.i.i = call i32 @__fdget(i32 noundef %23) #13, !noalias !211
  %and.i.i.i.i = and i32 %call.i178.i.i, -4
  %24 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool27.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool27.not.i.i, label %out.thread.i.i, label %if.end29.i.i

if.end29.i.i:                                     ; preds = %retry.i.i
  %call31.i.i = call ptr @netlink_getsockbyfilp(ptr noundef nonnull %24) #13
  %and.i.i.i = and i32 %call.i178.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end29.i.i.fdput.exit.i.i_crit_edge, label %if.then.i.i10.i

if.end29.i.i.fdput.exit.i.i_crit_edge:            ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fdput.exit.i.i

if.then.i.i10.i:                                  ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @fput(ptr noundef nonnull %24) #13
  br label %fdput.exit.i.i

fdput.exit.i.i:                                   ; preds = %if.then.i.i10.i, %if.end29.i.i.fdput.exit.i.i_crit_edge
  %cmp.i179.i.i = icmp ugt ptr %call31.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179.i.i, label %if.then33.i.i, label %if.end35.i.i

if.then33.i.i:                                    ; preds = %fdput.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %call31.i.i to i32
  br label %cleanup.thread216.i.i

if.end35.i.i:                                     ; preds = %fdput.exit.i.i
  %26 = ptrtoint ptr %timeo.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2147483647, ptr %timeo.i.i, align 4
  %call36.i.i = call i32 @netlink_attachskb(ptr noundef %call31.i.i, ptr noundef nonnull %call.i.i8.i, ptr noundef nonnull %timeo.i.i, ptr noundef null) #13
  %27 = zext i32 %call36.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %call36.i.i, label %if.end35.i.i.cleanup.thread.i.i_crit_edge [
    i32 1, label %if.end35.i.i.retry.i.i_crit_edge
    i32 0, label %cleanup.thread221.i.i
  ]

if.end35.i.i.retry.i.i_crit_edge:                 ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %retry.i.i

if.end35.i.i.cleanup.thread.i.i_crit_edge:        ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i

cleanup.thread221.i.i:                            ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo.i.i) #13
  br label %if.end44.i.i

cleanup.thread.i.i:                               ; preds = %if.end35.i.i.cleanup.thread.i.i_crit_edge, %if.then16.i.i.cleanup.thread.i.i_crit_edge
  %retval.0.ph.i.i = phi i32 [ -12, %if.then16.i.i.cleanup.thread.i.i_crit_edge ], [ %call36.i.i, %if.end35.i.i.cleanup.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo.i.i) #13
  br label %__do_sys_mq_notify.exit

cleanup.thread216.i.i:                            ; preds = %if.then33.i.i, %if.then11.i.i.i.i
  %ret.0.ph.i.i = phi i32 [ %25, %if.then33.i.i ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo.i.i) #13
  br label %free_skb.i.i

out.thread.i.i:                                   ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo.i.i) #13
  br label %free_skb.i.i

if.end44.i.i:                                     ; preds = %cleanup.thread221.i.i, %land.lhs.true10.i.i.if.end44.i.i_crit_edge, %if.end.i.i.if.end44.i.i_crit_edge, %entry.if.end44.i.i_crit_edge
  %p.019.i = phi ptr [ %n.i, %cleanup.thread221.i.i ], [ %n.i, %land.lhs.true10.i.i.if.end44.i.i_crit_edge ], [ %n.i, %if.end.i.i.if.end44.i.i_crit_edge ], [ null, %entry.if.end44.i.i_crit_edge ]
  %sock.2.i.i = phi ptr [ %call31.i.i, %cleanup.thread221.i.i ], [ null, %land.lhs.true10.i.i.if.end44.i.i_crit_edge ], [ null, %if.end.i.i.if.end44.i.i_crit_edge ], [ null, %entry.if.end44.i.i_crit_edge ]
  %nc.0.i.i = phi ptr [ %call.i.i8.i, %cleanup.thread221.i.i ], [ null, %land.lhs.true10.i.i.if.end44.i.i_crit_edge ], [ null, %if.end.i.i.if.end44.i.i_crit_edge ], [ null, %entry.if.end44.i.i_crit_edge ]
  %call.i180.i.i = call i32 @__fdget(i32 noundef %mqdes) #13, !noalias !214
  %and.i.i181.i.i = and i32 %call.i180.i.i, -4
  %28 = inttoptr i32 %and.i.i181.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i181.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i181.i.i, 0
  br i1 %tobool47.not.i.i, label %if.end44.i.i.out.i.i_crit_edge, label %if.end49.i.i

if.end44.i.i.out.i.i_crit_edge:                   ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

if.end49.i.i:                                     ; preds = %if.end44.i.i
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %f_inode.i.i.i, align 8
  %f_op.i.i = getelementptr inbounds %struct.file, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %f_op.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %f_op.i.i, align 4
  %cmp53.not.i.i = icmp eq ptr %32, @mqueue_file_operations
  br i1 %cmp53.not.i.i, label %if.end61.i.i, label %if.end49.i.i.out_fput.i.i_crit_edge, !prof !206

if.end49.i.i.out_fput.i.i_crit_edge:              ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fput.i.i

if.end61.i.i:                                     ; preds = %if.end49.i.i
  %add.ptr.i.i11.i = getelementptr i8, ptr %30, i32 -48
  call void @_raw_spin_lock(ptr noundef %add.ptr.i.i11.i) #13
  %notify_owner.i.i = getelementptr i8, ptr %30, i32 944
  %33 = ptrtoint ptr %notify_owner.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %notify_owner.i.i, align 8
  br i1 %tobool.not.i, label %if.then64.i.i, label %if.else.i.i

if.then64.i.i:                                    ; preds = %if.end61.i.i
  %35 = call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i184.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i184.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i.i, align 8
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 111
  %39 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %40, i32 0, i32 22, i32 1
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i.i, align 4
  %cmp67.i.i = icmp eq ptr %34, %42
  br i1 %cmp67.i.i, label %if.then68.i.i, label %if.then64.i.i.if.end105.i.i_crit_edge

if.then64.i.i.if.end105.i.i_crit_edge:            ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105.i.i

if.then68.i.i:                                    ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @remove_notification(ptr noundef %add.ptr.i.i11.i) #13
  %i_atime.i.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 15
  %i_ctime.i.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp69.i.i) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp69.i.i, ptr noundef %30) #13
  %43 = call ptr @memcpy(ptr %i_ctime.i.i, ptr %tmp69.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp69.i.i) #13
  %44 = call ptr @memcpy(ptr %i_atime.i.i, ptr %i_ctime.i.i, i32 16)
  br label %if.end105.i.i

if.else.i.i:                                      ; preds = %if.end61.i.i
  %cmp72.not.i.i = icmp eq ptr %34, null
  br i1 %cmp72.not.i.i, label %if.else74.i.i, label %if.else.i.i.if.end105.i.i_crit_edge

if.else.i.i.if.end105.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105.i.i

if.else74.i.i:                                    ; preds = %if.else.i.i
  %sigev_notify75.i.i = getelementptr inbounds %struct.sigevent, ptr %p.019.i, i32 0, i32 2
  %45 = ptrtoint ptr %sigev_notify75.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sigev_notify75.i.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %46, label %if.else74.i.i.sw.epilog.i.i_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb77.i.i
    i32 0, label %sw.bb80.i.i
  ]

if.else74.i.i.sw.epilog.i.i_crit_edge:            ; preds = %if.else74.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.else74.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sigev_notify76.i.i = getelementptr i8, ptr %30, i32 888
  %48 = ptrtoint ptr %sigev_notify76.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %sigev_notify76.i.i, align 8
  br label %sw.epilog.i.i

sw.bb77.i.i:                                      ; preds = %if.else74.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %notify_sock.i.i = getelementptr i8, ptr %30, i32 960
  %49 = ptrtoint ptr %notify_sock.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %sock.2.i.i, ptr %notify_sock.i.i, align 8
  %notify_cookie.i.i = getelementptr i8, ptr %30, i32 964
  %50 = ptrtoint ptr %notify_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %nc.0.i.i, ptr %notify_cookie.i.i, align 4
  %sigev_notify79.i.i = getelementptr i8, ptr %30, i32 888
  %51 = ptrtoint ptr %sigev_notify79.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %sigev_notify79.i.i, align 8
  br label %sw.epilog.i.i

sw.bb80.i.i:                                      ; preds = %if.else74.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sigev_signo81.i.i = getelementptr inbounds %struct.sigevent, ptr %p.019.i, i32 0, i32 1
  %52 = ptrtoint ptr %sigev_signo81.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sigev_signo81.i.i, align 4
  %notify82.i.i = getelementptr i8, ptr %30, i32 880
  %sigev_signo83.i.i = getelementptr i8, ptr %30, i32 884
  %54 = ptrtoint ptr %sigev_signo83.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %sigev_signo83.i.i, align 4
  %55 = ptrtoint ptr %p.019.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %p.019.i, align 4
  %57 = ptrtoint ptr %notify82.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %notify82.i.i, align 8
  %sigev_notify88.i.i = getelementptr i8, ptr %30, i32 888
  %58 = ptrtoint ptr %sigev_notify88.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %sigev_notify88.i.i, align 8
  %59 = call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i185.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i185.i.i to ptr
  %task90.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task90.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task90.i.i, align 8
  %self_exec_id.i.i = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 126
  %63 = ptrtoint ptr %self_exec_id.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %self_exec_id.i.i, align 16
  %conv.i.i = trunc i64 %64 to i32
  %notify_self_exec_id.i.i = getelementptr i8, ptr %30, i32 948
  %65 = ptrtoint ptr %notify_self_exec_id.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv.i.i, ptr %notify_self_exec_id.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb80.i.i, %sw.bb77.i.i, %sw.bb.i.i, %if.else74.i.i.sw.epilog.i.i_crit_edge
  %sock.3.i.i = phi ptr [ %sock.2.i.i, %if.else74.i.i.sw.epilog.i.i_crit_edge ], [ %sock.2.i.i, %sw.bb80.i.i ], [ null, %sw.bb77.i.i ], [ %sock.2.i.i, %sw.bb.i.i ]
  %nc.1.i.i = phi ptr [ %nc.0.i.i, %if.else74.i.i.sw.epilog.i.i_crit_edge ], [ %nc.0.i.i, %sw.bb80.i.i ], [ null, %sw.bb77.i.i ], [ %nc.0.i.i, %sw.bb.i.i ]
  %66 = call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i186.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i186.i.i to ptr
  %task92.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task92.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task92.i.i, align 8
  %signal.i187.i.i = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 111
  %70 = ptrtoint ptr %signal.i187.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %signal.i187.i.i, align 16
  %arrayidx.i188.i.i = getelementptr %struct.signal_struct, ptr %71, i32 0, i32 22, i32 1
  %72 = ptrtoint ptr %arrayidx.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i188.i.i, align 4
  %tobool.not.i189.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i189.i.i, label %sw.epilog.i.i.get_pid.exit.i.i_crit_edge, label %if.then.i190.i.i

sw.epilog.i.i.get_pid.exit.i.i_crit_edge:         ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit.i.i

if.then.i190.i.i:                                 ; preds = %sw.epilog.i.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %73, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr nonnull %73, i32 1, i32 3, i32 1) #13
  %74 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %73, ptr nonnull %73, i32 1, ptr nonnull elementtype(i32) %73) #13, !srcloc !217
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i190.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !218

if.then.i190.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i190.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i190.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %75 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %.not.i.i.i.i.i.i = icmp sgt i32 %75, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.get_pid.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !206

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.get_pid.exit.i.i_crit_edge:   ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i190.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i190.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %73, i32 noundef %.sink.i.i.i.i.i.i) #13
  br label %get_pid.exit.i.i

get_pid.exit.i.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.get_pid.exit.i.i_crit_edge, %sw.epilog.i.i.get_pid.exit.i.i_crit_edge
  %76 = ptrtoint ptr %notify_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %notify_owner.i.i, align 8
  %77 = ptrtoint ptr %task92.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task92.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 99
  %79 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cred.i.i, align 16
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %80, i32 0, i32 25
  %81 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %user_ns.i.i, align 4
  %tobool.not.i191.i.i = icmp eq ptr %82, null
  br i1 %tobool.not.i191.i.i, label %get_pid.exit.i.i.get_user_ns.exit.i.i_crit_edge, label %if.then.i195.i.i

get_pid.exit.i.i.get_user_ns.exit.i.i_crit_edge:  ; preds = %get_pid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_user_ns.exit.i.i

if.then.i195.i.i:                                 ; preds = %get_pid.exit.i.i
  %count.i.i.i = getelementptr inbounds %struct.user_namespace, ptr %82, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i192.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #13
  %83 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #13, !srcloc !217
  %asmresult.i.i.i.i.i.i193.i.i = extractvalue { i32, i32, i32 } %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i193.i.i)
  %tobool1.not.i.i.i.i194.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i193.i.i, 0
  br i1 %tobool1.not.i.i.i.i194.i.i, label %if.then.i195.i.i.if.end15.sink.split.i.i.i.i200.i.i_crit_edge, label %if.else.i.i.i.i198.i.i, !prof !218

if.then.i195.i.i.if.end15.sink.split.i.i.i.i200.i.i_crit_edge: ; preds = %if.then.i195.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i200.i.i

if.else.i.i.i.i198.i.i:                           ; preds = %if.then.i195.i.i
  %add.i.i.i.i196.i.i = add i32 %asmresult.i.i.i.i.i.i193.i.i, 1
  %84 = or i32 %add.i.i.i.i196.i.i, %asmresult.i.i.i.i.i.i193.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %.not.i.i.i.i197.i.i = icmp sgt i32 %84, -1
  br i1 %.not.i.i.i.i197.i.i, label %if.else.i.i.i.i198.i.i.get_user_ns.exit.i.i_crit_edge, label %if.else.i.i.i.i198.i.i.if.end15.sink.split.i.i.i.i200.i.i_crit_edge, !prof !206

if.else.i.i.i.i198.i.i.if.end15.sink.split.i.i.i.i200.i.i_crit_edge: ; preds = %if.else.i.i.i.i198.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i200.i.i

if.else.i.i.i.i198.i.i.get_user_ns.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i198.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_user_ns.exit.i.i

if.end15.sink.split.i.i.i.i200.i.i:               ; preds = %if.else.i.i.i.i198.i.i.if.end15.sink.split.i.i.i.i200.i.i_crit_edge, %if.then.i195.i.i.if.end15.sink.split.i.i.i.i200.i.i_crit_edge
  %.sink.i.i.i.i199.i.i = phi i32 [ 2, %if.then.i195.i.i.if.end15.sink.split.i.i.i.i200.i.i_crit_edge ], [ 1, %if.else.i.i.i.i198.i.i.if.end15.sink.split.i.i.i.i200.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef %.sink.i.i.i.i199.i.i) #13
  br label %get_user_ns.exit.i.i

get_user_ns.exit.i.i:                             ; preds = %if.end15.sink.split.i.i.i.i200.i.i, %if.else.i.i.i.i198.i.i.get_user_ns.exit.i.i_crit_edge, %get_pid.exit.i.i.get_user_ns.exit.i.i_crit_edge
  %notify_user_ns.i.i = getelementptr i8, ptr %30, i32 952
  %85 = ptrtoint ptr %notify_user_ns.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %notify_user_ns.i.i, align 8
  %i_atime101.i.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 15
  %i_ctime102.i.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp103.i.i) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp103.i.i, ptr noundef %30) #13
  %86 = call ptr @memcpy(ptr %i_ctime102.i.i, ptr %tmp103.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp103.i.i) #13
  %87 = call ptr @memcpy(ptr %i_atime101.i.i, ptr %i_ctime102.i.i, i32 16)
  br label %if.end105.i.i

if.end105.i.i:                                    ; preds = %get_user_ns.exit.i.i, %if.else.i.i.if.end105.i.i_crit_edge, %if.then68.i.i, %if.then64.i.i.if.end105.i.i_crit_edge
  %sock.4.i.i = phi ptr [ %sock.2.i.i, %if.then68.i.i ], [ %sock.2.i.i, %if.then64.i.i.if.end105.i.i_crit_edge ], [ %sock.3.i.i, %get_user_ns.exit.i.i ], [ %sock.2.i.i, %if.else.i.i.if.end105.i.i_crit_edge ]
  %nc.2.i.i = phi ptr [ %nc.0.i.i, %if.then68.i.i ], [ %nc.0.i.i, %if.then64.i.i.if.end105.i.i_crit_edge ], [ %nc.1.i.i, %get_user_ns.exit.i.i ], [ %nc.0.i.i, %if.else.i.i.if.end105.i.i_crit_edge ]
  %ret.1.i.i = phi i32 [ 0, %if.then68.i.i ], [ 0, %if.then64.i.i.if.end105.i.i_crit_edge ], [ 0, %get_user_ns.exit.i.i ], [ -16, %if.else.i.i.if.end105.i.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %add.ptr.i.i11.i) #13
  br label %out_fput.i.i

out_fput.i.i:                                     ; preds = %if.end105.i.i, %if.end49.i.i.out_fput.i.i_crit_edge
  %sock.5.i.i = phi ptr [ %sock.4.i.i, %if.end105.i.i ], [ %sock.2.i.i, %if.end49.i.i.out_fput.i.i_crit_edge ]
  %nc.3.i.i = phi ptr [ %nc.2.i.i, %if.end105.i.i ], [ %nc.0.i.i, %if.end49.i.i.out_fput.i.i_crit_edge ]
  %ret.2.i.i = phi i32 [ %ret.1.i.i, %if.end105.i.i ], [ -9, %if.end49.i.i.out_fput.i.i_crit_edge ]
  %and.i201.i.i = and i32 %call.i180.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i201.i.i)
  %tobool.not.i202.i.i = icmp eq i32 %and.i201.i.i, 0
  br i1 %tobool.not.i202.i.i, label %out_fput.i.i.out.i.i_crit_edge, label %if.then.i203.i.i

out_fput.i.i.out.i.i_crit_edge:                   ; preds = %out_fput.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

if.then.i203.i.i:                                 ; preds = %out_fput.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @fput(ptr noundef nonnull %28) #13
  br label %out.i.i

out.i.i:                                          ; preds = %if.then.i203.i.i, %out_fput.i.i.out.i.i_crit_edge, %if.end44.i.i.out.i.i_crit_edge
  %sock.6.i.i = phi ptr [ %sock.2.i.i, %if.end44.i.i.out.i.i_crit_edge ], [ %sock.5.i.i, %out_fput.i.i.out.i.i_crit_edge ], [ %sock.5.i.i, %if.then.i203.i.i ]
  %nc.4.i.i = phi ptr [ %nc.0.i.i, %if.end44.i.i.out.i.i_crit_edge ], [ %nc.3.i.i, %out_fput.i.i.out.i.i_crit_edge ], [ %nc.3.i.i, %if.then.i203.i.i ]
  %ret.3.i.i = phi i32 [ -9, %if.end44.i.i.out.i.i_crit_edge ], [ %ret.2.i.i, %out_fput.i.i.out.i.i_crit_edge ], [ %ret.2.i.i, %if.then.i203.i.i ]
  %tobool107.not.i.i = icmp eq ptr %sock.6.i.i, null
  br i1 %tobool107.not.i.i, label %out.i.i.free_skb.i.i_crit_edge, label %if.then108.i.i

out.i.i.free_skb.i.i_crit_edge:                   ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_skb.i.i

if.then108.i.i:                                   ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @netlink_detachskb(ptr noundef nonnull %sock.6.i.i, ptr noundef %nc.4.i.i) #13
  br label %__do_sys_mq_notify.exit

free_skb.i.i:                                     ; preds = %out.i.i.free_skb.i.i_crit_edge, %out.thread.i.i, %cleanup.thread216.i.i
  %nc.5.i.i = phi ptr [ %nc.4.i.i, %out.i.i.free_skb.i.i_crit_edge ], [ %call.i.i8.i, %cleanup.thread216.i.i ], [ %call.i.i8.i, %out.thread.i.i ]
  %ret.4.i.i = phi i32 [ %ret.3.i.i, %out.i.i.free_skb.i.i_crit_edge ], [ %ret.0.ph.i.i, %cleanup.thread216.i.i ], [ -9, %out.thread.i.i ]
  call void @consume_skb(ptr noundef %nc.5.i.i) #13
  br label %__do_sys_mq_notify.exit

__do_sys_mq_notify.exit:                          ; preds = %free_skb.i.i, %if.then108.i.i, %cleanup.thread.i.i, %land.lhs.true10.i.i.__do_sys_mq_notify.exit_crit_edge, %if.then.i.i.__do_sys_mq_notify.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ -22, %land.lhs.true10.i.i.__do_sys_mq_notify.exit_crit_edge ], [ %ret.4.i.i, %free_skb.i.i ], [ %ret.3.i.i, %if.then108.i.i ], [ -22, %if.then.i.i.__do_sys_mq_notify.exit_crit_edge ], [ %retval.0.ph.i.i, %cleanup.thread.i.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %n.i) #13
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mq_getsetattr(i32 noundef %mqdes, i32 noundef %u_mqstat, i32 noundef %u_omqstat) #0 align 64 {
entry:
  %tmp33.i.i = alloca %struct.timespec64, align 8
  %mqstat.i = alloca %struct.mq_attr, align 4
  %omqstat.i = alloca %struct.mq_attr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %u_mqstat to ptr
  %1 = inttoptr i32 %u_omqstat to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mqstat.i) #13
  %2 = call ptr @memset(ptr %mqstat.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %omqstat.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u_mqstat)
  %tobool.not.i = icmp eq i32 %u_mqstat, 0
  %3 = call ptr @memset(ptr %omqstat.i, i32 255, i32 32)
  br i1 %tobool.not.i, label %if.end3.thread.i, label %if.end59.i.i.i

if.end3.thread.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u_omqstat)
  %tobool4.not41.i = icmp eq i32 %u_omqstat, 0
  %spec.select42.i = select i1 %tobool4.not41.i, ptr null, ptr %omqstat.i
  br label %if.end.i.i

if.end59.i.i.i:                                   ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #13
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.end59.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end59.i.i.i.if.then11.i.i.i_crit_edge:         ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end59.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %0, i32 32, i32 -1226833920) #16, !srcloc !205
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !206

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mqstat.i, i32 noundef 32) #13
  %5 = call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !207
  %and.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !209
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %mqstat.i, ptr noundef nonnull %0, i32 noundef 32) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #13, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !206

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end59.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i37.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 32, %if.end59.i.i.i.if.then11.i.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 32, %res.0.i.i37.i
  %add.ptr.i.i.i = getelementptr i8, ptr %mqstat.i, i32 %sub.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i37.i)
  br label %__do_sys_mq_getsetattr.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u_omqstat)
  %tobool4.not.i = icmp eq i32 %u_omqstat, 0
  %spec.select.i = select i1 %tobool4.not.i, ptr null, ptr %omqstat.i
  %9 = ptrtoint ptr %mqstat.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mqstat.i, align 4
  %and.i.i = and i32 %10, -2049
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.__do_sys_mq_getsetattr.exit_crit_edge

land.lhs.true.i.i.__do_sys_mq_getsetattr.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_getsetattr.exit

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end3.thread.i
  %spec.select48.i = phi ptr [ %spec.select42.i, %if.end3.thread.i ], [ %spec.select.i, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  %tobool4.not45.i = phi i1 [ %tobool4.not41.i, %if.end3.thread.i ], [ %tobool4.not.i, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  %new.044.i = phi ptr [ null, %if.end3.thread.i ], [ %mqstat.i, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  %call.i.i32.i = call i32 @__fdget(i32 noundef %mqdes) #13, !noalias !219
  %and.i.i.i.i = and i32 %call.i.i32.i, -4
  %11 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.__do_sys_mq_getsetattr.exit_crit_edge, label %if.end4.i.i

if.end.i.i.__do_sys_mq_getsetattr.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_getsetattr.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %f_op.i.i = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %f_op.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_op.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %13, @mqueue_file_operations
  br i1 %cmp.not.i.i, label %if.end9.i.i, label %if.then8.i.i, !prof !206

if.then8.i.i:                                     ; preds = %if.end4.i.i
  %and.i.i.i = and i32 %call.i.i32.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.__do_sys_mq_getsetattr.exit_crit_edge, label %if.then.i.i33.i

if.then8.i.i.__do_sys_mq_getsetattr.exit_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_getsetattr.exit

if.then.i.i33.i:                                  ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @fput(ptr noundef nonnull %11) #13
  br label %__do_sys_mq_getsetattr.exit

if.end9.i.i:                                      ; preds = %if.end4.i.i
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_inode.i.i.i, align 8
  %add.ptr.i.i34.i = getelementptr i8, ptr %15, i32 -48
  call void @_raw_spin_lock(ptr noundef %add.ptr.i.i34.i) #13
  br i1 %tobool4.not45.i, label %if.end9.i.i.if.end17.i.i_crit_edge, label %if.then13.i.i

if.end9.i.i.if.end17.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i.i

if.then13.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %attr.i.i = getelementptr i8, ptr %15, i32 848
  %16 = call ptr @memcpy(ptr %spec.select48.i, ptr %attr.i.i, i32 32)
  %f_flags.i.i = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 7
  %17 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f_flags.i.i, align 4
  %and15.i.i = and i32 %18, 2048
  %19 = ptrtoint ptr %spec.select48.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and15.i.i, ptr %spec.select48.i, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then13.i.i, %if.end9.i.i.if.end17.i.i_crit_edge
  br i1 %tobool.not.i, label %if.end17.i.i.if.end34.i.i_crit_edge, label %if.then19.i.i

if.end17.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i.i

if.then19.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %f_lock.i.i = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %f_lock.i.i) #13
  %20 = ptrtoint ptr %new.044.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %new.044.i, align 4
  %and22.i.i = and i32 %21, 2048
  %f_flags28.i.i = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 7
  %22 = ptrtoint ptr %f_flags28.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_flags28.i.i, align 4
  %and29.i.i = and i32 %23, -2049
  %and29.sink.i.i = or i32 %and29.i.i, %and22.i.i
  store i32 %and29.sink.i.i, ptr %f_flags28.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %f_lock.i.i) #13
  %i_atime.i.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 15
  %i_ctime.i.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp33.i.i) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp33.i.i, ptr noundef %15) #13
  %24 = call ptr @memcpy(ptr %i_ctime.i.i, ptr %tmp33.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp33.i.i) #13
  %25 = call ptr @memcpy(ptr %i_atime.i.i, ptr %i_ctime.i.i, i32 16)
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then19.i.i, %if.end17.i.i.if.end34.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %add.ptr.i.i34.i) #13
  %and.i64.i.i = and i32 %call.i.i32.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64.i.i)
  %tobool.not.i65.i.i = icmp eq i32 %and.i64.i.i, 0
  br i1 %tobool.not.i65.i.i, label %if.end34.i.i.do_mq_getsetattr.exit.i_crit_edge, label %if.then.i66.i.i

if.end34.i.i.do_mq_getsetattr.exit.i_crit_edge:   ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_mq_getsetattr.exit.i

if.then.i66.i.i:                                  ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @fput(ptr noundef nonnull %11) #13
  br label %do_mq_getsetattr.exit.i

do_mq_getsetattr.exit.i:                          ; preds = %if.then.i66.i.i, %if.end34.i.i.do_mq_getsetattr.exit.i_crit_edge
  br i1 %tobool4.not45.i, label %do_mq_getsetattr.exit.i.__do_sys_mq_getsetattr.exit_crit_edge, label %if.then.i.i

do_mq_getsetattr.exit.i.__do_sys_mq_getsetattr.exit_crit_edge: ; preds = %do_mq_getsetattr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_getsetattr.exit

if.then.i.i:                                      ; preds = %do_mq_getsetattr.exit.i
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #13
  %call.i.i27.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i27.i, label %if.then.i.i.__do_sys_mq_getsetattr.exit_crit_edge, label %if.end.i.i29.i

if.then.i.i.__do_sys_mq_getsetattr.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_getsetattr.exit

if.end.i.i29.i:                                   ; preds = %if.then.i.i
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 32, i32 -1226833920) #16, !srcloc !222
  %asmresult.i.i28.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i28.i)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i28.i, 0
  br i1 %cmp.i1.i.i, label %copy_to_user.exit.i, label %if.end.i.i29.i.__do_sys_mq_getsetattr.exit_crit_edge

if.end.i.i29.i.__do_sys_mq_getsetattr.exit_crit_edge: ; preds = %if.end.i.i29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_getsetattr.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i29.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i30.i = call zeroext i1 @__kasan_check_read(ptr noundef %spec.select48.i, i32 noundef 32) #13
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %spec.select48.i, i32 noundef 32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool13.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select57.i = select i1 %tobool13.not.i, i32 0, i32 -14
  br label %__do_sys_mq_getsetattr.exit

__do_sys_mq_getsetattr.exit:                      ; preds = %copy_to_user.exit.i, %if.end.i.i29.i.__do_sys_mq_getsetattr.exit_crit_edge, %if.then.i.i.__do_sys_mq_getsetattr.exit_crit_edge, %do_mq_getsetattr.exit.i.__do_sys_mq_getsetattr.exit_crit_edge, %if.then.i.i33.i, %if.then8.i.i.__do_sys_mq_getsetattr.exit_crit_edge, %if.end.i.i.__do_sys_mq_getsetattr.exit_crit_edge, %land.lhs.true.i.i.__do_sys_mq_getsetattr.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ 0, %do_mq_getsetattr.exit.i.__do_sys_mq_getsetattr.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -9, %if.then.i.i33.i ], [ -9, %if.then8.i.i.__do_sys_mq_getsetattr.exit_crit_edge ], [ -9, %if.end.i.i.__do_sys_mq_getsetattr.exit_crit_edge ], [ -22, %land.lhs.true.i.i.__do_sys_mq_getsetattr.exit_crit_edge ], [ -14, %if.then.i.i.__do_sys_mq_getsetattr.exit_crit_edge ], [ -14, %if.end.i.i29.i.__do_sys_mq_getsetattr.exit_crit_edge ], [ %spec.select57.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %omqstat.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mqstat.i) #13
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mq_timedsend_time32(i32 noundef %mqdes, i32 noundef %u_msg_ptr, i32 noundef %msg_len, i32 noundef %msg_prio, i32 noundef %u_abs_timeout) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %u_msg_ptr to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #13
  %1 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u_abs_timeout)
  %tobool.not.i = icmp eq i32 %u_abs_timeout, 0
  br i1 %tobool.not.i, label %entry.if.end3.i_crit_edge, label %if.then.i

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then.i:                                        ; preds = %entry
  %2 = inttoptr i32 %u_abs_timeout to ptr
  %call.i.i = call i32 @get_old_timespec32(ptr noundef nonnull %ts.i, ptr noundef nonnull %2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.__do_sys_mq_timedsend_time32.exit_crit_edge

if.then.i.__do_sys_mq_timedsend_time32.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_timedsend_time32.exit

if.end.i.i:                                       ; preds = %if.then.i
  %3 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i.i.i = icmp slt i64 %4, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.__do_sys_mq_timedsend_time32.exit_crit_edge, label %timespec64_valid.exit.i.i

if.end.i.i.__do_sys_mq_timedsend_time32.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_timedsend_time32.exit

timespec64_valid.exit.i.i:                        ; preds = %if.end.i.i
  %tv_nsec.i.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %5 = ptrtoint ptr %tv_nsec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tv_nsec.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %6)
  %cmp1.i.i.i = icmp ult i32 %6, 1000000000
  br i1 %cmp1.i.i.i, label %timespec64_valid.exit.i.i.if.end3.i_crit_edge, label %timespec64_valid.exit.i.i.__do_sys_mq_timedsend_time32.exit_crit_edge

timespec64_valid.exit.i.i.__do_sys_mq_timedsend_time32.exit_crit_edge: ; preds = %timespec64_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_timedsend_time32.exit

timespec64_valid.exit.i.i.if.end3.i_crit_edge:    ; preds = %timespec64_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.end3.i:                                        ; preds = %timespec64_valid.exit.i.i.if.end3.i_crit_edge, %entry.if.end3.i_crit_edge
  %p.1.i = phi ptr [ null, %entry.if.end3.i_crit_edge ], [ %ts.i, %timespec64_valid.exit.i.i.if.end3.i_crit_edge ]
  %call4.i = call fastcc i32 @do_mq_timedsend(i32 noundef %mqdes, ptr noundef %0, i32 noundef %msg_len, i32 noundef %msg_prio, ptr noundef %p.1.i) #13
  br label %__do_sys_mq_timedsend_time32.exit

__do_sys_mq_timedsend_time32.exit:                ; preds = %if.end3.i, %timespec64_valid.exit.i.i.__do_sys_mq_timedsend_time32.exit_crit_edge, %if.end.i.i.__do_sys_mq_timedsend_time32.exit_crit_edge, %if.then.i.__do_sys_mq_timedsend_time32.exit_crit_edge
  %retval.1.i = phi i32 [ %call4.i, %if.end3.i ], [ -22, %timespec64_valid.exit.i.i.__do_sys_mq_timedsend_time32.exit_crit_edge ], [ -22, %if.end.i.i.__do_sys_mq_timedsend_time32.exit_crit_edge ], [ -14, %if.then.i.__do_sys_mq_timedsend_time32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #13
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mq_timedreceive_time32(i32 noundef %mqdes, i32 noundef %u_msg_ptr, i32 noundef %msg_len, i32 noundef %u_msg_prio, i32 noundef %u_abs_timeout) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %u_msg_ptr to ptr
  %1 = inttoptr i32 %u_msg_prio to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #13
  %2 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u_abs_timeout)
  %tobool.not.i = icmp eq i32 %u_abs_timeout, 0
  br i1 %tobool.not.i, label %entry.if.end3.i_crit_edge, label %if.then.i

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then.i:                                        ; preds = %entry
  %3 = inttoptr i32 %u_abs_timeout to ptr
  %call.i.i = call i32 @get_old_timespec32(ptr noundef nonnull %ts.i, ptr noundef nonnull %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.__do_sys_mq_timedreceive_time32.exit_crit_edge

if.then.i.__do_sys_mq_timedreceive_time32.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_timedreceive_time32.exit

if.end.i.i:                                       ; preds = %if.then.i
  %4 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp.i.i.i = icmp slt i64 %5, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.__do_sys_mq_timedreceive_time32.exit_crit_edge, label %timespec64_valid.exit.i.i

if.end.i.i.__do_sys_mq_timedreceive_time32.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_timedreceive_time32.exit

timespec64_valid.exit.i.i:                        ; preds = %if.end.i.i
  %tv_nsec.i.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %6 = ptrtoint ptr %tv_nsec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tv_nsec.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %7)
  %cmp1.i.i.i = icmp ult i32 %7, 1000000000
  br i1 %cmp1.i.i.i, label %timespec64_valid.exit.i.i.if.end3.i_crit_edge, label %timespec64_valid.exit.i.i.__do_sys_mq_timedreceive_time32.exit_crit_edge

timespec64_valid.exit.i.i.__do_sys_mq_timedreceive_time32.exit_crit_edge: ; preds = %timespec64_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_mq_timedreceive_time32.exit

timespec64_valid.exit.i.i.if.end3.i_crit_edge:    ; preds = %timespec64_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.end3.i:                                        ; preds = %timespec64_valid.exit.i.i.if.end3.i_crit_edge, %entry.if.end3.i_crit_edge
  %p.1.i = phi ptr [ null, %entry.if.end3.i_crit_edge ], [ %ts.i, %timespec64_valid.exit.i.i.if.end3.i_crit_edge ]
  %call4.i = call fastcc i32 @do_mq_timedreceive(i32 noundef %mqdes, ptr noundef %0, i32 noundef %msg_len, ptr noundef %1, ptr noundef %p.1.i) #13
  br label %__do_sys_mq_timedreceive_time32.exit

__do_sys_mq_timedreceive_time32.exit:             ; preds = %if.end3.i, %timespec64_valid.exit.i.i.__do_sys_mq_timedreceive_time32.exit_crit_edge, %if.end.i.i.__do_sys_mq_timedreceive_time32.exit_crit_edge, %if.then.i.__do_sys_mq_timedreceive_time32.exit_crit_edge
  %retval.1.i = phi i32 [ %call4.i, %if.end3.i ], [ -22, %timespec64_valid.exit.i.i.__do_sys_mq_timedreceive_time32.exit_crit_edge ], [ -22, %if.end.i.i.__do_sys_mq_timedreceive_time32.exit_crit_edge ], [ -14, %if.then.i.__do_sys_mq_timedreceive_time32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #13
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mq_init_ns(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mq_queues_count = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 15
  %0 = ptrtoint ptr %mq_queues_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mq_queues_count, align 4
  %mq_queues_max = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 16
  %1 = ptrtoint ptr %mq_queues_max to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 256, ptr %mq_queues_max, align 4
  %mq_msg_max = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 17
  %2 = ptrtoint ptr %mq_msg_max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %mq_msg_max, align 4
  %mq_msgsize_max = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 18
  %3 = ptrtoint ptr %mq_msgsize_max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8192, ptr %mq_msgsize_max, align 4
  %mq_msg_default = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 19
  %4 = ptrtoint ptr %mq_msg_default to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10, ptr %mq_msg_default, align 4
  %mq_msgsize_default = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 20
  %5 = ptrtoint ptr %mq_msgsize_default to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8192, ptr %mq_msgsize_default, align 4
  %call.i = tail call ptr @fs_context_for_mount(ptr noundef nonnull @mqueue_fs_type, i32 noundef 4194304) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.mq_create_mount.exit_crit_edge, label %if.end.i

entry.mq_create_mount.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mq_create_mount.exit

if.end.i:                                         ; preds = %entry
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_private.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @put_ipc_ns(ptr noundef %9) #13
  %tobool.not.i.i = icmp eq ptr %ns, null
  br i1 %tobool.not.i.i, label %if.end.i.get_ipc_ns.exit.i_crit_edge, label %if.then.i.i

if.end.i.get_ipc_ns.exit.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_ipc_ns.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %count.i.i = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 24, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #13, !srcloc !217
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !218

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_ipc_ns.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !206

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_ipc_ns.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_ipc_ns.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %get_ipc_ns.exit.i

get_ipc_ns.exit.i:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_ipc_ns.exit.i_crit_edge, %if.end.i.get_ipc_ns.exit.i_crit_edge
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ns, ptr %7, align 4
  %user_ns.i = getelementptr inbounds %struct.fs_context, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %user_ns.i, align 4
  %tobool.not.i20.i = icmp eq ptr %14, null
  br i1 %tobool.not.i20.i, label %get_ipc_ns.exit.i.put_user_ns.exit.i_crit_edge, label %land.lhs.true.i.i

get_ipc_ns.exit.i.put_user_ns.exit.i_crit_edge:   ; preds = %get_ipc_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_user_ns.exit.i

land.lhs.true.i.i:                                ; preds = %get_ipc_ns.exit.i
  %count.i21.i = getelementptr inbounds %struct.user_namespace, ptr %14, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i22.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i21.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !223
  tail call void @llvm.prefetch.p0(ptr %count.i21.i, i32 1, i32 3, i32 1) #13
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i21.i, ptr %count.i21.i, i32 1, ptr elementtype(i32) %count.i21.i) #13, !srcloc !224
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i24.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i23.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i23.i, label %if.end5.i.i.i.i.i.put_user_ns.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !206

if.end5.i.i.i.i.i.put_user_ns.exit.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_user_ns.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %count.i21.i, i32 noundef 3) #13
  br label %put_user_ns.exit.i

if.then.i24.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @__put_user_ns(ptr noundef nonnull %14) #13
  br label %put_user_ns.exit.i

put_user_ns.exit.i:                               ; preds = %if.then.i24.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.put_user_ns.exit.i_crit_edge, %get_ipc_ns.exit.i.put_user_ns.exit.i_crit_edge
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 4
  %user_ns6.i = getelementptr inbounds %struct.ipc_namespace, ptr %17, i32 0, i32 21
  %18 = ptrtoint ptr %user_ns6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns6.i, align 4
  %tobool.not.i25.i = icmp eq ptr %19, null
  br i1 %tobool.not.i25.i, label %put_user_ns.exit.i.get_user_ns.exit.i_crit_edge, label %if.then.i30.i

put_user_ns.exit.i.get_user_ns.exit.i_crit_edge:  ; preds = %put_user_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_user_ns.exit.i

if.then.i30.i:                                    ; preds = %put_user_ns.exit.i
  %count.i26.i = getelementptr inbounds %struct.user_namespace, ptr %19, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i27.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i26.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i26.i, i32 1, i32 3, i32 1) #13
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i26.i, ptr %count.i26.i, i32 1, ptr elementtype(i32) %count.i26.i) #13, !srcloc !217
  %asmresult.i.i.i.i.i.i28.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i28.i)
  %tobool1.not.i.i.i.i29.i = icmp eq i32 %asmresult.i.i.i.i.i.i28.i, 0
  br i1 %tobool1.not.i.i.i.i29.i, label %if.then.i30.i.if.end15.sink.split.i.i.i.i35.i_crit_edge, label %if.else.i.i.i.i33.i, !prof !218

if.then.i30.i.if.end15.sink.split.i.i.i.i35.i_crit_edge: ; preds = %if.then.i30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i35.i

if.else.i.i.i.i33.i:                              ; preds = %if.then.i30.i
  %add.i.i.i.i31.i = add i32 %asmresult.i.i.i.i.i.i28.i, 1
  %21 = or i32 %add.i.i.i.i31.i, %asmresult.i.i.i.i.i.i28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i32.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i32.i, label %if.else.i.i.i.i33.i.get_user_ns.exit.i_crit_edge, label %if.else.i.i.i.i33.i.if.end15.sink.split.i.i.i.i35.i_crit_edge, !prof !206

if.else.i.i.i.i33.i.if.end15.sink.split.i.i.i.i35.i_crit_edge: ; preds = %if.else.i.i.i.i33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i35.i

if.else.i.i.i.i33.i.get_user_ns.exit.i_crit_edge: ; preds = %if.else.i.i.i.i33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_user_ns.exit.i

if.end15.sink.split.i.i.i.i35.i:                  ; preds = %if.else.i.i.i.i33.i.if.end15.sink.split.i.i.i.i35.i_crit_edge, %if.then.i30.i.if.end15.sink.split.i.i.i.i35.i_crit_edge
  %.sink.i.i.i.i34.i = phi i32 [ 2, %if.then.i30.i.if.end15.sink.split.i.i.i.i35.i_crit_edge ], [ 1, %if.else.i.i.i.i33.i.if.end15.sink.split.i.i.i.i35.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i26.i, i32 noundef %.sink.i.i.i.i34.i) #13
  br label %get_user_ns.exit.i

get_user_ns.exit.i:                               ; preds = %if.end15.sink.split.i.i.i.i35.i, %if.else.i.i.i.i33.i.get_user_ns.exit.i_crit_edge, %put_user_ns.exit.i.get_user_ns.exit.i_crit_edge
  %22 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %user_ns.i, align 4
  %call9.i = tail call ptr @fc_mount(ptr noundef %call.i) #13
  tail call void @put_fs_context(ptr noundef %call.i) #13
  br label %mq_create_mount.exit

mq_create_mount.exit:                             ; preds = %get_user_ns.exit.i, %entry.mq_create_mount.exit_crit_edge
  %retval.0.i = phi ptr [ %call9.i, %get_user_ns.exit.i ], [ %call.i, %entry.mq_create_mount.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %mq_create_mount.exit
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %mq_create_mount.exit
  call void @__sanitizer_cov_trace_pc() #15
  %mq_mnt = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 14
  %24 = ptrtoint ptr %mq_mnt to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i, ptr %mq_mnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %23, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mq_clear_sbinfo(ptr nocapture noundef readonly %ns) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mq_mnt = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 14
  %0 = ptrtoint ptr %mq_mnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mq_mnt, align 4
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mnt_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %s_fs_info, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mq_put_mnt(ptr nocapture noundef readonly %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mq_mnt = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 14
  %0 = ptrtoint ptr %mq_mnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mq_mnt, align 4
  tail call void @kern_unmount(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kern_unmount(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_mqueue_fs() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.70, i32 noundef 1064, i32 noundef 0, i32 noundef 67117056, ptr noundef nonnull @init_once) #13
  store ptr %call, ptr @mqueue_inode_cachep, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @mq_register_sysctl_table() #13
  store ptr %call1, ptr @mq_sysctl_table, align 4
  %call2 = tail call i32 @register_filesystem(ptr noundef nonnull @mqueue_fs_type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body, label %if.end.out_sysctl_crit_edge

if.end.out_sysctl_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_sysctl

do.body:                                          ; preds = %if.end
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @mq_lock, ptr noundef nonnull @.str.71, ptr noundef nonnull @init_mqueue_fs.__key, i16 noundef signext 3) #13
  %call6 = tail call i32 @mq_init_ns(ptr noundef nonnull @init_ipc_ns)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body.cleanup_crit_edge, label %out_filesystem

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

out_filesystem:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call i32 @unregister_filesystem(ptr noundef nonnull @mqueue_fs_type) #13
  br label %out_sysctl

out_sysctl:                                       ; preds = %out_filesystem, %if.end.out_sysctl_crit_edge
  %error.0 = phi i32 [ %call2, %if.end.out_sysctl_crit_edge ], [ %call6, %out_filesystem ]
  %0 = load ptr, ptr @mq_sysctl_table, align 4
  %tobool11.not = icmp eq ptr %0, null
  br i1 %tobool11.not, label %out_sysctl.if.end13_crit_edge, label %if.then12

out_sysctl.if.end13_crit_edge:                    ; preds = %out_sysctl
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then12:                                        ; preds = %out_sysctl
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_sysctl_table(ptr noundef nonnull %0) #13
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %out_sysctl.if.end13_crit_edge
  %1 = load ptr, ptr @mqueue_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %if.end13 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mkobj(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mqueue_create_attr(ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef %arg) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @mq_lock) #13
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %out_unlock, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %count.i.i = getelementptr inbounds %struct.ipc_namespace, ptr %7, i32 0, i32 24, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #13, !srcloc !217
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !218

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !206

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end_crit_edge
  %mq_queues_count = getelementptr inbounds %struct.ipc_namespace, ptr %7, i32 0, i32 15
  %10 = ptrtoint ptr %mq_queues_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mq_queues_count, align 4
  %mq_queues_max = getelementptr inbounds %struct.ipc_namespace, ptr %7, i32 0, i32 16
  %12 = ptrtoint ptr %mq_queues_max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mq_queues_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not = icmp ult i32 %11, %13
  br i1 %cmp.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %call1 = tail call zeroext i1 @capable(i32 noundef 24) #13
  br i1 %call1, label %land.lhs.true.if.end3_crit_edge, label %land.lhs.true.if.then13_crit_edge

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %14 = ptrtoint ptr %mq_queues_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mq_queues_count, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %mq_queues_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mq_lock) #13
  %16 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb.i, align 4
  %call5 = tail call fastcc ptr @mqueue_get_inode(ptr noundef %17, ptr noundef nonnull %7, i16 noundef zeroext %mode, ptr noundef %arg)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %call5 to i32
  tail call void @_raw_spin_lock(ptr noundef nonnull @mq_lock) #13
  %19 = ptrtoint ptr %mq_queues_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mq_queues_count, align 4
  %dec = add i32 %20, -1
  store i32 %dec, ptr %mq_queues_count, align 4
  br label %if.then13

if.end10:                                         ; preds = %if.end3
  tail call void @put_ipc_ns(ptr noundef nonnull %7) #13
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %21 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_size, align 8
  %add = add i64 %22, 20
  store i64 %add, ptr %i_size, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %3) #13
  %23 = call ptr @memcpy(ptr %i_atime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #13
  %24 = call ptr @memcpy(ptr %i_mtime, ptr %i_atime, i32 16)
  %25 = call ptr @memcpy(ptr %i_ctime, ptr %i_atime, i32 16)
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %call5) #13
  %tobool.not.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i, label %if.end10.cleanup_crit_edge, label %if.then.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #13
  br label %cleanup

out_unlock:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mq_lock) #13
  br label %cleanup

if.then13:                                        ; preds = %if.then7, %land.lhs.true.if.then13_crit_edge
  %error.0.ph = phi i32 [ -28, %land.lhs.true.if.then13_crit_edge ], [ %18, %if.then7 ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mq_lock) #13
  tail call void @put_ipc_ns(ptr noundef nonnull %7) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %out_unlock, %if.then.i, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0.ph, %if.then13 ], [ -13, %out_unlock ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mqueue_get_inode(ptr noundef %sb, ptr nocapture noundef readonly %ipc_ns, i16 noundef zeroext %mode, ptr noundef readonly %attr) unnamed_addr #0 align 64 {
entry:
  %tmp10 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @new_inode(ptr noundef %sb) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @get_next_ino() #13
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %i_ino, align 8
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %mode, ptr %call, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fsuid, align 4
  %10 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %11 = load ptr, ptr %task, align 8
  %cred9 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred9, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fsgid, align 4
  %16 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %i_gid, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp10) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp10, ptr noundef nonnull %call) #13
  %17 = call ptr @memcpy(ptr %i_atime, ptr %tmp10, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp10) #13
  %18 = call ptr @memcpy(ptr %i_ctime, ptr %i_atime, i32 16)
  %19 = call ptr @memcpy(ptr %i_mtime, ptr %i_atime, i32 16)
  %20 = and i16 %mode, -4096
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %20, label %if.end.cleanup158_crit_edge [
    i16 -32768, label %if.then12
    i16 16384, label %if.then153
  ]

if.end.cleanup158_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup158

if.then12:                                        ; preds = %if.end
  %22 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mqueue_file_operations, ptr %22, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %24 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 80, ptr %i_size, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 -48
  call void @__raw_spin_lock_init(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @mqueue_get_inode.__key, i16 noundef signext 3) #13
  %wait_q = getelementptr i8, ptr %call, i32 784
  call void @__init_waitqueue_head(ptr noundef %wait_q, ptr noundef nonnull @.str.38, ptr noundef nonnull @mqueue_get_inode.__key.37) #13
  %list = getelementptr i8, ptr %call, i32 972
  %25 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr i8, ptr %call, i32 976
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list, ptr %prev.i, align 4
  %list23 = getelementptr i8, ptr %call, i32 992
  %27 = ptrtoint ptr %list23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list23, ptr %list23, align 4
  %prev.i238 = getelementptr i8, ptr %call, i32 996
  %28 = ptrtoint ptr %prev.i238 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list23, ptr %prev.i238, align 4
  %notify_owner = getelementptr i8, ptr %call, i32 944
  %29 = ptrtoint ptr %notify_owner to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %notify_owner, align 8
  %notify_user_ns = getelementptr i8, ptr %call, i32 952
  %30 = ptrtoint ptr %notify_user_ns to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %notify_user_ns, align 8
  %qsize = getelementptr i8, ptr %call, i32 1008
  %31 = ptrtoint ptr %qsize to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %qsize, align 8
  %ucounts = getelementptr i8, ptr %call, i32 956
  %32 = ptrtoint ptr %ucounts to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %ucounts, align 4
  %msg_tree = getelementptr i8, ptr %call, i32 836
  %mq_msg_max = getelementptr inbounds %struct.ipc_namespace, ptr %ipc_ns, i32 0, i32 17
  %33 = call ptr @memset(ptr %msg_tree, i32 0, i32 44)
  %34 = ptrtoint ptr %mq_msg_max to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mq_msg_max, align 4
  %mq_msg_default = getelementptr inbounds %struct.ipc_namespace, ptr %ipc_ns, i32 0, i32 19
  %36 = ptrtoint ptr %mq_msg_default to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mq_msg_default, align 4
  %38 = call i32 @llvm.umin.i32(i32 %35, i32 %37)
  %mq_maxmsg = getelementptr i8, ptr %call, i32 852
  %39 = ptrtoint ptr %mq_maxmsg to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %mq_maxmsg, align 4
  %mq_msgsize_max = getelementptr inbounds %struct.ipc_namespace, ptr %ipc_ns, i32 0, i32 18
  %40 = ptrtoint ptr %mq_msgsize_max to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mq_msgsize_max, align 4
  %mq_msgsize_default = getelementptr inbounds %struct.ipc_namespace, ptr %ipc_ns, i32 0, i32 20
  %42 = ptrtoint ptr %mq_msgsize_default to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mq_msgsize_default, align 4
  %44 = call i32 @llvm.umin.i32(i32 %41, i32 %43)
  %mq_msgsize = getelementptr i8, ptr %call, i32 856
  %45 = ptrtoint ptr %mq_msgsize to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %mq_msgsize, align 8
  %tobool37.not = icmp eq ptr %attr, null
  br i1 %tobool37.not, label %if.end45thread-pre-split, label %if.then38

if.then38:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %mq_maxmsg39 = getelementptr inbounds %struct.mq_attr, ptr %attr, i32 0, i32 1
  %46 = ptrtoint ptr %mq_maxmsg39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mq_maxmsg39, align 4
  %48 = ptrtoint ptr %mq_maxmsg to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %mq_maxmsg, align 4
  %mq_msgsize42 = getelementptr inbounds %struct.mq_attr, ptr %attr, i32 0, i32 2
  %49 = ptrtoint ptr %mq_msgsize42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mq_msgsize42, align 4
  %51 = ptrtoint ptr %mq_msgsize to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %mq_msgsize, align 8
  br label %if.end45

if.end45thread-pre-split:                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %mq_maxmsg to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr = load i32, ptr %mq_maxmsg, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end45thread-pre-split, %if.then38
  %53 = phi i32 [ %.pr, %if.end45thread-pre-split ], [ %47, %if.then38 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp48 = icmp slt i32 %53, 1
  br i1 %cmp48, label %if.end45.out_inode_crit_edge, label %lor.lhs.false

if.end45.out_inode_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_inode

lor.lhs.false:                                    ; preds = %if.end45
  %54 = ptrtoint ptr %mq_msgsize to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mq_msgsize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp52 = icmp slt i32 %55, 1
  br i1 %cmp52, label %lor.lhs.false.out_inode_crit_edge, label %if.end55

lor.lhs.false.out_inode_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_inode

if.end55:                                         ; preds = %lor.lhs.false
  %call56 = call zeroext i1 @capable(i32 noundef 24) #13
  %56 = ptrtoint ptr %mq_maxmsg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mq_maxmsg, align 4
  br i1 %call56, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %57)
  %cmp60 = icmp sgt i32 %57, 65536
  br i1 %cmp60, label %if.then57.out_inode_crit_edge, label %lor.lhs.false62

if.then57.out_inode_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_inode

lor.lhs.false62:                                  ; preds = %if.then57
  %58 = ptrtoint ptr %mq_msgsize to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mq_msgsize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %59)
  %cmp65 = icmp sgt i32 %59, 16777216
  br i1 %cmp65, label %lor.lhs.false62.out_inode_crit_edge, label %lor.lhs.false62.if.end82_crit_edge

lor.lhs.false62.if.end82_crit_edge:               ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

lor.lhs.false62.out_inode_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_inode

if.else:                                          ; preds = %if.end55
  %60 = ptrtoint ptr %mq_msg_max to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mq_msg_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %61)
  %cmp72 = icmp ugt i32 %57, %61
  br i1 %cmp72, label %if.else.out_inode_crit_edge, label %lor.lhs.false74

if.else.out_inode_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_inode

lor.lhs.false74:                                  ; preds = %if.else
  %62 = ptrtoint ptr %mq_msgsize to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mq_msgsize, align 8
  %64 = ptrtoint ptr %mq_msgsize_max to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mq_msgsize_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp78 = icmp ugt i32 %63, %65
  br i1 %cmp78, label %lor.lhs.false74.out_inode_crit_edge, label %lor.lhs.false74.if.end82_crit_edge

lor.lhs.false74.if.end82_crit_edge:               ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

lor.lhs.false74.out_inode_crit_edge:              ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_inode

if.end82:                                         ; preds = %lor.lhs.false74.if.end82_crit_edge, %lor.lhs.false62.if.end82_crit_edge
  %66 = ptrtoint ptr %mq_msgsize to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mq_msgsize, align 8
  %68 = ptrtoint ptr %mq_maxmsg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mq_maxmsg, align 4
  %mul237 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %69, i32 %67)
  %mul.ov = extractvalue { i32, i1 } %mul237, 1
  br i1 %mul.ov, label %if.end82.out_inode_crit_edge, label %if.end90

if.end82.out_inode_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_inode

if.end90:                                         ; preds = %if.end82
  %mul = mul i32 %69, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %69)
  %cmp96 = icmp ult i32 %69, 32768
  %cond101 = select i1 %cmp96, i32 %mul, i32 786432
  %mul107 = mul i32 %69, %67
  %add = add i32 %mul107, %mul
  %add108 = add i32 %add, %cond101
  call void @__sanitizer_cov_trace_cmp4(i32 %add108, i32 %mul107)
  %cmp109 = icmp ult i32 %add108, %mul107
  br i1 %cmp109, label %if.end90.out_inode_crit_edge, label %if.end112

if.end90.out_inode_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_inode

if.end112:                                        ; preds = %if.end90
  %70 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task, align 8
  %cred121 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 99
  %72 = ptrtoint ptr %cred121 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cred121, align 16
  %ucounts122 = getelementptr inbounds %struct.cred, ptr %73, i32 0, i32 26
  %74 = ptrtoint ptr %ucounts122 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ucounts122, align 4
  %call123 = call ptr @get_ucounts(ptr noundef %75) #13
  %76 = ptrtoint ptr %ucounts to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call123, ptr %ucounts, align 4
  %tobool126.not = icmp eq ptr %call123, null
  br i1 %tobool126.not, label %if.end112.cleanup158_crit_edge, label %if.then127

if.end112.cleanup158_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup158

if.then127:                                       ; preds = %if.end112
  call void @_raw_spin_lock(ptr noundef nonnull @mq_lock) #13
  %77 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ucounts, align 4
  %call129 = call i32 @inc_rlimit_ucounts(ptr noundef %78, i32 noundef 13, i32 noundef %add108) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call129)
  %cmp130 = icmp eq i32 %call129, 2147483647
  br i1 %cmp130, label %if.then127.cleanup_crit_edge, label %lor.lhs.false132

if.then127.cleanup_crit_edge:                     ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false132:                                 ; preds = %if.then127
  %79 = call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 111
  %83 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %84, i32 0, i32 51, i32 12
  %85 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call129, i32 %86)
  %cmp134 = icmp ugt i32 %call129, %86
  br i1 %cmp134, label %lor.lhs.false132.cleanup_crit_edge, label %cleanup.thread

lor.lhs.false132.cleanup_crit_edge:               ; preds = %lor.lhs.false132
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.thread:                                   ; preds = %lor.lhs.false132
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock(ptr noundef nonnull @mq_lock) #13
  br label %cleanup158

cleanup:                                          ; preds = %lor.lhs.false132.cleanup_crit_edge, %if.then127.cleanup_crit_edge
  %87 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ucounts, align 4
  %call138 = call zeroext i1 @dec_rlimit_ucounts(ptr noundef %88, i32 noundef 13, i32 noundef %add108) #13
  call void @_raw_spin_unlock(ptr noundef nonnull @mq_lock) #13
  %89 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ucounts, align 4
  call void @put_ucounts(ptr noundef %90) #13
  %91 = ptrtoint ptr %ucounts to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %ucounts, align 4
  br label %out_inode

if.then153:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @inc_nlink(ptr noundef nonnull %call) #13
  %i_size154 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %92 = ptrtoint ptr %i_size154 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 40, ptr %i_size154, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %93 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @mqueue_dir_inode_operations, ptr %i_op, align 8
  %94 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @simple_dir_operations, ptr %94, align 8
  br label %cleanup158

out_inode:                                        ; preds = %cleanup, %if.end90.out_inode_crit_edge, %if.end82.out_inode_crit_edge, %lor.lhs.false74.out_inode_crit_edge, %if.else.out_inode_crit_edge, %lor.lhs.false62.out_inode_crit_edge, %if.then57.out_inode_crit_edge, %lor.lhs.false.out_inode_crit_edge, %if.end45.out_inode_crit_edge
  %ret.2.ph = phi i32 [ -75, %if.end90.out_inode_crit_edge ], [ -75, %if.end82.out_inode_crit_edge ], [ -22, %if.else.out_inode_crit_edge ], [ -22, %lor.lhs.false74.out_inode_crit_edge ], [ -22, %if.then57.out_inode_crit_edge ], [ -22, %lor.lhs.false62.out_inode_crit_edge ], [ -22, %if.end45.out_inode_crit_edge ], [ -22, %lor.lhs.false.out_inode_crit_edge ], [ -24, %cleanup ]
  call void @iput(ptr noundef nonnull %call) #13
  br label %err

err:                                              ; preds = %out_inode, %entry.err_crit_edge
  %ret.3 = phi i32 [ %ret.2.ph, %out_inode ], [ -12, %entry.err_crit_edge ]
  %96 = inttoptr i32 %ret.3 to ptr
  br label %cleanup158

cleanup158:                                       ; preds = %err, %if.then153, %cleanup.thread, %if.end112.cleanup158_crit_edge, %if.end.cleanup158_crit_edge
  %retval.0 = phi ptr [ %96, %err ], [ %call, %if.end.cleanup158_crit_edge ], [ %call, %if.then153 ], [ %call, %if.end112.cleanup158_crit_edge ], [ %call, %cleanup.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_ipc_ns(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_ucounts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inc_rlimit_ucounts(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dec_rlimit_ucounts(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_ucounts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mqueue_read_file(ptr nocapture noundef readonly %filp, ptr noundef %u_data, i32 noundef %count, ptr noundef %off) #0 align 64 {
entry:
  %buffer = alloca [80 x i8], align 1
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -48
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buffer) #13
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 79)
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #13
  %qsize = getelementptr i8, ptr %1, i32 1008
  %3 = ptrtoint ptr %qsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qsize, align 8
  %notify_owner = getelementptr i8, ptr %1, i32 944
  %5 = ptrtoint ptr %notify_owner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %notify_owner, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cond.end9_crit_edge, label %land.lhs.true

entry.cond.end9_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end9

land.lhs.true:                                    ; preds = %entry
  %sigev_notify = getelementptr i8, ptr %1, i32 888
  %7 = ptrtoint ptr %sigev_notify to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sigev_notify, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %cond.true6, label %land.lhs.true.cond.end9_crit_edge

land.lhs.true.cond.end9_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end9

cond.true6:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %sigev_signo = getelementptr i8, ptr %1, i32 884
  %9 = ptrtoint ptr %sigev_signo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sigev_signo, align 4
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true6, %land.lhs.true.cond.end9_crit_edge, %entry.cond.end9_crit_edge
  %cond42 = phi i32 [ 0, %cond.true6 ], [ %8, %land.lhs.true.cond.end9_crit_edge ], [ 0, %entry.cond.end9_crit_edge ]
  %cond10 = phi i32 [ %10, %cond.true6 ], [ 0, %land.lhs.true.cond.end9_crit_edge ], [ 0, %entry.cond.end9_crit_edge ]
  %call12 = tail call i32 @pid_vnr(ptr noundef %6) #13
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buffer, i32 noundef 80, ptr noundef nonnull @.str.40, i32 noundef %4, i32 noundef %cond42, i32 noundef %cond10, i32 noundef %call12)
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #13
  %arrayidx = getelementptr inbounds [80 x i8], ptr %buffer, i32 0, i32 79
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx, align 1
  %call17 = call i32 @strlen(ptr noundef nonnull %buffer) #18
  %call18 = call i32 @simple_read_from_buffer(ptr noundef %u_data, i32 noundef %count, ptr noundef %off, ptr noundef nonnull %buffer, i32 noundef %call17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 1
  br i1 %cmp19, label %cond.end9.cleanup_crit_edge, label %if.end

cond.end9.cleanup_crit_edge:                      ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_inode.i, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %13) #13
  %14 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #13
  %15 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end9.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buffer) #13
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mqueue_poll_file(ptr noundef %filp, ptr noundef %poll_tab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %wait_q = getelementptr i8, ptr %1, i32 784
  %tobool.not.i = icmp eq ptr %poll_tab, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %poll_tab to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poll_tab, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wait_q, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %wait_q, ptr noundef nonnull %poll_tab) #13
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %1, i32 -48
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #13
  %mq_curmsgs = getelementptr i8, ptr %1, i32 860
  %4 = ptrtoint ptr %mq_curmsgs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mq_curmsgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 65
  %mq_maxmsg = getelementptr i8, ptr %1, i32 852
  %6 = ptrtoint ptr %mq_maxmsg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mq_maxmsg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp slt i32 %5, %7
  %or = or i32 %spec.select, 260
  %retval2.1 = select i1 %cmp, i32 %or, i32 %spec.select
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #13
  ret i32 %retval2.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mqueue_flush_file(ptr nocapture noundef readonly %filp, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -48
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 111
  %6 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %7, i32 0, i32 22, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %notify_owner = getelementptr i8, ptr %1, i32 944
  %10 = ptrtoint ptr %notify_owner to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %notify_owner, align 8
  %cmp = icmp eq ptr %9, %11
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @remove_notification(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #13
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remove_notification(ptr nocapture noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %notify_owner = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 8
  %0 = ptrtoint ptr %notify_owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify_owner, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sigev_notify = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %sigev_notify to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sigev_notify, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp eq i32 %3, 2
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %notify_cookie = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 13
  %4 = ptrtoint ptr %notify_cookie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notify_cookie, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 31
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %arrayidx.i, align 1
  %notify_sock = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 12
  %9 = ptrtoint ptr %notify_sock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %notify_sock, align 8
  %11 = load ptr, ptr %notify_cookie, align 4
  %call = tail call i32 @netlink_sendskb(ptr noundef %10, ptr noundef %11) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %notify_owner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %notify_owner, align 8
  tail call void @put_pid(ptr noundef %13) #13
  %notify_user_ns = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 10
  %14 = ptrtoint ptr %notify_user_ns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %notify_user_ns, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.put_user_ns.exit_crit_edge, label %land.lhs.true.i

if.end.put_user_ns.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_user_ns.exit

land.lhs.true.i:                                  ; preds = %if.end
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %15, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !223
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #13
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #13, !srcloc !224
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !206

if.end5.i.i.i.i.put_user_ns.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_user_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #13
  br label %put_user_ns.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @__put_user_ns(ptr noundef nonnull %15) #13
  br label %put_user_ns.exit

put_user_ns.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, %if.end.put_user_ns.exit_crit_edge
  %17 = ptrtoint ptr %notify_owner to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %notify_owner, align 8
  %18 = ptrtoint ptr %notify_user_ns to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %notify_user_ns, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_sendskb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_user_ns(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mqueue_create(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mqueue_create_attr(ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mqueue_unlink(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #13
  %2 = call ptr @memcpy(ptr %i_atime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #13
  %3 = call ptr @memcpy(ptr %i_mtime, ptr %i_atime, i32 16)
  %4 = call ptr @memcpy(ptr %i_ctime, ptr %i_atime, i32 16)
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size, align 8
  %sub = add i64 %6, -20
  store i64 %sub, ptr %i_size, align 8
  call void @drop_nlink(ptr noundef %1) #13
  call void @dput(ptr noundef %dentry) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_mq_timedsend(i32 noundef %mqdes, ptr noundef %u_msg_ptr, i32 noundef %msg_len, i32 noundef %msg_prio, ptr noundef readonly %ts) unnamed_addr #0 align 64 {
entry:
  %sig_i.i = alloca %struct.kernel_siginfo, align 4
  %wait = alloca %struct.ext_wait_queue, align 4
  %expires = alloca i64, align 8
  %wake_q = alloca %struct.wake_q_head, align 4
  %tmp96 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %0 = getelementptr inbounds %struct.ext_wait_queue, ptr %wait, i32 0, i32 2
  %1 = getelementptr inbounds %struct.ext_wait_queue, ptr %wait, i32 0, i32 3
  %2 = call ptr @memset(ptr %wait, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %expires) #13
  %3 = ptrtoint ptr %expires to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %expires, align 8, !annotation !210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q) #13
  %4 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1
  %5 = ptrtoint ptr %wake_q to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %wake_q, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %msg_prio)
  %cmp = icmp ugt i32 %msg_prio, 32767
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !218

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %ts, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %7)
  %.unpack = load i64, ptr %ts, align 8
  %.elt154 = getelementptr inbounds [2 x i64], ptr %ts, i32 0, i32 1
  %8 = ptrtoint ptr %.elt154 to i32
  call void @__asan_load8_noabort(i32 %8)
  %.unpack155 = load i64, ptr %.elt154, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.unpack)
  %cmp.i.i = icmp sgt i64 %.unpack, 9223372035
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.unpack155, 32
  %mul.i.i = mul i64 %.unpack, 1000000000
  %add.i.i = add i64 %ts.sroa.2.8.extract.shift.i, %mul.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %add.i.i, !prof !218
  %9 = ptrtoint ptr %expires to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %retval.0.i.i, ptr %expires, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %timeout.0 = phi ptr [ %expires, %if.then4 ], [ null, %if.end.if.end5_crit_edge ]
  %call.i = call i32 @__fdget(i32 noundef %mqdes) #13, !noalias !226
  %and.i.i = and i32 %call.i, -4
  %10 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end16, !prof !218

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %f_inode.i = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_inode.i, align 8
  %f_op = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f_op, align 4
  %cmp20.not = icmp eq ptr %14, @mqueue_file_operations
  br i1 %cmp20.not, label %if.end28, label %if.end16.out_fput_crit_edge, !prof !206

if.end16.out_fput_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fput

if.end28:                                         ; preds = %if.end16
  %add.ptr.i = getelementptr i8, ptr %12, i32 -48
  %f_mode = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 8
  %15 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_mode, align 8
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.end28.out_fput_crit_edge, label %if.end42, !prof !218

if.end28.out_fput_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fput

if.end42:                                         ; preds = %if.end28
  %mq_msgsize = getelementptr i8, ptr %12, i32 856
  %17 = ptrtoint ptr %mq_msgsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mq_msgsize, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %msg_len)
  %cmp43 = icmp ult i32 %18, %msg_len
  br i1 %cmp43, label %if.end42.out_fput_crit_edge, label %if.end51, !prof !218

if.end42.out_fput_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fput

if.end51:                                         ; preds = %if.end42
  %call52 = call ptr @load_msg(ptr noundef %u_msg_ptr, i32 noundef %msg_len) #13
  %cmp.i = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %call52 to i32
  br label %out_fput

if.end56:                                         ; preds = %if.end51
  %m_ts = getelementptr inbounds %struct.msg_msg, ptr %call52, i32 0, i32 2
  %20 = ptrtoint ptr %m_ts to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %msg_len, ptr %m_ts, align 4
  %m_type = getelementptr inbounds %struct.msg_msg, ptr %call52, i32 0, i32 1
  %21 = ptrtoint ptr %m_type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %msg_prio, ptr %m_type, align 4
  %node_cache = getelementptr i8, ptr %12, i32 844
  %22 = ptrtoint ptr %node_cache to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %node_cache, align 4
  %tobool57.not = icmp eq ptr %23, null
  br i1 %tobool57.not, label %if.then58, label %if.end56.if.end60_crit_edge

if.end56.if.end60_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 24) #19
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end56.if.end60_crit_edge
  %new_leaf.0 = phi ptr [ null, %if.end56.if.end60_crit_edge ], [ %call7.i, %if.then58 ]
  call void @_raw_spin_lock(ptr noundef %add.ptr.i) #13
  %25 = ptrtoint ptr %node_cache to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %node_cache, align 4
  %tobool62.not = icmp ne ptr %26, null
  %tobool63.not = icmp eq ptr %new_leaf.0, null
  %or.cond = select i1 %tobool62.not, i1 true, i1 %tobool63.not
  br i1 %or.cond, label %if.else, label %if.then64

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %msg_list = getelementptr inbounds %struct.posix_msg_tree_node, ptr %new_leaf.0, i32 0, i32 1
  %27 = ptrtoint ptr %msg_list to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %msg_list, ptr %msg_list, align 4
  %prev.i = getelementptr inbounds %struct.posix_msg_tree_node, ptr %new_leaf.0, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg_list, ptr %prev.i, align 8
  %29 = ptrtoint ptr %node_cache to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %new_leaf.0, ptr %node_cache, align 4
  br label %if.end66

if.else:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef %new_leaf.0) #13
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then64
  %mq_curmsgs = getelementptr i8, ptr %12, i32 860
  %30 = ptrtoint ptr %mq_curmsgs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mq_curmsgs, align 4
  %mq_maxmsg = getelementptr i8, ptr %12, i32 852
  %32 = ptrtoint ptr %mq_maxmsg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mq_maxmsg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp69 = icmp eq i32 %31, %33
  br i1 %cmp69, label %if.then70, label %if.else86

if.then70:                                        ; preds = %if.end66
  %f_flags = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 7
  %34 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %f_flags, align 4
  %and72 = and i32 %35, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.else75, label %if.then70.out_unlock_crit_edge

if.then70.out_unlock_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.else75:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  %36 = call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %40 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %wait, align 4
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call52, ptr %0, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 0, ptr %1, align 4
  %call84 = call fastcc i32 @wq_sleep(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef %timeout.0, ptr noundef nonnull %wait)
  br label %out_free

if.else86:                                        ; preds = %if.end66
  %list.i = getelementptr i8, ptr %12, i32 992
  %prev.i156 = getelementptr i8, ptr %12, i32 996
  %43 = ptrtoint ptr %prev.i156 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i156, align 4
  %cmp.i157 = icmp eq ptr %44, %list.i
  %add.ptr.i158 = getelementptr i8, ptr %44, i32 -4
  %tobool88.not166 = icmp eq ptr %add.ptr.i158, null
  %tobool88.not = or i1 %cmp.i157, %tobool88.not166
  br i1 %tobool88.not, label %if.else90, label %if.then89

if.then89:                                        ; preds = %if.else86
  %msg.i = getelementptr i8, ptr %44, i32 8
  %45 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call52, ptr %msg.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %44) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then89.list_del.exit.i.i_crit_edge

if.then89.list_del.exit.i.i_crit_edge:            ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr i8, ptr %44, i32 4
  %46 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %44, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then89.list_del.exit.i.i_crit_edge
  %52 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  %prev.i.i.i = getelementptr i8, ptr %44, i32 4
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %54 = ptrtoint ptr %add.ptr.i158 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i158, align 4
  %usage.i.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 2
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usage.i.i.i, i32 1, i32 3, i32 1) #13
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i.i, ptr %usage.i.i.i, i32 1, ptr elementtype(i32) %usage.i.i.i) #13, !srcloc !217
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %list_del.exit.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !218

list_del.exit.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %list_del.exit.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %57 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %.not.i.i.i.i.i.i = icmp sgt i32 %57, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.pipelined_send.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !206

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.pipelined_send.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipelined_send.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %list_del.exit.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %list_del.exit.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #13
  br label %pipelined_send.exit

pipelined_send.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.pipelined_send.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !229
  %state.i.i = getelementptr i8, ptr %44, i32 12
  %58 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 1, ptr %state.i.i, align 4
  call void @wake_q_add_safe(ptr noundef nonnull %wake_q, ptr noundef %55) #13
  br label %if.end95

if.else90:                                        ; preds = %if.else86
  %call91 = call fastcc i32 @msg_insert(ptr noundef %call52, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.else90.out_unlock_crit_edge

if.else90.out_unlock_crit_edge:                   ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end94:                                         ; preds = %if.else90
  %notify_owner.i = getelementptr i8, ptr %12, i32 944
  %59 = ptrtoint ptr %notify_owner.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %notify_owner.i, align 8
  %tobool.not.i = icmp eq ptr %60, null
  br i1 %tobool.not.i, label %if.end94.__do_notify.exit_crit_edge, label %land.lhs.true.i

if.end94.__do_notify.exit_crit_edge:              ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_notify.exit

land.lhs.true.i:                                  ; preds = %if.end94
  %61 = ptrtoint ptr %mq_curmsgs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mq_curmsgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.i159 = icmp eq i32 %62, 1
  br i1 %cmp.i159, label %if.then.i, label %land.lhs.true.i.__do_notify.exit_crit_edge

land.lhs.true.i.__do_notify.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_notify.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %notify.i = getelementptr i8, ptr %12, i32 880
  %sigev_notify.i = getelementptr i8, ptr %12, i32 888
  %63 = ptrtoint ptr %sigev_notify.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sigev_notify.i, align 8
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %64, label %if.then.i.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb28.i
    i32 0, label %sw.bb.i
  ]

if.then.i.sw.epilog.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sig_i.i) #13
  %66 = getelementptr inbounds %struct.anon.92, ptr %sig_i.i, i32 0, i32 3
  %67 = getelementptr inbounds %struct.anon.92, ptr %sig_i.i, i32 0, i32 3, i32 0, i32 1
  %sigev_signo.i = getelementptr i8, ptr %12, i32 884
  %68 = ptrtoint ptr %sigev_signo.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sigev_signo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool2.not.i = icmp eq i32 %69, 0
  br i1 %tobool2.not.i, label %sw.bb.i.cleanup.i_crit_edge, label %if.end.i

sw.bb.i.cleanup.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end.i:                                         ; preds = %sw.bb.i
  %70 = getelementptr inbounds %struct.anon.92, ptr %sig_i.i, i32 0, i32 3, i32 0, i32 2
  %71 = getelementptr inbounds %struct.anon.92, ptr %sig_i.i, i32 0, i32 2
  %72 = getelementptr inbounds %struct.anon.92, ptr %sig_i.i, i32 0, i32 1
  %73 = getelementptr inbounds i8, ptr %sig_i.i, i32 24
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 8)
  store i64 0, ptr %73, align 4
  %75 = ptrtoint ptr %sig_i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %69, ptr %sig_i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %72, align 4
  %77 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -3, ptr %71, align 4
  %78 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %notify.i, align 8
  %80 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %70, align 4
  %81 = call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i.i.i.i.i.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %84, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !230
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #13
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 696, ptr noundef nonnull @.str.52) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %85 = call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i.i160 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i160 to ptr
  %task7.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %task7.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %task7.i, align 8
  %89 = ptrtoint ptr %notify_owner.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %notify_owner.i, align 8
  %tobool.not.i56.i = icmp eq ptr %90, null
  br i1 %tobool.not.i56.i, label %rcu_read_lock.exit.i.ns_of_pid.exit.i_crit_edge, label %if.then.i57.i

rcu_read_lock.exit.i.ns_of_pid.exit.i_crit_edge:  ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ns_of_pid.exit.i

if.then.i57.i:                                    ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %level.i.i = getelementptr inbounds %struct.pid, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %level.i.i, align 4
  %ns1.i.i = getelementptr %struct.pid, ptr %90, i32 0, i32 7, i32 %92, i32 1
  %93 = ptrtoint ptr %ns1.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ns1.i.i, align 4
  br label %ns_of_pid.exit.i

ns_of_pid.exit.i:                                 ; preds = %if.then.i57.i, %rcu_read_lock.exit.i.ns_of_pid.exit.i_crit_edge
  %ns.0.i.i = phi ptr [ %94, %if.then.i57.i ], [ null, %rcu_read_lock.exit.i.ns_of_pid.exit.i_crit_edge ]
  %call.i58.i = call i32 @__task_pid_nr_ns(ptr noundef %88, i32 noundef 1, ptr noundef %ns.0.i.i) #13
  %95 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call.i58.i, ptr %66, align 4
  %notify_user_ns.i = getelementptr i8, ptr %12, i32 952
  %96 = ptrtoint ptr %notify_user_ns.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %notify_user_ns.i, align 8
  %98 = ptrtoint ptr %task7.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task7.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 99
  %100 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cred.i, align 16
  %uid.i = getelementptr inbounds %struct.cred, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %uid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call14.i = call i32 @from_kuid_munged(ptr noundef %97, [1 x i32] %.fca.0.insert.i) #13
  %103 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call14.i, ptr %67, align 4
  %104 = ptrtoint ptr %notify_owner.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %notify_owner.i, align 8
  %call17.i = call ptr @pid_task(ptr noundef %105, i32 noundef 1) #13
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %ns_of_pid.exit.i.if.end26.i_crit_edge, label %land.lhs.true19.i

ns_of_pid.exit.i.if.end26.i_crit_edge:            ; preds = %ns_of_pid.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

land.lhs.true19.i:                                ; preds = %ns_of_pid.exit.i
  %self_exec_id.i = getelementptr inbounds %struct.task_struct, ptr %call17.i, i32 0, i32 126
  %106 = ptrtoint ptr %self_exec_id.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %self_exec_id.i, align 16
  %notify_self_exec_id.i = getelementptr i8, ptr %12, i32 948
  %108 = ptrtoint ptr %notify_self_exec_id.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %notify_self_exec_id.i, align 4
  %conv.i = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %conv.i)
  %cmp20.i = icmp eq i64 %107, %conv.i
  br i1 %cmp20.i, label %if.then22.i, label %land.lhs.true19.i.if.end26.i_crit_edge

land.lhs.true19.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

if.then22.i:                                      ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %sigev_signo.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sigev_signo.i, align 4
  %call25.i = call i32 @do_send_sig_info(i32 noundef %111, ptr noundef nonnull %sig_i.i, ptr noundef nonnull %call17.i, i32 noundef 1) #13
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then22.i, %land.lhs.true19.i.if.end26.i_crit_edge, %ns_of_pid.exit.i.if.end26.i_crit_edge
  %call.i59.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i59.i, label %if.end26.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i62.i

if.end26.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i62.i:                              ; preds = %if.end26.i
  %call1.i60.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60.i)
  %tobool.not.i61.i = icmp eq i32 %call1.i60.i, 0
  br i1 %tobool.not.i61.i, label %land.lhs.true.i62.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i64.i

land.lhs.true.i62.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i64.i:                             ; preds = %land.lhs.true.i62.i
  %.b4.i63.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i63.i, label %land.lhs.true2.i64.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i65.i

land.lhs.true2.i64.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i65.i:                                    ; preds = %land.lhs.true2.i64.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 724, ptr noundef nonnull @.str.53) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i65.i, %land.lhs.true2.i64.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i62.i.rcu_read_unlock.exit.i_crit_edge, %if.end26.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !231
  %112 = call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i.i.i.i.i66.i = and i32 %112, -16384
  %113 = inttoptr i32 %and.i.i.i.i.i66.i to ptr
  %preempt_count.i.i.i.i67.i = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %preempt_count.i.i.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %preempt_count.i.i.i.i67.i, align 4
  %sub.i.i.i.i = add i32 %115, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i67.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %rcu_read_unlock.exit.i, %sw.bb.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sig_i.i) #13
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %notify_cookie.i = getelementptr i8, ptr %12, i32 964
  %116 = ptrtoint ptr %notify_cookie.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %notify_cookie.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %117, i32 0, i32 19
  %118 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %119, i32 31
  %120 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %arrayidx.i.i, align 1
  %notify_sock.i = getelementptr i8, ptr %12, i32 960
  %121 = ptrtoint ptr %notify_sock.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %notify_sock.i, align 8
  %123 = load ptr, ptr %notify_cookie.i, align 4
  %call30.i = call i32 @netlink_sendskb(ptr noundef %122, ptr noundef %123) #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb28.i, %cleanup.i, %if.then.i.sw.epilog.i_crit_edge
  %124 = ptrtoint ptr %notify_owner.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %notify_owner.i, align 8
  call void @put_pid(ptr noundef %125) #13
  %notify_user_ns32.i = getelementptr i8, ptr %12, i32 952
  %126 = ptrtoint ptr %notify_user_ns32.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %notify_user_ns32.i, align 8
  %tobool.not.i68.i = icmp eq ptr %127, null
  br i1 %tobool.not.i68.i, label %sw.epilog.i.put_user_ns.exit.i_crit_edge, label %land.lhs.true.i69.i

sw.epilog.i.put_user_ns.exit.i_crit_edge:         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_user_ns.exit.i

land.lhs.true.i69.i:                              ; preds = %sw.epilog.i
  %count.i.i = getelementptr inbounds %struct.user_namespace, ptr %127, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !223
  call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #13
  %128 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #13, !srcloc !224
  %asmresult.i.i.i.i.i.i.i.i161 = extractvalue { i32, i32, i32 } %128, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i161)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i161, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i70.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i69.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i161)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i161, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.put_user_ns.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !206

if.end5.i.i.i.i.i.put_user_ns.exit.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_user_ns.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef 3) #13
  br label %put_user_ns.exit.i

if.then.i70.i:                                    ; preds = %land.lhs.true.i69.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @__put_user_ns(ptr noundef nonnull %127) #13
  br label %put_user_ns.exit.i

put_user_ns.exit.i:                               ; preds = %if.then.i70.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.put_user_ns.exit.i_crit_edge, %sw.epilog.i.put_user_ns.exit.i_crit_edge
  %129 = ptrtoint ptr %notify_owner.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %notify_owner.i, align 8
  %130 = ptrtoint ptr %notify_user_ns32.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %notify_user_ns32.i, align 8
  br label %__do_notify.exit

__do_notify.exit:                                 ; preds = %put_user_ns.exit.i, %land.lhs.true.i.__do_notify.exit_crit_edge, %if.end94.__do_notify.exit_crit_edge
  %wait_q.i = getelementptr i8, ptr %12, i32 784
  call void @__wake_up(ptr noundef %wait_q.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %if.end95

if.end95:                                         ; preds = %__do_notify.exit, %pipelined_send.exit
  %i_atime = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp96) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp96, ptr noundef %12) #13
  %131 = call ptr @memcpy(ptr %i_ctime, ptr %tmp96, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp96) #13
  %132 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %133 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end95, %if.else90.out_unlock_crit_edge, %if.then70.out_unlock_crit_edge
  %ret.1 = phi i32 [ 0, %if.end95 ], [ %call91, %if.else90.out_unlock_crit_edge ], [ -11, %if.then70.out_unlock_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #13
  call void @wake_up_q(ptr noundef nonnull %wake_q) #13
  br label %out_free

out_free:                                         ; preds = %out_unlock, %if.else75
  %ret.2 = phi i32 [ %ret.1, %out_unlock ], [ %call84, %if.else75 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool99.not = icmp eq i32 %ret.2, 0
  br i1 %tobool99.not, label %out_free.out_fput_crit_edge, label %if.then100

out_free.out_fput_crit_edge:                      ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fput

if.then100:                                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #15
  call void @free_msg(ptr noundef %call52) #13
  br label %out_fput

out_fput:                                         ; preds = %if.then100, %out_free.out_fput_crit_edge, %if.then54, %if.end42.out_fput_crit_edge, %if.end28.out_fput_crit_edge, %if.end16.out_fput_crit_edge
  %ret.3 = phi i32 [ %19, %if.then54 ], [ %ret.2, %if.then100 ], [ 0, %out_free.out_fput_crit_edge ], [ -9, %if.end16.out_fput_crit_edge ], [ -9, %if.end28.out_fput_crit_edge ], [ -90, %if.end42.out_fput_crit_edge ]
  %and.i162 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162)
  %tobool.not.i163 = icmp eq i32 %and.i162, 0
  br i1 %tobool.not.i163, label %out_fput.cleanup_crit_edge, label %if.then.i164

out_fput.cleanup_crit_edge:                       ; preds = %out_fput
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i164:                                     ; preds = %out_fput
  call void @__sanitizer_cov_trace_pc() #15
  call void @fput(ptr noundef nonnull %10) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i164, %out_fput.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -9, %if.end5.cleanup_crit_edge ], [ %ret.3, %out_fput.cleanup_crit_edge ], [ %ret.3, %if.then.i164 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %expires) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_msg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wq_sleep(ptr noundef %info, i32 noundef %sr, ptr noundef %timeout, ptr noundef %ewp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %list.i = getelementptr %struct.mqueue_inode_info, ptr %info, i32 0, i32 14, i32 %sr, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %list.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %walk.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %1 = ptrtoint ptr %walk.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %walk.0.i, align 4
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prio.i, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task5.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task5.i, align 8
  %prio6.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %prio6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prio6.i, align 8
  %cmp7.not.i = icmp sgt i32 %4, %10
  br i1 %cmp7.not.i, label %for.body.i.for.cond.i_crit_edge, label %if.then.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %list8.i = getelementptr inbounds %struct.ext_wait_queue, ptr %ewp, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list8.i, ptr noundef %12, ptr noundef %.pn.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.wq_add.exit_crit_edge

if.then.i.wq_add.exit_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wq_add.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list8.i, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %list8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.pn.i, ptr %list8.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ext_wait_queue, ptr %ewp, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list8.i, ptr %12, align 4
  br label %wq_add.exit

for.end.i:                                        ; preds = %for.cond.i
  %list15.i = getelementptr inbounds %struct.ext_wait_queue, ptr %ewp, i32 0, i32 1
  %prev.i27.i = getelementptr %struct.mqueue_inode_info, ptr %info, i32 0, i32 14, i32 %sr, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i27.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i27.i, align 4
  %call.i.i28.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list15.i, ptr noundef %18, ptr noundef %list.i) #13
  br i1 %call.i.i28.i, label %if.end.i.i30.i, label %for.end.i.wq_add.exit_crit_edge

for.end.i.wq_add.exit_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wq_add.exit

if.end.i.i30.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %prev.i27.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list15.i, ptr %prev.i27.i, align 4
  %20 = ptrtoint ptr %list15.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list.i, ptr %list15.i, align 4
  %prev3.i.i29.i = getelementptr inbounds %struct.ext_wait_queue, ptr %ewp, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev3.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i29.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %list15.i, ptr %18, align 4
  br label %wq_add.exit

wq_add.exit:                                      ; preds = %if.end.i.i30.i, %for.end.i.wq_add.exit_crit_edge, %if.end.i.i.i, %if.then.i.wq_add.exit_crit_edge
  %state = getelementptr inbounds %struct.ext_wait_queue, ptr %ewp, i32 0, i32 3
  br label %__here

__here:                                           ; preds = %if.end79.__here_crit_edge, %wq_add.exit
  %23 = tail call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 212
  %27 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 ptrtoint (ptr blockaddress(@wq_sleep, %__here) to i32), ptr %task_state_change, align 4
  %28 = load ptr, ptr %task, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 1, ptr %28, align 128
  tail call void @_raw_spin_unlock(ptr noundef %info) #13
  %call52 = tail call i32 @schedule_hrtimeout_range_clock(ptr noundef %timeout, i64 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp = icmp eq i32 %31, 1
  br i1 %cmp, label %do.end61, label %if.end64

do.end61:                                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !232
  br label %out

if.end64:                                         ; preds = %__here
  tail call void @_raw_spin_lock(ptr noundef %info) #13
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp71 = icmp eq i32 %33, 1
  br i1 %cmp71, label %if.end64.out_unlock_crit_edge, label %if.end73

if.end64.out_unlock_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end73:                                         ; preds = %if.end64
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stack.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %40 = and i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end73.for.end_crit_edge, !prof !206

if.end73.for.end_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

signal_pending.exit:                              ; preds = %if.end73
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %37, align 4
  %and1.i.i.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool77.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool77.not, label %if.end79, label %signal_pending.exit.for.end_crit_edge

signal_pending.exit.for.end_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end79:                                         ; preds = %signal_pending.exit
  %cmp80 = icmp eq i32 %call52, 0
  br i1 %cmp80, label %if.end79.for.end_crit_edge, label %if.end79.__here_crit_edge

if.end79.__here_crit_edge:                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

if.end79.for.end_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end79.for.end_crit_edge, %signal_pending.exit.for.end_crit_edge, %if.end73.for.end_crit_edge
  %retval1.0 = phi i32 [ -512, %signal_pending.exit.for.end_crit_edge ], [ -110, %if.end79.for.end_crit_edge ], [ -512, %if.end73.for.end_crit_edge ]
  %list = getelementptr inbounds %struct.ext_wait_queue, ptr %ewp, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i92 = getelementptr inbounds %struct.ext_wait_queue, ptr %ewp, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i.i92 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i92, align 4
  %45 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %49 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.ext_wait_queue, ptr %ewp, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %list_del.exit, %if.end64.out_unlock_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %list_del.exit ], [ 0, %if.end64.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %info) #13
  br label %out

out:                                              ; preds = %out_unlock, %do.end61
  %retval1.2 = phi i32 [ 0, %do.end61 ], [ %retval1.1, %out_unlock ]
  ret i32 %retval1.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msg_insert(ptr noundef %msg, ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_tree = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %msg_tree to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg_tree, align 4
  %tobool.not64 = icmp eq ptr %1, null
  br i1 %tobool.not64, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %m_type = getelementptr inbounds %struct.msg_msg, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %m_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_type, align 4
  br label %while.body

while.body:                                       ; preds = %if.else.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %1, %while.body.lr.ph ], [ %8, %if.else.while.body_crit_edge ]
  %rightmost.0.off065 = phi i1 [ true, %while.body.lr.ph ], [ %rightmost.1.off0, %if.else.while.body_crit_edge ]
  %priority = getelementptr inbounds %struct.posix_msg_tree_node, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %priority, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp = icmp eq i32 %6, %3
  br i1 %cmp, label %while.body.insert_msg_crit_edge, label %if.else, !prof !206

while.body.insert_msg_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %insert_msg

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %6)
  %cmp5 = icmp slt i32 %3, %6
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  %not.cmp5 = xor i1 %cmp5, true
  %rightmost.1.off0 = select i1 %not.cmp5, i1 %rightmost.0.off065, i1 false
  %p.1 = select i1 %cmp5, ptr %rb_left, ptr %rb_right
  %7 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.le = ptrtoint ptr %4 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %rightmost.0.off0.lcssa = phi i1 [ %rightmost.1.off0, %while.cond.while.end_crit_edge ], [ true, %entry.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %msg_tree, %entry.while.end_crit_edge ]
  %node_cache = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 5
  %9 = ptrtoint ptr %node_cache to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node_cache, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %if.else13, label %if.then10

if.then10:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %node_cache to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %node_cache, align 4
  br label %if.end17

if.else13:                                        ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2592, i32 noundef 24) #19
  %tobool14.not = icmp eq ptr %call7.i, null
  br i1 %tobool14.not, label %if.else13.cleanup_crit_edge, label %if.end16

if.else13.cleanup_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  %msg_list = getelementptr inbounds %struct.posix_msg_tree_node, ptr %call7.i, i32 0, i32 1
  %13 = ptrtoint ptr %msg_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg_list, ptr %msg_list, align 4
  %prev.i = getelementptr inbounds %struct.posix_msg_tree_node, ptr %call7.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg_list, ptr %prev.i, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then10
  %leaf.0 = phi ptr [ %10, %if.then10 ], [ %call7.i, %if.end16 ]
  %m_type18 = getelementptr inbounds %struct.msg_msg, ptr %msg, i32 0, i32 1
  %15 = ptrtoint ptr %m_type18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_type18, align 4
  %priority19 = getelementptr inbounds %struct.posix_msg_tree_node, ptr %leaf.0, i32 0, i32 2
  %17 = ptrtoint ptr %priority19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %priority19, align 4
  br i1 %rightmost.0.off0.lcssa, label %if.then21, label %if.end17.if.end23_crit_edge

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %msg_tree_rightmost = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 4
  %18 = ptrtoint ptr %msg_tree_rightmost to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %leaf.0, ptr %msg_tree_rightmost, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end17.if.end23_crit_edge
  %19 = ptrtoint ptr %leaf.0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %parent.0.lcssa, ptr %leaf.0, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %leaf.0, i32 0, i32 1
  %20 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %leaf.0, i32 0, i32 2
  %21 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rb_left.i, align 4
  %22 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %leaf.0, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %leaf.0, ptr noundef %msg_tree) #13
  br label %insert_msg

insert_msg:                                       ; preds = %if.end23, %while.body.insert_msg_crit_edge
  %leaf.1 = phi ptr [ %leaf.0, %if.end23 ], [ %4, %while.body.insert_msg_crit_edge ]
  %mq_curmsgs = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 6, i32 3
  %23 = ptrtoint ptr %mq_curmsgs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mq_curmsgs, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %mq_curmsgs, align 4
  %m_ts = getelementptr inbounds %struct.msg_msg, ptr %msg, i32 0, i32 2
  %25 = ptrtoint ptr %m_ts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %m_ts, align 4
  %qsize = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 15
  %27 = ptrtoint ptr %qsize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qsize, align 8
  %add = add i32 %28, %26
  store i32 %add, ptr %qsize, align 8
  %msg_list27 = getelementptr inbounds %struct.posix_msg_tree_node, ptr %leaf.1, i32 0, i32 1
  %prev.i59 = getelementptr inbounds %struct.posix_msg_tree_node, ptr %leaf.1, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i59, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %30, ptr noundef %msg_list27) #13
  br i1 %call.i.i, label %if.end.i.i, label %insert_msg.cleanup_crit_edge

insert_msg.cleanup_crit_edge:                     ; preds = %insert_msg
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %insert_msg
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg, ptr %prev.i59, align 4
  %32 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg_list27, ptr %msg, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %msg, ptr %30, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %insert_msg.cleanup_crit_edge, %if.else13.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.else13.cleanup_crit_edge ], [ 0, %insert_msg.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_msg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout_range_clock(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add_safe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_send_sig_info(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_mq_timedreceive(i32 noundef %mqdes, ptr noundef %u_msg_ptr, i32 noundef %msg_len, ptr noundef %u_msg_prio, ptr noundef readonly %ts) unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.ext_wait_queue, align 4
  %expires = alloca i64, align 8
  %wake_q = alloca %struct.wake_q_head, align 4
  %tmp73 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %0 = getelementptr inbounds %struct.ext_wait_queue, ptr %wait, i32 0, i32 2
  %1 = getelementptr inbounds %struct.ext_wait_queue, ptr %wait, i32 0, i32 3
  %2 = call ptr @memset(ptr %wait, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %expires) #13
  %3 = ptrtoint ptr %expires to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %expires, align 8, !annotation !210
  %tobool.not = icmp eq ptr %ts, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %4)
  %.unpack = load i64, ptr %ts, align 8
  %.elt125 = getelementptr inbounds [2 x i64], ptr %ts, i32 0, i32 1
  %5 = ptrtoint ptr %.elt125 to i32
  call void @__asan_load8_noabort(i32 %5)
  %.unpack126 = load i64, ptr %.elt125, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.unpack)
  %cmp.i.i = icmp sgt i64 %.unpack, 9223372035
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.unpack126, 32
  %mul.i.i = mul i64 %.unpack, 1000000000
  %add.i.i = add i64 %ts.sroa.2.8.extract.shift.i, %mul.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %add.i.i, !prof !218
  %6 = ptrtoint ptr %expires to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %retval.0.i.i, ptr %expires, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %timeout.0 = phi ptr [ %expires, %if.then ], [ null, %entry.if.end_crit_edge ]
  %call.i = tail call i32 @__fdget(i32 noundef %mqdes) #13, !noalias !233
  %and.i.i = and i32 %call.i, -4
  %7 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not, label %if.end.out_crit_edge, label %if.end6, !prof !218

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end6:                                          ; preds = %if.end
  %f_inode.i = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_inode.i, align 8
  %f_op = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_op, align 4
  %cmp.not = icmp eq ptr %11, @mqueue_file_operations
  br i1 %cmp.not, label %if.end17, label %if.end6.out_fput_crit_edge, !prof !206

if.end6.out_fput_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fput

if.end17:                                         ; preds = %if.end6
  %add.ptr.i = getelementptr i8, ptr %9, i32 -48
  %f_mode = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 8
  %12 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f_mode, align 8
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end17.out_fput_crit_edge, label %if.end31, !prof !218

if.end17.out_fput_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fput

if.end31:                                         ; preds = %if.end17
  %mq_msgsize = getelementptr i8, ptr %9, i32 856
  %14 = ptrtoint ptr %mq_msgsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mq_msgsize, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %msg_len)
  %cmp32 = icmp ugt i32 %15, %msg_len
  br i1 %cmp32, label %if.end31.out_fput_crit_edge, label %if.end40, !prof !218

if.end31.out_fput_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fput

if.end40:                                         ; preds = %if.end31
  %node_cache = getelementptr i8, ptr %9, i32 844
  %16 = ptrtoint ptr %node_cache to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %node_cache, align 4
  %tobool41.not = icmp eq ptr %17, null
  br i1 %tobool41.not, label %if.then42, label %if.end40.if.end44_crit_edge

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 24) #19
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40.if.end44_crit_edge
  %new_leaf.0 = phi ptr [ null, %if.end40.if.end44_crit_edge ], [ %call7.i, %if.then42 ]
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #13
  %19 = ptrtoint ptr %node_cache to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %node_cache, align 4
  %tobool46.not = icmp ne ptr %20, null
  %tobool47.not = icmp eq ptr %new_leaf.0, null
  %or.cond = select i1 %tobool46.not, i1 true, i1 %tobool47.not
  br i1 %or.cond, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %msg_list = getelementptr inbounds %struct.posix_msg_tree_node, ptr %new_leaf.0, i32 0, i32 1
  %21 = ptrtoint ptr %msg_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg_list, ptr %msg_list, align 4
  %prev.i = getelementptr inbounds %struct.posix_msg_tree_node, ptr %new_leaf.0, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg_list, ptr %prev.i, align 8
  %23 = ptrtoint ptr %node_cache to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %new_leaf.0, ptr %node_cache, align 4
  br label %if.end50

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %new_leaf.0) #13
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then48
  %mq_curmsgs = getelementptr i8, ptr %9, i32 860
  %24 = ptrtoint ptr %mq_curmsgs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mq_curmsgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp52 = icmp eq i32 %25, 0
  br i1 %cmp52, label %if.then53, label %if.else70

if.then53:                                        ; preds = %if.end50
  %f_flags = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 7
  %26 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %f_flags, align 4
  %and55 = and i32 %27, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end75, label %if.end75.thread140

if.end75.thread140:                               ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #13
  br label %out_fput

if.else70:                                        ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q) #13
  %28 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1
  %29 = ptrtoint ptr %wake_q to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %wake_q, ptr %28, align 4
  %call72 = call fastcc ptr @msg_get(ptr noundef %add.ptr.i)
  %i_atime = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp73) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp73, ptr noundef %9) #13
  %31 = call ptr @memcpy(ptr %i_ctime, ptr %tmp73, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp73) #13
  %32 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %33 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %list.i.i = getelementptr i8, ptr %9, i32 972
  %prev.i.i = getelementptr i8, ptr %9, i32 976
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.i128 = icmp eq ptr %35, %list.i.i
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 -4
  %tobool.not11.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i = or i1 %cmp.i.i128, %tobool.not11.i
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #15
  %wait_q.i = getelementptr i8, ptr %9, i32 784
  call void @__wake_up(ptr noundef %wait_q.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %if.end75.thread

if.end.i:                                         ; preds = %if.else70
  %msg.i = getelementptr i8, ptr %35, i32 8
  %36 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %msg.i, align 4
  %call1.i = call fastcc i32 @msg_insert(ptr noundef %37, ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.end75.thread_crit_edge

if.end.i.if.end75.thread_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75.thread

if.end4.i:                                        ; preds = %if.end.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end4.i.list_del.exit.i.i_crit_edge

if.end4.i.list_del.exit.i.i_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr i8, ptr %35, i32 4
  %38 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i.i, align 4
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end4.i.list_del.exit.i.i_crit_edge
  %44 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  %prev.i.i.i = getelementptr i8, ptr %35, i32 4
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %46 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i.i, align 4
  %usage.i.i.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 2
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usage.i.i.i, i32 1, i32 3, i32 1) #13
  %48 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i.i, ptr %usage.i.i.i, i32 1, ptr elementtype(i32) %usage.i.i.i) #13, !srcloc !217
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %list_del.exit.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !218

list_del.exit.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %list_del.exit.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %49 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %.not.i.i.i.i.i.i = icmp sgt i32 %49, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.__pipelined_op.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !206

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.__pipelined_op.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__pipelined_op.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %list_del.exit.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %list_del.exit.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #13
  br label %__pipelined_op.exit.i

__pipelined_op.exit.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.__pipelined_op.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !229
  %state.i.i = getelementptr i8, ptr %35, i32 12
  %50 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 1, ptr %state.i.i, align 4
  call void @wake_q_add_safe(ptr noundef nonnull %wake_q, ptr noundef %47) #13
  br label %if.end75.thread

if.end75.thread:                                  ; preds = %__pipelined_op.exit.i, %if.end.i.if.end75.thread_crit_edge, %if.then.i
  call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #13
  call void @wake_up_q(ptr noundef nonnull %wake_q) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q) #13
  br label %if.then77

if.end75:                                         ; preds = %if.then53
  %51 = tail call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i127 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i127 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task, align 8
  %55 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %wait, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 0, ptr %1, align 4
  %call68 = call fastcc i32 @wq_sleep(ptr noundef %add.ptr.i, i32 noundef 1, ptr noundef %timeout.0, ptr noundef nonnull %wait)
  %57 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp76 = icmp eq i32 %call68, 0
  br i1 %cmp76, label %if.end75.if.then77_crit_edge, label %if.end75.out_fput_crit_edge

if.end75.out_fput_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fput

if.end75.if.then77_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then77

if.then77:                                        ; preds = %if.end75.if.then77_crit_edge, %if.end75.thread
  %msg_ptr.0136 = phi ptr [ %call72, %if.end75.thread ], [ %58, %if.end75.if.then77_crit_edge ]
  %m_ts = getelementptr inbounds %struct.msg_msg, ptr %msg_ptr.0136, i32 0, i32 2
  %59 = ptrtoint ptr %m_ts to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %m_ts, align 4
  %tobool78.not = icmp eq ptr %u_msg_prio, null
  br i1 %tobool78.not, label %if.then77.lor.lhs.false_crit_edge, label %land.lhs.true79

if.then77.lor.lhs.false_crit_edge:                ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true79:                                  ; preds = %if.then77
  %m_type = getelementptr inbounds %struct.msg_msg, ptr %msg_ptr.0136, i32 0, i32 1
  %61 = ptrtoint ptr %m_type to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %m_type, align 4
  call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 1261) #13
  %63 = call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 4
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !207
  %and.i = and i32 %65, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !209
  %66 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %u_msg_prio, i32 %62, i32 -1226833921) #13, !srcloc !236
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #13, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool86.not = icmp eq i32 %66, 0
  br i1 %tobool86.not, label %land.lhs.true79.lor.lhs.false_crit_edge, label %land.lhs.true79.if.then90_crit_edge

land.lhs.true79.if.then90_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then90

land.lhs.true79.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true79.lor.lhs.false_crit_edge, %if.then77.lor.lhs.false_crit_edge
  %67 = ptrtoint ptr %m_ts to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %m_ts, align 4
  %call88 = call i32 @store_msg(ptr noundef %u_msg_ptr, ptr noundef %msg_ptr.0136, i32 noundef %68) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %lor.lhs.false.if.end91_crit_edge, label %lor.lhs.false.if.then90_crit_edge

lor.lhs.false.if.then90_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then90

lor.lhs.false.if.end91_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

if.then90:                                        ; preds = %lor.lhs.false.if.then90_crit_edge, %land.lhs.true79.if.then90_crit_edge
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %lor.lhs.false.if.end91_crit_edge
  %ret.1 = phi i32 [ -14, %if.then90 ], [ %60, %lor.lhs.false.if.end91_crit_edge ]
  call void @free_msg(ptr noundef %msg_ptr.0136) #13
  br label %out_fput

out_fput:                                         ; preds = %if.end91, %if.end75.out_fput_crit_edge, %if.end75.thread140, %if.end31.out_fput_crit_edge, %if.end17.out_fput_crit_edge, %if.end6.out_fput_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.end91 ], [ %call68, %if.end75.out_fput_crit_edge ], [ -9, %if.end6.out_fput_crit_edge ], [ -9, %if.end17.out_fput_crit_edge ], [ -90, %if.end31.out_fput_crit_edge ], [ -11, %if.end75.thread140 ]
  %and.i129 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129)
  %tobool.not.i130 = icmp eq i32 %and.i129, 0
  br i1 %tobool.not.i130, label %out_fput.out_crit_edge, label %if.then.i131

out_fput.out_crit_edge:                           ; preds = %out_fput
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then.i131:                                     ; preds = %out_fput
  call void @__sanitizer_cov_trace_pc() #15
  call void @fput(ptr noundef nonnull %7) #13
  br label %out

out:                                              ; preds = %if.then.i131, %out_fput.out_crit_edge, %if.end.out_crit_edge
  %ret.3 = phi i32 [ -9, %if.end.out_crit_edge ], [ %ret.2, %out_fput.out_crit_edge ], [ %ret.2, %if.then.i131 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %expires) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret i32 %ret.3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @msg_get(ptr noundef %info) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %msg_tree_rightmost = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 4
  %0 = ptrtoint ptr %msg_tree_rightmost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg_tree_rightmost, align 8
  %tobool.not95 = icmp eq ptr %1, null
  br i1 %tobool.not95, label %entry.if.then_crit_edge, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  br label %if.end19

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %if.end49.if.then_crit_edge, %entry.if.then_crit_edge
  %mq_curmsgs = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %mq_curmsgs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mq_curmsgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %land.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.end:                                         ; preds = %if.then
  %.b87 = load i1, ptr @msg_get.__already_done, align 1
  br i1 %.b87, label %land.end.if.end_crit_edge, label %if.then8, !prof !206

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @msg_get.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #20
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.end.if.end_crit_edge
  %4 = ptrtoint ptr %mq_curmsgs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mq_curmsgs, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end49.if.end19_crit_edge, %entry.if.end19_crit_edge
  %5 = phi ptr [ %9, %if.end49.if.end19_crit_edge ], [ %1, %entry.if.end19_crit_edge ]
  %msg_list = getelementptr inbounds %struct.posix_msg_tree_node, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %msg_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %msg_list, align 4
  %cmp.i.not = icmp eq ptr %7, %msg_list
  br i1 %cmp.i.not, label %land.end36, label %if.else, !prof !218

land.end36:                                       ; preds = %if.end19
  %.b8688 = load i1, ptr @msg_get.__already_done.59, align 1
  br i1 %.b8688, label %land.end36.if.end49_crit_edge, label %if.then43, !prof !206

land.end36.if.end49_crit_edge:                    ; preds = %land.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then43:                                        ; preds = %land.end36
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @msg_get.__already_done.59, align 1
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #20
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %land.end36.if.end49_crit_edge
  tail call fastcc void @msg_tree_erase(ptr noundef nonnull %5, ptr noundef %info)
  %8 = ptrtoint ptr %msg_tree_rightmost to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msg_tree_rightmost, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end49.if.then_crit_edge, label %if.end49.if.end19_crit_edge

if.end49.if.end19_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.end49.if.then_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.else:                                          ; preds = %if.end19
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %18 = ptrtoint ptr %msg_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %msg_list, align 4
  %cmp.i89.not = icmp eq ptr %19, %msg_list
  br i1 %cmp.i89.not, label %if.then64, label %list_del.exit.if.end66_crit_edge

list_del.exit.if.end66_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then64:                                        ; preds = %list_del.exit
  %20 = ptrtoint ptr %msg_tree_rightmost to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %msg_tree_rightmost, align 8
  %cmp.i91 = icmp eq ptr %21, %5
  br i1 %cmp.i91, label %if.then.i, label %if.then64.if.end.i_crit_edge

if.then64.if.end.i_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @rb_prev(ptr noundef nonnull %5) #13
  %22 = ptrtoint ptr %msg_tree_rightmost to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %msg_tree_rightmost, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then64.if.end.i_crit_edge
  %msg_tree.i = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 3
  tail call void @rb_erase(ptr noundef nonnull %5, ptr noundef %msg_tree.i) #13
  %node_cache.i = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 5
  %23 = ptrtoint ptr %node_cache.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %node_cache.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %5) #13
  br label %if.end66

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %node_cache.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %5, ptr %node_cache.i, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else.i, %if.then2.i, %list_del.exit.if.end66_crit_edge
  %mq_curmsgs68 = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 6, i32 3
  %26 = ptrtoint ptr %mq_curmsgs68 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mq_curmsgs68, align 4
  %dec = add i32 %27, -1
  store i32 %dec, ptr %mq_curmsgs68, align 4
  %m_ts = getelementptr inbounds %struct.msg_msg, ptr %7, i32 0, i32 2
  %28 = ptrtoint ptr %m_ts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %m_ts, align 4
  %qsize = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 15
  %30 = ptrtoint ptr %qsize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qsize, align 8
  %sub = sub i32 %31, %29
  store i32 %sub, ptr %qsize, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.end66 ], [ null, %if.end ], [ null, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @store_msg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msg_tree_erase(ptr noundef %leaf, ptr noundef %info) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %msg_tree_rightmost = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 4
  %0 = ptrtoint ptr %msg_tree_rightmost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg_tree_rightmost, align 8
  %cmp = icmp eq ptr %1, %leaf
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call ptr @rb_prev(ptr noundef %leaf) #13
  %2 = ptrtoint ptr %msg_tree_rightmost to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %msg_tree_rightmost, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %msg_tree = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 3
  tail call void @rb_erase(ptr noundef %leaf, ptr noundef %msg_tree) #13
  %node_cache = getelementptr inbounds %struct.mqueue_inode_info, ptr %info, i32 0, i32 5
  %3 = ptrtoint ptr %node_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %node_cache, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %leaf) #13
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %node_cache to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %leaf, ptr %node_cache, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlink_getsockbyfilp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_attachskb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_detachskb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fs_context_for_mount(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_mount(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fs_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mqueue_init_fs_context(ptr nocapture noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !195) #13
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
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.get_ipc_ns.exit_crit_edge, label %if.then.i

if.end.get_ipc_ns.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_ipc_ns.exit

if.then.i:                                        ; preds = %if.end
  %count.i = getelementptr inbounds %struct.ipc_namespace, ptr %8, i32 0, i32 24, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #13
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #13, !srcloc !217
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !218

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_ipc_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !206

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_ipc_ns.exit_crit_edge:        ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_ipc_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #13
  br label %get_ipc_ns.exit

get_ipc_ns.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_ipc_ns.exit_crit_edge, %if.end.get_ipc_ns.exit_crit_edge
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %call7.i.i, align 8
  %user_ns = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 6
  %12 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns, align 4
  %tobool.not.i14 = icmp eq ptr %13, null
  br i1 %tobool.not.i14, label %get_ipc_ns.exit.put_user_ns.exit_crit_edge, label %land.lhs.true.i

get_ipc_ns.exit.put_user_ns.exit_crit_edge:       ; preds = %get_ipc_ns.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_user_ns.exit

land.lhs.true.i:                                  ; preds = %get_ipc_ns.exit
  %count.i15 = getelementptr inbounds %struct.user_namespace, ptr %13, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i15, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !223
  tail call void @llvm.prefetch.p0(ptr %count.i15, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i15, ptr %count.i15, i32 1, ptr elementtype(i32) %count.i15) #13, !srcloc !224
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i18, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i17 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i17, label %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !206

if.end5.i.i.i.i.put_user_ns.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_user_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %count.i15, i32 noundef 3) #13
  br label %put_user_ns.exit

if.then.i18:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @__put_user_ns(ptr noundef nonnull %13) #13
  br label %put_user_ns.exit

put_user_ns.exit:                                 ; preds = %if.then.i18, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, %get_ipc_ns.exit.put_user_ns.exit_crit_edge
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  %user_ns5 = getelementptr inbounds %struct.ipc_namespace, ptr %16, i32 0, i32 21
  %17 = ptrtoint ptr %user_ns5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %user_ns5, align 4
  %tobool.not.i19 = icmp eq ptr %18, null
  br i1 %tobool.not.i19, label %put_user_ns.exit.get_user_ns.exit_crit_edge, label %if.then.i24

put_user_ns.exit.get_user_ns.exit_crit_edge:      ; preds = %put_user_ns.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_user_ns.exit

if.then.i24:                                      ; preds = %put_user_ns.exit
  %count.i20 = getelementptr inbounds %struct.user_namespace, ptr %18, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i20, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i20, i32 1, i32 3, i32 1) #13
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i20, ptr %count.i20, i32 1, ptr elementtype(i32) %count.i20) #13, !srcloc !217
  %asmresult.i.i.i.i.i.i22 = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i22)
  %tobool1.not.i.i.i.i23 = icmp eq i32 %asmresult.i.i.i.i.i.i22, 0
  br i1 %tobool1.not.i.i.i.i23, label %if.then.i24.if.end15.sink.split.i.i.i.i29_crit_edge, label %if.else.i.i.i.i27, !prof !218

if.then.i24.if.end15.sink.split.i.i.i.i29_crit_edge: ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i29

if.else.i.i.i.i27:                                ; preds = %if.then.i24
  %add.i.i.i.i25 = add i32 %asmresult.i.i.i.i.i.i22, 1
  %20 = or i32 %add.i.i.i.i25, %asmresult.i.i.i.i.i.i22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i26 = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i26, label %if.else.i.i.i.i27.get_user_ns.exit_crit_edge, label %if.else.i.i.i.i27.if.end15.sink.split.i.i.i.i29_crit_edge, !prof !206

if.else.i.i.i.i27.if.end15.sink.split.i.i.i.i29_crit_edge: ; preds = %if.else.i.i.i.i27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i29

if.else.i.i.i.i27.get_user_ns.exit_crit_edge:     ; preds = %if.else.i.i.i.i27
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_user_ns.exit

if.end15.sink.split.i.i.i.i29:                    ; preds = %if.else.i.i.i.i27.if.end15.sink.split.i.i.i.i29_crit_edge, %if.then.i24.if.end15.sink.split.i.i.i.i29_crit_edge
  %.sink.i.i.i.i28 = phi i32 [ 2, %if.then.i24.if.end15.sink.split.i.i.i.i29_crit_edge ], [ 1, %if.else.i.i.i.i27.if.end15.sink.split.i.i.i.i29_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i20, i32 noundef %.sink.i.i.i.i28) #13
  br label %get_user_ns.exit

get_user_ns.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i29, %if.else.i.i.i.i27.get_user_ns.exit_crit_edge, %put_user_ns.exit.get_user_ns.exit_crit_edge
  %21 = ptrtoint ptr %user_ns to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %user_ns, align 4
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %22 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %fs_private, align 4
  %23 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mqueue_fs_context_ops, ptr %fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_user_ns.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_user_ns.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mqueue_fs_context_free(ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @put_ipc_ns(ptr noundef %3) #13
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mqueue_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @get_tree_keyed(ptr noundef %fc, ptr noundef nonnull @mqueue_fill_super, ptr noundef %3) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_keyed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mqueue_fill_super(ptr noundef %sb, ptr nocapture noundef readnone %fc) #0 align 64 {
entry:
  %tmp10.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 11
  %0 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_iflags, align 8
  %or = or i32 %1, 6
  store i32 %or, ptr %s_iflags, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %3 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 12, ptr %s_blocksize_bits, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %4 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 427819522, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %5 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mqueue_super_ops, ptr %s_op, align 4
  %call.i = tail call ptr @new_inode(ptr noundef %sb) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %mqueue_get_inode.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

mqueue_get_inode.exit:                            ; preds = %entry
  %call1.i = tail call i32 @get_next_ino() #13
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1.i, ptr %i_ino.i, align 8
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 17407, ptr %call.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 2
  %8 = tail call i32 @llvm.read_register.i32(metadata !195) #13
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fsuid.i, align 4
  %16 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 3
  %17 = load ptr, ptr %task.i, align 8
  %cred9.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 99
  %18 = ptrtoint ptr %cred9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cred9.i, align 16
  %fsgid.i = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %fsgid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fsgid.i, align 4
  %22 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %i_gid.i, align 8
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 17
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp10.i) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp10.i, ptr noundef nonnull %call.i) #13
  %23 = call ptr @memcpy(ptr %i_atime.i, ptr %tmp10.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp10.i) #13
  %24 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_atime.i, i32 16)
  %25 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_atime.i, i32 16)
  call void @inc_nlink(ptr noundef nonnull %call.i) #13
  %i_size154.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 14
  %26 = ptrtoint ptr %i_size154.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 40, ptr %i_size154.i, align 8
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mqueue_dir_inode_operations, ptr %i_op.i, align 8
  %28 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 44
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @simple_dir_operations, ptr %28, align 8
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mqueue_get_inode.exit.if.then_crit_edge, label %if.end

mqueue_get_inode.exit.if.then_crit_edge:          ; preds = %mqueue_get_inode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %mqueue_get_inode.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i20 = phi ptr [ %call.i, %mqueue_get_inode.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %30 = ptrtoint ptr %retval.0.i20 to i32
  br label %cleanup

if.end:                                           ; preds = %mqueue_get_inode.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call ptr @d_make_root(ptr noundef nonnull %call.i) #13
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %31 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call3, ptr %s_root, align 64
  %tobool.not = icmp eq ptr %call3, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %30, %if.then ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @mqueue_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mqueue_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call, null
  %vfs_inode = getelementptr inbounds %struct.mqueue_inode_info, ptr %call, i32 0, i32 1
  %retval.0 = select i1 %tobool.not, ptr null, ptr %vfs_inode
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mqueue_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mqueue_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -48
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mqueue_evict_inode(ptr noundef %inode) #0 align 64 {
entry:
  %tmp_msg = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_msg) #13
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_msg, i32 0, i32 1
  %1 = ptrtoint ptr %tmp_msg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp_msg, ptr %tmp_msg, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_msg, ptr %0, align 4
  call void @clear_inode(ptr noundef %inode) #13
  %3 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %inode, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %5)
  %cmp = icmp eq i16 %5, 16384
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @_raw_spin_lock(ptr noundef nonnull @mq_lock) #13
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.end.get_ns_from_inode.exit_crit_edge, label %if.then.i.i.i

if.end.get_ns_from_inode.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_ns_from_inode.exit

if.then.i.i.i:                                    ; preds = %if.end
  %count.i.i.i = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 24, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #13
  %10 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #13, !srcloc !217
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !218

if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.get_ns_from_inode.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !206

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.get_ns_from_inode.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_ns_from_inode.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #13
  br label %get_ns_from_inode.exit

get_ns_from_inode.exit:                           ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.get_ns_from_inode.exit_crit_edge, %if.end.get_ns_from_inode.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @mq_lock) #13
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -48
  call void @_raw_spin_lock(ptr noundef %add.ptr.i) #13
  %call376 = call fastcc ptr @msg_get(ptr noundef %add.ptr.i)
  %cmp4.not77 = icmp eq ptr %call376, null
  br i1 %cmp4.not77, label %get_ns_from_inode.exit.while.end_crit_edge, label %get_ns_from_inode.exit.while.body_crit_edge

get_ns_from_inode.exit.while.body_crit_edge:      ; preds = %get_ns_from_inode.exit
  br label %while.body

get_ns_from_inode.exit.while.end_crit_edge:       ; preds = %get_ns_from_inode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %get_ns_from_inode.exit.while.body_crit_edge
  %call378 = phi ptr [ %call3, %list_add_tail.exit.while.body_crit_edge ], [ %call376, %get_ns_from_inode.exit.while.body_crit_edge ]
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call378, ptr noundef %13, ptr noundef nonnull %tmp_msg) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_add_tail.exit_crit_edge

while.body.list_add_tail.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call378, ptr %0, align 4
  %15 = ptrtoint ptr %call378 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tmp_msg, ptr %call378, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call378, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call378, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %while.body.list_add_tail.exit_crit_edge
  %call3 = call fastcc ptr @msg_get(ptr noundef %add.ptr.i)
  %cmp4.not = icmp eq ptr %call3, null
  br i1 %cmp4.not, label %list_add_tail.exit.while.end_crit_edge, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_add_tail.exit.while.end_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %list_add_tail.exit.while.end_crit_edge, %get_ns_from_inode.exit.while.end_crit_edge
  %node_cache = getelementptr i8, ptr %inode, i32 844
  %18 = ptrtoint ptr %node_cache to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %node_cache, align 4
  call void @kfree(ptr noundef %19) #13
  call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #13
  %20 = ptrtoint ptr %tmp_msg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tmp_msg, align 4
  %cmp14.not79 = icmp eq ptr %21, %tmp_msg
  br i1 %cmp14.not79, label %while.end.for.end_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %while.end.for.body_crit_edge
  %msg.080 = phi ptr [ %nmsg.0, %list_del.exit.for.body_crit_edge ], [ %21, %while.end.for.body_crit_edge ]
  %22 = ptrtoint ptr %msg.080 to i32
  call void @__asan_load4_noabort(i32 %22)
  %nmsg.0 = load ptr, ptr %msg.080, align 4
  %call.i.i73 = call zeroext i1 @__list_del_entry_valid(ptr noundef %msg.080) #13
  br i1 %call.i.i73, label %if.end.i.i74, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i74:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %msg.080, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %msg.080 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %msg.080, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i74, %for.body.list_del.exit_crit_edge
  %29 = ptrtoint ptr %msg.080 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %msg.080, align 4
  %prev.i75 = getelementptr inbounds %struct.list_head, ptr %msg.080, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i75, align 4
  call void @free_msg(ptr noundef %msg.080) #13
  %cmp14.not = icmp eq ptr %nmsg.0, %tmp_msg
  br i1 %cmp14.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %while.end.for.end_crit_edge
  %ucounts = getelementptr i8, ptr %inode, i32 956
  %31 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ucounts, align 4
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %for.end.if.end41_crit_edge, label %if.then22

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then22:                                        ; preds = %for.end
  %mq_maxmsg = getelementptr i8, ptr %inode, i32 852
  %33 = ptrtoint ptr %mq_maxmsg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mq_maxmsg, align 4
  %mul = mul i32 %34, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %34)
  %cmp26 = icmp ult i32 %34, 32768
  %cond = select i1 %cmp26, i32 %mul, i32 786432
  %add = add i32 %cond, %mul
  %mq_msgsize = getelementptr i8, ptr %inode, i32 856
  %35 = ptrtoint ptr %mq_msgsize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mq_msgsize, align 8
  %mul32 = mul i32 %36, %34
  %add33 = add i32 %add, %mul32
  call void @_raw_spin_lock(ptr noundef nonnull @mq_lock) #13
  %37 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ucounts, align 4
  %call35 = call zeroext i1 @dec_rlimit_ucounts(ptr noundef %38, i32 noundef 13, i32 noundef %add33) #13
  br i1 %tobool.not.i.i.i, label %if.then22.if.end38_crit_edge, label %if.then37

if.then22.if.end38_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then37:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  %mq_queues_count = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 15
  %39 = ptrtoint ptr %mq_queues_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mq_queues_count, align 4
  %dec = add i32 %40, -1
  store i32 %dec, ptr %mq_queues_count, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.then22.if.end38_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @mq_lock) #13
  %41 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ucounts, align 4
  call void @put_ucounts(ptr noundef %42) #13
  %43 = ptrtoint ptr %ucounts to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %ucounts, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end38, %for.end.if.end41_crit_edge
  br i1 %tobool.not.i.i.i, label %if.end41.cleanup_crit_edge, label %if.then43

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  call void @put_ipc_ns(ptr noundef nonnull %9) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %if.end41.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_msg) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.mqueue_inode_info, ptr %foo, i32 0, i32 1
  tail call void @inode_init_once(ptr noundef %vfs_inode) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mq_register_sysctl_table() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind readnone }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !62, !63, !64, !65, !66, !67, !68, !69, !70, !72, !73, !74, !75, !76, !77, !78, !79, !80, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !94, !95, !97, !99, !101, !103, !105, !107, !109, !110, !112, !113, !115, !117, !119, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !136, !137, !139, !141, !142, !143, !145, !146, !147, !148, !149, !150, !151, !153, !154, !155, !156, !157, !159, !160, !161, !162, !163, !164, !165, !166, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !180, !182, !184, !186, !188, !190, !192, !193}
!llvm.named.register.sp = !{!195}
!llvm.module.flags = !{!196, !197, !198, !199, !200, !201, !202, !203}
!llvm.ident = !{!204}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../ipc/mqueue.c", i32 930, i32 1}
!2 = !{ptr @event_enter__mq_open, !1, !"event_enter__mq_open", i1 false, i1 false}
!3 = !{ptr @__event_enter__mq_open, !1, !"__event_enter__mq_open", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__mq_open, !1, !"event_exit__mq_open", i1 false, i1 false}
!6 = !{ptr @__event_exit__mq_open, !1, !"__event_exit__mq_open", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__mq_open, !1, !"__syscall_meta__mq_open", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__mq_open, !1, !"__p_syscall_meta__mq_open", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../ipc/mqueue.c", i32 940, i32 1}
!12 = !{ptr @event_enter__mq_unlink, !11, !"event_enter__mq_unlink", i1 false, i1 false}
!13 = !{ptr @__event_enter__mq_unlink, !11, !"__event_enter__mq_unlink", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__mq_unlink, !11, !"event_exit__mq_unlink", i1 false, i1 false}
!16 = !{ptr @__event_exit__mq_unlink, !11, !"__event_exit__mq_unlink", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__mq_unlink, !11, !"__syscall_meta__mq_unlink", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__mq_unlink, !11, !"__p_syscall_meta__mq_unlink", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../ipc/mqueue.c", i32 1273, i32 1}
!22 = !{ptr @event_enter__mq_timedsend, !21, !"event_enter__mq_timedsend", i1 false, i1 false}
!23 = !{ptr @__event_enter__mq_timedsend, !21, !"__event_enter__mq_timedsend", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @event_exit__mq_timedsend, !21, !"event_exit__mq_timedsend", i1 false, i1 false}
!26 = !{ptr @__event_exit__mq_timedsend, !21, !"__event_exit__mq_timedsend", i1 false, i1 false}
!27 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__syscall_meta__mq_timedsend, !21, !"__syscall_meta__mq_timedsend", i1 false, i1 false}
!29 = !{ptr @__p_syscall_meta__mq_timedsend, !21, !"__p_syscall_meta__mq_timedsend", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../ipc/mqueue.c", i32 1287, i32 1}
!32 = !{ptr @event_enter__mq_timedreceive, !31, !"event_enter__mq_timedreceive", i1 false, i1 false}
!33 = !{ptr @__event_enter__mq_timedreceive, !31, !"__event_enter__mq_timedreceive", i1 false, i1 false}
!34 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @event_exit__mq_timedreceive, !31, !"event_exit__mq_timedreceive", i1 false, i1 false}
!36 = !{ptr @__event_exit__mq_timedreceive, !31, !"__event_exit__mq_timedreceive", i1 false, i1 false}
!37 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__syscall_meta__mq_timedreceive, !31, !"__syscall_meta__mq_timedreceive", i1 false, i1 false}
!39 = !{ptr @__p_syscall_meta__mq_timedreceive, !31, !"__p_syscall_meta__mq_timedreceive", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../ipc/mqueue.c", i32 1429, i32 1}
!42 = !{ptr @event_enter__mq_notify, !41, !"event_enter__mq_notify", i1 false, i1 false}
!43 = !{ptr @__event_enter__mq_notify, !41, !"__event_enter__mq_notify", i1 false, i1 false}
!44 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @event_exit__mq_notify, !41, !"event_exit__mq_notify", i1 false, i1 false}
!46 = !{ptr @__event_exit__mq_notify, !41, !"__event_exit__mq_notify", i1 false, i1 false}
!47 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__syscall_meta__mq_notify, !41, !"__syscall_meta__mq_notify", i1 false, i1 false}
!49 = !{ptr @__p_syscall_meta__mq_notify, !41, !"__p_syscall_meta__mq_notify", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../ipc/mqueue.c", i32 1485, i32 1}
!52 = !{ptr @event_enter__mq_getsetattr, !51, !"event_enter__mq_getsetattr", i1 false, i1 false}
!53 = !{ptr @__event_enter__mq_getsetattr, !51, !"__event_enter__mq_getsetattr", i1 false, i1 false}
!54 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @event_exit__mq_getsetattr, !51, !"event_exit__mq_getsetattr", i1 false, i1 false}
!56 = !{ptr @__event_exit__mq_getsetattr, !51, !"__event_exit__mq_getsetattr", i1 false, i1 false}
!57 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__syscall_meta__mq_getsetattr, !51, !"__syscall_meta__mq_getsetattr", i1 false, i1 false}
!59 = !{ptr @__p_syscall_meta__mq_getsetattr, !51, !"__p_syscall_meta__mq_getsetattr", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../ipc/mqueue.c", i32 1615, i32 1}
!62 = !{ptr @event_enter__mq_timedsend_time32, !61, !"event_enter__mq_timedsend_time32", i1 false, i1 false}
!63 = !{ptr @__event_enter__mq_timedsend_time32, !61, !"__event_enter__mq_timedsend_time32", i1 false, i1 false}
!64 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @event_exit__mq_timedsend_time32, !61, !"event_exit__mq_timedsend_time32", i1 false, i1 false}
!66 = !{ptr @__event_exit__mq_timedsend_time32, !61, !"__event_exit__mq_timedsend_time32", i1 false, i1 false}
!67 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @__syscall_meta__mq_timedsend_time32, !61, !"__syscall_meta__mq_timedsend_time32", i1 false, i1 false}
!69 = !{ptr @__p_syscall_meta__mq_timedsend_time32, !61, !"__p_syscall_meta__mq_timedsend_time32", i1 false, i1 false}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../ipc/mqueue.c", i32 1630, i32 1}
!72 = !{ptr @event_enter__mq_timedreceive_time32, !71, !"event_enter__mq_timedreceive_time32", i1 false, i1 false}
!73 = !{ptr @__event_enter__mq_timedreceive_time32, !71, !"__event_enter__mq_timedreceive_time32", i1 false, i1 false}
!74 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @event_exit__mq_timedreceive_time32, !71, !"event_exit__mq_timedreceive_time32", i1 false, i1 false}
!76 = !{ptr @__event_exit__mq_timedreceive_time32, !71, !"__event_exit__mq_timedreceive_time32", i1 false, i1 false}
!77 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @__syscall_meta__mq_timedreceive_time32, !71, !"__syscall_meta__mq_timedreceive_time32", i1 false, i1 false}
!79 = !{ptr @__p_syscall_meta__mq_timedreceive_time32, !71, !"__p_syscall_meta__mq_timedreceive_time32", i1 false, i1 false}
!80 = !{ptr @__initcall__kmod_mqueue__487_1740_init_mqueue_fs6, !81, !"__initcall__kmod_mqueue__487_1740_init_mqueue_fs6", i1 false, i1 false}
!81 = !{!"../ipc/mqueue.c", i32 1740, i32 1}
!82 = !{ptr @.str.24, !1, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.25, !1, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.26, !1, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.27, !1, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @types__mq_open, !1, !"types__mq_open", i1 false, i1 false}
!87 = !{ptr @.str.28, !1, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.29, !1, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.30, !1, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.31, !1, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @args__mq_open, !1, !"args__mq_open", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!94 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../ipc/mqueue.c", i32 910, i32 49}
!101 = !{ptr @prepare_open.oflag2acc, !102, !"oflag2acc", i1 false, i1 false}
!102 = !{!"../ipc/mqueue.c", i32 858, i32 19}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../ipc/mqueue.c", i32 304, i32 17}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../ipc/mqueue.c", i32 305, i32 17}
!107 = !{ptr @mqueue_get_inode.__key, !108, !"__key", i1 false, i1 false}
!108 = !{!"../ipc/mqueue.c", i32 316, i32 3}
!109 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @mqueue_get_inode.__key.37, !111, !"__key", i1 false, i1 false}
!111 = !{!"../ipc/mqueue.c", i32 317, i32 3}
!112 = !{ptr @.str.38, !111, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../ipc/mqueue.c", i32 373, i32 31}
!115 = !{ptr @mqueue_file_operations, !116, !"mqueue_file_operations", i1 false, i1 false}
!116 = !{!"../ipc/mqueue.c", i32 1652, i32 37}
!117 = !{ptr @.str.40, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../ipc/mqueue.c", i32 632, i32 4}
!119 = !{ptr @mqueue_dir_inode_operations, !120, !"mqueue_dir_inode_operations", i1 false, i1 false}
!120 = !{!"../ipc/mqueue.c", i32 1646, i32 38}
!121 = !{ptr @types__mq_unlink, !11, !"types__mq_unlink", i1 false, i1 false}
!122 = !{ptr @args__mq_unlink, !11, !"args__mq_unlink", i1 false, i1 false}
!123 = !{ptr @.str.41, !21, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.42, !21, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.43, !21, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.44, !21, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @types__mq_timedsend, !21, !"types__mq_timedsend", i1 false, i1 false}
!128 = !{ptr @.str.45, !21, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.46, !21, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.47, !21, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.48, !21, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.49, !21, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @args__mq_timedsend, !21, !"args__mq_timedsend", i1 false, i1 false}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../ipc/mqueue.c", i32 712, i32 3}
!136 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!137 = distinct !{null, !138, !"__warned", i1 false, i1 false}
!138 = !{!"../ipc/mqueue.c", i32 800, i32 7}
!139 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!140 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!141 = !{ptr @.str.51, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!143 = distinct !{null, !144, !"__warned", i1 false, i1 false}
!144 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!145 = !{ptr @.str.53, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.54, !31, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.55, !31, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @types__mq_timedreceive, !31, !"types__mq_timedreceive", i1 false, i1 false}
!149 = !{ptr @.str.56, !31, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @args__mq_timedreceive, !31, !"args__mq_timedreceive", i1 false, i1 false}
!151 = distinct !{null, !152, !"__already_done", i1 false, i1 false}
!152 = !{!"../ipc/mqueue.c", i32 264, i32 4}
!153 = !{ptr @.str.57, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.58, !152, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @msg_get._entry, !152, !"_entry", i1 false, i1 false}
!156 = !{ptr @msg_get._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!157 = distinct !{null, !158, !"__already_done", i1 false, i1 false}
!158 = !{!"../ipc/mqueue.c", i32 273, i32 3}
!159 = !{ptr @.str.61, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @msg_get._entry.60, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @msg_get._entry_ptr.62, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.63, !41, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @types__mq_notify, !41, !"types__mq_notify", i1 false, i1 false}
!164 = !{ptr @.str.64, !41, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @args__mq_notify, !41, !"args__mq_notify", i1 false, i1 false}
!166 = distinct !{null, !167, !"__warned", i1 false, i1 false}
!167 = !{!"../ipc/mqueue.c", i32 1413, i32 38}
!168 = !{ptr @.str.65, !51, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @types__mq_getsetattr, !51, !"types__mq_getsetattr", i1 false, i1 false}
!170 = !{ptr @.str.66, !51, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.67, !51, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @args__mq_getsetattr, !51, !"args__mq_getsetattr", i1 false, i1 false}
!173 = !{ptr @.str.68, !61, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @types__mq_timedsend_time32, !61, !"types__mq_timedsend_time32", i1 false, i1 false}
!175 = !{ptr @args__mq_timedsend_time32, !61, !"args__mq_timedsend_time32", i1 false, i1 false}
!176 = !{ptr @types__mq_timedreceive_time32, !71, !"types__mq_timedreceive_time32", i1 false, i1 false}
!177 = !{ptr @args__mq_timedreceive_time32, !71, !"args__mq_timedreceive_time32", i1 false, i1 false}
!178 = !{ptr @.str.69, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../ipc/mqueue.c", i32 1672, i32 12}
!180 = !{ptr @mqueue_fs_type, !181, !"mqueue_fs_type", i1 false, i1 false}
!181 = !{!"../ipc/mqueue.c", i32 1671, i32 32}
!182 = !{ptr @mqueue_fs_context_ops, !183, !"mqueue_fs_context_ops", i1 false, i1 false}
!183 = !{!"../ipc/mqueue.c", i32 1666, i32 43}
!184 = !{ptr @mqueue_super_ops, !185, !"mqueue_super_ops", i1 false, i1 false}
!185 = !{!"../ipc/mqueue.c", i32 1659, i32 38}
!186 = !{ptr @mqueue_inode_cachep, !187, !"mqueue_inode_cachep", i1 false, i1 false}
!187 = !{!"../ipc/mqueue.c", i32 164, i32 27}
!188 = !{ptr @.str.70, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../ipc/mqueue.c", i32 1710, i32 42}
!190 = !{ptr @init_mqueue_fs.__key, !191, !"__key", i1 false, i1 false}
!191 = !{!"../ipc/mqueue.c", i32 1723, i32 2}
!192 = !{ptr @.str.71, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @mq_sysctl_table, !194, !"mq_sysctl_table", i1 false, i1 false}
!194 = !{!"../ipc/mqueue.c", i32 166, i32 33}
!195 = !{!"sp"}
!196 = !{i32 1, !"wchar_size", i32 2}
!197 = !{i32 1, !"min_enum_size", i32 4}
!198 = !{i32 8, !"branch-target-enforcement", i32 0}
!199 = !{i32 8, !"sign-return-address", i32 0}
!200 = !{i32 8, !"sign-return-address-all", i32 0}
!201 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!202 = !{i32 7, !"uwtable", i32 1}
!203 = !{i32 7, !"frame-pointer", i32 2}
!204 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!205 = !{i64 2152806719, i64 2152806744}
!206 = !{!"branch_weights", i32 2000, i32 1}
!207 = !{i64 5302274}
!208 = !{i64 5302471}
!209 = !{i64 2152787704}
!210 = !{!"auto-init"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"fdget: %agg.result"}
!213 = distinct !{!213, !"fdget"}
!214 = !{!215}
!215 = distinct !{!215, !216, !"fdget: %agg.result"}
!216 = distinct !{!216, !"fdget"}
!217 = !{i64 2148786482, i64 2148786514, i64 2148786543, i64 2148786577, i64 2148786608, i64 2148786631}
!218 = !{!"branch_weights", i32 1, i32 2000}
!219 = !{!220}
!220 = distinct !{!220, !221, !"fdget: %agg.result"}
!221 = distinct !{!221, !"fdget"}
!222 = !{i64 2152807400, i64 2152807425}
!223 = !{i64 2148874507}
!224 = !{i64 2148788947, i64 2148788979, i64 2148789008, i64 2148789042, i64 2148789073, i64 2148789096}
!225 = !{i64 2150070742}
!226 = !{!227}
!227 = distinct !{!227, !228, !"fdget: %agg.result"}
!228 = distinct !{!228, !"fdget"}
!229 = !{i64 2157688291}
!230 = !{i64 2150120285}
!231 = !{i64 2150120551}
!232 = !{i64 2157653592}
!233 = !{!234}
!234 = distinct !{!234, !235, !"fdget: %agg.result"}
!235 = distinct !{!235, !"fdget"}
!236 = !{i64 2157706314, i64 2157706594, i64 2157706928, i64 2157707262}
