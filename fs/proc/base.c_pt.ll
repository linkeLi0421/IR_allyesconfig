; ModuleID = '/llk/IR_all_yes/fs/proc/base.c_pt.bc'
source_filename = "../fs/proc/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.76, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pid_entry = type { ptr, i32, i16, ptr, ptr, %union.proc_op }
%union.proc_op = type { ptr }
%struct.limit_names = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.70, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.20 }
%union.anon.20 = type { i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.31, %struct.list_head, %struct.list_head, %union.anon.32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.spinlock, i32 }
%union.anon.31 = type { %struct.list_head }
%union.anon.32 = type { %struct.hlist_node }
%struct.anon.4 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }
%struct.proc_inode = type { ptr, i32, %union.proc_op, ptr, ptr, ptr, %struct.hlist_node, ptr, %struct.inode }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.79 = type { %struct.callback_head }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.81 = type { ptr }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, ptr }
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
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.proc_fs_info = type { ptr, ptr, ptr, %struct.kgid_t, i32, i32 }
%struct.anon.15 = type { i32, i32 }
%struct.dir_context = type { ptr, i64 }
%struct.tgid_iter = type { i32, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.syscall_info = type { i64, %struct.seccomp_data }
%struct.seccomp_data = type { i32, i32, i64, [6 x i64] }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.5, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.86 = type { %struct.__genradix, [0 x %struct.map_files_info] }
%struct.__genradix = type { ptr }
%struct.map_files_info = type { i32, i32, i32 }
%struct.timers_private = type { ptr, ptr, ptr, ptr, i32 }
%struct.k_itimer = type { %struct.list_head, %struct.hlist_node, %struct.spinlock, ptr, i32, i32, i32, i64, i64, i32, i32, i64, ptr, %union.anon.87, ptr, %union.anon.88, %struct.callback_head }
%union.anon.87 = type { ptr }
%union.anon.88 = type { %struct.anon.90 }
%struct.anon.90 = type { %struct.alarm }
%struct.alarm = type { %struct.timerqueue_node, %struct.hrtimer, ptr, i32, i32, ptr }
%struct.sigqueue = type { %struct.list_head, i32, %struct.kernel_siginfo, ptr }
%struct.kernel_siginfo = type { %struct.anon.49 }
%struct.anon.49 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.53 }
%struct.anon.53 = type { i32, i32, i32, i32, i32 }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@proc_pid_link_inode_operations = dso_local constant %struct.inode_operations { ptr null, ptr @proc_pid_get_link, ptr null, ptr null, ptr @proc_pid_readlink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@task_dump_owner.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/proc/base.c\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@proc_def_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@pid_dentry_operations = dso_local constant %struct.dentry_operations { ptr @pid_revalidate, ptr null, ptr null, ptr null, ptr @pid_delete_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@proc_fill_cache.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"&wq\00", [28 x i8] zeroinitializer }, align 32
@proc_tgid_base_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_tgid_base_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"self\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thread-self\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@tid_base_stuff = internal constant { [46 x %struct.pid_entry], [272 x i8] } { [46 x %struct.pid_entry] [%struct.pid_entry { ptr @.str.14, i32 2, i16 16704, ptr @proc_fd_inode_operations, ptr @proc_fd_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.15, i32 6, i16 16749, ptr @proc_fdinfo_inode_operations, ptr @proc_fdinfo_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.16, i32 2, i16 16713, ptr @proc_ns_dir_inode_operations, ptr @proc_ns_dir_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.17, i32 3, i16 16749, ptr @proc_net_inode_operations, ptr @proc_net_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.18, i32 7, i16 -32512, ptr null, ptr @proc_environ_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.19, i32 4, i16 -32512, ptr null, ptr @proc_auxv_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.20, i32 6, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_status } }, %struct.pid_entry { ptr @.str.21, i32 11, i16 -32512, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_personality } }, %struct.pid_entry { ptr @.str.22, i32 6, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_limits } }, %struct.pid_entry { ptr @.str.23, i32 5, i16 -32348, ptr null, ptr @proc_pid_sched_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.24, i32 4, i16 -32348, ptr @proc_tid_comm_inode_operations, ptr @proc_pid_set_comm_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.25, i32 7, i16 -32512, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_syscall } }, %struct.pid_entry { ptr @.str.26, i32 7, i16 -32476, ptr null, ptr @proc_pid_cmdline_ops, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.27, i32 4, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_tid_stat } }, %struct.pid_entry { ptr @.str.28, i32 5, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_statm } }, %struct.pid_entry { ptr @.str.29, i32 4, i16 -32476, ptr null, ptr @proc_pid_maps_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.30, i32 8, i16 -32476, ptr null, ptr @proc_tid_children_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.31, i32 3, i16 -32384, ptr null, ptr @proc_mem_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.32, i32 3, i16 -24065, ptr @proc_pid_link_inode_operations, ptr null, %union.proc_op { ptr @proc_cwd_link } }, %struct.pid_entry { ptr @.str.33, i32 4, i16 -24065, ptr @proc_pid_link_inode_operations, ptr null, %union.proc_op { ptr @proc_root_link } }, %struct.pid_entry { ptr @.str.34, i32 3, i16 -24065, ptr @proc_pid_link_inode_operations, ptr null, %union.proc_op { ptr @proc_exe_link } }, %struct.pid_entry { ptr @.str.35, i32 6, i16 -32476, ptr null, ptr @proc_mounts_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.36, i32 9, i16 -32476, ptr null, ptr @proc_mountinfo_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.37, i32 10, i16 -32640, ptr null, ptr @proc_clear_refs_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.38, i32 5, i16 -32476, ptr null, ptr @proc_pid_smaps_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.39, i32 12, i16 -32476, ptr null, ptr @proc_pid_smaps_rollup_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.40, i32 7, i16 -32512, ptr null, ptr @proc_pagemap_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.41, i32 4, i16 16749, ptr @proc_attr_dir_inode_operations, ptr @proc_attr_dir_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.42, i32 5, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_wchan } }, %struct.pid_entry { ptr @.str.43, i32 5, i16 -32512, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_stack } }, %struct.pid_entry { ptr @.str.44, i32 9, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_schedstat } }, %struct.pid_entry { ptr @.str.45, i32 7, i16 -32476, ptr null, ptr @proc_lstats_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.46, i32 6, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_cpuset_show } }, %struct.pid_entry { ptr @.str.47, i32 6, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_cgroup_show } }, %struct.pid_entry { ptr @.str.48, i32 9, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_oom_score } }, %struct.pid_entry { ptr @.str.49, i32 7, i16 -32348, ptr null, ptr @proc_oom_adj_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.50, i32 13, i16 -32348, ptr null, ptr @proc_oom_score_adj_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.51, i32 8, i16 -32348, ptr null, ptr @proc_loginuid_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.52, i32 9, i16 -32476, ptr null, ptr @proc_sessionid_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.53, i32 12, i16 -32348, ptr null, ptr @proc_fault_inject_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.54, i32 8, i16 -32348, ptr null, ptr @proc_fail_nth_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.55, i32 2, i16 -32512, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_tid_io_accounting } }, %struct.pid_entry { ptr @.str.56, i32 7, i16 -32348, ptr null, ptr @proc_uid_map_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.57, i32 7, i16 -32348, ptr null, ptr @proc_gid_map_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.58, i32 10, i16 -32348, ptr null, ptr @proc_projid_map_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.59, i32 9, i16 -32348, ptr null, ptr @proc_setgroups_operations, %union.proc_op zeroinitializer }], [272 x i8] zeroinitializer }, align 32
@nlink_tid = internal unnamed_addr global i1 false, section ".data..ro_after_init", align 1
@tgid_base_stuff = internal constant { [52 x %struct.pid_entry], [288 x i8] } { [52 x %struct.pid_entry] [%struct.pid_entry { ptr @.str.119, i32 4, i16 16749, ptr @proc_task_inode_operations, ptr @proc_task_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.14, i32 2, i16 16704, ptr @proc_fd_inode_operations, ptr @proc_fd_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.120, i32 9, i16 16704, ptr @proc_map_files_inode_operations, ptr @proc_map_files_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.15, i32 6, i16 16749, ptr @proc_fdinfo_inode_operations, ptr @proc_fdinfo_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.16, i32 2, i16 16713, ptr @proc_ns_dir_inode_operations, ptr @proc_ns_dir_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.17, i32 3, i16 16749, ptr @proc_net_inode_operations, ptr @proc_net_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.18, i32 7, i16 -32512, ptr null, ptr @proc_environ_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.19, i32 4, i16 -32512, ptr null, ptr @proc_auxv_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.20, i32 6, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_status } }, %struct.pid_entry { ptr @.str.21, i32 11, i16 -32512, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_personality } }, %struct.pid_entry { ptr @.str.22, i32 6, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_limits } }, %struct.pid_entry { ptr @.str.23, i32 5, i16 -32348, ptr null, ptr @proc_pid_sched_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.121, i32 9, i16 -32348, ptr null, ptr @proc_pid_sched_autogroup_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.24, i32 4, i16 -32348, ptr null, ptr @proc_pid_set_comm_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.25, i32 7, i16 -32512, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_syscall } }, %struct.pid_entry { ptr @.str.26, i32 7, i16 -32476, ptr null, ptr @proc_pid_cmdline_ops, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.27, i32 4, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_tgid_stat } }, %struct.pid_entry { ptr @.str.28, i32 5, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_statm } }, %struct.pid_entry { ptr @.str.29, i32 4, i16 -32476, ptr null, ptr @proc_pid_maps_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.31, i32 3, i16 -32384, ptr null, ptr @proc_mem_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.32, i32 3, i16 -24065, ptr @proc_pid_link_inode_operations, ptr null, %union.proc_op { ptr @proc_cwd_link } }, %struct.pid_entry { ptr @.str.33, i32 4, i16 -24065, ptr @proc_pid_link_inode_operations, ptr null, %union.proc_op { ptr @proc_root_link } }, %struct.pid_entry { ptr @.str.34, i32 3, i16 -24065, ptr @proc_pid_link_inode_operations, ptr null, %union.proc_op { ptr @proc_exe_link } }, %struct.pid_entry { ptr @.str.35, i32 6, i16 -32476, ptr null, ptr @proc_mounts_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.36, i32 9, i16 -32476, ptr null, ptr @proc_mountinfo_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.122, i32 10, i16 -32512, ptr null, ptr @proc_mountstats_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.37, i32 10, i16 -32640, ptr null, ptr @proc_clear_refs_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.38, i32 5, i16 -32476, ptr null, ptr @proc_pid_smaps_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.39, i32 12, i16 -32476, ptr null, ptr @proc_pid_smaps_rollup_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.40, i32 7, i16 -32512, ptr null, ptr @proc_pagemap_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.41, i32 4, i16 16749, ptr @proc_attr_dir_inode_operations, ptr @proc_attr_dir_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.42, i32 5, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_wchan } }, %struct.pid_entry { ptr @.str.43, i32 5, i16 -32512, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_stack } }, %struct.pid_entry { ptr @.str.44, i32 9, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_schedstat } }, %struct.pid_entry { ptr @.str.45, i32 7, i16 -32476, ptr null, ptr @proc_lstats_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.46, i32 6, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_cpuset_show } }, %struct.pid_entry { ptr @.str.47, i32 6, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_cgroup_show } }, %struct.pid_entry { ptr @.str.48, i32 9, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_oom_score } }, %struct.pid_entry { ptr @.str.49, i32 7, i16 -32348, ptr null, ptr @proc_oom_adj_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.50, i32 13, i16 -32348, ptr null, ptr @proc_oom_score_adj_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.51, i32 8, i16 -32348, ptr null, ptr @proc_loginuid_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.52, i32 9, i16 -32476, ptr null, ptr @proc_sessionid_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.53, i32 12, i16 -32348, ptr null, ptr @proc_fault_inject_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.54, i32 8, i16 -32348, ptr null, ptr @proc_fail_nth_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.123, i32 15, i16 -32348, ptr null, ptr @proc_coredump_filter_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.55, i32 2, i16 -32512, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_tgid_io_accounting } }, %struct.pid_entry { ptr @.str.56, i32 7, i16 -32348, ptr null, ptr @proc_uid_map_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.57, i32 7, i16 -32348, ptr null, ptr @proc_gid_map_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.58, i32 10, i16 -32348, ptr null, ptr @proc_projid_map_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.59, i32 9, i16 -32348, ptr null, ptr @proc_setgroups_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.124, i32 6, i16 -32476, ptr null, ptr @proc_timers_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.125, i32 13, i16 -32330, ptr null, ptr @proc_pid_set_timerslack_ns_operations, %union.proc_op zeroinitializer }], [288 x i8] zeroinitializer }, align 32
@nlink_tgid = internal unnamed_addr global i1 false, section ".data..ro_after_init", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@proc_tgid_base_inode_operations = internal constant %struct.inode_operations { ptr @proc_tgid_base_lookup, ptr null, ptr @proc_pid_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr @pid_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@proc_fd_inode_operations = external dso_local constant %struct.inode_operations, align 128
@proc_fd_operations = external dso_local constant %struct.file_operations, align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fdinfo\00", [25 x i8] zeroinitializer }, align 32
@proc_fdinfo_inode_operations = external dso_local constant %struct.inode_operations, align 128
@proc_fdinfo_operations = external dso_local constant %struct.file_operations, align 4
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ns\00", [29 x i8] zeroinitializer }, align 32
@proc_ns_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@proc_ns_dir_operations = external dso_local constant %struct.file_operations, align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"net\00", [28 x i8] zeroinitializer }, align 32
@proc_net_inode_operations = external dso_local constant %struct.inode_operations, align 128
@proc_net_operations = external dso_local constant %struct.file_operations, align 4
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"environ\00", [24 x i8] zeroinitializer }, align 32
@proc_environ_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @environ_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @environ_open, ptr null, ptr @mem_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auxv\00", [27 x i8] zeroinitializer }, align 32
@proc_auxv_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @auxv_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @auxv_open, ptr null, ptr @mem_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@proc_single_file_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @proc_single_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"personality\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"limits\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sched\00", [26 x i8] zeroinitializer }, align 32
@proc_pid_sched_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @sched_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sched_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"comm\00", [27 x i8] zeroinitializer }, align 32
@proc_tid_comm_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr @proc_tid_comm_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@proc_pid_set_comm_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @comm_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @comm_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"syscall\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cmdline\00", [24 x i8] zeroinitializer }, align 32
@proc_pid_cmdline_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @proc_pid_cmdline_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stat\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"statm\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"maps\00", [27 x i8] zeroinitializer }, align 32
@proc_pid_maps_operations = external dso_local constant %struct.file_operations, align 4
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"children\00", [23 x i8] zeroinitializer }, align 32
@proc_tid_children_operations = external dso_local constant %struct.file_operations, align 4
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@proc_mem_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @mem_lseek, ptr @mem_read, ptr @mem_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mem_open, ptr null, ptr @mem_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cwd\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"root\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"exe\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mounts\00", [25 x i8] zeroinitializer }, align 32
@proc_mounts_operations = external dso_local constant %struct.file_operations, align 4
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mountinfo\00", [22 x i8] zeroinitializer }, align 32
@proc_mountinfo_operations = external dso_local constant %struct.file_operations, align 4
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clear_refs\00", [21 x i8] zeroinitializer }, align 32
@proc_clear_refs_operations = external dso_local constant %struct.file_operations, align 4
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smaps\00", [26 x i8] zeroinitializer }, align 32
@proc_pid_smaps_operations = external dso_local constant %struct.file_operations, align 4
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smaps_rollup\00", [19 x i8] zeroinitializer }, align 32
@proc_pid_smaps_rollup_operations = external dso_local constant %struct.file_operations, align 4
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pagemap\00", [24 x i8] zeroinitializer }, align 32
@proc_pagemap_operations = external dso_local constant %struct.file_operations, align 4
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"attr\00", [27 x i8] zeroinitializer }, align 32
@proc_attr_dir_inode_operations = internal constant %struct.inode_operations { ptr @proc_attr_dir_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr @pid_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@proc_attr_dir_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_attr_dir_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wchan\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stack\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"schedstat\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"latency\00", [24 x i8] zeroinitializer }, align 32
@proc_lstats_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @lstats_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @lstats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cpuset\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cgroup\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"oom_score\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"oom_adj\00", [24 x i8] zeroinitializer }, align 32
@proc_oom_adj_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @oom_adj_read, ptr @oom_adj_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"oom_score_adj\00", [18 x i8] zeroinitializer }, align 32
@proc_oom_score_adj_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @oom_score_adj_read, ptr @oom_score_adj_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"loginuid\00", [23 x i8] zeroinitializer }, align 32
@proc_loginuid_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @proc_loginuid_read, ptr @proc_loginuid_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sessionid\00", [22 x i8] zeroinitializer }, align 32
@proc_sessionid_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @proc_sessionid_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"make-it-fail\00", [19 x i8] zeroinitializer }, align 32
@proc_fault_inject_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @proc_fault_inject_read, ptr @proc_fault_inject_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fail-nth\00", [23 x i8] zeroinitializer }, align 32
@proc_fail_nth_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @proc_fail_nth_read, ptr @proc_fail_nth_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"io\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uid_map\00", [24 x i8] zeroinitializer }, align 32
@proc_uid_map_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @proc_uid_map_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @proc_uid_map_open, ptr null, ptr @proc_id_map_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gid_map\00", [24 x i8] zeroinitializer }, align 32
@proc_gid_map_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @proc_gid_map_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @proc_gid_map_open, ptr null, ptr @proc_id_map_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"projid_map\00", [21 x i8] zeroinitializer }, align 32
@proc_projid_map_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @proc_projid_map_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @proc_projid_map_open, ptr null, ptr @proc_id_map_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"setgroups\00", [22 x i8] zeroinitializer }, align 32
@proc_setgroups_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @proc_setgroups_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @proc_setgroups_open, ptr null, ptr @proc_setgroups_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Limit                     Soft Limit           Hard Limit           Units     \0A\00", [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%-25s %-20s \00", [19 x i8] zeroinitializer }, align 32
@lnames = internal constant { [16 x %struct.limit_names], [32 x i8] } { [16 x %struct.limit_names] [%struct.limit_names { ptr @.str.68, ptr @.str.69 }, %struct.limit_names { ptr @.str.70, ptr @.str.71 }, %struct.limit_names { ptr @.str.72, ptr @.str.71 }, %struct.limit_names { ptr @.str.73, ptr @.str.71 }, %struct.limit_names { ptr @.str.74, ptr @.str.71 }, %struct.limit_names { ptr @.str.75, ptr @.str.71 }, %struct.limit_names { ptr @.str.76, ptr @.str.77 }, %struct.limit_names { ptr @.str.78, ptr @.str.79 }, %struct.limit_names { ptr @.str.80, ptr @.str.71 }, %struct.limit_names { ptr @.str.81, ptr @.str.71 }, %struct.limit_names { ptr @.str.82, ptr @.str.83 }, %struct.limit_names { ptr @.str.84, ptr @.str.85 }, %struct.limit_names { ptr @.str.86, ptr @.str.71 }, %struct.limit_names { ptr @.str.87, ptr null }, %struct.limit_names { ptr @.str.88, ptr null }, %struct.limit_names { ptr @.str.89, ptr @.str.90 }], [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unlimited\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%-25s %-20lu \00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%-20s \00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%-20lu \00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%-10s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Max cpu time\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"seconds\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Max file size\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bytes\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Max data size\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Max stack size\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Max core file size\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Max resident set\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Max processes\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"processes\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Max open files\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"files\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Max locked memory\00", [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Max address space\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Max file locks\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"locks\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Max pending signals\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"signals\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Max msgqueue size\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Max nice priority\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Max realtime priority\00", [42 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Max realtime timeout\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"us\00", [29 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"running\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%d 0x%llx 0x%llx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%d 0x%llx 0x%llx 0x%llx 0x%llx 0x%llx 0x%llx 0x%llx 0x%llx\0A\00", [36 x i8] zeroinitializer }, align 32
@attr_dir_stuff = internal constant { [8 x %struct.pid_entry], [32 x i8] } { [8 x %struct.pid_entry] [%struct.pid_entry { ptr @.str.94, i32 7, i16 -32330, ptr null, ptr @proc_pid_attr_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.95, i32 4, i16 -32476, ptr null, ptr @proc_pid_attr_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.96, i32 4, i16 -32330, ptr null, ptr @proc_pid_attr_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.97, i32 8, i16 -32330, ptr null, ptr @proc_pid_attr_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.98, i32 9, i16 -32330, ptr null, ptr @proc_pid_attr_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.99, i32 10, i16 -32330, ptr null, ptr @proc_pid_attr_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.100, i32 5, i16 16749, ptr @proc_smack_attr_dir_inode_ops, ptr @proc_smack_attr_dir_ops, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.101, i32 8, i16 16749, ptr @proc_apparmor_attr_dir_inode_ops, ptr @proc_apparmor_attr_dir_ops, %union.proc_op zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"current\00", [24 x i8] zeroinitializer }, align 32
@proc_pid_attr_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @proc_pid_attr_read, ptr @proc_pid_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @proc_pid_attr_open, ptr null, ptr @mem_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"prev\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"exec\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fscreate\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"keycreate\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sockcreate\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smack\00", [26 x i8] zeroinitializer }, align 32
@proc_smack_attr_dir_inode_ops = internal constant %struct.inode_operations { ptr @proc_smack_attr_dir_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr @pid_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@proc_smack_attr_dir_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @proc_smack_attr_dir_iterate, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apparmor\00", [23 x i8] zeroinitializer }, align 32
@proc_apparmor_attr_dir_inode_ops = internal constant %struct.inode_operations { ptr @proc_apparmor_attr_dir_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr @pid_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@proc_apparmor_attr_dir_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @proc_apparmor_attr_dir_iterate, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@smack_attr_dir_stuff = internal constant { [1 x %struct.pid_entry], [40 x i8] } { [1 x %struct.pid_entry] [%struct.pid_entry { ptr @.str.94, i32 7, i16 -32330, ptr null, ptr @proc_pid_attr_operations, %union.proc_op { ptr @.str.100 } }], [40 x i8] zeroinitializer }, align 32
@apparmor_attr_dir_stuff = internal constant { [3 x %struct.pid_entry], [56 x i8] } { [3 x %struct.pid_entry] [%struct.pid_entry { ptr @.str.94, i32 7, i16 -32330, ptr null, ptr @proc_pid_attr_operations, %union.proc_op { ptr @.str.101 } }, %struct.pid_entry { ptr @.str.95, i32 4, i16 -32476, ptr null, ptr @proc_pid_attr_operations, %union.proc_op { ptr @.str.101 } }, %struct.pid_entry { ptr @.str.96, i32 4, i16 -32330, ptr null, ptr @proc_pid_attr_operations, %union.proc_op { ptr @.str.101 } }], [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[<0>] %pB\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%llu %llu %lu\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Latency Top version : v0.1\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%i %li %li\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %ps\00", [27 x i8] zeroinitializer }, align 32
@total_swap_pages = external dso_local local_unnamed_addr global i32, align 4
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@oom_adj_mutex = external dso_local global %struct.mutex, align 4
@__set_oom_adj.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__set_oom_adj._entry = internal constant %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str, i32 1084, ptr null, ptr null }, align 1
@.str.111 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\014%s (%d): /proc/%d/oom_adj is deprecated, please use /proc/%d/oom_score_adj instead.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__set_oom_adj\00", [18 x i8] zeroinitializer }, align 32
@__set_oom_adj._entry_ptr = internal global ptr @__set_oom_adj._entry, section ".printk_index", align 4
@init_task = external dso_local global %struct.task_struct, align 128
@__tracepoint_oom_score_adj_update = external dso_local global %struct.tracepoint, align 4
@.str.113 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/oom.h\00", [37 x i8] zeroinitializer }, align 32
@trace_oom_score_adj_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%hd\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%i\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"rchar: %llu\0Awchar: %llu\0Asyscr: %llu\0Asyscw: %llu\0Aread_bytes: %llu\0Awrite_bytes: %llu\0Acancelled_write_bytes: %llu\0A\00", [48 x i8] zeroinitializer }, align 32
@proc_uid_seq_operations = external dso_local constant %struct.seq_operations, align 4
@proc_id_map_open.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@proc_gid_seq_operations = external dso_local constant %struct.seq_operations, align 4
@proc_projid_seq_operations = external dso_local constant %struct.seq_operations, align 4
@proc_setgroups_open.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"task\00", [27 x i8] zeroinitializer }, align 32
@proc_task_inode_operations = internal constant %struct.inode_operations { ptr @proc_task_lookup, ptr null, ptr @proc_pid_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr @proc_task_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@proc_task_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_task_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"map_files\00", [22 x i8] zeroinitializer }, align 32
@proc_map_files_inode_operations = internal constant %struct.inode_operations { ptr @proc_map_files_lookup, ptr null, ptr @proc_fd_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@proc_map_files_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_map_files_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"autogroup\00", [22 x i8] zeroinitializer }, align 32
@proc_pid_sched_autogroup_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @sched_autogroup_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sched_autogroup_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mountstats\00", [21 x i8] zeroinitializer }, align 32
@proc_mountstats_operations = external dso_local constant %struct.file_operations, align 4
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"coredump_filter\00", [16 x i8] zeroinitializer }, align 32
@proc_coredump_filter_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @proc_coredump_filter_read, ptr @proc_coredump_filter_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timers\00", [25 x i8] zeroinitializer }, align 32
@proc_timers_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @proc_timers_open, ptr null, ptr @seq_release_private, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"timerslack_ns\00", [18 x i8] zeroinitializer }, align 32
@proc_pid_set_timerslack_ns_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @timerslack_ns_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @timerslack_ns_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@proc_tid_base_inode_operations = internal constant %struct.inode_operations { ptr @proc_tid_base_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr @pid_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@proc_tid_base_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_tid_base_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@proc_map_files_link_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @proc_map_files_get_link, ptr null, ptr null, ptr @proc_pid_readlink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@tid_map_files_dentry_operations = internal constant %struct.dentry_operations { ptr @map_files_d_revalidate, ptr null, ptr null, ptr null, ptr @pid_delete_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.126 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%lx-%lx\00", [24 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%08lx\0A\00", [25 x i8] zeroinitializer }, align 32
@proc_timers_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @timers_start, ptr @timers_stop, ptr @timers_next, ptr @show_timer }, [16 x i8] zeroinitializer }, align 32
@show_timer.nstr = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.128, ptr @.str.129, ptr @.str.130], [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"signal\00", [25 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"thread\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ID: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"signal: %d/%px\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"notify: %s/%s.%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tid\00", [28 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ClockID: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@timerslack_ns_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@timerslack_ns_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.137 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 1836, i32 9 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2048, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [26 x i8] c"proc_tgid_base_operations\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3297, i32 37 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3450, i32 22 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3456, i32 22 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3472, i32 38 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"tid_base_stuff\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3526, i32 31 }
@___asan_gen_.169 = private unnamed_addr constant [16 x i8] c"tgid_base_stuff\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3179, i32 31 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 230, i32 6 }
@___asan_gen_.176 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 214, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 174, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 695, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 723, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 3566, i32 25 }
@___asan_gen_.194 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 3571, i32 25 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3527, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3528, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3529, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3531, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3533, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [24 x i8] c"proc_environ_operations\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 1005, i32 37 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3534, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [21 x i8] c"proc_auxv_operations\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 1032, i32 37 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3535, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [28 x i8] c"proc_single_file_operations\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 789, i32 37 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3536, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3537, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3539, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [26 x i8] c"proc_pid_sched_operations\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 1478, i32 37 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3541, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [29 x i8] c"proc_pid_set_comm_operations\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 1715, i32 37 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3545, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3547, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [21 x i8] c"proc_pid_cmdline_ops\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 376, i32 37 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3548, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3549, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3550, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3552, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3557, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [20 x i8] c"proc_mem_operations\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 929, i32 37 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3558, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3559, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3560, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3561, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3562, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3564, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3565, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3566, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3567, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3570, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [25 x i8] c"proc_attr_dir_operations\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2847, i32 37 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3573, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3576, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3579, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3582, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [23 x i8] c"proc_lstats_operations\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 540, i32 37 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3585, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3588, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3593, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3594, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [24 x i8] c"proc_oom_adj_operations\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 1192, i32 37 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3595, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [30 x i8] c"proc_oom_score_adj_operations\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 1243, i32 37 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3597, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant [25 x i8] c"proc_loginuid_operations\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 1311, i32 37 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3598, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [26 x i8] c"proc_sessionid_operations\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 1333, i32 37 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3601, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant [29 x i8] c"proc_fault_inject_operations\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 1388, i32 37 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3602, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [25 x i8] c"proc_fail_nth_operations\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 1429, i32 37 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3605, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3608, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant [24 x i8] c"proc_uid_map_operations\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3062, i32 37 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3609, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [24 x i8] c"proc_gid_map_operations\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3070, i32 37 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3610, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [27 x i8] c"proc_projid_map_operations\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3078, i32 37 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3611, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [26 x i8] c"proc_setgroups_operations\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3129, i32 37 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3143, i32 17 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 612, i32 14 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 619, i32 18 }
@___asan_gen_.400 = private unnamed_addr constant [7 x i8] c"lnames\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 576, i32 33 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 620, i32 24 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 622, i32 18 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 626, i32 18 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 628, i32 18 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 631, i32 18 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 577, i32 18 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 577, i32 34 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 578, i32 20 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 578, i32 37 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 579, i32 19 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 580, i32 20 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 581, i32 19 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 582, i32 18 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 583, i32 20 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 583, i32 37 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 584, i32 21 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 584, i32 39 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 585, i32 22 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 586, i32 17 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 587, i32 20 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 587, i32 38 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 588, i32 25 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 588, i32 48 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 589, i32 23 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 590, i32 19 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 591, i32 21 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 592, i32 21 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 592, i32 45 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 652, i32 15 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 654, i32 17 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 658, i32 10 }
@___asan_gen_.496 = private unnamed_addr constant [15 x i8] c"attr_dir_stuff\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2824, i32 31 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2825, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant [25 x i8] c"proc_pid_attr_operations\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2771, i32 37 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2826, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2827, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2828, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2829, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2830, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2832, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant [24 x i8] c"proc_smack_attr_dir_ops\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2812, i32 1 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2836, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant [27 x i8] c"proc_apparmor_attr_dir_ops\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2821, i32 1 }
@___asan_gen_.532 = private unnamed_addr constant [21 x i8] c"smack_attr_dir_stuff\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2809, i32 31 }
@___asan_gen_.535 = private unnamed_addr constant [24 x i8] c"apparmor_attr_dir_stuff\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2816, i32 31 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 461, i32 18 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 482, i32 17 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 500, i32 14 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 505, i32 18 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 512, i32 19 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 566, i32 16 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 1057, i32 41 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 1082, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant [30 x i8] c"../include/trace/events/oom.h\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 10, i32 1 }
@___asan_gen_.569 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 108, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 1210, i32 41 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 1353, i32 41 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 1424, i32 41 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2972, i32 6 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3180, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant [21 x i8] c"proc_task_operations\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3848, i32 37 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3182, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant [26 x i8] c"proc_map_files_operations\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2407, i32 37 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3197, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant [36 x i8] c"proc_pid_sched_autogroup_operations\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 1553, i32 37 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3219, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3262, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant [32 x i8] c"proc_coredump_filter_operations\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2939, i32 37 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3274, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant [23 x i8] c"proc_timers_operations\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2506, i32 37 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3276, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant [38 x i8] c"proc_pid_set_timerslack_ns_operations\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2598, i32 37 }
@___asan_gen_.622 = private unnamed_addr constant [25 x i8] c"proc_tid_base_operations\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 3637, i32 37 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2390, i32 36 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2885, i32 42 }
@___asan_gen_.631 = private unnamed_addr constant [20 x i8] c"proc_timers_seq_ops\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2485, i32 36 }
@___asan_gen_.634 = private unnamed_addr constant [5 x i8] c"nstr\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2463, i32 28 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2464, i32 20 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2465, i32 18 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2466, i32 20 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2472, i32 16 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2473, i32 16 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2476, i32 16 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2478, i32 35 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2478, i32 43 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2480, i32 16 }
@___asan_gen_.664 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.665 = private constant [18 x i8] c"../fs/proc/base.c\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 2584, i32 16 }
@llvm.compiler.used = appending global [177 x ptr] [ptr @__set_oom_adj._entry, ptr @__set_oom_adj._entry_ptr, ptr @.str, ptr @.str.1, ptr @proc_fill_cache.__key, ptr @.str.2, ptr @proc_tgid_base_operations, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tid_base_stuff, ptr @tgid_base_stuff, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @proc_environ_operations, ptr @.str.19, ptr @proc_auxv_operations, ptr @.str.20, ptr @proc_single_file_operations, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @proc_pid_sched_operations, ptr @.str.24, ptr @proc_pid_set_comm_operations, ptr @.str.25, ptr @.str.26, ptr @proc_pid_cmdline_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @proc_mem_operations, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @proc_attr_dir_operations, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @proc_lstats_operations, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @proc_oom_adj_operations, ptr @.str.50, ptr @proc_oom_score_adj_operations, ptr @.str.51, ptr @proc_loginuid_operations, ptr @.str.52, ptr @proc_sessionid_operations, ptr @.str.53, ptr @proc_fault_inject_operations, ptr @.str.54, ptr @proc_fail_nth_operations, ptr @.str.55, ptr @.str.56, ptr @proc_uid_map_operations, ptr @.str.57, ptr @proc_gid_map_operations, ptr @.str.58, ptr @proc_projid_map_operations, ptr @.str.59, ptr @proc_setgroups_operations, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @lnames, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @attr_dir_stuff, ptr @.str.94, ptr @proc_pid_attr_operations, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @proc_smack_attr_dir_ops, ptr @.str.101, ptr @proc_apparmor_attr_dir_ops, ptr @smack_attr_dir_stuff, ptr @apparmor_attr_dir_stuff, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @proc_task_operations, ptr @.str.120, ptr @proc_map_files_operations, ptr @.str.121, ptr @proc_pid_sched_autogroup_operations, ptr @.str.122, ptr @.str.123, ptr @proc_coredump_filter_operations, ptr @.str.124, ptr @proc_timers_operations, ptr @.str.125, ptr @proc_pid_set_timerslack_ns_operations, ptr @proc_tid_base_operations, ptr @.str.126, ptr @.str.127, ptr @proc_timers_seq_ops, ptr @show_timer.nstr, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137], section "llvm.metadata"
@0 = internal global [175 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_fill_cache.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_tgid_base_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tid_base_stuff to i32), i32 1104, i32 1376, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgid_base_stuff to i32), i32 1248, i32 1536, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_environ_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_auxv_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_single_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_pid_sched_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_pid_set_comm_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_pid_cmdline_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_mem_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_attr_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_lstats_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_oom_adj_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_oom_score_adj_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_loginuid_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sessionid_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_fault_inject_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_fail_nth_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_uid_map_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_gid_map_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_projid_map_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_setgroups_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lnames to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_dir_stuff to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_pid_attr_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_smack_attr_dir_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_apparmor_attr_dir_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_attr_dir_stuff to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_attr_dir_stuff to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_task_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_map_files_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_pid_sched_autogroup_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_coredump_filter_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_timers_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_pid_set_timerslack_ns_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_tid_base_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_timers_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_timer.nstr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_setattr(ptr nocapture readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %attr) #15
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -1, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @proc_mem_open(ptr nocapture noundef readonly %inode, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %inode, i32 -40
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %1, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then:                                          ; preds = %entry
  %or = or i32 %mode, 8
  %call2 = tail call ptr @mm_access(ptr noundef nonnull %call1.i, i32 noundef %or) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %tobool.not.i = icmp eq ptr %call2, null
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %put_task_struct.exit.if.end5_crit_edge, label %if.then4

put_task_struct.exit.if.end5_crit_edge:           ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  %mm_count.i = getelementptr inbounds %struct.anon.4, ptr %call2, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #15
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #15, !srcloc !412
  tail call void @mmput(ptr noundef nonnull %call2) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %put_task_struct.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %mm.0 = phi ptr [ %call2, %put_task_struct.exit.if.end5_crit_edge ], [ %call2, %if.then4 ], [ inttoptr (i32 -3 to ptr), %entry.if.end5_crit_edge ]
  ret ptr %mm.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mm_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @mem_lseek(ptr nocapture noundef %file, i64 noundef %offset, i32 noundef %orig) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %orig to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %orig, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %1 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %offset, ptr %f_pos, align 8
  br label %do.end

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %f_pos2 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %2 = ptrtoint ptr %f_pos2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %f_pos2, align 8
  %add = add i64 %3, %offset
  store i64 %add, ptr %f_pos2, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb1, %sw.bb
  %f_pos3 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %4 = ptrtoint ptr %f_pos3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %f_pos3, align 8
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i64 [ %5, %do.end ], [ -22, %entry.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_pid_get_link(ptr noundef %dentry, ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %done) #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #15
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !413
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !413
  %tobool.not = icmp eq ptr %dentry, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc zeroext i1 @proc_fd_access_allowed(ptr noundef %inode)
  br i1 %call1, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end3:                                          ; preds = %if.end
  %op = getelementptr i8, ptr %inode, i32 -32
  %3 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op, align 8
  %call5 = call i32 %4(ptr noundef nonnull %dentry, ptr noundef nonnull %path) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %call9 = call i32 @nd_jump_link(ptr noundef nonnull %path) #15
  br label %out

out:                                              ; preds = %if.end8, %if.end3.out_crit_edge, %if.end.out_crit_edge
  %error.0 = phi i32 [ %call5, %if.end3.out_crit_edge ], [ %call9, %if.end8 ], [ -13, %if.end.out_crit_edge ]
  %5 = inttoptr i32 %error.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %out ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #15
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_pid_readlink(ptr noundef %dentry, ptr noundef %buffer, i32 noundef %buflen) #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #15
  %2 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !413
  %3 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !413
  %call1 = tail call fastcc zeroext i1 @proc_fd_access_allowed(ptr noundef %1)
  br i1 %call1, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %op = getelementptr i8, ptr %1, i32 -32
  %5 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %op, align 8
  %call3 = call i32 %6(ptr noundef %dentry, ptr noundef nonnull %path) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end5:                                          ; preds = %if.end
  %call.i = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #15
  %7 = inttoptr i32 %call.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5.do_proc_readlink.exit_crit_edge, label %if.end.i

if.end5.do_proc_readlink.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_proc_readlink.exit

if.end.i:                                         ; preds = %if.end5
  %call1.i = call ptr @d_path(ptr noundef nonnull %path, ptr noundef nonnull %7, i32 noundef 4096) #15
  %8 = ptrtoint ptr %call1.i to i32
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.out.i_crit_edge, label %if.end5.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end5.i:                                        ; preds = %if.end.i
  %add.ptr6.i = getelementptr i8, ptr %7, i32 4095
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr6.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %8
  %9 = call i32 @llvm.smin.i32(i32 %sub.ptr.sub.i, i32 %buflen) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9.i.i.i = icmp slt i32 %9, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end5.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.out.i_crit_edge, label %if.then27.i.i.i, !prof !410

land.rhs16.i.i.i.out.i_crit_edge:                 ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %out.i

if.then.i.i.i.i:                                  ; preds = %if.end5.i
  call void @__check_object_size(ptr noundef %call1.i, i32 noundef %9, i1 noundef zeroext true) #15
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #15
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %9, i32 -1226833920) #18, !srcloc !414
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %call1.i, i32 noundef %9) #15
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef %call1.i, i32 noundef %9) #15
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %9, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %9, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool10.not.i = icmp eq i32 %n.addr.0.i.i, 0
  %spec.select.i = select i1 %tobool10.not.i, i32 %9, i32 -14
  br label %out.i

out.i:                                            ; preds = %copy_to_user.exit.i, %if.then27.i.i.i, %land.rhs16.i.i.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %len.1.i = phi i32 [ %8, %if.end.i.out.i_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.out.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @free_pages(i32 noundef %call.i, i32 noundef 0) #15
  br label %do_proc_readlink.exit

do_proc_readlink.exit:                            ; preds = %out.i, %if.end5.do_proc_readlink.exit_crit_edge
  %retval.0.i = phi i32 [ %len.1.i, %out.i ], [ -12, %if.end5.do_proc_readlink.exit_crit_edge ]
  call void @path_put(ptr noundef nonnull %path) #15
  br label %out

out:                                              ; preds = %do_proc_readlink.exit, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.0 = phi i32 [ %call3, %if.end.out_crit_edge ], [ %retval.0.i, %do_proc_readlink.exit ], [ -13, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #15
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @task_dump_owner(ptr noundef %task, i16 noundef zeroext %mode, ptr nocapture noundef writeonly %ruid, ptr nocapture noundef writeonly %rgid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !410

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 98
  %6 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %real_cred, align 4
  %call = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end14_crit_edge

rcu_read_lock.exit.do.end14_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b66 = load i1, ptr @task_dump_owner.__warned, align 1
  br i1 %.b66, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @task_dump_owner.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1836, ptr noundef nonnull @.str.1) #15
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %rcu_read_lock.exit.do.end14_crit_edge
  %euid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %8)
  %uid.sroa.0.0.copyload = load i32, ptr %euid, align 4
  %egid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 9
  %9 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %9)
  %gid.sroa.0.0.copyload = load i32, ptr %egid, align 4
  %call.i67 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i67, label %do.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i70

do.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i70:                                ; preds = %do.end14
  %call1.i68 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %tobool.not.i69 = icmp eq i32 %call1.i68, 0
  br i1 %tobool.not.i69, label %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i72

land.lhs.true.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i72:                               ; preds = %land.lhs.true.i70
  %.b4.i71 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i71, label %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, label %if.then.i73

land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i73:                                      ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i73, %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, %do.end14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %10 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i74 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i74 to ptr
  %preempt_count.i.i.i.i75 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i75, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i75, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 16749, i16 %mode)
  %cmp.not = icmp eq i16 %mode, 16749
  br i1 %cmp.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.then17

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then17:                                        ; preds = %rcu_read_unlock.exit
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #15
  %mm18 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 53
  %14 = ptrtoint ptr %mm18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mm18, align 8
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %if.then17.if.end48_crit_edge, label %if.then20

if.then17.if.end48_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then20:                                        ; preds = %if.then17
  %flags.i = getelementptr inbounds %struct.anon.4, ptr %15, i32 0, i32 43
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 8
  %and.i.i = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp22.not = icmp eq i32 %and.i.i, 1
  br i1 %cmp22.not, label %if.then20.if.end48_crit_edge, label %if.then24

if.then20.if.end48_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  %user_ns25 = getelementptr inbounds %struct.anon.4, ptr %15, i32 0, i32 47
  %18 = ptrtoint ptr %user_ns25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns25, align 8
  %call27 = tail call i32 @make_kuid(ptr noundef %19, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27)
  %cmp.i.not = icmp eq i32 %call27, -1
  %spec.select = select i1 %cmp.i.not, i32 0, i32 %call27
  %call35 = tail call i32 @make_kgid(ptr noundef %19, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call35)
  %cmp.i76.not = icmp eq i32 %call35, -1
  %gid.sroa.0.0 = select i1 %cmp.i76.not, i32 0, i32 %call35
  br label %if.end48

if.end48:                                         ; preds = %if.then24, %if.then20.if.end48_crit_edge, %if.then17.if.end48_crit_edge
  %gid.sroa.0.1 = phi i32 [ %gid.sroa.0.0, %if.then24 ], [ %gid.sroa.0.0.copyload, %if.then20.if.end48_crit_edge ], [ 0, %if.then17.if.end48_crit_edge ]
  %uid.sroa.0.1 = phi i32 [ %spec.select, %if.then24 ], [ %uid.sroa.0.0.copyload, %if.then20.if.end48_crit_edge ], [ 0, %if.then17.if.end48_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %rcu_read_unlock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %storemerge65 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %uid.sroa.0.1, %if.end48 ], [ %uid.sroa.0.0.copyload, %rcu_read_unlock.exit.cleanup_crit_edge ]
  %storemerge = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %gid.sroa.0.1, %if.end48 ], [ %gid.sroa.0.0.copyload, %rcu_read_unlock.exit.cleanup_crit_edge ]
  %20 = ptrtoint ptr %ruid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge65, ptr %ruid, align 4
  %21 = ptrtoint ptr %rgid to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %rgid, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_pid_evict_inode(ptr noundef %ei) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ei to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ei, align 8
  %vfs_inode = getelementptr inbounds %struct.proc_inode, ptr %ei, i32 0, i32 8
  %2 = ptrtoint ptr %vfs_inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vfs_inode, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.pid, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #15
  %pprev.i.i = getelementptr inbounds %struct.proc_inode, ptr %ei, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.not.i, label %if.then.hlist_del_init_rcu.exit_crit_edge, label %if.then.i

if.then.hlist_del_init_rcu.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %hlist_del_init_rcu.exit

if.then.i:                                        ; preds = %if.then
  %sibling_inodes = getelementptr inbounds %struct.proc_inode, ptr %ei, i32 0, i32 6
  %7 = ptrtoint ptr %sibling_inodes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sibling_inodes, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %6, align 4
  %tobool.not.i7.i = icmp eq ptr %8, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %11 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %if.then.hlist_del_init_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  br label %if.end

if.end:                                           ; preds = %hlist_del_init_rcu.exit, %entry.if.end_crit_edge
  tail call void @put_pid(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @proc_pid_make_inode(ptr noundef %sb, ptr noundef %task, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @new_inode(ptr noundef %sb) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %mode, ptr %call, align 8
  %call2 = tail call i32 @get_next_ino() #15
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %1 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call2, ptr %i_ino, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call) #15
  %2 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  %3 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %4 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %5 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @proc_def_inode_operations, ptr %i_op, align 8
  %call3 = call ptr @get_task_pid(ptr noundef %task, i32 noundef 0) #15
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %out_unlock, label %if.end6

if.end6:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call, i32 -40
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %add.ptr.i, align 8
  %7 = and i16 %mode, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %7)
  %cmp = icmp eq i16 %7, 16384
  br i1 %cmp, label %if.then9, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  %lock = getelementptr inbounds %struct.pid, ptr %call3, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock) #15
  %sibling_inodes = getelementptr i8, ptr %call, i32 -16
  %inodes = getelementptr inbounds %struct.pid, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %inodes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inodes, align 4
  %10 = ptrtoint ptr %sibling_inodes to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %sibling_inodes, align 4
  %pprev.i = getelementptr i8, ptr %call, i32 -12
  %11 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %inodes, ptr %pprev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !417
  %12 = ptrtoint ptr %inodes to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %sibling_inodes, ptr %inodes, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then9.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.then9.hlist_add_head_rcu.exit_crit_edge:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %sibling_inodes, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.then9.hlist_add_head_rcu.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #15
  br label %if.end11

if.end11:                                         ; preds = %hlist_add_head_rcu.exit, %if.end6.if.end11_crit_edge
  %i_uid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %i_gid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  call void @task_dump_owner(ptr noundef %task, i16 noundef zeroext 0, ptr noundef %i_uid, ptr noundef %i_gid)
  call void @security_task_to_inode(ptr noundef %task, ptr noundef nonnull %call) #15
  br label %cleanup

out_unlock:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @iput(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_unlock ], [ null, %entry.cleanup_crit_edge ], [ %call, %if.end11 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_pid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_task_to_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pid_getattr(ptr nocapture readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 %request_mask, i32 %query_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #15
  %uid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 9
  %8 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %uid, align 8
  %gid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 10
  %9 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %gid, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -40
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 8
  %call5 = tail call ptr @pid_task(ptr noundef %15, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end10_crit_edge, label %if.then

rcu_read_lock.exit.if.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then:                                          ; preds = %rcu_read_lock.exit
  %hide_pid.i = getelementptr inbounds %struct.proc_fs_info, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %hide_pid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hide_pid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp.i = icmp eq i32 %17, 4
  br i1 %cmp.i, label %if.then.has_pid_permissions.exit_crit_edge, label %if.end.i

if.then.has_pid_permissions.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %has_pid_permissions.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp2.i = icmp ult i32 %17, 2
  br i1 %cmp2.i, label %if.end.i.if.end_crit_edge, label %if.end4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  %pid_gid.i = getelementptr inbounds %struct.proc_fs_info, ptr %7, i32 0, i32 3
  %18 = ptrtoint ptr %pid_gid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack.i = load i32, ptr %pid_gid.i, align 4
  %19 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call5.i = tail call i32 @in_group_p([1 x i32] %19) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i22 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i22, label %if.end4.i.has_pid_permissions.exit_crit_edge, label %if.end4.i.if.end_crit_edge

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end4.i.has_pid_permissions.exit_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %has_pid_permissions.exit

has_pid_permissions.exit:                         ; preds = %if.end4.i.has_pid_permissions.exit_crit_edge, %if.then.has_pid_permissions.exit_crit_edge
  %call8.i = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %call5, i32 noundef 9) #15
  br i1 %call8.i, label %has_pid_permissions.exit.if.end_crit_edge, label %if.then7

has_pid_permissions.exit.if.end_crit_edge:        ; preds = %has_pid_permissions.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then7:                                         ; preds = %has_pid_permissions.exit
  %call.i23 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i23, label %if.then7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i26

if.then7.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i26:                                ; preds = %if.then7
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, %if.then7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  br label %cleanup

if.end:                                           ; preds = %has_pid_permissions.exit.if.end_crit_edge, %if.end4.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %3, align 8
  tail call void @task_dump_owner(ptr noundef nonnull %call5, i16 noundef zeroext %21, ptr noundef %uid, ptr noundef %gid)
  br label %if.end10

if.end10:                                         ; preds = %if.end, %rcu_read_lock.exit.if.end10_crit_edge
  %call.i32 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i32, label %if.end10.rcu_read_unlock.exit42_crit_edge, label %land.lhs.true.i35

if.end10.rcu_read_unlock.exit42_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit42

land.lhs.true.i35:                                ; preds = %if.end10
  %call1.i33 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true.i35.rcu_read_unlock.exit42_crit_edge, label %land.lhs.true2.i37

land.lhs.true.i35.rcu_read_unlock.exit42_crit_edge: ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit42

land.lhs.true2.i37:                               ; preds = %land.lhs.true.i35
  %.b4.i36 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i36, label %land.lhs.true2.i37.rcu_read_unlock.exit42_crit_edge, label %if.then.i38

land.lhs.true2.i37.rcu_read_unlock.exit42_crit_edge: ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit42

if.then.i38:                                      ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit42

rcu_read_unlock.exit42:                           ; preds = %if.then.i38, %land.lhs.true2.i37.rcu_read_unlock.exit42_crit_edge, %land.lhs.true.i35.rcu_read_unlock.exit42_crit_edge, %if.end10.rcu_read_unlock.exit42_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit42, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit42 ], [ -2, %rcu_read_unlock.exit ]
  %22 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i39 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i39 to ptr
  %preempt_count.i.i.i.i40 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i40, align 4
  %sub.i.i.i41 = add i32 %25, -1
  store volatile i32 %sub.i.i.i41, ptr %preempt_count.i.i.i.i40, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pid_update_inode(ptr noundef %task, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  tail call void @task_dump_owner(ptr noundef %task, i16 noundef zeroext %1, ptr noundef %i_uid, ptr noundef %i_gid)
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = and i16 %3, -3073
  store i16 %4, ptr %inode, align 8
  tail call void @security_task_to_inode(ptr noundef %task, ptr noundef %inode) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pid_delete_dentry(ptr nocapture noundef readonly %dentry) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %tasks.i = getelementptr inbounds %struct.pid, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tasks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tasks.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %conv = zext i1 %tobool.not.i to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pid_revalidate(ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %d_inode.i, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %rcu_read_lock.exit.out_crit_edge, label %if.end

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %rcu_read_lock.exit
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -40
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 8
  %call2 = tail call ptr @pid_task(ptr noundef %7, i32 noundef 0) #15
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.then4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %5, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 2
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 3
  tail call void @task_dump_owner(ptr noundef nonnull %call2, i16 noundef zeroext %9, ptr noundef %i_uid.i, ptr noundef %i_gid.i) #15
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %5, align 8
  %12 = and i16 %11, -3073
  store i16 %12, ptr %5, align 8
  tail call void @security_task_to_inode(ptr noundef nonnull %call2, ptr noundef nonnull %5) #15
  br label %out

out:                                              ; preds = %if.then4, %if.end.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %ret.0 = phi i32 [ 1, %if.then4 ], [ 0, %if.end.out_crit_edge ], [ 0, %rcu_read_lock.exit.out_crit_edge ]
  %call.i9 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i9, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i12

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i12:                                ; preds = %out
  %call1.i10 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %13 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i16 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i16 to ptr
  %preempt_count.i.i.i.i17 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i17, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i17, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @proc_fill_cache(ptr nocapture noundef readonly %file, ptr noundef %ctx, ptr noundef %name, i32 noundef %len, ptr nocapture noundef readonly %instantiate, ptr noundef %task, ptr noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  %qname = alloca %struct.qstr, align 8
  %wq = alloca %struct.wait_queue_head, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %qname) #15
  %2 = getelementptr inbounds i8, ptr %qname, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %2, align 8
  %4 = ptrtoint ptr %qname to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %len, ptr %qname, align 8
  %hash = getelementptr inbounds %struct.anon.15, ptr %qname, i32 0, i32 1
  %5 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %hash, align 4
  %name2 = getelementptr inbounds %struct.qstr, ptr %qname, i32 0, i32 1
  %6 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %name2, align 8
  %call = call ptr @d_hash_and_lookup(ptr noundef %1, ptr noundef nonnull %qname) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %wq) #15
  %7 = call ptr @memset(ptr %wq, i32 255, i32 52)
  call void @__init_waitqueue_head(ptr noundef nonnull %wq, ptr noundef nonnull @.str.2, ptr noundef nonnull @proc_fill_cache.__key) #15
  %call3 = call ptr @d_alloc_parallel(ptr noundef %1, ptr noundef nonnull %qname, ptr noundef nonnull %wq) #15
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.cleanup19_crit_edge, label %if.end

if.then.cleanup19_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup19

if.end:                                           ; preds = %if.then
  %8 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call3, align 8
  %and.i = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not = icmp eq i32 %and.i, 0
  br i1 %tobool7.not, label %if.end.cleanup19.thread_crit_edge, label %if.then8

if.end.cleanup19.thread_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup19.thread

if.then8:                                         ; preds = %if.end
  %call9 = call ptr %instantiate(ptr noundef %call3, ptr noundef %task, ptr noundef %ptr) #15
  %10 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call3, align 8
  %and.i.i = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then8.d_lookup_done.exit_crit_edge, label %if.then.i, !prof !410

if.then8.d_lookup_done.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %d_lookup_done.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %call3, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i) #15
  call void @__d_lookup_done(ptr noundef %call3) #15
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #15
  br label %d_lookup_done.exit

d_lookup_done.exit:                               ; preds = %if.then.i, %if.then8.d_lookup_done.exit_crit_edge
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %d_lookup_done.exit.cleanup19.thread_crit_edge, label %if.then13, !prof !410

d_lookup_done.exit.cleanup19.thread_crit_edge:    ; preds = %d_lookup_done.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup19.thread

if.then13:                                        ; preds = %d_lookup_done.exit
  call void @dput(ptr noundef %call3) #15
  %cmp.i46 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %if.then13.cleanup19_crit_edge, label %if.then13.cleanup19.thread_crit_edge

if.then13.cleanup19.thread_crit_edge:             ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup19.thread

if.then13.cleanup19_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup19

cleanup19.thread:                                 ; preds = %if.then13.cleanup19.thread_crit_edge, %d_lookup_done.exit.cleanup19.thread_crit_edge, %if.end.cleanup19.thread_crit_edge
  %child.3.ph = phi ptr [ %call3, %if.end.cleanup19.thread_crit_edge ], [ %call9, %if.then13.cleanup19.thread_crit_edge ], [ %call3, %d_lookup_done.exit.cleanup19.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wq) #15
  br label %if.end22

cleanup19:                                        ; preds = %if.then13.cleanup19_crit_edge, %if.then.cleanup19_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wq) #15
  br label %cleanup26

if.end22:                                         ; preds = %cleanup19.thread, %entry.if.end22_crit_edge
  %child.4 = phi ptr [ %call, %entry.if.end22_crit_edge ], [ %child.3.ph, %cleanup19.thread ]
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child.4, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %13, align 8
  %18 = lshr i16 %17, 12
  %19 = zext i16 %18 to i32
  call void @dput(ptr noundef %child.4) #15
  br label %cleanup26

cleanup26:                                        ; preds = %if.end22, %cleanup19
  %type.0 = phi i32 [ %19, %if.end22 ], [ 0, %cleanup19 ]
  %ino.0 = phi i32 [ %15, %if.end22 ], [ 1, %cleanup19 ]
  %conv24 = zext i32 %ino.0 to i64
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 8
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %22 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %pos.i, align 8
  %call.i = call i32 %21(ptr noundef %ctx, ptr noundef %name, i32 noundef %len, i64 noundef %23, i64 noundef %conv24, i32 noundef %type.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i47 = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %qname) #15
  ret i1 %cmp.i47
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_hash_and_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_parallel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @tgid_pidfd_to_pid(ptr nocapture noundef readonly %file) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %0 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op, align 4
  %cmp.not = icmp eq ptr %1, @proc_tgid_base_operations
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -40
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %5, %if.end ], [ inttoptr (i32 -9 to ptr), %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_flush_pid(ptr noundef %pid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %inodes = getelementptr inbounds %struct.pid, ptr %pid, i32 0, i32 4
  %lock = getelementptr inbounds %struct.pid, ptr %pid, i32 0, i32 2
  tail call void @proc_invalidate_siblings_dcache(ptr noundef %inodes, ptr noundef %lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_invalidate_siblings_dcache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @proc_pid_lookup(ptr noundef %dentry, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call1 = tail call i32 @name_to_int(ptr noundef %d_name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call3 = tail call ptr @find_task_by_pid_ns(i32 noundef %call1, ptr noundef %5) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %out.critedge, label %if.then4

if.then4:                                         ; preds = %rcu_read_lock.exit
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !418
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then4.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !419

if.then4.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then4
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !410

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then4.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then4.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #15
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %call.i27 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i27, label %get_task_struct.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i30

get_task_struct.exit.rcu_read_unlock.exit_crit_edge: ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i30:                                ; preds = %get_task_struct.exit
  %call1.i28 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool.not.i29, label %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i32

land.lhs.true.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i32:                               ; preds = %land.lhs.true.i30
  %.b4.i31 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i31, label %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, label %if.then.i33

land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i33:                                      ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i33, %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, %get_task_struct.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %12 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i34 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i34 to ptr
  %preempt_count.i.i.i.i35 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i35, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i35, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %hide_pid = getelementptr inbounds %struct.proc_fs_info, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %hide_pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hide_pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp10 = icmp eq i32 %17, 4
  br i1 %cmp10, label %has_pid_permissions.exit, label %rcu_read_unlock.exit.if.end15_crit_edge

rcu_read_unlock.exit.if.end15_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

has_pid_permissions.exit:                         ; preds = %rcu_read_unlock.exit
  %call8.i = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %call3, i32 noundef 9) #15
  br i1 %call8.i, label %has_pid_permissions.exit.if.end15_crit_edge, label %has_pid_permissions.exit.out_put_task_crit_edge

has_pid_permissions.exit.out_put_task_crit_edge:  ; preds = %has_pid_permissions.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_task

has_pid_permissions.exit.if.end15_crit_edge:      ; preds = %has_pid_permissions.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.end15:                                         ; preds = %has_pid_permissions.exit.if.end15_crit_edge, %rcu_read_unlock.exit.if.end15_crit_edge
  %call16 = tail call ptr @proc_pid_instantiate(ptr noundef %dentry, ptr noundef nonnull %call3, ptr noundef null)
  br label %out_put_task

out_put_task:                                     ; preds = %if.end15, %has_pid_permissions.exit.out_put_task_crit_edge
  %result.0 = phi ptr [ %call16, %if.end15 ], [ inttoptr (i32 -2 to ptr), %has_pid_permissions.exit.out_put_task_crit_edge ]
  %call.i.i.i.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i40, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_put_task
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i39 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i39, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %out

if.then.i40:                                      ; preds = %out_put_task
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call3) #15
  br label %out

out.critedge:                                     ; preds = %rcu_read_lock.exit
  %call.i42 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i42, label %out.critedge.rcu_read_unlock.exit52_crit_edge, label %land.lhs.true.i45

out.critedge.rcu_read_unlock.exit52_crit_edge:    ; preds = %out.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit52

land.lhs.true.i45:                                ; preds = %out.critedge
  %call1.i43 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %tobool.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool.not.i44, label %land.lhs.true.i45.rcu_read_unlock.exit52_crit_edge, label %land.lhs.true2.i47

land.lhs.true.i45.rcu_read_unlock.exit52_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit52

land.lhs.true2.i47:                               ; preds = %land.lhs.true.i45
  %.b4.i46 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i46, label %land.lhs.true2.i47.rcu_read_unlock.exit52_crit_edge, label %if.then.i48

land.lhs.true2.i47.rcu_read_unlock.exit52_crit_edge: ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit52

if.then.i48:                                      ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit52

rcu_read_unlock.exit52:                           ; preds = %if.then.i48, %land.lhs.true2.i47.rcu_read_unlock.exit52_crit_edge, %land.lhs.true.i45.rcu_read_unlock.exit52_crit_edge, %out.critedge.rcu_read_unlock.exit52_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %19 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i49 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i49 to ptr
  %preempt_count.i.i.i.i50 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i50, align 4
  %sub.i.i.i51 = add i32 %22, -1
  store volatile i32 %sub.i.i.i51, ptr %preempt_count.i.i.i.i50, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit52, %if.then.i40, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %entry.out_crit_edge
  %result.1 = phi ptr [ inttoptr (i32 -2 to ptr), %entry.out_crit_edge ], [ inttoptr (i32 -2 to ptr), %rcu_read_unlock.exit52 ], [ %result.0, %if.end5.i.i.i.i.out_crit_edge ], [ %result.0, %if.then10.i.i.i.i ], [ %result.0, %if.then.i40 ]
  ret ptr %result.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @name_to_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_pid_ns(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_pid_instantiate(ptr noundef %dentry, ptr noundef %task, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %call = tail call ptr @proc_pid_make_inode(ptr noundef %1, ptr noundef %task, i16 noundef zeroext 16749)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @proc_tgid_base_inode_operations, ptr %i_op, align 8
  %3 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @proc_tgid_base_operations, ptr %3, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_flags, align 4
  %or = or i32 %6, 8
  store i32 %or, ptr %i_flags, align 4
  %.b = load i1, ptr @nlink_tgid, align 1
  %conv = select i1 %.b, i32 9, i32 0
  tail call void @set_nlink(ptr noundef nonnull %call, i32 noundef %conv) #15
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %call, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  tail call void @task_dump_owner(ptr noundef %task, i16 noundef zeroext %8, ptr noundef %i_uid.i, ptr noundef %i_gid.i) #15
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %call, align 8
  %11 = and i16 %10, -3073
  store i16 %11, ptr %call, align 8
  tail call void @security_task_to_inode(ptr noundef %task, ptr noundef nonnull %call) #15
  tail call void @d_set_d_op(ptr noundef %dentry, ptr noundef nonnull @pid_dentry_operations) #15
  %call2 = tail call ptr @d_splice_alias(ptr noundef nonnull %call, ptr noundef %dentry) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_pid_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.tgid_iter, align 4
  %name = alloca [11 x i8], align 1
  %tmp56 = alloca %struct.tgid_iter, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %pos5 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %pos5 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 33025, i64 %9)
  %cmp = icmp sgt i64 %9, 33025
  br i1 %cmp, label %entry.cleanup58_crit_edge, label %if.end

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %9)
  %cmp6 = icmp eq i64 %9, 256
  br i1 %cmp6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end
  %proc_self = getelementptr inbounds %struct.proc_fs_info, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %proc_self to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc_self, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %15 to i64
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 8
  %call.i = tail call i32 %17(ptr noundef %ctx, ptr noundef nonnull @.str.3, i32 noundef 4, i64 noundef 256, i64 noundef %conv, i32 noundef 10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end13.thread, label %if.then7.cleanup58_crit_edge

if.then7.cleanup58_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

if.end13.thread:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %pos5 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 257, ptr %pos5, align 8
  br label %if.then16

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 257, i64 %9)
  %cmp14 = icmp eq i64 %9, 257
  %extract.t96 = trunc i64 %9 to i32
  br i1 %cmp14, label %if.end13.if.then16_crit_edge, label %if.end13.if.end29_crit_edge

if.end13.if.end29_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16

if.then16:                                        ; preds = %if.end13.if.then16_crit_edge, %if.end13.thread
  %proc_thread_self = getelementptr inbounds %struct.proc_fs_info, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %proc_thread_self to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %proc_thread_self, align 4
  %d_inode.i98 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode.i98 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i98, align 8
  %i_ino19 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %i_ino19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino19, align 8
  %conv20 = zext i32 %24 to i64
  %25 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx, align 8
  %27 = ptrtoint ptr %pos5 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %pos5, align 8
  %call.i100 = tail call i32 %26(ptr noundef %ctx, ptr noundef nonnull @.str.4, i32 noundef 11, i64 noundef %28, i64 noundef %conv20, i32 noundef 10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp.i101 = icmp eq i32 %call.i100, 0
  br i1 %cmp.i101, label %cleanup26.thread, label %if.then16.cleanup58_crit_edge

if.then16.cleanup58_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

cleanup26.thread:                                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %pos5 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 258, ptr %pos5, align 8
  br label %if.end29

if.end29:                                         ; preds = %cleanup26.thread, %if.end13.if.end29_crit_edge
  %pos.3.off0 = phi i32 [ %extract.t96, %if.end13.if.end29_crit_edge ], [ 258, %cleanup26.thread ]
  %conv30 = add i32 %pos.3.off0, -258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #15
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %conv30, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 0, 1
  call fastcc void @next_tgid(ptr nonnull sret(%struct.tgid_iter) align 4 %tmp, ptr noundef %7, [2 x i32] %.fca.1.insert)
  %30 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %30)
  %iter.sroa.0.0.copyload = load i32, ptr %tmp, align 4
  %iter.sroa.12.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 4
  %31 = ptrtoint ptr %iter.sroa.12.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %iter.sroa.12.0.copyload = load ptr, ptr %iter.sroa.12.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #15
  %tobool.not113 = icmp eq ptr %iter.sroa.12.0.copyload, null
  br i1 %tobool.not113, label %if.end29.for.end_crit_edge, label %for.body.lr.ph

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end29
  %hide_pid.i = getelementptr inbounds %struct.proc_fs_info, ptr %5, i32 0, i32 4
  %pid_gid.i = getelementptr inbounds %struct.proc_fs_info, ptr %5, i32 0, i32 3
  %iter.sroa.12.0.tmp56.sroa_idx = getelementptr inbounds i8, ptr %tmp56, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %iter.sroa.12.0115 = phi ptr [ %iter.sroa.12.0.copyload, %for.body.lr.ph ], [ %iter.sroa.12.0.copyload82, %for.inc.for.body_crit_edge ]
  %iter.sroa.0.0114 = phi i32 [ %iter.sroa.0.0.copyload, %for.body.lr.ph ], [ %iter.sroa.0.0.copyload81, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %name) #15
  %32 = call ptr @memset(ptr %name, i32 255, i32 11)
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 3468, i32 noundef 0) #15
  %call.i102 = call i32 @__cond_resched() #15
  %33 = ptrtoint ptr %hide_pid.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hide_pid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp.i103 = icmp eq i32 %34, 4
  br i1 %cmp.i103, label %for.body.has_pid_permissions.exit_crit_edge, label %if.end.i

for.body.has_pid_permissions.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %has_pid_permissions.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp2.i = icmp ult i32 %34, 2
  br i1 %cmp2.i, label %if.end.i.if.end37_crit_edge, label %if.end4.i

if.end.i.if.end37_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.end4.i:                                        ; preds = %if.end.i
  %35 = ptrtoint ptr %pid_gid.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack.i = load i32, ptr %pid_gid.i, align 4
  %36 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call5.i = call i32 @in_group_p([1 x i32] %36) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end4.i.has_pid_permissions.exit_crit_edge, label %if.end4.i.if.end37_crit_edge

if.end4.i.if.end37_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.end4.i.has_pid_permissions.exit_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %has_pid_permissions.exit

has_pid_permissions.exit:                         ; preds = %if.end4.i.has_pid_permissions.exit_crit_edge, %for.body.has_pid_permissions.exit_crit_edge
  %call8.i = call zeroext i1 @ptrace_may_access(ptr noundef nonnull %iter.sroa.12.0115, i32 noundef 9) #15
  br i1 %call8.i, label %has_pid_permissions.exit.if.end37_crit_edge, label %has_pid_permissions.exit.for.inc_crit_edge

has_pid_permissions.exit.for.inc_crit_edge:       ; preds = %has_pid_permissions.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

has_pid_permissions.exit.if.end37_crit_edge:      ; preds = %has_pid_permissions.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.end37:                                         ; preds = %has_pid_permissions.exit.if.end37_crit_edge, %if.end4.i.if.end37_crit_edge, %if.end.i.if.end37_crit_edge
  %call39 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 11, ptr noundef nonnull @.str.5, i32 noundef %iter.sroa.0.0114)
  %add41 = add i32 %iter.sroa.0.0114, 258
  %conv42 = zext i32 %add41 to i64
  %37 = ptrtoint ptr %pos5 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv42, ptr %pos5, align 8
  %call46 = call zeroext i1 @proc_fill_cache(ptr noundef %file, ptr noundef %ctx, ptr noundef nonnull %name, i32 noundef %call39, ptr noundef nonnull @proc_pid_instantiate, ptr noundef nonnull %iter.sroa.12.0115, ptr noundef null)
  br i1 %call46, label %if.end37.for.inc_crit_edge, label %if.then47

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then47:                                        ; preds = %if.end37
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %iter.sroa.12.0115, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup50.thread_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup50.thread_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup50.thread

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup50.thread

if.then.i:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void @__put_task_struct(ptr noundef nonnull %iter.sroa.12.0115) #15
  br label %cleanup50.thread

cleanup50.thread:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup50.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %name) #15
  br label %cleanup58

for.inc:                                          ; preds = %if.end37.for.inc_crit_edge, %has_pid_permissions.exit.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %name) #15
  %add55 = add i32 %iter.sroa.0.0114, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp56) #15
  %.fca.0.insert75 = insertvalue [2 x i32] poison, i32 %add55, 0
  %39 = ptrtoint ptr %iter.sroa.12.0115 to i32
  %.fca.1.insert78 = insertvalue [2 x i32] %.fca.0.insert75, i32 %39, 1
  call fastcc void @next_tgid(ptr nonnull sret(%struct.tgid_iter) align 4 %tmp56, ptr noundef %7, [2 x i32] %.fca.1.insert78)
  %40 = ptrtoint ptr %tmp56 to i32
  call void @__asan_load4_noabort(i32 %40)
  %iter.sroa.0.0.copyload81 = load i32, ptr %tmp56, align 4
  %41 = ptrtoint ptr %iter.sroa.12.0.tmp56.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %41)
  %iter.sroa.12.0.copyload82 = load ptr, ptr %iter.sroa.12.0.tmp56.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp56) #15
  %tobool.not = icmp eq ptr %iter.sroa.12.0.copyload82, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end29.for.end_crit_edge
  %42 = ptrtoint ptr %pos5 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 33026, ptr %pos5, align 8
  br label %cleanup58

cleanup58:                                        ; preds = %for.end, %cleanup50.thread, %if.then16.cleanup58_crit_edge, %if.then7.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @next_tgid(ptr noalias nocapture writeonly sret(%struct.tgid_iter) align 4 %agg.result, ptr noundef %ns, [2 x i32] %iter.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %iter.coerce.fca.0.extract = extractvalue [2 x i32] %iter.coerce, 0
  %iter.coerce.fca.1.extract = extractvalue [2 x i32] %iter.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.coerce.fca.1.extract)
  %tobool.not = icmp eq i32 %iter.coerce.fca.1.extract, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = inttoptr i32 %iter.coerce.fca.1.extract to ptr
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i24, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %if.end

if.then.i24:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %0) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i24, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call38 = tail call ptr @find_ge_pid(i32 noundef %iter.coerce.fca.0.extract, ptr noundef %ns) #15
  %tobool3.not39 = icmp eq ptr %call38, null
  br i1 %tobool3.not39, label %rcu_read_lock.exit.if.end16_crit_edge, label %rcu_read_lock.exit.if.then4_crit_edge

rcu_read_lock.exit.if.then4_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %if.then4

rcu_read_lock.exit.if.end16_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then4:                                         ; preds = %if.then11.if.then4_crit_edge, %rcu_read_lock.exit.if.then4_crit_edge
  %call40 = phi ptr [ %call, %if.then11.if.then4_crit_edge ], [ %call38, %rcu_read_lock.exit.if.then4_crit_edge ]
  %call5 = tail call i32 @pid_nr_ns(ptr noundef nonnull %call40, ptr noundef %ns) #15
  %call7 = tail call ptr @pid_task(ptr noundef nonnull %call40, i32 noundef 1) #15
  %tobool10.not = icmp eq ptr %call7, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then4
  %add = add i32 %call5, 1
  %call = tail call ptr @find_ge_pid(i32 noundef %add, ptr noundef %ns) #15
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then11.if.end16_crit_edge, label %if.then11.if.then4_crit_edge

if.then11.if.then4_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.end13:                                         ; preds = %if.then4
  %usage.i25 = getelementptr inbounds %struct.task_struct, ptr %call7, i32 0, i32 2
  %call.i.i.i.i.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i25, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %usage.i25, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i25, ptr %usage.i25, i32 1, ptr elementtype(i32) %usage.i25) #15, !srcloc !418
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end13.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !419

if.end13.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end13
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i27 = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i27, label %if.else.i.i.i.i.if.end16_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !410

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end16_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end13.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end13.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i25, i32 noundef %.sink.i.i.i.i) #15
  br label %if.end16

if.end16:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end16_crit_edge, %if.then11.if.end16_crit_edge, %rcu_read_lock.exit.if.end16_crit_edge
  %iter.sroa.0.1 = phi i32 [ %call5, %if.else.i.i.i.i.if.end16_crit_edge ], [ %call5, %if.end15.sink.split.i.i.i.i ], [ %iter.coerce.fca.0.extract, %rcu_read_lock.exit.if.end16_crit_edge ], [ %add, %if.then11.if.end16_crit_edge ]
  %iter.sroa.6.0 = phi ptr [ %call7, %if.else.i.i.i.i.if.end16_crit_edge ], [ %call7, %if.end15.sink.split.i.i.i.i ], [ null, %rcu_read_lock.exit.if.end16_crit_edge ], [ null, %if.then11.if.end16_crit_edge ]
  %call.i28 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i28, label %if.end16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i31

if.end16.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i31:                                ; preds = %if.end16
  %call1.i29 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29)
  %tobool.not.i30 = icmp eq i32 %call1.i29, 0
  br i1 %tobool.not.i30, label %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i33

land.lhs.true.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i33:                               ; preds = %land.lhs.true.i31
  %.b4.i32 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32, label %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, label %if.then.i34

land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i34:                                      ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i34, %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, %if.end16.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %8 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i35 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i35 to ptr
  %preempt_count.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i36, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i36, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %12 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %iter.sroa.0.1, ptr %agg.result, align 4
  %iter.sroa.6.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 4
  %13 = ptrtoint ptr %iter.sroa.6.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %iter.sroa.6.0, ptr %iter.sroa.6.0.agg.result.sroa_idx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @set_proc_pid_nlink() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @nlink_tid, align 1
  store i1 true, ptr @nlink_tgid, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @proc_fd_access_allowed(ptr nocapture noundef readonly %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %inode, i32 -40
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %1, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %call1.i, i32 noundef 9) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %allowed.0.off0 = phi i1 [ false, %entry.if.end_crit_edge ], [ %call1, %if.end5.i.i.i.i.if.end_crit_edge ], [ %call1, %if.then10.i.i.i.i ], [ %call1, %if.then.i ]
  ret i1 %allowed.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nd_jump_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__d_lookup_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_tgid_base_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @proc_pident_readdir(ptr noundef %file, ptr noundef %ctx, ptr noundef nonnull @tgid_base_stuff, i32 noundef 52)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @proc_pident_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx, ptr noundef %ents, i32 noundef %nents) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.138)
  switch i64 %5, label %if.end.if.end4_crit_edge [
    i64 0, label %if.then.i
    i64 1, label %if.end.if.then6.i_crit_edge
  ]

if.end.if.then6.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then.i:                                        ; preds = %if.end
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 8
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino.i.i, align 8
  %conv.i.i = zext i32 %13 to i64
  %call.i.i = tail call i32 %7(ptr noundef %ctx, ptr noundef nonnull @.str.12, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i.i, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end3.thread.i, label %if.then.i.out_crit_edge

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end3.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1, ptr %pos.i, align 8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.thread.i, %if.end.if.then6.i_crit_edge
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 8
  %dentry.i19.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %dentry.i19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dentry.i19.i, align 4
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #15
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_parent.i.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #15
  %conv.i20.i = zext i32 %24 to i64
  %call1.i.i = tail call i32 %16(ptr noundef %ctx, ptr noundef nonnull @.str.13, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i20.i, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i21.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i21.i, label %if.end9.i, label %if.then6.i.out_crit_edge

if.then6.i.out_crit_edge:                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 2, ptr %pos.i, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end9.i, %if.end.if.end4_crit_edge
  %26 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pos.i, align 8
  %add = add i32 %nents, 2
  %conv = zext i32 %add to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %conv)
  %cmp.not = icmp slt i64 %27, %conv
  br i1 %cmp.not, label %if.end7, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end7:                                          ; preds = %if.end4
  %28 = trunc i64 %27 to i32
  %idx.ext = add i32 %28, -2
  %add.ptr = getelementptr %struct.pid_entry, ptr %ents, i32 %idx.ext
  %add.ptr9 = getelementptr %struct.pid_entry, ptr %ents, i32 %nents
  %cmp1033 = icmp ult ptr %add.ptr, %add.ptr9
  br i1 %cmp1033, label %if.end7.for.body_crit_edge, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %if.end7.for.body_crit_edge
  %p.034 = phi ptr [ %incdec.ptr, %if.end14.for.body_crit_edge ], [ %add.ptr, %if.end7.for.body_crit_edge ]
  %29 = ptrtoint ptr %p.034 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p.034, align 4
  %len = getelementptr inbounds %struct.pid_entry, ptr %p.034, i32 0, i32 1
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %call12 = tail call zeroext i1 @proc_fill_cache(ptr noundef %file, ptr noundef %ctx, ptr noundef %30, i32 noundef %32, ptr noundef nonnull @proc_pident_instantiate, ptr noundef nonnull %call1.i, ptr noundef %p.034)
  br i1 %call12, label %if.end14, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end14:                                         ; preds = %for.body
  %33 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %pos.i, align 8
  %inc = add i64 %34, 1
  store i64 %inc, ptr %pos.i, align 8
  %incdec.ptr = getelementptr %struct.pid_entry, ptr %p.034, i32 1
  %cmp10 = icmp ult ptr %incdec.ptr, %add.ptr9
  br i1 %cmp10, label %if.end14.for.body_crit_edge, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

out:                                              ; preds = %if.end14.out_crit_edge, %for.body.out_crit_edge, %if.end7.out_crit_edge, %if.end4.out_crit_edge, %if.then6.i.out_crit_edge, %if.then.i.out_crit_edge
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i31, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i31:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i31, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_pident_instantiate(ptr noundef %dentry, ptr noundef %task, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %mode = getelementptr inbounds %struct.pid_entry, ptr %ptr, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 4
  %call = tail call ptr @proc_pid_make_inode(ptr noundef %1, ptr noundef %task, i16 noundef zeroext %3)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %call, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp = icmp eq i16 %6, 16384
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @set_nlink(ptr noundef nonnull %call, i32 noundef 2) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %iop = getelementptr inbounds %struct.pid_entry, ptr %ptr, i32 0, i32 3
  %7 = ptrtoint ptr %iop to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iop, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %9 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %i_op, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %fop = getelementptr inbounds %struct.pid_entry, ptr %ptr, i32 0, i32 4
  %10 = ptrtoint ptr %fop to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fop, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %12 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %op = getelementptr i8, ptr %call, i32 -32
  %op14 = getelementptr inbounds %struct.pid_entry, ptr %ptr, i32 0, i32 5
  %14 = ptrtoint ptr %op14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %op14, align 4
  %16 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %op, align 8
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %call, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  tail call void @task_dump_owner(ptr noundef %task, i16 noundef zeroext %18, ptr noundef %i_uid.i, ptr noundef %i_gid.i) #15
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %call, align 8
  %21 = and i16 %20, -3073
  store i16 %21, ptr %call, align 8
  tail call void @security_task_to_inode(ptr noundef %task, ptr noundef nonnull %call) #15
  tail call void @d_set_d_op(ptr noundef %dentry, ptr noundef nonnull @pid_dentry_operations) #15
  %call15 = tail call ptr @d_splice_alias(ptr noundef nonnull %call, ptr noundef %dentry) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call15, %if.end13 ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_tgid_base_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @proc_pident_lookup(ptr noundef %dir, ptr noundef %dentry, ptr noundef nonnull @tgid_base_stuff, ptr noundef getelementptr inbounds ([52 x %struct.pid_entry], ptr @tgid_base_stuff, i32 1, i32 0))
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_pid_permission(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %inode, i32 -40
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %5, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %hide_pid.i = getelementptr inbounds %struct.proc_fs_info, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %hide_pid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hide_pid.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %7, label %if.end4.i [
    i32 4, label %if.end.return.sink.split.i_crit_edge
    i32 0, label %if.end.has_pid_permissions.exit_crit_edge
  ]

if.end.has_pid_permissions.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %has_pid_permissions.exit

if.end.return.sink.split.i_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split.i

if.end4.i:                                        ; preds = %if.end
  %pid_gid.i = getelementptr inbounds %struct.proc_fs_info, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %pid_gid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack.i = load i32, ptr %pid_gid.i, align 4
  %10 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call5.i = tail call i32 @in_group_p([1 x i32] %10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end4.i.return.sink.split.i_crit_edge, label %if.end4.i.has_pid_permissions.exit_crit_edge

if.end4.i.has_pid_permissions.exit_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %has_pid_permissions.exit

if.end4.i.return.sink.split.i_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.end4.i.return.sink.split.i_crit_edge, %if.end.return.sink.split.i_crit_edge
  %call8.i = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %call1.i, i32 noundef 9) #15
  br label %has_pid_permissions.exit

has_pid_permissions.exit:                         ; preds = %return.sink.split.i, %if.end4.i.has_pid_permissions.exit_crit_edge, %if.end.has_pid_permissions.exit_crit_edge
  %retval.0.i = phi i1 [ true, %if.end4.i.has_pid_permissions.exit_crit_edge ], [ %call8.i, %return.sink.split.i ], [ true, %if.end.has_pid_permissions.exit_crit_edge ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %has_pid_permissions.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %has_pid_permissions.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  br i1 %retval.0.i, label %if.end7, label %if.then4

if.then4:                                         ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %hide_pid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hide_pid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp eq i32 %13, 2
  %. = select i1 %cmp, i32 -2, i32 -1
  br label %cleanup

if.end7:                                          ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i32 noundef %mask) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ -3, %entry.cleanup_crit_edge ], [ %., %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @proc_pident_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, ptr noundef readonly %p, ptr noundef readnone %end) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dir, i32 -40
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %1, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.out_no_task_crit_edge, label %for.cond.preheader

entry.out_no_task_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_no_task

for.cond.preheader:                               ; preds = %entry
  %cmp24 = icmp ult ptr %p, %end
  br i1 %cmp24, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.addr.025 = phi ptr [ %p, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %len = getelementptr inbounds %struct.pid_entry, ptr %p.addr.025, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp3.not = icmp eq i32 %5, %3
  br i1 %cmp3.not, label %if.end5, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %8 = ptrtoint ptr %p.addr.025 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p.addr.025, align 4
  %bcmp = tail call i32 @bcmp(ptr %7, ptr %9, i32 %3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool10.not = icmp eq i32 %bcmp, 0
  br i1 %tobool10.not, label %if.then11, label %if.end5.for.inc_crit_edge

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %call12 = tail call ptr @proc_pident_instantiate(ptr noundef %dentry, ptr noundef nonnull %call1.i, ptr noundef %p.addr.025)
  br label %for.end

for.inc:                                          ; preds = %if.end5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.pid_entry, ptr %p.addr.025, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %end
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then11, %for.cond.preheader.for.end_crit_edge
  %res.0 = phi ptr [ %call12, %if.then11 ], [ inttoptr (i32 -2 to ptr), %for.cond.preheader.for.end_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.for.end_crit_edge ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_no_task_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.out_no_task_crit_edge:            ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_no_task

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %out_no_task

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %out_no_task

out_no_task:                                      ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_no_task_crit_edge, %entry.out_no_task_crit_edge
  %res.1 = phi ptr [ inttoptr (i32 -2 to ptr), %entry.out_no_task_crit_edge ], [ %res.0, %if.end5.i.i.i.i.out_no_task_crit_edge ], [ %res.0, %if.then10.i.i.i.i ], [ %res.0, %if.then.i ]
  ret ptr %res.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_ge_pid(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_pid_status(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_pid_personality(ptr noundef %m, ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %pid, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %0 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal.i, align 16
  %exec_update_lock.i = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 61
  %call.i = tail call i32 @down_read_killable(ptr noundef %exec_update_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call zeroext i1 @ptrace_may_access(ptr noundef %task, i32 noundef 10) #15
  br i1 %call1.i, label %if.then, label %if.end.i.if.end.sink.split_crit_edge

if.end.i.if.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.sink.split

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %personality = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 62
  %2 = ptrtoint ptr %personality to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %personality, align 32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.60, i32 noundef %3) #15
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.then, %if.end.i.if.end.sink.split_crit_edge
  %retval.0.i8.ph = phi i32 [ 0, %if.then ], [ -1, %if.end.i.if.end.sink.split_crit_edge ]
  %4 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal.i, align 16
  %exec_update_lock4.i = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 61
  tail call void @up_read(ptr noundef %exec_update_lock4.i) #15
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %entry.if.end_crit_edge
  %retval.0.i8 = phi i32 [ %call.i, %entry.if.end_crit_edge ], [ %retval.0.i8.ph, %if.end.sink.split ]
  ret i32 %retval.0.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_pid_limits(ptr noundef %m, ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %pid, ptr noundef %task) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  %rlim = alloca [16 x %struct.rlimit], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #15
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !413
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %rlim) #15
  %call.i = call ptr @__lock_task_sighand(ptr noundef %task, ptr noundef nonnull %flags) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %1 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %signal, align 16
  %rlim1 = getelementptr inbounds %struct.signal_struct, ptr %2, i32 0, i32 51
  %3 = call ptr @memcpy(ptr %rlim, ptr %rlim1, i32 128)
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 112
  %4 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sighand.i, align 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %7) #15
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.61) #15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.046 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.rlimit], ptr %rlim, i32 0, i32 %i.046
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp3 = icmp eq i32 %9, -1
  %arrayidx5 = getelementptr [16 x %struct.limit_names], ptr @lnames, i32 0, i32 %i.046
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5, align 4
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.62, ptr noundef %11, ptr noundef nonnull @.str.63) #15
  br label %if.end10

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.64, ptr noundef %11, i32 noundef %9) #15
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4
  %rlim_max = getelementptr [16 x %struct.rlimit], ptr %rlim, i32 0, i32 %i.046, i32 1
  %12 = ptrtoint ptr %rlim_max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rlim_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp12 = icmp eq i32 %13, -1
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63) #15
  br label %if.end17

if.else14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.66, i32 noundef %13) #15
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then13
  %14 = add nsw i32 %i.046, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %if.else23, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %unit = getelementptr [16 x %struct.limit_names], ptr @lnames, i32 0, i32 %i.046, i32 1
  %16 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unit, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.67, ptr noundef %17) #15
  br label %for.inc

if.else23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #15
  br label %for.inc

for.inc:                                          ; preds = %if.else23, %if.then20
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %rlim) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_pid_syscall(ptr noundef %m, ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %pid, ptr noundef %task) #0 align 64 {
entry:
  %info = alloca %struct.syscall_info, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %info) #15
  %0 = call ptr @memset(ptr %info, i32 255, i32 72)
  %data = getelementptr inbounds %struct.syscall_info, ptr %info, i32 0, i32 1
  %args1 = getelementptr inbounds %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %1 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %signal.i, align 16
  %exec_update_lock.i = getelementptr inbounds %struct.signal_struct, ptr %2, i32 0, i32 61
  %call.i = tail call i32 @down_read_killable(ptr noundef %exec_update_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call zeroext i1 @ptrace_may_access(ptr noundef %task, i32 noundef 10) #15
  br i1 %call1.i, label %if.end, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %signal.i, align 16
  %exec_update_lock4.i = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 61
  tail call void @up_read(ptr noundef %exec_update_lock4.i) #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call2 = call i32 @task_current_syscall(ptr noundef %task, ptr noundef nonnull %info) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.91) #15
  br label %if.end23

if.else:                                          ; preds = %if.end
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then6, label %if.else10

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %info, align 8
  %instruction_pointer = getelementptr inbounds %struct.syscall_info, ptr %info, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %instruction_pointer to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %instruction_pointer, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.92, i32 noundef %6, i64 noundef %8, i64 noundef %10) #15
  br label %if.end23

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %args1 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %args1, align 8
  %arrayidx14 = getelementptr inbounds %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3, i32 1
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3, i32 3
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3, i32 4
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3, i32 5
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx18, align 8
  %23 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %info, align 8
  %instruction_pointer21 = getelementptr inbounds %struct.syscall_info, ptr %info, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %instruction_pointer21 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %instruction_pointer21, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.93, i32 noundef %6, i64 noundef %12, i64 noundef %14, i64 noundef %16, i64 noundef %18, i64 noundef %20, i64 noundef %22, i64 noundef %24, i64 noundef %26) #15
  br label %if.end23

if.end23:                                         ; preds = %if.else10, %if.then6, %if.then4
  %27 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %signal.i, align 16
  %exec_update_lock.i37 = getelementptr inbounds %struct.signal_struct, ptr %28, i32 0, i32 61
  call void @up_read(ptr noundef %exec_update_lock.i37) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then2.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ %call.i, %entry.cleanup_crit_edge ], [ -1, %if.then2.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %info) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_tid_stat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_pid_statm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_cwd_link(ptr nocapture noundef readonly %dentry, ptr noundef %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then:                                          ; preds = %entry
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #15
  %fs = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 107
  %4 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs, align 128
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %lock.i = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #15
  %pwd1.i = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %pwd1.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %pwd1.i, align 4
  %8 = ptrtoint ptr %path to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %path, align 4
  tail call void @path_get(ptr noundef %path) #15
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #15
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %result.0 = phi i32 [ 0, %if.then3 ], [ -2, %if.then.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end5_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.if.end5_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %if.end5

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %result.1 = phi i32 [ -2, %entry.if.end5_crit_edge ], [ %result.0, %if.end5.i.i.i.i.if.end5_crit_edge ], [ %result.0, %if.then10.i.i.i.i ], [ %result.0, %if.then.i ]
  ret i32 %result.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_root_link(ptr nocapture noundef readonly %dentry, ptr noundef %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %alloc_lock.i.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i) #15
  %fs.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 107
  %4 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs.i, align 128
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.get_task_root.exit_crit_edge, label %if.then.i

if.then.get_task_root.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_task_root.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %lock.i.i = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #15
  %root1.i.i = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %root1.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %root1.i.i, align 4
  %8 = ptrtoint ptr %path to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %path, align 4
  tail call void @path_get(ptr noundef %path) #15
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #15
  br label %get_task_root.exit

get_task_root.exit:                               ; preds = %if.then.i, %if.then.get_task_root.exit_crit_edge
  %result.0.i = phi i32 [ 0, %if.then.i ], [ -2, %if.then.get_task_root.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i.i) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i5, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %get_task_root.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %if.end

if.then.i5:                                       ; preds = %get_task_root.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i5, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %result.0 = phi i32 [ -2, %entry.if.end_crit_edge ], [ %result.0.i, %if.end5.i.i.i.i.if.end_crit_edge ], [ %result.0.i, %if.then10.i.i.i.i ], [ %result.0.i, %if.then.i5 ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_exe_link(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %exe_path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @get_task_exe_file(ptr noundef nonnull %call1.i) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %put_task_struct.exit.cleanup_crit_edge, label %if.then4

put_task_struct.exit.cleanup_crit_edge:           ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4:                                         ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  %f_path = getelementptr inbounds %struct.file, ptr %call2, i32 0, i32 1
  %5 = ptrtoint ptr %f_path to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %f_path, align 8
  %7 = ptrtoint ptr %exe_path to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %exe_path, align 4
  tail call void @path_get(ptr noundef %f_path) #15
  tail call void @fput(ptr noundef nonnull %call2) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %put_task_struct.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ -2, %entry.cleanup_crit_edge ], [ -2, %put_task_struct.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_pid_wchan(ptr noundef %m, ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %pid, ptr noundef %task) #0 align 64 {
entry:
  %symname = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %symname) #15
  %0 = call ptr @memset(ptr %symname, i32 255, i32 128)
  %call = tail call zeroext i1 @ptrace_may_access(ptr noundef %task, i32 noundef 9) #15
  br i1 %call, label %if.end, label %entry.print0_crit_edge

entry.print0_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %print0

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @get_wchan(ptr noundef %task) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.print0_crit_edge, label %land.lhs.true

if.end.print0_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %print0

land.lhs.true:                                    ; preds = %if.end
  %call2 = call i32 @lookup_symbol_name(i32 noundef %call1, ptr noundef nonnull %symname) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.print0_crit_edge

land.lhs.true.print0_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %print0

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %symname) #15
  br label %cleanup

print0:                                           ; preds = %land.lhs.true.print0_crit_edge, %if.end.print0_crit_edge, %entry.print0_crit_edge
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 48) #15
  br label %cleanup

cleanup:                                          ; preds = %print0, %if.then4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %symname) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_pid_stack(ptr noundef %m, ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %pid, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %call = tail call zeroext i1 @file_ns_capable(ptr noundef %1, ptr noundef nonnull @init_user_ns, i32 noundef 21) #15
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 256) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %3 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %signal.i, align 16
  %exec_update_lock.i = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 61
  %call.i = tail call i32 @down_read_killable(ptr noundef %exec_update_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.if.end8_crit_edge

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.end.i:                                         ; preds = %if.end3
  %call1.i = tail call zeroext i1 @ptrace_may_access(ptr noundef %task, i32 noundef 10) #15
  br i1 %call1.i, label %if.then6, label %if.end.i.if.end8.sink.split_crit_edge

if.end.i.if.end8.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.sink.split

if.then6:                                         ; preds = %if.end.i
  %call7 = tail call i32 @stack_trace_save_tsk(ptr noundef %task, ptr noundef nonnull %call7.i.i, i32 noundef 64, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp24.not = icmp eq i32 %call7, 0
  br i1 %cmp24.not, label %if.then6.if.end8.sink.split_crit_edge, label %if.then6.for.body_crit_edge

if.then6.for.body_crit_edge:                      ; preds = %if.then6
  br label %for.body

if.then6.if.end8.sink.split_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.sink.split

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then6.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then6.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call7.i.i, i32 %i.025
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = inttoptr i32 %6 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.103, ptr noundef %7) #15
  %inc = add nuw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %call7
  br i1 %exitcond.not, label %for.body.if.end8.sink.split_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.if.end8.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.sink.split

if.end8.sink.split:                               ; preds = %for.body.if.end8.sink.split_crit_edge, %if.then6.if.end8.sink.split_crit_edge, %if.end.i.if.end8.sink.split_crit_edge
  %retval.0.i23.ph = phi i32 [ -1, %if.end.i.if.end8.sink.split_crit_edge ], [ 0, %if.then6.if.end8.sink.split_crit_edge ], [ 0, %for.body.if.end8.sink.split_crit_edge ]
  %8 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal.i, align 16
  %exec_update_lock4.i = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 61
  tail call void @up_read(ptr noundef %exec_update_lock4.i) #15
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %if.end3.if.end8_crit_edge
  %retval.0.i23 = phi i32 [ %call.i, %if.end3.if.end8_crit_edge ], [ %retval.0.i23.ph, %if.end8.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i23, %if.end8 ], [ -13, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_pid_schedstat(ptr noundef %m, ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %pid, ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sum_exec_runtime = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 18, i32 5
  %0 = ptrtoint ptr %sum_exec_runtime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sum_exec_runtime, align 8
  %sched_info = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 49
  %run_delay = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 49, i32 1
  %2 = ptrtoint ptr %run_delay to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %run_delay, align 8
  %4 = ptrtoint ptr %sched_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sched_info, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.105, i64 noundef %1, i64 noundef %3, i32 noundef %5) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_cpuset_show(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_cgroup_show(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_oom_score(ptr noundef %m, ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %pid, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %0 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @total_swap_pages to i32))
  %1 = load i32, ptr @total_swap_pages, align 4
  %add = add i32 %1, %0
  %call1 = tail call i32 @oom_badness(ptr noundef %task, i32 noundef %add) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %call1)
  %cmp.not = icmp eq i32 %call1, -2147483648
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %mul = mul i32 %call1, 1000
  %div = sdiv i32 %mul, %add
  %add2 = shl i32 %div, 1
  %mul3 = add i32 %add2, 2000
  %div4 = sdiv i32 %mul3, 3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %points.0 = phi i32 [ %div4, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.109, i32 noundef %points.0) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_tid_io_accounting(ptr noundef %m, ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %pid, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioac.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 155
  %0 = ptrtoint ptr %ioac.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %acct.sroa.0.0.copyload.i = load i64, ptr %ioac.i, align 8
  %acct.sroa.9.0.ioac.sroa_idx.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 155, i32 1
  %1 = ptrtoint ptr %acct.sroa.9.0.ioac.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %acct.sroa.9.0.copyload.i = load i64, ptr %acct.sroa.9.0.ioac.sroa_idx.i, align 8
  %acct.sroa.14.0.ioac.sroa_idx.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 155, i32 2
  %2 = ptrtoint ptr %acct.sroa.14.0.ioac.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %acct.sroa.14.0.copyload.i = load i64, ptr %acct.sroa.14.0.ioac.sroa_idx.i, align 8
  %acct.sroa.19.0.ioac.sroa_idx.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 155, i32 3
  %3 = ptrtoint ptr %acct.sroa.19.0.ioac.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %acct.sroa.19.0.copyload.i = load i64, ptr %acct.sroa.19.0.ioac.sroa_idx.i, align 8
  %acct.sroa.24.0.ioac.sroa_idx.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 155, i32 4
  %4 = ptrtoint ptr %acct.sroa.24.0.ioac.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %acct.sroa.24.0.copyload.i = load i64, ptr %acct.sroa.24.0.ioac.sroa_idx.i, align 8
  %acct.sroa.29.0.ioac.sroa_idx.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 155, i32 5
  %5 = ptrtoint ptr %acct.sroa.29.0.ioac.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %acct.sroa.29.0.copyload.i = load i64, ptr %acct.sroa.29.0.ioac.sroa_idx.i, align 8
  %acct.sroa.34.0.ioac.sroa_idx.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 155, i32 6
  %6 = ptrtoint ptr %acct.sroa.34.0.ioac.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %acct.sroa.34.0.copyload.i = load i64, ptr %acct.sroa.34.0.ioac.sroa_idx.i, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %7 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %signal.i, align 16
  %exec_update_lock.i = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 61
  %call.i = tail call i32 @down_read_killable(ptr noundef %exec_update_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do_io_accounting.exit_crit_edge

entry.do_io_accounting.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_io_accounting.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call zeroext i1 @ptrace_may_access(ptr noundef %task, i32 noundef 9) #15
  br i1 %call1.i, label %if.end3.i, label %if.end.i.out_unlock.i_crit_edge

if.end.i.out_unlock.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock.i

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.118, i64 noundef %acct.sroa.0.0.copyload.i, i64 noundef %acct.sroa.9.0.copyload.i, i64 noundef %acct.sroa.14.0.copyload.i, i64 noundef %acct.sroa.19.0.copyload.i, i64 noundef %acct.sroa.24.0.copyload.i, i64 noundef %acct.sroa.29.0.copyload.i, i64 noundef %acct.sroa.34.0.copyload.i) #15
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %if.end3.i, %if.end.i.out_unlock.i_crit_edge
  %result.0.i = phi i32 [ 0, %if.end3.i ], [ -13, %if.end.i.out_unlock.i_crit_edge ]
  %9 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %signal.i, align 16
  %exec_update_lock14.i = getelementptr inbounds %struct.signal_struct, ptr %10, i32 0, i32 61
  tail call void @up_read(ptr noundef %exec_update_lock14.i) #15
  br label %do_io_accounting.exit

do_io_accounting.exit:                            ; preds = %out_unlock.i, %entry.do_io_accounting.exit_crit_edge
  %retval.0.i = phi i32 [ %result.0.i, %out_unlock.i ], [ %call.i, %entry.do_io_accounting.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @environ_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %1 to i32
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup44_crit_edge, label %lor.lhs.false

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup44

lor.lhs.false:                                    ; preds = %entry
  %env_end1 = getelementptr inbounds %struct.anon.4, ptr %3, i32 0, i32 38
  %4 = ptrtoint ptr %env_end1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %env_end1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup44_crit_edge, label %if.end

lor.lhs.false.cleanup44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup44

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #15
  %6 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.cleanup44_crit_edge, label %if.end5

if.end.cleanup44_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup44

if.end5:                                          ; preds = %if.end
  %mm_users.i = getelementptr inbounds %struct.anon.4, ptr %3, i32 0, i32 10
  %call.i.i.i85 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !420
  tail call void @llvm.prefetch.p0(ptr %mm_users.i, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i, ptr %mm_users.i, i32 0, i32 1, ptr elementtype(i32) %mm_users.i) #15, !srcloc !421
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.end5.free_crit_edge, label %if.end8

if.end5.free_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %free

if.end8:                                          ; preds = %if.end5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !422
  %arg_lock = getelementptr inbounds %struct.anon.4, ptr %3, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %arg_lock) #15
  %env_start9 = getelementptr inbounds %struct.anon.4, ptr %3, i32 0, i32 37
  %8 = ptrtoint ptr %env_start9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %env_start9, align 8
  %10 = ptrtoint ptr %env_end1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %env_end1, align 4
  tail call void @_raw_spin_unlock(ptr noundef %arg_lock) #15
  %sub = sub i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not97 = icmp ne i32 %count, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp14.not98 = icmp ugt i32 %sub, %conv
  %or.cond99 = select i1 %cmp.not97, i1 %cmp14.not98, i1 false
  br i1 %or.cond99, label %if.end8.if.end17_crit_edge, label %if.end8.while.end_crit_edge

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  br label %if.end17

if.end17:                                         ; preds = %cleanup.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  %buf.addr.0103 = phi ptr [ %add.ptr, %cleanup.if.end17_crit_edge ], [ %buf, %if.end8.if.end17_crit_edge ]
  %ret.0102 = phi i32 [ %add38, %cleanup.if.end17_crit_edge ], [ 0, %if.end8.if.end17_crit_edge ]
  %src.0101 = phi i32 [ %add39, %cleanup.if.end17_crit_edge ], [ %conv, %if.end8.if.end17_crit_edge ]
  %count.addr.0100 = phi i32 [ %sub40, %cleanup.if.end17_crit_edge ], [ %count, %if.end8.if.end17_crit_edge ]
  %add = add i32 %src.0101, %9
  %sub18 = sub i32 %11, %add
  %12 = tail call i32 @llvm.umin.i32(i32 %count.addr.0100, i32 %sub18)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 4096)
  %call29 = tail call i32 @access_remote_vm(ptr noundef nonnull %3, i32 noundef %add, ptr noundef nonnull %6, i32 noundef %13, i32 noundef 32768) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 1
  br i1 %cmp30, label %if.end17.while.end_crit_edge, label %if.then.i.i.i

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.then.i.i.i:                                    ; preds = %if.end17
  tail call void @__check_object_size(ptr noundef nonnull %6, i32 noundef %call29, i1 noundef zeroext true) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then.i.i.i.while.end_crit_edge, label %if.end.i.i

if.then.i.i.i.while.end_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0103, i32 %call29, i32 -1226833920) #18, !srcloc !414
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.while.end_crit_edge

if.end.i.i.while.end_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %6, i32 noundef %call29) #15
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf.addr.0103, ptr noundef nonnull %6, i32 noundef %call29) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool35.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool35.not, label %cleanup, label %copy_to_user.exit.while.end_crit_edge

copy_to_user.exit.while.end_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

cleanup:                                          ; preds = %copy_to_user.exit
  %add38 = add i32 %call29, %ret.0102
  %add39 = add i32 %call29, %src.0101
  %add.ptr = getelementptr i8, ptr %buf.addr.0103, i32 %call29
  %sub40 = sub i32 %count.addr.0100, %call29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub40)
  %cmp.not = icmp ne i32 %sub40, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add39, i32 %sub)
  %cmp14.not = icmp ult i32 %add39, %sub
  %or.cond = select i1 %cmp.not, i1 %cmp14.not, i1 false
  br i1 %or.cond, label %cleanup.if.end17_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

cleanup.if.end17_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %copy_to_user.exit.while.end_crit_edge, %if.end.i.i.while.end_crit_edge, %if.then.i.i.i.while.end_crit_edge, %if.end17.while.end_crit_edge, %if.end8.while.end_crit_edge
  %src.096 = phi i32 [ %conv, %if.end8.while.end_crit_edge ], [ %add39, %cleanup.while.end_crit_edge ], [ %src.0101, %if.end17.while.end_crit_edge ], [ %src.0101, %copy_to_user.exit.while.end_crit_edge ], [ %src.0101, %if.then.i.i.i.while.end_crit_edge ], [ %src.0101, %if.end.i.i.while.end_crit_edge ]
  %ret.2 = phi i32 [ 0, %if.end8.while.end_crit_edge ], [ %add38, %cleanup.while.end_crit_edge ], [ %call29, %if.end17.while.end_crit_edge ], [ -14, %copy_to_user.exit.while.end_crit_edge ], [ -14, %if.then.i.i.i.while.end_crit_edge ], [ -14, %if.end.i.i.while.end_crit_edge ]
  %conv43 = zext i32 %src.096 to i64
  %15 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv43, ptr %ppos, align 8
  tail call void @mmput(ptr noundef nonnull %3) #15
  br label %free

free:                                             ; preds = %while.end, %if.end5.free_crit_edge
  %ret.3 = phi i32 [ %ret.2, %while.end ], [ 0, %if.end5.free_crit_edge ]
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #15
  br label %cleanup44

cleanup44:                                        ; preds = %free, %if.end.cleanup44_crit_edge, %lor.lhs.false.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.0 = phi i32 [ %ret.3, %free ], [ 0, %lor.lhs.false.cleanup44_crit_edge ], [ 0, %entry.cleanup44_crit_edge ], [ -12, %if.end.cleanup44_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @environ_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @proc_mem_open(ptr noundef %inode, i32 noundef 1) #15
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %call.i to i32
  br label %__mem_open.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %private_data.i, align 4
  br label %__mem_open.exit

__mem_open.exit:                                  ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %0, %if.then.i ], [ 0, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %mm_count.i = getelementptr inbounds %struct.anon.4, ptr %1, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #15, !srcloc !424
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !425
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then.if.end_crit_edge, !prof !419

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__mmdrop(ptr noundef nonnull %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @access_remote_vm(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auxv_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %nwords.0 = phi i32 [ %add, %do.body.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %add = add i32 %nwords.0, 2
  %arrayidx = getelementptr %struct.anon.4, ptr %1, i32 0, i32 39, i32 %nwords.0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %saved_auxv = getelementptr inbounds %struct.anon.4, ptr %1, i32 0, i32 39
  %mul = shl i32 %add, 2
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %saved_auxv, i32 noundef %mul) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auxv_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @proc_mem_open(ptr noundef %inode, i32 noundef 9) #15
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %call.i to i32
  br label %__mem_open.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %private_data.i, align 4
  br label %__mem_open.exit

__mem_open.exit:                                  ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %0, %if.then.i ], [ 0, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_single_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %filp, ptr noundef nonnull @proc_single_show, ptr noundef %inode) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_single_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -40
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i, align 8
  %call2 = tail call ptr @get_pid_task(ptr noundef %9, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %op = getelementptr i8, ptr %1, i32 -32
  %10 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %op, align 8
  %call4 = tail call i32 %11(ptr noundef %m, ptr noundef %7, ptr noundef %9, ptr noundef nonnull %call2) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call2) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %entry.cleanup_crit_edge ], [ %call4, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call4, %if.then10.i.i.i.i ], [ %call4, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @proc_sched_set_task(ptr noundef nonnull %call1.i) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %entry.cleanup_crit_edge ], [ %count, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %count, %if.then10.i.i.i.i ], [ %count, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %filp, ptr noundef nonnull @sched_show, ptr noundef %inode) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_sched_set_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %9, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @proc_sched_show_task(ptr noundef nonnull %call1.i, ptr noundef %7, ptr noundef %m) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_sched_show_task(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_tid_comm_permission(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %inode, i32 -40
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %1, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task2 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task2, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 111
  %6 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal.i, align 16
  %signal1.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 111
  %8 = ptrtoint ptr %signal1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal1.i, align 16
  %cmp.i = icmp eq ptr %7, %9
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %and = and i32 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %11 = and i1 %tobool5.not, %cmp.i
  br i1 %11, label %put_task_struct.exit.cleanup_crit_edge, label %if.end10, !prof !410

put_task_struct.exit.cleanup_crit_edge:           ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call11 = tail call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i32 noundef %mask) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %put_task_struct.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ -3, %entry.cleanup_crit_edge ], [ 0, %put_task_struct.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comm_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  %buffer = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer) #15
  %2 = call ptr @memset(ptr %buffer, i32 0, i32 16)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 15)
  call void @__check_object_size(ptr noundef nonnull %buffer, i32 noundef %3, i1 noundef zeroext false) #15
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #15
  %call.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %3, i32 -1226833920) #18, !srcloc !426
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !410

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buffer, i32 noundef %3) #15
  %5 = call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !427
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !428
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !429
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buffer, ptr noundef %buf, i32 noundef %3) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #15, !srcloc !428
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !429
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !410

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buffer, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = call ptr @get_pid_task(ptr noundef %10, i32 noundef 0) #15
  %tobool4.not = icmp eq ptr %call1.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %11 = call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 111
  %15 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %signal.i, align 16
  %signal1.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 111
  %17 = ptrtoint ptr %signal1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %signal1.i, align 16
  %cmp.i = icmp eq ptr %16, %18
  br i1 %cmp.i, label %if.then9, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  call void @__set_task_comm(ptr noundef nonnull %call1.i, ptr noundef nonnull %buffer, i1 noundef zeroext false) #15
  call void @proc_comm_connector(ptr noundef nonnull %call1.i) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %count.addr.0 = phi i32 [ %count, %if.then9 ], [ -22, %if.end6.if.end11_crit_edge ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %19 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i21, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i21:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i21, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -3, %if.end.cleanup_crit_edge ], [ %count.addr.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %count.addr.0, %if.then10.i.i.i.i ], [ %count.addr.0, %if.then.i21 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comm_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %filp, ptr noundef nonnull @comm_show, ptr noundef %inode) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_comm_connector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_task_comm(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comm_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @proc_task_name(ptr noundef %m, ptr noundef nonnull %call1.i, i1 noundef zeroext false) #15
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_task_name(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_current_syscall(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_pid_cmdline_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %pos) #0 align 64 {
entry:
  %c.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %do.body2, label %do.end7, !prof !419

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/proc/base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 364, 0\0A.popsection", ""() #15, !srcloc !430
  unreachable

do.end7:                                          ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -40
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %5, i32 noundef 0) #15
  %tobool9.not = icmp eq ptr %call1.i, null
  br i1 %tobool9.not, label %do.end7.cleanup_crit_edge, label %if.end11

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  %call.i = tail call ptr @get_task_mm(ptr noundef nonnull %call1.i) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end11.get_task_cmdline.exit_crit_edge, label %if.end.i

if.end11.get_task_cmdline.exit_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_task_cmdline.exit

if.end.i:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i.i) #15
  %6 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %c.i.i, align 1, !annotation !413
  %env_end1.i.i = getelementptr inbounds %struct.anon.4, ptr %call.i, i32 0, i32 38
  %7 = ptrtoint ptr %env_end1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %env_end1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %if.end.i.get_mm_cmdline.exit.i_crit_edge, label %if.end.i.i

if.end.i.get_mm_cmdline.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_mm_cmdline.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %arg_lock.i.i = getelementptr inbounds %struct.anon.4, ptr %call.i, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %arg_lock.i.i) #15
  %arg_start2.i.i = getelementptr inbounds %struct.anon.4, ptr %call.i, i32 0, i32 35
  %9 = ptrtoint ptr %arg_start2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arg_start2.i.i, align 8
  %arg_end3.i.i = getelementptr inbounds %struct.anon.4, ptr %call.i, i32 0, i32 36
  %11 = ptrtoint ptr %arg_end3.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arg_end3.i.i, align 4
  %env_start4.i.i = getelementptr inbounds %struct.anon.4, ptr %call.i, i32 0, i32 37
  %13 = ptrtoint ptr %env_start4.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %env_start4.i.i, align 8
  %15 = ptrtoint ptr %env_end1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %env_end1.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %arg_lock.i.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not.i.i = icmp ult i32 %10, %12
  br i1 %cmp.not.i.i, label %if.end8.i.i, label %if.end.i.i.get_mm_cmdline.exit.i_crit_edge

if.end.i.i.get_mm_cmdline.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_mm_cmdline.exit.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp9.not.i.i = icmp ne i32 %14, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp10.i.i = icmp ult i32 %16, %14
  %or.cond.i.i = select i1 %cmp9.not.i.i, i1 true, i1 %cmp10.i.i
  %env_end.0.i.i = select i1 %or.cond.i.i, i32 %12, i32 %16
  %sub.i.i = sub i32 %env_end.0.i.i, %10
  %17 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %pos, align 8
  %conv.i.i = trunc i64 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv.i.i)
  %cmp13.not.i.i = icmp ugt i32 %sub.i.i, %conv.i.i
  br i1 %cmp13.not.i.i, label %if.end16.i.i, label %if.end8.i.i.get_mm_cmdline.exit.i_crit_edge

if.end8.i.i.get_mm_cmdline.exit.i_crit_edge:      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_mm_cmdline.exit.i

if.end16.i.i:                                     ; preds = %if.end8.i.i
  %sub17.i.i = sub i32 %sub.i.i, %conv.i.i
  %19 = tail call i32 @llvm.umin.i32(i32 %sub17.i.i, i32 %count) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool23.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool23.not.i.i, label %if.end16.i.i.get_mm_cmdline.exit.i_crit_edge, label %if.end25.i.i

if.end16.i.i.get_mm_cmdline.exit.i_crit_edge:     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_mm_cmdline.exit.i

if.end25.i.i:                                     ; preds = %if.end16.i.i
  %sub26.i.i = add i32 %12, -1
  %call.i.i = call i32 @access_remote_vm(ptr noundef nonnull %call.i, i32 noundef %sub26.i.i, ptr noundef nonnull %c.i.i, i32 noundef 1, i32 noundef 32768) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp27.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp27.i.i, label %land.lhs.true.i.i, label %if.end25.i.i.if.end33.i.i_crit_edge

if.end25.i.i.if.end33.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33.i.i

land.lhs.true.i.i:                                ; preds = %if.end25.i.i
  %20 = ptrtoint ptr %c.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %c.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool30.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool30.not.i.i, label %land.lhs.true.i.i.if.end33.i.i_crit_edge, label %if.then31.i.i

land.lhs.true.i.i.if.end33.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33.i.i

if.then31.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %conv.i.i)
  %cmp.i.i.i = icmp ugt i32 %conv.i.i, 4095
  br i1 %cmp.i.i.i, label %if.then31.i.i.get_mm_cmdline.exit.i_crit_edge, label %if.end.i.i.i

if.then31.i.i.get_mm_cmdline.exit.i_crit_edge:    ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_mm_cmdline.exit.i

if.end.i.i.i:                                     ; preds = %if.then31.i.i
  %call.i.i.i = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #15
  %22 = inttoptr i32 %call.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.get_mm_cmdline.exit.i_crit_edge, label %if.end2.i.i.i

if.end.i.i.i.get_mm_cmdline.exit.i_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_mm_cmdline.exit.i

if.end2.i.i.i:                                    ; preds = %if.end.i.i.i
  %call3.i.i.i = call i32 @access_remote_vm(ptr noundef nonnull %call.i, i32 noundef %10, ptr noundef nonnull %22, i32 noundef 4096, i32 noundef 32768) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %cmp4.i.i.i = icmp sgt i32 %call3.i.i.i, 0
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %if.end2.i.i.i.cleanup74.sink.split.i.i_crit_edge

if.end2.i.i.i.cleanup74.sink.split.i.i_crit_edge: ; preds = %if.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup74.sink.split.i.i

if.then5.i.i.i:                                   ; preds = %if.end2.i.i.i
  %call6.i.i.i = call i32 @strnlen(ptr noundef nonnull %22, i32 noundef %call3.i.i.i) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.i.i, i32 %call3.i.i.i)
  %cmp7.i.i.i = icmp slt i32 %call6.i.i.i, %call3.i.i.i
  %inc.i.i.i = zext i1 %cmp7.i.i.i to i32
  %spec.select.i.i.i = add i32 %call6.i.i.i, %inc.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i.i, i32 %conv.i.i)
  %cmp10.i.i.i = icmp ugt i32 %spec.select.i.i.i, %conv.i.i
  br i1 %cmp10.i.i.i, label %if.then11.i.i.i, label %if.then5.i.i.i.cleanup74.sink.split.i.i_crit_edge

if.then5.i.i.i.cleanup74.sink.split.i.i_crit_edge: ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup74.sink.split.i.i

if.then11.i.i.i:                                  ; preds = %if.then5.i.i.i
  %sub.i.i.i = sub i32 %spec.select.i.i.i, %conv.i.i
  %23 = call i32 @llvm.umin.i32(i32 %sub.i.i.i, i32 %19) #15
  %add.ptr.i.i.i23 = getelementptr i8, ptr %22, i32 %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp9.i.i.i.i.i = icmp slt i32 %23, 0
  br i1 %cmp9.i.i.i.i.i, label %land.rhs16.i.i.i.i.i, label %if.then.i.i.i.i.i.i

land.rhs16.i.i.i.i.i:                             ; preds = %if.then11.i.i.i
  %.b71.i.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i.i, label %land.rhs16.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge, label %if.then27.i.i.i.i.i, !prof !410

land.rhs16.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit.i.i.i

if.then27.i.i.i.i.i:                              ; preds = %land.rhs16.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %copy_to_user.exit.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then11.i.i.i
  call void @__check_object_size(ptr noundef %add.ptr.i.i.i23, i32 noundef %23, i1 noundef zeroext true) #15
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #15
  %call.i.i.i145.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i145.i.i, label %if.then.i.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge, label %if.end.i.i.i.i.i

if.then.i.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i.i
  %24 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %23, i32 -1226833920) #18, !srcloc !414
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.then2.i.i.i.i.i, label %if.end.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge

if.end.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit.i.i.i

if.then2.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i.i.i23, i32 noundef %23) #15
  %call.i12.i.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr.i.i.i23, i32 noundef %23) #15
  br label %copy_to_user.exit.i.i.i

copy_to_user.exit.i.i.i:                          ; preds = %if.then2.i.i.i.i.i, %if.end.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge, %if.then.i.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge, %if.then27.i.i.i.i.i, %land.rhs16.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge
  %n.addr.0.i.i.i.i = phi i32 [ %23, %if.then.i.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge ], [ %call.i12.i.i.i.i.i, %if.then2.i.i.i.i.i ], [ %23, %if.end.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge ], [ %23, %if.then27.i.i.i.i.i ], [ %23, %land.rhs16.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge ]
  %sub16.i.i.i = sub i32 %23, %n.addr.0.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %n.addr.0.i.i.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %23, %n.addr.0.i.i.i.i
  %spec.store.select.i.i.i = select i1 %tobool17.not.i.i.i, i32 -14, i32 %sub16.i.i.i
  br label %cleanup74.sink.split.i.i

if.end33.i.i:                                     ; preds = %land.lhs.true.i.i.if.end33.i.i_crit_edge, %if.end25.i.i.if.end33.i.i_crit_edge
  %add.i.i = add i32 %10, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %10)
  %cmp34.i.i = icmp uge i32 %add.i.i, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add.i.i)
  %cmp37.not.i.i = icmp ugt i32 %12, %add.i.i
  %or.cond142.i.i = select i1 %cmp34.i.i, i1 %cmp37.not.i.i, i1 false
  br i1 %or.cond142.i.i, label %if.end40.i.i, label %if.end33.i.i.get_mm_cmdline.exit.i_crit_edge

if.end33.i.i.get_mm_cmdline.exit.i_crit_edge:     ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_mm_cmdline.exit.i

if.end40.i.i:                                     ; preds = %if.end33.i.i
  %call47.i.i = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #15
  %25 = inttoptr i32 %call47.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %if.end40.i.i.get_mm_cmdline.exit.i_crit_edge, label %while.cond.preheader.i.i

if.end40.i.i.get_mm_cmdline.exit.i_crit_edge:     ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_mm_cmdline.exit.i

while.cond.preheader.i.i:                         ; preds = %if.end40.i.i
  %sub41.i.i = sub i32 %12, %add.i.i
  %26 = call i32 @llvm.umin.i32(i32 %19, i32 %sub41.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool51.not160.i.i = icmp eq i32 %26, 0
  br i1 %tobool51.not160.i.i, label %while.cond.preheader.i.i.cleanup74.sink.split.i.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.cleanup74.sink.split.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup74.sink.split.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %len.0164.i.i = phi i32 [ %add71.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %pos.0163.i.i = phi i32 [ %add70.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %add.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %buf.addr.0162.i.i = phi ptr [ %add.ptr.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %buf, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %count.addr.2161.i.i = phi i32 [ %sub72.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %26, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %27 = call i32 @llvm.umin.i32(i32 %count.addr.2161.i.i, i32 4096) #15
  %call54.i.i = call i32 @access_remote_vm(ptr noundef nonnull %call.i, i32 noundef %pos.0163.i.i, ptr noundef nonnull %25, i32 noundef %27, i32 noundef 32768) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call54.i.i)
  %cmp55.i.i = icmp slt i32 %call54.i.i, 1
  br i1 %cmp55.i.i, label %while.body.i.i.cleanup74.sink.split.i.i_crit_edge, label %if.then.i.i.i.i.i

while.body.i.i.cleanup74.sink.split.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup74.sink.split.i.i

if.then.i.i.i.i.i:                                ; preds = %while.body.i.i
  call void @__check_object_size(ptr noundef nonnull %25, i32 noundef %call54.i.i, i1 noundef zeroext true) #15
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #15
  %call.i.i.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i.i, label %if.then.i.i.i.i.i.if.then65.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i.i.i.i.i.if.then65.i.i_crit_edge:        ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then65.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i.i
  %28 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0162.i.i, i32 %call54.i.i, i32 -1226833920) #18, !srcloc !414
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %copy_to_user.exit.i.i, label %if.end.i.i.i.i.if.then65.i.i_crit_edge

if.end.i.i.i.i.if.then65.i.i_crit_edge:           ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then65.i.i

copy_to_user.exit.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %25, i32 noundef %call54.i.i) #15
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0162.i.i, ptr noundef nonnull %25, i32 noundef %call54.i.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call54.i.i, i32 %call.i12.i.i.i.i)
  %tobool61.not.i.i = icmp eq i32 %call54.i.i, %call.i12.i.i.i.i
  br i1 %tobool61.not.i.i, label %copy_to_user.exit.i.i.if.then65.i.i_crit_edge, label %cleanup.i.i, !prof !419

copy_to_user.exit.i.i.if.then65.i.i_crit_edge:    ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then65.i.i

if.then65.i.i:                                    ; preds = %copy_to_user.exit.i.i.if.then65.i.i_crit_edge, %if.end.i.i.i.i.if.then65.i.i_crit_edge, %if.then.i.i.i.i.i.if.then65.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0164.i.i)
  %tobool66.not.i.i = icmp eq i32 %len.0164.i.i, 0
  %spec.store.select.i.i = select i1 %tobool66.not.i.i, i32 -14, i32 %len.0164.i.i
  br label %cleanup74.sink.split.i.i

cleanup.i.i:                                      ; preds = %copy_to_user.exit.i.i
  %sub60.i.i = sub i32 %call54.i.i, %call.i12.i.i.i.i
  %add70.i.i = add i32 %sub60.i.i, %pos.0163.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.0162.i.i, i32 %sub60.i.i
  %add71.i.i = add i32 %sub60.i.i, %len.0164.i.i
  %sub72.i.i = sub i32 %count.addr.2161.i.i, %sub60.i.i
  %tobool51.not.i.i = icmp eq i32 %sub72.i.i, 0
  br i1 %tobool51.not.i.i, label %cleanup.i.i.cleanup74.sink.split.i.i_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

cleanup.i.i.cleanup74.sink.split.i.i_crit_edge:   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup74.sink.split.i.i

cleanup74.sink.split.i.i:                         ; preds = %cleanup.i.i.cleanup74.sink.split.i.i_crit_edge, %if.then65.i.i, %while.body.i.i.cleanup74.sink.split.i.i_crit_edge, %while.cond.preheader.i.i.cleanup74.sink.split.i.i_crit_edge, %copy_to_user.exit.i.i.i, %if.then5.i.i.i.cleanup74.sink.split.i.i_crit_edge, %if.end2.i.i.i.cleanup74.sink.split.i.i_crit_edge
  %call.i.sink.i.i = phi i32 [ %call.i.i.i, %copy_to_user.exit.i.i.i ], [ %call.i.i.i, %if.then5.i.i.i.cleanup74.sink.split.i.i_crit_edge ], [ %call.i.i.i, %if.end2.i.i.i.cleanup74.sink.split.i.i_crit_edge ], [ %call47.i.i, %while.cond.preheader.i.i.cleanup74.sink.split.i.i_crit_edge ], [ %call47.i.i, %if.then65.i.i ], [ %call47.i.i, %while.body.i.i.cleanup74.sink.split.i.i_crit_edge ], [ %call47.i.i, %cleanup.i.i.cleanup74.sink.split.i.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ %spec.store.select.i.i.i, %copy_to_user.exit.i.i.i ], [ 0, %if.then5.i.i.i.cleanup74.sink.split.i.i_crit_edge ], [ 0, %if.end2.i.i.i.cleanup74.sink.split.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.cleanup74.sink.split.i.i_crit_edge ], [ %spec.store.select.i.i, %if.then65.i.i ], [ %add71.i.i, %cleanup.i.i.cleanup74.sink.split.i.i_crit_edge ], [ %len.0164.i.i, %while.body.i.i.cleanup74.sink.split.i.i_crit_edge ]
  call void @free_pages(i32 noundef %call.i.sink.i.i, i32 noundef 0) #15
  br label %get_mm_cmdline.exit.i

get_mm_cmdline.exit.i:                            ; preds = %cleanup74.sink.split.i.i, %if.end40.i.i.get_mm_cmdline.exit.i_crit_edge, %if.end33.i.i.get_mm_cmdline.exit.i_crit_edge, %if.end.i.i.i.get_mm_cmdline.exit.i_crit_edge, %if.then31.i.i.get_mm_cmdline.exit.i_crit_edge, %if.end16.i.i.get_mm_cmdline.exit.i_crit_edge, %if.end8.i.i.get_mm_cmdline.exit.i_crit_edge, %if.end.i.i.get_mm_cmdline.exit.i_crit_edge, %if.end.i.get_mm_cmdline.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.get_mm_cmdline.exit.i_crit_edge ], [ 0, %if.end.i.i.get_mm_cmdline.exit.i_crit_edge ], [ 0, %if.end8.i.i.get_mm_cmdline.exit.i_crit_edge ], [ 0, %if.end16.i.i.get_mm_cmdline.exit.i_crit_edge ], [ 0, %if.end33.i.i.get_mm_cmdline.exit.i_crit_edge ], [ -12, %if.end40.i.i.get_mm_cmdline.exit.i_crit_edge ], [ 0, %if.then31.i.i.get_mm_cmdline.exit.i_crit_edge ], [ -12, %if.end.i.i.i.get_mm_cmdline.exit.i_crit_edge ], [ %retval.0.ph.i.i, %cleanup74.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i.i) #15
  call void @mmput(ptr noundef nonnull %call.i) #15
  br label %get_task_cmdline.exit

get_task_cmdline.exit:                            ; preds = %get_mm_cmdline.exit.i, %if.end11.get_task_cmdline.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i.i, %get_mm_cmdline.exit.i ], [ 0, %if.end11.get_task_cmdline.exit_crit_edge ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i24 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i25 = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i25, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %get_task_cmdline.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %get_task_cmdline.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp13 = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp13, label %if.then14, label %put_task_struct.exit.cleanup_crit_edge

put_task_struct.exit.cleanup_crit_edge:           ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then14:                                        ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv27 = zext i32 %retval.0.i to i64
  %30 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %pos, align 8
  %add = add i64 %31, %conv27
  store i64 %add, ptr %pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %put_task_struct.exit.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %do.end7.cleanup_crit_edge ], [ %retval.0.i, %if.then14 ], [ %retval.0.i, %put_task_struct.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mem_rw(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mem_rw(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @proc_mem_open(ptr noundef %inode, i32 noundef 2) #15
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %call.i to i32
  br label %__mem_open.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %private_data.i, align 4
  br label %__mem_open.exit

__mem_open.exit:                                  ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %0, %if.then.i ], [ 0, %if.end.i ]
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  %or = or i32 %3, 8192
  store i32 %or, ptr %f_mode, align 8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mem_rw(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos, i32 noundef %write) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %3 to i32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup32_crit_edge, label %if.end

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup32

if.end:                                           ; preds = %entry
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #15
  %4 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup32_crit_edge, label %if.end3

if.end.cleanup32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup32

if.end3:                                          ; preds = %if.end
  %mm_users.i = getelementptr inbounds %struct.anon.4, ptr %1, i32 0, i32 10
  %call.i.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !420
  tail call void @llvm.prefetch.p0(ptr %mm_users.i, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i, ptr %mm_users.i, i32 0, i32 1, ptr elementtype(i32) %mm_users.i) #15, !srcloc !421
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.end3.free_crit_edge, label %if.end6

if.end3.free_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %free

if.end6:                                          ; preds = %if.end3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool7.not = icmp eq i32 %write, 0
  %not.tobool7.not = xor i1 %tobool7.not, true
  %cond = zext i1 %not.tobool7.not to i32
  %or = or i32 %cond, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not120 = icmp eq i32 %count, 0
  br i1 %cmp.not120, label %if.end6.while.end_crit_edge, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  br label %while.body

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end6.while.body_crit_edge
  %copied.0126 = phi i32 [ %add30, %cleanup.while.body_crit_edge ], [ 0, %if.end6.while.body_crit_edge ]
  %addr.0124 = phi i32 [ %add, %cleanup.while.body_crit_edge ], [ %conv, %if.end6.while.body_crit_edge ]
  %buf.addr.0122 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %buf, %if.end6.while.body_crit_edge ]
  %count.addr.0121 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %count, %if.end6.while.body_crit_edge ]
  %6 = tail call i32 @llvm.umin.i32(i32 %count.addr.0121, i32 4096)
  br i1 %tobool7.not, label %if.end16, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %while.body
  tail call void @__check_object_size(ptr noundef nonnull %4, i32 noundef %6, i1 noundef zeroext false) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0122, i32 %6, i32 -1226833920) #18, !srcloc !426
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !410

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef %6) #15
  %8 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !427
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !428
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !429
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %buf.addr.0122, i32 noundef %6) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #15, !srcloc !428
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !429
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end16.thread, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !410

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i84 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %6, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %6, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %6, %res.0.i.i84
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i84)
  br label %while.end

if.end16:                                         ; preds = %while.body
  %call17 = tail call i32 @access_remote_vm(ptr noundef nonnull %1, i32 noundef %addr.0124, ptr noundef nonnull %4, i32 noundef %6, i32 noundef %or) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.if.then19_crit_edge, label %if.end8.i.i71

if.end16.if.then19_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then19

if.end16.thread:                                  ; preds = %if.end.i.i
  %call1787 = tail call i32 @access_remote_vm(ptr noundef nonnull %1, i32 noundef %addr.0124, ptr noundef nonnull %4, i32 noundef %6, i32 noundef %or) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1787)
  %tobool18.not88 = icmp eq i32 %call1787, 0
  br i1 %tobool18.not88, label %if.end16.thread.if.then19_crit_edge, label %if.end16.thread.cleanup_crit_edge

if.end16.thread.cleanup_crit_edge:                ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16.thread.if.then19_crit_edge:              ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then19

if.then19:                                        ; preds = %if.end16.thread.if.then19_crit_edge, %if.end16.if.then19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0126)
  %tobool20.not = icmp eq i32 %copied.0126, 0
  %spec.store.select = select i1 %tobool20.not, i32 -5, i32 %copied.0126
  br label %while.end

if.end8.i.i71:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp9.i.i = icmp slt i32 %call17, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i72

land.rhs16.i.i:                                   ; preds = %if.end8.i.i71
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.while.end_crit_edge, label %if.then27.i.i, !prof !410

land.rhs16.i.i.while.end_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %while.end

if.then.i.i.i72:                                  ; preds = %if.end8.i.i71
  tail call void @__check_object_size(ptr noundef nonnull %4, i32 noundef %call17, i1 noundef zeroext true) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #15
  %call.i.i73 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i73, label %if.then.i.i.i72.while.end_crit_edge, label %if.end.i.i77

if.then.i.i.i72.while.end_crit_edge:              ; preds = %if.then.i.i.i72
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end.i.i77:                                     ; preds = %if.then.i.i.i72
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0122, i32 %call17, i32 -1226833920) #18, !srcloc !414
  %asmresult.i.i75 = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i75)
  %cmp.i6.i76 = icmp eq i32 %asmresult.i.i75, 0
  br i1 %cmp.i6.i76, label %copy_to_user.exit, label %if.end.i.i77.while.end_crit_edge

if.end.i.i77.while.end_crit_edge:                 ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

copy_to_user.exit:                                ; preds = %if.end.i.i77
  %call.i.i.i78 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %4, i32 noundef %call17) #15
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf.addr.0122, ptr noundef nonnull %4, i32 noundef %call17) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool27.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool27.not, label %copy_to_user.exit.cleanup_crit_edge, label %copy_to_user.exit.while.end_crit_edge

copy_to_user.exit.while.end_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit.cleanup_crit_edge, %if.end16.thread.cleanup_crit_edge
  %call178991 = phi i32 [ %call17, %copy_to_user.exit.cleanup_crit_edge ], [ %call1787, %if.end16.thread.cleanup_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf.addr.0122, i32 %call178991
  %add = add i32 %call178991, %addr.0124
  %add30 = add i32 %call178991, %copied.0126
  %sub = sub i32 %count.addr.0121, %call178991
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %copy_to_user.exit.while.end_crit_edge, %if.end.i.i77.while.end_crit_edge, %if.then.i.i.i72.while.end_crit_edge, %if.then27.i.i, %land.rhs16.i.i.while.end_crit_edge, %if.then19, %if.then11.i.i, %if.end6.while.end_crit_edge
  %addr.0119 = phi i32 [ %addr.0124, %if.then19 ], [ %addr.0124, %if.then11.i.i ], [ %addr.0124, %if.then27.i.i ], [ %addr.0124, %land.rhs16.i.i.while.end_crit_edge ], [ %conv, %if.end6.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ], [ %addr.0124, %copy_to_user.exit.while.end_crit_edge ], [ %addr.0124, %if.then.i.i.i72.while.end_crit_edge ], [ %addr.0124, %if.end.i.i77.while.end_crit_edge ]
  %copied.2 = phi i32 [ %spec.store.select, %if.then19 ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.while.end_crit_edge ], [ 0, %if.end6.while.end_crit_edge ], [ %add30, %cleanup.while.end_crit_edge ], [ -14, %copy_to_user.exit.while.end_crit_edge ], [ -14, %if.then.i.i.i72.while.end_crit_edge ], [ -14, %if.end.i.i77.while.end_crit_edge ]
  %conv31 = zext i32 %addr.0119 to i64
  %13 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv31, ptr %ppos, align 8
  tail call void @mmput(ptr noundef nonnull %1) #15
  br label %free

free:                                             ; preds = %while.end, %if.end3.free_crit_edge
  %copied.3 = phi i32 [ %copied.2, %while.end ], [ 0, %if.end3.free_crit_edge ]
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #15
  br label %cleanup32

cleanup32:                                        ; preds = %free, %if.end.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.0 = phi i32 [ %copied.3, %free ], [ 0, %entry.cleanup32_crit_edge ], [ -12, %if.end.cleanup32_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_exe_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_attr_dir_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @proc_pident_lookup(ptr noundef %dir, ptr noundef %dentry, ptr noundef nonnull @attr_dir_stuff, ptr noundef getelementptr inbounds ([8 x %struct.pid_entry], ptr @attr_dir_stuff, i32 1, i32 0))
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_pid_attr_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #15
  %2 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %p, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %4, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %op = getelementptr i8, ptr %1, i32 -32
  %5 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %op, align 8
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dentry, align 4
  %name = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 8
  %call3 = call i32 @security_getprocattr(ptr noundef nonnull %call1.i, ptr noundef %6, ptr noundef %10, ptr noundef nonnull %p) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %11 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %put_task_struct.exit.if.end6_crit_edge

put_task_struct.exit.if.end6_crit_edge:           ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then4:                                         ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p, align 4
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %13, i32 noundef %call3) #15
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %put_task_struct.exit.if.end6_crit_edge
  %length.0 = phi i32 [ %call5, %if.then4 ], [ %call3, %put_task_struct.exit.if.end6_crit_edge ]
  %14 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p, align 4
  call void @kfree(ptr noundef %15) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %length.0, %if.end6 ], [ -3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_pid_attr_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task2, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm, align 8
  %cmp.not = icmp eq ptr %3, %9
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -40
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 8
  %call4 = tail call ptr @pid_task(ptr noundef %13, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %rcu_read_lock.exit
  %call.i59 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i59, label %if.then5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i62

if.then5.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i62:                                ; preds = %if.then5
  %call1.i60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %tobool.not.i61 = icmp eq i32 %call1.i60, 0
  br i1 %tobool.not.i61, label %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i64

land.lhs.true.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i64:                               ; preds = %land.lhs.true.i62
  %.b4.i63 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i63, label %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, label %if.then.i65

land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i65:                                      ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i65, %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, %if.then5.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %14 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i66 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i66 to ptr
  %preempt_count.i.i.i.i67 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i67, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i67, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup

if.end6:                                          ; preds = %rcu_read_lock.exit
  %18 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task2, align 8
  %cmp9.not = icmp eq ptr %19, %call4
  br i1 %cmp9.not, label %do.end, label %if.then10

if.then10:                                        ; preds = %if.end6
  %call.i68 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i68, label %if.then10.rcu_read_unlock.exit78_crit_edge, label %land.lhs.true.i71

if.then10.rcu_read_unlock.exit78_crit_edge:       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit78

land.lhs.true.i71:                                ; preds = %if.then10
  %call1.i69 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i69)
  %tobool.not.i70 = icmp eq i32 %call1.i69, 0
  br i1 %tobool.not.i70, label %land.lhs.true.i71.rcu_read_unlock.exit78_crit_edge, label %land.lhs.true2.i73

land.lhs.true.i71.rcu_read_unlock.exit78_crit_edge: ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit78

land.lhs.true2.i73:                               ; preds = %land.lhs.true.i71
  %.b4.i72 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i72, label %land.lhs.true2.i73.rcu_read_unlock.exit78_crit_edge, label %if.then.i74

land.lhs.true2.i73.rcu_read_unlock.exit78_crit_edge: ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit78

if.then.i74:                                      ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit78

rcu_read_unlock.exit78:                           ; preds = %if.then.i74, %land.lhs.true2.i73.rcu_read_unlock.exit78_crit_edge, %land.lhs.true.i71.rcu_read_unlock.exit78_crit_edge, %if.then10.rcu_read_unlock.exit78_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %20 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i75 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i75 to ptr
  %preempt_count.i.i.i.i76 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i76, align 4
  %sub.i.i.i77 = add i32 %23, -1
  store volatile i32 %sub.i.i.i77, ptr %preempt_count.i.i.i.i76, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup

do.end:                                           ; preds = %if.end6
  %cred = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 99
  %24 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cred, align 16
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 98
  %26 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %real_cred, align 4
  %cmp20.not = icmp eq ptr %25, %27
  %call.i90 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %cmp20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %do.end
  br i1 %call.i90, label %if.then21.rcu_read_unlock.exit89_crit_edge, label %land.lhs.true.i82

if.then21.rcu_read_unlock.exit89_crit_edge:       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit89

land.lhs.true.i82:                                ; preds = %if.then21
  %call1.i80 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80)
  %tobool.not.i81 = icmp eq i32 %call1.i80, 0
  br i1 %tobool.not.i81, label %land.lhs.true.i82.rcu_read_unlock.exit89_crit_edge, label %land.lhs.true2.i84

land.lhs.true.i82.rcu_read_unlock.exit89_crit_edge: ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit89

land.lhs.true2.i84:                               ; preds = %land.lhs.true.i82
  %.b4.i83 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i83, label %land.lhs.true2.i84.rcu_read_unlock.exit89_crit_edge, label %if.then.i85

land.lhs.true2.i84.rcu_read_unlock.exit89_crit_edge: ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit89

if.then.i85:                                      ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit89

rcu_read_unlock.exit89:                           ; preds = %if.then.i85, %land.lhs.true2.i84.rcu_read_unlock.exit89_crit_edge, %land.lhs.true.i82.rcu_read_unlock.exit89_crit_edge, %if.then21.rcu_read_unlock.exit89_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %28 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i86 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i86 to ptr
  %preempt_count.i.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i87, align 4
  %sub.i.i.i88 = add i32 %31, -1
  store volatile i32 %sub.i.i.i88, ptr %preempt_count.i.i.i.i87, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup

if.end22:                                         ; preds = %do.end
  br i1 %call.i90, label %if.end22.rcu_read_unlock.exit100_crit_edge, label %land.lhs.true.i93

if.end22.rcu_read_unlock.exit100_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit100

land.lhs.true.i93:                                ; preds = %if.end22
  %call1.i91 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91)
  %tobool.not.i92 = icmp eq i32 %call1.i91, 0
  br i1 %tobool.not.i92, label %land.lhs.true.i93.rcu_read_unlock.exit100_crit_edge, label %land.lhs.true2.i95

land.lhs.true.i93.rcu_read_unlock.exit100_crit_edge: ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit100

land.lhs.true2.i95:                               ; preds = %land.lhs.true.i93
  %.b4.i94 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i94, label %land.lhs.true2.i95.rcu_read_unlock.exit100_crit_edge, label %if.then.i96

land.lhs.true2.i95.rcu_read_unlock.exit100_crit_edge: ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit100

if.then.i96:                                      ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit100

rcu_read_unlock.exit100:                          ; preds = %if.then.i96, %land.lhs.true2.i95.rcu_read_unlock.exit100_crit_edge, %land.lhs.true.i93.rcu_read_unlock.exit100_crit_edge, %if.end22.rcu_read_unlock.exit100_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %32 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i97 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i97 to ptr
  %preempt_count.i.i.i.i98 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i98, align 4
  %sub.i.i.i99 = add i32 %35, -1
  store volatile i32 %sub.i.i.i99, ptr %preempt_count.i.i.i.i98, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %36 = tail call i32 @llvm.umin.i32(i32 %count, i32 4096)
  %37 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %cmp26.not = icmp eq i64 %38, 0
  br i1 %cmp26.not, label %if.end28, label %rcu_read_unlock.exit100.cleanup_crit_edge

rcu_read_unlock.exit100.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit100
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end28:                                         ; preds = %rcu_read_unlock.exit100
  %call29 = tail call ptr @memdup_user(ptr noundef %buf, i32 noundef %36) #15
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %40 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task2, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 111
  %42 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %signal, align 16
  %cred_guard_mutex = getelementptr inbounds %struct.signal_struct, ptr %43, i32 0, i32 60
  %call36 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %cred_guard_mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end33.out_free_crit_edge, label %if.end39

if.end33.out_free_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %op = getelementptr i8, ptr %1, i32 -32
  %44 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %op, align 8
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dentry, align 4
  %name = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name, align 8
  %call41 = tail call i32 @security_setprocattr(ptr noundef %45, ptr noundef %49, ptr noundef %call29, i32 noundef %36) #15
  %50 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task2, align 8
  %signal44 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 111
  %52 = ptrtoint ptr %signal44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %signal44, align 16
  %cred_guard_mutex45 = getelementptr inbounds %struct.signal_struct, ptr %53, i32 0, i32 60
  tail call void @mutex_unlock(ptr noundef %cred_guard_mutex45) #15
  br label %out_free

out_free:                                         ; preds = %if.end39, %if.end33.out_free_crit_edge
  %rv.0 = phi i32 [ %call36, %if.end33.out_free_crit_edge ], [ %call41, %if.end39 ]
  tail call void @kfree(ptr noundef %call29) #15
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then31, %rcu_read_unlock.exit100.cleanup_crit_edge, %rcu_read_unlock.exit89, %rcu_read_unlock.exit78, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %rcu_read_unlock.exit78 ], [ -16, %rcu_read_unlock.exit89 ], [ -3, %rcu_read_unlock.exit ], [ -1, %entry.cleanup_crit_edge ], [ -22, %rcu_read_unlock.exit100.cleanup_crit_edge ], [ %39, %if.then31 ], [ %rv.0, %out_free ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_pid_attr_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %private_data, align 4
  %call.i = tail call ptr @proc_mem_open(ptr noundef %inode, i32 noundef 9) #15
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.__mem_open.exit_crit_edge, label %if.end.i

entry.__mem_open.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__mem_open.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %private_data, align 4
  br label %__mem_open.exit

__mem_open.exit:                                  ; preds = %if.end.i, %entry.__mem_open.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_getprocattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_setprocattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_smack_attr_dir_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @proc_pident_lookup(ptr noundef %dir, ptr noundef %dentry, ptr noundef nonnull @smack_attr_dir_stuff, ptr noundef getelementptr inbounds ([1 x %struct.pid_entry], ptr @smack_attr_dir_stuff, i32 1, i32 0))
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_smack_attr_dir_iterate(ptr nocapture noundef readonly %filp, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @proc_pident_readdir(ptr noundef %filp, ptr noundef %ctx, ptr noundef nonnull @smack_attr_dir_stuff, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_apparmor_attr_dir_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @proc_pident_lookup(ptr noundef %dir, ptr noundef %dentry, ptr noundef nonnull @apparmor_attr_dir_stuff, ptr noundef getelementptr inbounds ([3 x %struct.pid_entry], ptr @apparmor_attr_dir_stuff, i32 1, i32 0))
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_apparmor_attr_dir_iterate(ptr nocapture noundef readonly %filp, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @proc_pident_readdir(ptr noundef %filp, ptr noundef %ctx, ptr noundef nonnull @apparmor_attr_dir_stuff, i32 noundef 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_attr_dir_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @proc_pident_readdir(ptr noundef %file, ptr noundef %ctx, ptr noundef nonnull @attr_dir_stuff, i32 noundef 8)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_wchan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lookup_symbol_name(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @file_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save_tsk(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lstats_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %buf, i32 noundef %count, ptr nocapture noundef readnone %offs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @clear_tsk_latency_tracing(ptr noundef nonnull %call1.i) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %entry.cleanup_crit_edge ], [ %count, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %count, %if.then10.i.i.i.i ], [ %count, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lstats_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @lstats_show_proc, ptr noundef %inode) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_tsk_latency_tracing(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lstats_show_proc(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup16_crit_edge, label %if.end

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup16

if.end:                                           ; preds = %entry
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.106) #15
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %if.end
  %i.037 = phi i32 [ 0, %if.end ], [ %inc14, %if.end12.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.task_struct, ptr %call1.i, i32 0, i32 188, i32 %i.037
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %for.body.if.end12_crit_edge, label %if.then3

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then3:                                         ; preds = %for.body
  %count = getelementptr %struct.task_struct, ptr %call1.i, i32 0, i32 188, i32 %i.037, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %time = getelementptr %struct.task_struct, ptr %call1.i, i32 0, i32 188, i32 %i.037, i32 2
  %8 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %time, align 4
  %max = getelementptr %struct.task_struct, ptr %call1.i, i32 0, i32 188, i32 %i.037, i32 3
  %10 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.107, i32 noundef %7, i32 noundef %9, i32 noundef %11) #15
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %if.then3.for.end_crit_edge, label %for.inc

if.then3.for.end_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc:                                          ; preds = %if.then3
  %14 = inttoptr i32 %13 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.108, ptr noundef nonnull %14) #15
  %arrayidx8.1 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx8.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not.1 = icmp eq i32 %16, 0
  br i1 %tobool9.not.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %17 = inttoptr i32 %16 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.108, ptr noundef nonnull %17) #15
  %arrayidx8.2 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx8.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool9.not.2 = icmp eq i32 %19, 0
  br i1 %tobool9.not.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %20 = inttoptr i32 %19 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.108, ptr noundef nonnull %20) #15
  %arrayidx8.3 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx8.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool9.not.3 = icmp eq i32 %22, 0
  br i1 %tobool9.not.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %23 = inttoptr i32 %22 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.108, ptr noundef nonnull %23) #15
  %arrayidx8.4 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx8.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool9.not.4 = icmp eq i32 %25, 0
  br i1 %tobool9.not.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %26 = inttoptr i32 %25 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.108, ptr noundef nonnull %26) #15
  %arrayidx8.5 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx8.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool9.not.5 = icmp eq i32 %28, 0
  br i1 %tobool9.not.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %29 = inttoptr i32 %28 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.108, ptr noundef nonnull %29) #15
  %arrayidx8.6 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 6
  %30 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx8.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool9.not.6 = icmp eq i32 %31, 0
  br i1 %tobool9.not.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %32 = inttoptr i32 %31 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.108, ptr noundef nonnull %32) #15
  %arrayidx8.7 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 7
  %33 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx8.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool9.not.7 = icmp eq i32 %34, 0
  br i1 %tobool9.not.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %35 = inttoptr i32 %34 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.108, ptr noundef nonnull %35) #15
  %arrayidx8.8 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 8
  %36 = ptrtoint ptr %arrayidx8.8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx8.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool9.not.8 = icmp eq i32 %37, 0
  br i1 %tobool9.not.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %38 = inttoptr i32 %37 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.108, ptr noundef nonnull %38) #15
  %arrayidx8.9 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 9
  %39 = ptrtoint ptr %arrayidx8.9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx8.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool9.not.9 = icmp eq i32 %40, 0
  br i1 %tobool9.not.9, label %for.inc.8.for.end_crit_edge, label %for.inc.9

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %41 = inttoptr i32 %40 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.108, ptr noundef nonnull %41) #15
  %arrayidx8.10 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 10
  %42 = ptrtoint ptr %arrayidx8.10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx8.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool9.not.10 = icmp eq i32 %43, 0
  br i1 %tobool9.not.10, label %for.inc.9.for.end_crit_edge, label %for.inc.10

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %44 = inttoptr i32 %43 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.108, ptr noundef nonnull %44) #15
  %arrayidx8.11 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 11
  %45 = ptrtoint ptr %arrayidx8.11 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx8.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool9.not.11 = icmp eq i32 %46, 0
  br i1 %tobool9.not.11, label %for.inc.10.for.end_crit_edge, label %for.inc.11

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #17
  %47 = inttoptr i32 %46 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.108, ptr noundef nonnull %47) #15
  br label %for.end

for.end:                                          ; preds = %for.inc.11, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.then3.for.end_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #15
  br label %if.end12

if.end12:                                         ; preds = %for.end, %for.body.if.end12_crit_edge
  %inc14 = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc14, 32
  br i1 %exitcond.not, label %for.end15, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end15:                                        ; preds = %if.end12
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup16_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup16_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup16

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup16

if.then.i:                                        ; preds = %for.end15
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %cleanup16

cleanup16:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.0 = phi i32 [ -3, %entry.cleanup16_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup16_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oom_badness(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oom_adj_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buffer = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %buffer) #15
  %tobool.not = icmp eq ptr %call1.i, null
  %4 = call ptr @memset(ptr %buffer, i32 255, i32 13)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 111
  %5 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %signal, align 16
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 57
  %7 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %oom_score_adj, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %8)
  %cmp = icmp eq i16 %8, 1000
  %conv = sext i16 %8 to i32
  %mul = mul nsw i32 %conv, 17
  %div = sdiv i32 %mul, 1000
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %10 = tail call i32 @llvm.smin.i32(i32 %div, i32 15)
  %11 = select i1 %cmp, i32 15, i32 %10
  %call12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buffer, i32 noundef 13, ptr noundef nonnull @.str.110, i32 noundef %11)
  %call14 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buffer, i32 noundef %call12) #15
  br label %cleanup

cleanup:                                          ; preds = %put_task_struct.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %put_task_struct.exit ], [ -3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buffer) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oom_adj_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buffer = alloca [13 x i8], align 1
  %oom_adj = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %buffer) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oom_adj) #15
  %0 = ptrtoint ptr %oom_adj to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %oom_adj, align 4, !annotation !413
  %1 = call ptr @memset(ptr %buffer, i32 0, i32 13)
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 12)
  call void @__check_object_size(ptr noundef nonnull %buffer, i32 noundef %2, i1 noundef zeroext false) #15
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #15
  %call.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %2, i32 -1226833920) #18, !srcloc !426
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !410

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buffer, i32 noundef %2) #15
  %4 = call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !427
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !428
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !429
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buffer, ptr noundef %buf, i32 noundef %2) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #15, !srcloc !428
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !429
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %2, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.then11.i.i, !prof !410

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buffer, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out.thread

if.end3:                                          ; preds = %if.end.i.i
  %call.i = call ptr @strim(ptr noundef nonnull %buffer) #15
  %call6 = call i32 @kstrtoint(ptr noundef %call.i, i32 noundef 0, ptr noundef nonnull %oom_adj) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end9:                                          ; preds = %if.end3
  %8 = ptrtoint ptr %oom_adj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oom_adj, align 4
  %10 = add i32 %9, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %10)
  %11 = icmp ult i32 %10, 33
  br i1 %11, label %if.end14, label %if.end9.out.thread_crit_edge

if.end9.out.thread_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %cmp15 = icmp eq i32 %9, 15
  %12 = trunc i32 %9 to i16
  %div.lhs.trunc = mul nsw i16 %12, 1000
  %div30 = sdiv i16 %div.lhs.trunc, 17
  %div.sext = sext i16 %div30 to i32
  %storemerge = select i1 %cmp15, i32 1000, i32 %div.sext
  %13 = ptrtoint ptr %oom_adj to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %oom_adj, align 4
  %call18 = call fastcc i32 @__set_oom_adj(ptr noundef %file, i32 noundef %storemerge, i1 noundef zeroext true)
  br label %out

out:                                              ; preds = %if.end14, %if.end3.out_crit_edge
  %err.0 = phi i32 [ %call6, %if.end3.out_crit_edge ], [ %call18, %if.end14 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp19 = icmp slt i32 %err.0, 0
  br i1 %cmp19, label %out.out.thread_crit_edge, label %out._crit_edge

out._crit_edge:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %14

out.out.thread_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

out.thread:                                       ; preds = %out.out.thread_crit_edge, %if.end9.out.thread_crit_edge, %if.then11.i.i
  %err.029 = phi i32 [ %err.0, %out.out.thread_crit_edge ], [ -14, %if.then11.i.i ], [ -22, %if.end9.out.thread_crit_edge ]
  br label %14

14:                                               ; preds = %out.thread, %out._crit_edge
  %15 = phi i32 [ %err.029, %out.thread ], [ %2, %out._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oom_adj) #15
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buffer) #15
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__set_oom_adj(ptr nocapture noundef readonly %file, i32 noundef %oom_adj, i1 noundef zeroext %legacy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i147 = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i147, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @oom_adj_mutex, i32 noundef 0) #15
  br i1 %legacy, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %signal = getelementptr inbounds %struct.task_struct, ptr %call1.i147, i32 0, i32 111
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal, align 16
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 57
  %6 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %oom_score_adj, align 2
  %conv = sext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %oom_adj)
  %cmp = icmp sgt i32 %conv, %oom_adj
  br i1 %cmp, label %land.lhs.true, label %if.then3.land.end_crit_edge

if.then3.land.end_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.lhs.true:                                    ; preds = %if.then3
  %call5 = tail call zeroext i1 @capable(i32 noundef 24) #15
  br i1 %call5, label %land.lhs.true.land.end_crit_edge, label %land.lhs.true.err_unlock_crit_edge

land.lhs.true.err_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_unlock

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.end:                                         ; preds = %land.lhs.true.land.end_crit_edge, %if.then3.land.end_crit_edge
  %.b146 = load i1, ptr @__set_oom_adj.__already_done, align 1
  br i1 %.b146, label %land.end.if.end41_crit_edge, label %if.then14, !prof !410

land.end.if.end41_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then14:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__set_oom_adj.__already_done, align 1
  %8 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task16 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task16, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid.i, align 8
  %pid.i148 = getelementptr inbounds %struct.task_struct, ptr %call1.i147, i32 0, i32 68
  %14 = ptrtoint ptr %pid.i148 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid.i148, align 8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %comm, i32 noundef %13, i32 noundef %15, i32 noundef %15) #22
  br label %if.end41

if.else:                                          ; preds = %if.end
  %sext = shl i32 %oom_adj, 16
  %conv32 = ashr exact i32 %sext, 16
  %signal33 = getelementptr inbounds %struct.task_struct, ptr %call1.i147, i32 0, i32 111
  %16 = ptrtoint ptr %signal33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %signal33, align 16
  %oom_score_adj_min = getelementptr inbounds %struct.signal_struct, ptr %17, i32 0, i32 58
  %18 = ptrtoint ptr %oom_score_adj_min to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %oom_score_adj_min, align 8
  %conv34 = sext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32, i32 %conv34)
  %cmp35 = icmp slt i32 %conv32, %conv34
  br i1 %cmp35, label %land.lhs.true37, label %if.else.if.end41_crit_edge

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

land.lhs.true37:                                  ; preds = %if.else
  %call38 = tail call zeroext i1 @capable(i32 noundef 24) #15
  br i1 %call38, label %land.lhs.true37.if.end41_crit_edge, label %land.lhs.true37.err_unlock_crit_edge

land.lhs.true37.err_unlock_crit_edge:             ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_unlock

land.lhs.true37.if.end41_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true37.if.end41_crit_edge, %if.else.if.end41_crit_edge, %if.then14, %land.end.if.end41_crit_edge
  %vfork_done = getelementptr inbounds %struct.task_struct, ptr %call1.i147, i32 0, i32 82
  %20 = ptrtoint ptr %vfork_done to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vfork_done, align 4
  %tobool42.not = icmp eq ptr %21, null
  br i1 %tobool42.not, label %if.then43, label %if.end41.if.end54_crit_edge

if.end41.if.end54_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

if.then43:                                        ; preds = %if.end41
  %call44 = tail call ptr @find_lock_task_mm(ptr noundef nonnull %call1.i147) #15
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.then43.if.end54_crit_edge, label %if.then46

if.then43.if.end54_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

if.then46:                                        ; preds = %if.then43
  %mm47 = getelementptr inbounds %struct.task_struct, ptr %call44, i32 0, i32 53
  %22 = ptrtoint ptr %mm47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mm47, align 8
  %flags = getelementptr inbounds %struct.anon.4, ptr %23, i32 0, i32 43
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags, align 4
  %26 = and i32 %25, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool49.not = icmp eq i32 %26, 0
  br i1 %tobool49.not, label %if.then46.if.end52_crit_edge, label %if.then50

if.then46.if.end52_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

if.then50:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  %mm_count.i = getelementptr inbounds %struct.anon.4, ptr %23, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #15
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #15, !srcloc !412
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.then46.if.end52_crit_edge
  %mm.0 = phi ptr [ %23, %if.then50 ], [ null, %if.then46.if.end52_crit_edge ]
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %call44, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #15
  br label %if.end54

if.end54:                                         ; preds = %if.end52, %if.then43.if.end54_crit_edge, %if.end41.if.end54_crit_edge
  %mm.2 = phi ptr [ null, %if.end41.if.end54_crit_edge ], [ %mm.0, %if.end52 ], [ null, %if.then43.if.end54_crit_edge ]
  %conv55 = trunc i32 %oom_adj to i16
  %signal56 = getelementptr inbounds %struct.task_struct, ptr %call1.i147, i32 0, i32 111
  %28 = ptrtoint ptr %signal56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %signal56, align 16
  %oom_score_adj57 = getelementptr inbounds %struct.signal_struct, ptr %29, i32 0, i32 57
  %30 = ptrtoint ptr %oom_score_adj57 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv55, ptr %oom_score_adj57, align 2
  br i1 %legacy, label %if.end54.if.end68_crit_edge, label %land.lhs.true59

if.end54.if.end68_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68

land.lhs.true59:                                  ; preds = %if.end54
  %31 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i150 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i150 to ptr
  %task61 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task61, align 8
  %call62 = tail call zeroext i1 @has_capability_noaudit(ptr noundef %34, i32 noundef 24) #15
  br i1 %call62, label %if.then64, label %land.lhs.true59.if.end68_crit_edge

land.lhs.true59.if.end68_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68

if.then64:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %signal56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %signal56, align 16
  %oom_score_adj_min67 = getelementptr inbounds %struct.signal_struct, ptr %36, i32 0, i32 58
  %37 = ptrtoint ptr %oom_score_adj_min67 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv55, ptr %oom_score_adj_min67, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %land.lhs.true59.if.end68_crit_edge, %if.end54.if.end68_crit_edge
  tail call fastcc void @trace_oom_score_adj_update(ptr noundef nonnull %call1.i147)
  %tobool69.not = icmp eq ptr %mm.2, null
  br i1 %tobool69.not, label %if.end68.err_unlock_crit_edge, label %if.then70

if.end68.err_unlock_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_unlock

if.then70:                                        ; preds = %if.end68
  %38 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %41, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.then70.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then70.rcu_read_lock.exit_crit_edge:           ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then70
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then70.rcu_read_lock.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %42 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr168 = getelementptr i8, ptr %42, i32 -1136
  %cmp77.not169 = icmp eq ptr %add.ptr168, @init_task
  br i1 %cmp77.not169, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %add.ptr170 = phi ptr [ %add.ptr, %for.cond.backedge.for.body_crit_edge ], [ %add.ptr168, %rcu_read_lock.exit.for.body_crit_edge ]
  %43 = phi ptr [ %53, %for.cond.backedge.for.body_crit_edge ], [ %42, %rcu_read_lock.exit.for.body_crit_edge ]
  %44 = ptrtoint ptr %signal56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %signal56, align 16
  %signal1.i = getelementptr i8, ptr %43, i32 544
  %46 = ptrtoint ptr %signal1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %signal1.i, align 16
  %cmp.i = icmp eq ptr %45, %47
  br i1 %cmp.i, label %for.body.for.cond.backedge_crit_edge, label %if.end81

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge

if.end81:                                         ; preds = %for.body
  %flags82 = getelementptr i8, ptr %43, i32 -1124
  %48 = ptrtoint ptr %flags82 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags82, align 4
  %and = and i32 %49, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool83.not = icmp eq i32 %and, 0
  br i1 %tobool83.not, label %lor.lhs.false, label %if.end81.for.cond.backedge_crit_edge

if.end81.for.cond.backedge_crit_edge:             ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge

lor.lhs.false:                                    ; preds = %if.end81
  %tgid.i.i = getelementptr i8, ptr %43, i32 172
  %50 = ptrtoint ptr %tgid.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tgid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp.i151.not = icmp eq i32 %51, 1
  br i1 %cmp.i151.not, label %lor.lhs.false.for.cond.backedge_crit_edge, label %if.end87

lor.lhs.false.for.cond.backedge_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end108, %lor.lhs.false.for.cond.backedge_crit_edge, %if.end81.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %tasks = getelementptr inbounds %struct.task_struct, ptr %add.ptr170, i32 0, i32 50
  %52 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %tasks, align 16
  %add.ptr = getelementptr i8, ptr %53, i32 -1136
  %cmp77.not = icmp eq ptr %add.ptr, @init_task
  br i1 %cmp77.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end87:                                         ; preds = %lor.lhs.false
  %alloc_lock.i152 = getelementptr i8, ptr %43, i32 648
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i152) #15
  %vfork_done88 = getelementptr i8, ptr %43, i32 276
  %54 = ptrtoint ptr %vfork_done88 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vfork_done88, align 4
  %tobool89.not = icmp eq ptr %55, null
  br i1 %tobool89.not, label %land.lhs.true90, label %if.end87.if.end108_crit_edge

if.end87.if.end108_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108

land.lhs.true90:                                  ; preds = %if.end87
  %call91 = tail call zeroext i1 @process_shares_mm(ptr noundef %add.ptr170, ptr noundef nonnull %mm.2) #15
  br i1 %call91, label %if.then93, label %land.lhs.true90.if.end108_crit_edge

land.lhs.true90.if.end108_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108

if.then93:                                        ; preds = %land.lhs.true90
  %56 = ptrtoint ptr %signal1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %signal1.i, align 16
  %oom_score_adj96 = getelementptr inbounds %struct.signal_struct, ptr %57, i32 0, i32 57
  %58 = ptrtoint ptr %oom_score_adj96 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv55, ptr %oom_score_adj96, align 2
  br i1 %legacy, label %if.then93.if.end108_crit_edge, label %land.lhs.true98

if.then93.if.end108_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108

land.lhs.true98:                                  ; preds = %if.then93
  %59 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i153 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i153 to ptr
  %task100 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task100 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task100, align 8
  %call101 = tail call zeroext i1 @has_capability_noaudit(ptr noundef %62, i32 noundef 24) #15
  br i1 %call101, label %if.then103, label %land.lhs.true98.if.end108_crit_edge

land.lhs.true98.if.end108_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108

if.then103:                                       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %signal1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %signal1.i, align 16
  %oom_score_adj_min106 = getelementptr inbounds %struct.signal_struct, ptr %64, i32 0, i32 58
  %65 = ptrtoint ptr %oom_score_adj_min106 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv55, ptr %oom_score_adj_min106, align 8
  br label %if.end108

if.end108:                                        ; preds = %if.then103, %land.lhs.true98.if.end108_crit_edge, %if.then93.if.end108_crit_edge, %land.lhs.true90.if.end108_crit_edge, %if.end87.if.end108_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i152) #15
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i155 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i155, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i158

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i158:                               ; preds = %for.end
  %call1.i156 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i156)
  %tobool.not.i157 = icmp eq i32 %call1.i156, 0
  br i1 %tobool.not.i157, label %land.lhs.true.i158.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i160

land.lhs.true.i158.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i160:                              ; preds = %land.lhs.true.i158
  %.b4.i159 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i159, label %land.lhs.true2.i160.rcu_read_unlock.exit_crit_edge, label %if.then.i161

land.lhs.true2.i160.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i160
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i161:                                     ; preds = %land.lhs.true2.i160
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i161, %land.lhs.true2.i160.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i158.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %66 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i162 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i162 to ptr
  %preempt_count.i.i.i.i163 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i163, align 4
  %sub.i.i.i = add i32 %69, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i163, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %mm_count.i164 = getelementptr inbounds %struct.anon.4, ptr %mm.2, i32 0, i32 11
  %call.i.i.i165 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i164, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr %mm_count.i164, i32 1, i32 3, i32 1) #15
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i164, ptr %mm_count.i164, i32 1, ptr elementtype(i32) %mm_count.i164) #15, !srcloc !424
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %70, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !425
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i166, label %rcu_read_unlock.exit.err_unlock_crit_edge, !prof !419

rcu_read_unlock.exit.err_unlock_crit_edge:        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_unlock

if.then.i166:                                     ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__mmdrop(ptr noundef nonnull %mm.2) #15
  br label %err_unlock

err_unlock:                                       ; preds = %if.then.i166, %rcu_read_unlock.exit.err_unlock_crit_edge, %if.end68.err_unlock_crit_edge, %land.lhs.true37.err_unlock_crit_edge, %land.lhs.true.err_unlock_crit_edge
  %err.0 = phi i32 [ 0, %if.end68.err_unlock_crit_edge ], [ -13, %land.lhs.true.err_unlock_crit_edge ], [ -13, %land.lhs.true37.err_unlock_crit_edge ], [ 0, %rcu_read_unlock.exit.err_unlock_crit_edge ], [ 0, %if.then.i166 ]
  tail call void @mutex_unlock(ptr noundef nonnull @oom_adj_mutex) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i147, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i167, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %err_unlock
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i167:                                     ; preds = %err_unlock
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i147) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i167, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %entry.cleanup_crit_edge ], [ %err.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i167 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_lock_task_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @has_capability_noaudit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_oom_score_adj_update(ptr noundef %task) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_oom_score_adj_update, i32 0, i32 1), ptr blockaddress(@trace_oom_score_adj_update, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !431

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !410

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !432
  %call42 = tail call i32 @__traceiter_oom_score_adj_update(ptr noundef null, ptr noundef %task) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !433
  %13 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !410

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !434
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_oom_score_adj_update, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_oom_score_adj_update, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_oom_score_adj_update.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_oom_score_adj_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.113, i32 noundef 30, ptr noundef nonnull @.str.1) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !435
  %31 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @process_shares_mm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_oom_score_adj_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oom_score_adj_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buffer = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %buffer) #15
  %tobool.not = icmp eq ptr %call1.i, null
  %4 = call ptr @memset(ptr %buffer, i32 255, i32 13)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 111
  %5 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %signal, align 16
  %oom_score_adj2 = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 57
  %7 = ptrtoint ptr %oom_score_adj2 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %oom_score_adj2, align 2
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %conv = sext i16 %8 to i32
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buffer, i32 noundef 13, ptr noundef nonnull @.str.115, i32 noundef %conv)
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buffer, i32 noundef %call3) #15
  br label %cleanup

cleanup:                                          ; preds = %put_task_struct.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %put_task_struct.exit ], [ -3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buffer) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oom_score_adj_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buffer = alloca [13 x i8], align 1
  %oom_score_adj = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %buffer) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oom_score_adj) #15
  %0 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %oom_score_adj, align 4, !annotation !413
  %1 = call ptr @memset(ptr %buffer, i32 0, i32 13)
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 12)
  call void @__check_object_size(ptr noundef nonnull %buffer, i32 noundef %2, i1 noundef zeroext false) #15
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #15
  %call.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %2, i32 -1226833920) #18, !srcloc !426
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !410

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buffer, i32 noundef %2) #15
  %4 = call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !427
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !428
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !429
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buffer, ptr noundef %buf, i32 noundef %2) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #15, !srcloc !428
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !429
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %2, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.then11.i.i, !prof !410

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buffer, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out.thread

if.end3:                                          ; preds = %if.end.i.i
  %call.i = call ptr @strim(ptr noundef nonnull %buffer) #15
  %call6 = call i32 @kstrtoint(ptr noundef %call.i, i32 noundef 0, ptr noundef nonnull %oom_score_adj) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end9:                                          ; preds = %if.end3
  %8 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oom_score_adj, align 4
  %10 = add i32 %9, -1001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2001, i32 %10)
  %11 = icmp ult i32 %10, -2001
  br i1 %11, label %if.end9.out.thread_crit_edge, label %if.end13

if.end9.out.thread_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = call fastcc i32 @__set_oom_adj(ptr noundef %file, i32 noundef %9, i1 noundef zeroext false)
  br label %out

out:                                              ; preds = %if.end13, %if.end3.out_crit_edge
  %err.0 = phi i32 [ %call6, %if.end3.out_crit_edge ], [ %call14, %if.end13 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp15 = icmp slt i32 %err.0, 0
  br i1 %cmp15, label %out.out.thread_crit_edge, label %out._crit_edge

out._crit_edge:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %12

out.out.thread_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

out.thread:                                       ; preds = %out.out.thread_crit_edge, %if.end9.out.thread_crit_edge, %if.then11.i.i
  %err.024 = phi i32 [ %err.0, %out.out.thread_crit_edge ], [ -22, %if.end9.out.thread_crit_edge ], [ -14, %if.then11.i.i ]
  br label %12

12:                                               ; preds = %out.thread, %out._crit_edge
  %13 = phi i32 [ %err.024, %out.thread ], [ %2, %out._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oom_score_adj) #15
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buffer) #15
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_loginuid_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %tmpbuf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %tmpbuf) #15
  %tobool.not = icmp eq ptr %call1.i, null
  %4 = call ptr @memset(ptr %tmpbuf, i32 255, i32 11)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_cred = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 12
  %5 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_cred, align 8
  %user_ns = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user_ns, align 4
  %loginuid.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 121
  %9 = ptrtoint ptr %loginuid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %retval.sroa.0.0.copyload.i = load i32, ptr %loginuid.i, align 16
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.copyload.i, 0
  %call4 = tail call i32 @from_kuid(ptr noundef %8, [1 x i32] %.fca.0.insert) #15
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tmpbuf, i32 noundef 11, ptr noundef nonnull @.str.5, i32 noundef %call4) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %10 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tmpbuf, i32 noundef %call5) #15
  br label %cleanup

cleanup:                                          ; preds = %put_task_struct.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %put_task_struct.exit ], [ -3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %tmpbuf) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_loginuid_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  %loginuid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %loginuid) #15
  %2 = ptrtoint ptr %loginuid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %loginuid, align 4, !annotation !413
  %3 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -40
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 8
  %call5 = tail call ptr @pid_task(ptr noundef %14, i32 noundef 0) #15
  %cmp.not = icmp eq ptr %12, %call5
  %call.i49 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %cmp.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %rcu_read_lock.exit
  br i1 %call.i49, label %if.then6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i43

if.then6.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i43:                                ; preds = %if.then6
  %call1.i41 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, %if.then6.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %15 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i47 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i48, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup

if.end7:                                          ; preds = %rcu_read_lock.exit
  br i1 %call.i49, label %if.end7.rcu_read_unlock.exit59_crit_edge, label %land.lhs.true.i52

if.end7.rcu_read_unlock.exit59_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit59

land.lhs.true.i52:                                ; preds = %if.end7
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.rcu_read_unlock.exit59_crit_edge, label %land.lhs.true2.i54

land.lhs.true.i52.rcu_read_unlock.exit59_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit59

land.lhs.true2.i54:                               ; preds = %land.lhs.true.i52
  %.b4.i53 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53, label %land.lhs.true2.i54.rcu_read_unlock.exit59_crit_edge, label %if.then.i55

land.lhs.true2.i54.rcu_read_unlock.exit59_crit_edge: ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit59

if.then.i55:                                      ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit59

rcu_read_unlock.exit59:                           ; preds = %if.then.i55, %land.lhs.true2.i54.rcu_read_unlock.exit59_crit_edge, %land.lhs.true.i52.rcu_read_unlock.exit59_crit_edge, %if.end7.rcu_read_unlock.exit59_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %19 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i56 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i56 to ptr
  %preempt_count.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i57, align 4
  %sub.i.i.i58 = add i32 %22, -1
  store volatile i32 %sub.i.i.i58, ptr %preempt_count.i.i.i.i57, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %23 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %cmp8.not = icmp eq i64 %24, 0
  br i1 %cmp8.not, label %if.end10, label %rcu_read_unlock.exit59.cleanup_crit_edge

rcu_read_unlock.exit59.cleanup_crit_edge:         ; preds = %rcu_read_unlock.exit59
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %rcu_read_unlock.exit59
  %call.i60 = call i32 @kstrtouint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %loginuid) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp12 = icmp slt i32 %call.i60, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %25 = ptrtoint ptr %loginuid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %loginuid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp15 = icmp eq i32 %26, -1
  br i1 %cmp15, label %if.end14.if.end22_crit_edge, label %if.else

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.else:                                          ; preds = %if.end14
  %f_cred = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 12
  %27 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f_cred, align 8
  %user_ns = getelementptr inbounds %struct.cred, ptr %28, i32 0, i32 25
  %29 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %user_ns, align 4
  %call17 = call i32 @make_kuid(ptr noundef %30, i32 noundef %26) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17)
  %cmp.i.not = icmp eq i32 %call17, -1
  br i1 %cmp.i.not, label %if.else.cleanup_crit_edge, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end22:                                         ; preds = %if.else.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %kloginuid.sroa.0.0 = phi i32 [ %call17, %if.else.if.end22_crit_edge ], [ -1, %if.end14.if.end22_crit_edge ]
  %.fca.0.insert36 = insertvalue [1 x i32] poison, i32 %kloginuid.sroa.0.0, 0
  %call24 = call i32 @audit_set_loginuid([1 x i32] %.fca.0.insert36) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  %call24.count = select i1 %cmp25, i32 %call24, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.else.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %rcu_read_unlock.exit59.cleanup_crit_edge, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %rcu_read_unlock.exit ], [ -1, %entry.cleanup_crit_edge ], [ -22, %rcu_read_unlock.exit59.cleanup_crit_edge ], [ %call.i60, %if.end10.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %call24.count, %if.end22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %loginuid) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @audit_set_loginuid([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_sessionid_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %tmpbuf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %tmpbuf) #15
  %tobool.not = icmp eq ptr %call1.i, null
  %4 = call ptr @memset(ptr %tmpbuf, i32 255, i32 11)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %sessionid.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 122
  %5 = ptrtoint ptr %sessionid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sessionid.i, align 4
  %call3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tmpbuf, i32 noundef 11, ptr noundef nonnull @.str.5, i32 noundef %6) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %7 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tmpbuf, i32 noundef %call3) #15
  br label %cleanup

cleanup:                                          ; preds = %put_task_struct.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %put_task_struct.exit ], [ -3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %tmpbuf) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_fault_inject_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buffer = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %buffer) #15
  %tobool.not = icmp eq ptr %call1.i, null
  %4 = call ptr @memset(ptr %buffer, i32 255, i32 13)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %make_it_fail2 = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 182
  %5 = ptrtoint ptr %make_it_fail2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %make_it_fail2, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buffer, i32 noundef 13, ptr noundef nonnull @.str.116, i32 noundef %6)
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buffer, i32 noundef %call3) #15
  br label %cleanup

cleanup:                                          ; preds = %put_task_struct.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %put_task_struct.exit ], [ -3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buffer) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_fault_inject_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buffer = alloca [13 x i8], align 1
  %make_it_fail = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %buffer) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %make_it_fail) #15
  %0 = ptrtoint ptr %make_it_fail to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %make_it_fail, align 4, !annotation !413
  %call = tail call zeroext i1 @capable(i32 noundef 24) #15
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memset(ptr %buffer, i32 0, i32 13)
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 12)
  call void @__check_object_size(ptr noundef nonnull %buffer, i32 noundef %2, i1 noundef zeroext false) #15
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #15
  %call.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.end.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %2, i32 -1226833920) #18, !srcloc !426
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !410

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buffer, i32 noundef %2) #15
  %4 = call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !427
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !428
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !429
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buffer, ptr noundef %buf, i32 noundef %2) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #15, !srcloc !428
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !429
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %2, %if.end.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6, label %if.then11.i.i, !prof !410

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buffer, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i
  %call.i = call ptr @strim(ptr noundef nonnull %buffer) #15
  %call9 = call i32 @kstrtoint(ptr noundef %call.i, i32 noundef 0, ptr noundef nonnull %make_it_fail) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %make_it_fail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %make_it_fail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %11 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 -40
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = call ptr @get_pid_task(ptr noundef %14, i32 noundef 0) #15
  %tobool19.not = icmp eq ptr %call1.i, null
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %15 = ptrtoint ptr %make_it_fail to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %make_it_fail, align 4
  %make_it_fail22 = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 182
  %17 = ptrtoint ptr %make_it_fail22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %make_it_fail22, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i31, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i31:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i31, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -3, %if.end16.cleanup_crit_edge ], [ %2, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %2, %if.then10.i.i.i.i ], [ %2, %if.then.i31 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %make_it_fail) #15
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buffer) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_fail_nth_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %numbuf = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %numbuf) #15
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = call ptr @memset(ptr %numbuf, i32 255, i32 13)
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 -40
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %4, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %fail_nth = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 183
  %5 = ptrtoint ptr %fail_nth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fail_nth, align 128
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %numbuf, i32 noundef 13, ptr noundef nonnull @.str.117, i32 noundef %6)
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %numbuf, i32 noundef %call2) #15
  br label %cleanup

cleanup:                                          ; preds = %put_task_struct.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %put_task_struct.exit ], [ -3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %numbuf) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_fail_nth_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #15
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !413
  %call = call i32 @kstrtouint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %n) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 -40
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = call ptr @get_pid_task(ptr noundef %4, i32 noundef 0) #15
  %tobool3.not = icmp eq ptr %call1.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n, align 4
  %fail_nth = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 183
  %7 = ptrtoint ptr %fail_nth to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %fail_nth, align 128
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %8 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -3, %if.end.cleanup_crit_edge ], [ %count, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %count, %if.then10.i.i.i.i ], [ %count, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_io_accounting(ptr noundef %task, ptr noundef %m, i32 noundef %whole) unnamed_addr #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioac = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 155
  %0 = ptrtoint ptr %ioac to i32
  call void @__asan_load8_noabort(i32 %0)
  %acct.sroa.0.0.copyload = load i64, ptr %ioac, align 8
  %acct.sroa.9.0.ioac.sroa_idx = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 155, i32 1
  %1 = ptrtoint ptr %acct.sroa.9.0.ioac.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %1)
  %acct.sroa.9.0.copyload = load i64, ptr %acct.sroa.9.0.ioac.sroa_idx, align 8
  %acct.sroa.14.0.ioac.sroa_idx = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 155, i32 2
  %2 = ptrtoint ptr %acct.sroa.14.0.ioac.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %2)
  %acct.sroa.14.0.copyload = load i64, ptr %acct.sroa.14.0.ioac.sroa_idx, align 8
  %acct.sroa.19.0.ioac.sroa_idx = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 155, i32 3
  %3 = ptrtoint ptr %acct.sroa.19.0.ioac.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %3)
  %acct.sroa.19.0.copyload = load i64, ptr %acct.sroa.19.0.ioac.sroa_idx, align 8
  %acct.sroa.24.0.ioac.sroa_idx = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 155, i32 4
  %4 = ptrtoint ptr %acct.sroa.24.0.ioac.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %4)
  %acct.sroa.24.0.copyload = load i64, ptr %acct.sroa.24.0.ioac.sroa_idx, align 8
  %acct.sroa.29.0.ioac.sroa_idx = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 155, i32 5
  %5 = ptrtoint ptr %acct.sroa.29.0.ioac.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %5)
  %acct.sroa.29.0.copyload = load i64, ptr %acct.sroa.29.0.ioac.sroa_idx, align 8
  %acct.sroa.34.0.ioac.sroa_idx = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 155, i32 6
  %6 = ptrtoint ptr %acct.sroa.34.0.ioac.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %6)
  %acct.sroa.34.0.copyload = load i64, ptr %acct.sroa.34.0.ioac.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #15
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %flags, align 4, !annotation !413
  %signal = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal, align 16
  %exec_update_lock = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 61
  %call = tail call i32 @down_read_killable(ptr noundef %exec_update_lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @ptrace_may_access(ptr noundef %task, i32 noundef 9) #15
  br i1 %call1, label %if.end3, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whole)
  %tobool4.not = icmp eq i32 %whole, 0
  br i1 %tobool4.not, label %if.end3.if.end12_crit_edge, label %land.lhs.true

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end3
  %call.i = call ptr @__lock_task_sighand(ptr noundef %task, ptr noundef nonnull %flags) #15
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %land.lhs.true.if.end12_crit_edge, label %if.then7

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then7:                                         ; preds = %land.lhs.true
  %10 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signal, align 16
  %ioac9 = getelementptr inbounds %struct.signal_struct, ptr %11, i32 0, i32 49
  %12 = ptrtoint ptr %ioac9 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ioac9, align 8
  %add.i.i = add i64 %13, %acct.sroa.0.0.copyload
  %wchar.i.i = getelementptr inbounds %struct.signal_struct, ptr %11, i32 0, i32 49, i32 1
  %14 = ptrtoint ptr %wchar.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %wchar.i.i, align 8
  %add3.i.i = add i64 %15, %acct.sroa.9.0.copyload
  %syscr.i.i = getelementptr inbounds %struct.signal_struct, ptr %11, i32 0, i32 49, i32 2
  %16 = ptrtoint ptr %syscr.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %syscr.i.i, align 8
  %add5.i.i = add i64 %17, %acct.sroa.14.0.copyload
  %syscw.i.i = getelementptr inbounds %struct.signal_struct, ptr %11, i32 0, i32 49, i32 3
  %18 = ptrtoint ptr %syscw.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %syscw.i.i, align 8
  %add7.i.i = add i64 %19, %acct.sroa.19.0.copyload
  %read_bytes.i.i = getelementptr inbounds %struct.signal_struct, ptr %11, i32 0, i32 49, i32 4
  %20 = ptrtoint ptr %read_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %read_bytes.i.i, align 8
  %add.i3.i = add i64 %21, %acct.sroa.24.0.copyload
  %write_bytes.i.i = getelementptr inbounds %struct.signal_struct, ptr %11, i32 0, i32 49, i32 5
  %22 = ptrtoint ptr %write_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %write_bytes.i.i, align 8
  %add3.i4.i = add i64 %23, %acct.sroa.29.0.copyload
  %cancelled_write_bytes.i.i = getelementptr inbounds %struct.signal_struct, ptr %11, i32 0, i32 49, i32 6
  %24 = ptrtoint ptr %cancelled_write_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %cancelled_write_bytes.i.i, align 8
  %add5.i5.i = add i64 %25, %acct.sroa.34.0.copyload
  %thread_group.i73 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 80
  %26 = ptrtoint ptr %thread_group.i73 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %thread_group.i73, align 4
  %add.ptr.i74 = getelementptr i8, ptr %27, i32 -1396
  %cmp.not75 = icmp eq ptr %add.ptr.i74, %task
  br i1 %cmp.not75, label %if.then7.while.end_crit_edge, label %if.then7.while.body_crit_edge

if.then7.while.body_crit_edge:                    ; preds = %if.then7
  br label %while.body

if.then7.while.end_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then7.while.body_crit_edge
  %28 = phi ptr [ %44, %while.body.while.body_crit_edge ], [ %27, %if.then7.while.body_crit_edge ]
  %acct.sroa.34.082 = phi i64 [ %add5.i5.i46, %while.body.while.body_crit_edge ], [ %add5.i5.i, %if.then7.while.body_crit_edge ]
  %acct.sroa.29.081 = phi i64 [ %add3.i4.i43, %while.body.while.body_crit_edge ], [ %add3.i4.i, %if.then7.while.body_crit_edge ]
  %acct.sroa.24.080 = phi i64 [ %add.i3.i40, %while.body.while.body_crit_edge ], [ %add.i3.i, %if.then7.while.body_crit_edge ]
  %acct.sroa.19.079 = phi i64 [ %add7.i.i37, %while.body.while.body_crit_edge ], [ %add7.i.i, %if.then7.while.body_crit_edge ]
  %acct.sroa.14.078 = phi i64 [ %add5.i.i34, %while.body.while.body_crit_edge ], [ %add5.i.i, %if.then7.while.body_crit_edge ]
  %acct.sroa.9.077 = phi i64 [ %add3.i.i31, %while.body.while.body_crit_edge ], [ %add3.i.i, %if.then7.while.body_crit_edge ]
  %acct.sroa.0.076 = phi i64 [ %add.i.i28, %while.body.while.body_crit_edge ], [ %add.i.i, %if.then7.while.body_crit_edge ]
  %ioac11 = getelementptr i8, ptr %28, i32 2932
  %29 = ptrtoint ptr %ioac11 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ioac11, align 8
  %add.i.i28 = add i64 %30, %acct.sroa.0.076
  %wchar.i.i29 = getelementptr i8, ptr %28, i32 2940
  %31 = ptrtoint ptr %wchar.i.i29 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %wchar.i.i29, align 8
  %add3.i.i31 = add i64 %32, %acct.sroa.9.077
  %syscr.i.i32 = getelementptr i8, ptr %28, i32 2948
  %33 = ptrtoint ptr %syscr.i.i32 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %syscr.i.i32, align 8
  %add5.i.i34 = add i64 %34, %acct.sroa.14.078
  %syscw.i.i35 = getelementptr i8, ptr %28, i32 2956
  %35 = ptrtoint ptr %syscw.i.i35 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %syscw.i.i35, align 8
  %add7.i.i37 = add i64 %36, %acct.sroa.19.079
  %read_bytes.i.i38 = getelementptr i8, ptr %28, i32 2964
  %37 = ptrtoint ptr %read_bytes.i.i38 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %read_bytes.i.i38, align 8
  %add.i3.i40 = add i64 %38, %acct.sroa.24.080
  %write_bytes.i.i41 = getelementptr i8, ptr %28, i32 2972
  %39 = ptrtoint ptr %write_bytes.i.i41 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %write_bytes.i.i41, align 8
  %add3.i4.i43 = add i64 %40, %acct.sroa.29.081
  %cancelled_write_bytes.i.i44 = getelementptr i8, ptr %28, i32 2980
  %41 = ptrtoint ptr %cancelled_write_bytes.i.i44 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %cancelled_write_bytes.i.i44, align 8
  %add5.i5.i46 = add i64 %42, %acct.sroa.34.082
  %43 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %28, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 -1396
  %cmp.not = icmp eq ptr %add.ptr.i, %task
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then7.while.end_crit_edge
  %acct.sroa.0.0.lcssa = phi i64 [ %add.i.i, %if.then7.while.end_crit_edge ], [ %add.i.i28, %while.body.while.end_crit_edge ]
  %acct.sroa.9.0.lcssa = phi i64 [ %add3.i.i, %if.then7.while.end_crit_edge ], [ %add3.i.i31, %while.body.while.end_crit_edge ]
  %acct.sroa.14.0.lcssa = phi i64 [ %add5.i.i, %if.then7.while.end_crit_edge ], [ %add5.i.i34, %while.body.while.end_crit_edge ]
  %acct.sroa.19.0.lcssa = phi i64 [ %add7.i.i, %if.then7.while.end_crit_edge ], [ %add7.i.i37, %while.body.while.end_crit_edge ]
  %acct.sroa.24.0.lcssa = phi i64 [ %add.i3.i, %if.then7.while.end_crit_edge ], [ %add.i3.i40, %while.body.while.end_crit_edge ]
  %acct.sroa.29.0.lcssa = phi i64 [ %add3.i4.i, %if.then7.while.end_crit_edge ], [ %add3.i4.i43, %while.body.while.end_crit_edge ]
  %acct.sroa.34.0.lcssa = phi i64 [ %add5.i5.i, %if.then7.while.end_crit_edge ], [ %add5.i5.i46, %while.body.while.end_crit_edge ]
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 112
  %45 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sighand.i, align 4
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %48) #15
  br label %if.end12

if.end12:                                         ; preds = %while.end, %land.lhs.true.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  %acct.sroa.0.1 = phi i64 [ %acct.sroa.0.0.copyload, %if.end3.if.end12_crit_edge ], [ %acct.sroa.0.0.copyload, %land.lhs.true.if.end12_crit_edge ], [ %acct.sroa.0.0.lcssa, %while.end ]
  %acct.sroa.9.1 = phi i64 [ %acct.sroa.9.0.copyload, %if.end3.if.end12_crit_edge ], [ %acct.sroa.9.0.copyload, %land.lhs.true.if.end12_crit_edge ], [ %acct.sroa.9.0.lcssa, %while.end ]
  %acct.sroa.14.1 = phi i64 [ %acct.sroa.14.0.copyload, %if.end3.if.end12_crit_edge ], [ %acct.sroa.14.0.copyload, %land.lhs.true.if.end12_crit_edge ], [ %acct.sroa.14.0.lcssa, %while.end ]
  %acct.sroa.19.1 = phi i64 [ %acct.sroa.19.0.copyload, %if.end3.if.end12_crit_edge ], [ %acct.sroa.19.0.copyload, %land.lhs.true.if.end12_crit_edge ], [ %acct.sroa.19.0.lcssa, %while.end ]
  %acct.sroa.24.1 = phi i64 [ %acct.sroa.24.0.copyload, %if.end3.if.end12_crit_edge ], [ %acct.sroa.24.0.copyload, %land.lhs.true.if.end12_crit_edge ], [ %acct.sroa.24.0.lcssa, %while.end ]
  %acct.sroa.29.1 = phi i64 [ %acct.sroa.29.0.copyload, %if.end3.if.end12_crit_edge ], [ %acct.sroa.29.0.copyload, %land.lhs.true.if.end12_crit_edge ], [ %acct.sroa.29.0.lcssa, %while.end ]
  %acct.sroa.34.1 = phi i64 [ %acct.sroa.34.0.copyload, %if.end3.if.end12_crit_edge ], [ %acct.sroa.34.0.copyload, %land.lhs.true.if.end12_crit_edge ], [ %acct.sroa.34.0.lcssa, %while.end ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.118, i64 noundef %acct.sroa.0.1, i64 noundef %acct.sroa.9.1, i64 noundef %acct.sroa.14.1, i64 noundef %acct.sroa.19.1, i64 noundef %acct.sroa.24.1, i64 noundef %acct.sroa.29.1, i64 noundef %acct.sroa.34.1) #15
  br label %out_unlock

out_unlock:                                       ; preds = %if.end12, %if.end.out_unlock_crit_edge
  %result.0 = phi i32 [ 0, %if.end12 ], [ -13, %if.end.out_unlock_crit_edge ]
  %49 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %signal, align 16
  %exec_update_lock14 = getelementptr inbounds %struct.signal_struct, ptr %50, i32 0, i32 61
  call void @up_read(ptr noundef %exec_update_lock14) #15
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %out_unlock ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_uid_map_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_uid_map_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @proc_id_map_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @proc_uid_seq_operations)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_id_map_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.put_user_ns.exit_crit_edge, label %land.lhs.true.i

entry.put_user_ns.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_user_ns.exit

land.lhs.true.i:                                  ; preds = %entry
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %3, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.put_user_ns.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_user_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #15
  br label %put_user_ns.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_user_ns(ptr noundef nonnull %3) #15
  br label %put_user_ns.exit

put_user_ns.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, %entry.put_user_ns.exit_crit_edge
  %call = tail call i32 @seq_release(ptr noundef %inode, ptr noundef %file) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @proc_id_map_open(ptr nocapture noundef readonly %inode, ptr noundef %file, ptr noundef %seq_ops) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %inode, i32 -40
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i43 = tail call ptr @get_pid_task(ptr noundef %1, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i43, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %6 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i32 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i33, align 4
  %add.i.i.i34 = add i32 %9, 1
  store volatile i32 %add.i.i.i34, ptr %preempt_count.i.i.i.i33, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i35, label %rcu_read_lock.exit.rcu_read_lock.exit42_crit_edge, label %land.lhs.true.i38

rcu_read_lock.exit.rcu_read_lock.exit42_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit42

land.lhs.true.i38:                                ; preds = %rcu_read_lock.exit
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_lock.exit42_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_lock.exit42_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit42

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_lock.exit42_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_lock.exit42_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit42

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit42

rcu_read_lock.exit42:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_lock.exit42_crit_edge, %land.lhs.true.i38.rcu_read_lock.exit42_crit_edge, %rcu_read_lock.exit.rcu_read_lock.exit42_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %call1.i43, i32 0, i32 98
  %10 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %real_cred, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %rcu_read_lock.exit42.do.end10_crit_edge

rcu_read_lock.exit42.do.end10_crit_edge:          ; preds = %rcu_read_lock.exit42
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit42
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true6

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @proc_id_map_open.__warned, align 1
  br i1 %.b31, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @proc_id_map_open.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 3018, ptr noundef nonnull @.str.1) #15
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit42.do.end10_crit_edge
  %user_ns = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns, align 4
  %call.i44 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i44, label %do.end10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i47

do.end10.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i47:                                ; preds = %do.end10
  %call1.i45 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool.not.i46 = icmp eq i32 %call1.i45, 0
  br i1 %tobool.not.i46, label %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i49

land.lhs.true.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i49:                               ; preds = %land.lhs.true.i47
  %.b4.i48 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48, label %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, label %if.then.i50

land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i50:                                      ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i50, %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, %do.end10.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %14 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i51 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i51 to ptr
  %preempt_count.i.i.i.i52 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i52, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i52, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %tobool.not.i53 = icmp eq ptr %13, null
  br i1 %tobool.not.i53, label %rcu_read_unlock.exit.get_user_ns.exit_crit_edge, label %if.then.i54

rcu_read_unlock.exit.get_user_ns.exit_crit_edge:  ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_user_ns.exit

if.then.i54:                                      ; preds = %rcu_read_unlock.exit
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %13, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !418
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i54.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !419

if.then.i54.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i54
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_user_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !410

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_user_ns.exit_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_user_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i54.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i54.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #15
  br label %get_user_ns.exit

get_user_ns.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_user_ns.exit_crit_edge, %rcu_read_unlock.exit.get_user_ns.exit_crit_edge
  %call.i55 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i55, label %get_user_ns.exit.rcu_read_unlock.exit65_crit_edge, label %land.lhs.true.i58

get_user_ns.exit.rcu_read_unlock.exit65_crit_edge: ; preds = %get_user_ns.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit65

land.lhs.true.i58:                                ; preds = %get_user_ns.exit
  %call1.i56 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56)
  %tobool.not.i57 = icmp eq i32 %call1.i56, 0
  br i1 %tobool.not.i57, label %land.lhs.true.i58.rcu_read_unlock.exit65_crit_edge, label %land.lhs.true2.i60

land.lhs.true.i58.rcu_read_unlock.exit65_crit_edge: ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit65

land.lhs.true2.i60:                               ; preds = %land.lhs.true.i58
  %.b4.i59 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i59, label %land.lhs.true2.i60.rcu_read_unlock.exit65_crit_edge, label %if.then.i61

land.lhs.true2.i60.rcu_read_unlock.exit65_crit_edge: ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit65

if.then.i61:                                      ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit65

rcu_read_unlock.exit65:                           ; preds = %if.then.i61, %land.lhs.true2.i60.rcu_read_unlock.exit65_crit_edge, %land.lhs.true.i58.rcu_read_unlock.exit65_crit_edge, %get_user_ns.exit.rcu_read_unlock.exit65_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %20 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i62 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i62 to ptr
  %preempt_count.i.i.i.i63 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i63, align 4
  %sub.i.i.i64 = add i32 %23, -1
  store volatile i32 %sub.i.i.i64, ptr %preempt_count.i.i.i.i63, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i43, i32 0, i32 2
  %call.i.i.i.i.i.i66 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i68, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %rcu_read_unlock.exit65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i67 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i67, label %if.end5.i.i.i.i.if.end14_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.if.end14_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %if.end14

if.then.i68:                                      ; preds = %rcu_read_unlock.exit65
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i43) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then.i68, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end14_crit_edge
  br i1 %tobool.not.i53, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %call18 = tail call i32 @seq_open(ptr noundef %file, ptr noundef %seq_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %land.lhs.true.i74

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %25 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %13, ptr %private, align 8
  br label %cleanup

land.lhs.true.i74:                                ; preds = %if.end17
  %count.i70 = getelementptr inbounds %struct.user_namespace, ptr %13, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i70, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %count.i70, i32 1, i32 3, i32 1) #15
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i70, ptr %count.i70, i32 1, ptr elementtype(i32) %count.i70) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i72 = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i72)
  %cmp.i.i.i.i73 = icmp eq i32 %asmresult.i.i.i.i.i.i.i72, 1
  br i1 %cmp.i.i.i.i73, label %if.then.i78, label %if.end5.i.i.i.i76

if.end5.i.i.i.i76:                                ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i72)
  %.not.i.i.i.i75 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i72, 0
  br i1 %.not.i.i.i.i75, label %if.end5.i.i.i.i76.cleanup_crit_edge, label %if.then10.i.i.i.i77, !prof !410

if.end5.i.i.i.i76.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i76
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i77:                              ; preds = %if.end5.i.i.i.i76
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %count.i70, i32 noundef 3) #15
  br label %cleanup

if.then.i78:                                      ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_user_ns(ptr noundef nonnull %13) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i78, %if.then10.i.i.i.i77, %if.end5.i.i.i.i76.cleanup_crit_edge, %if.end21, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %if.end14.cleanup_crit_edge ], [ %call18, %if.end5.i.i.i.i76.cleanup_crit_edge ], [ %call18, %if.then10.i.i.i.i77 ], [ %call18, %if.then.i78 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_user_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_gid_map_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_gid_map_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @proc_id_map_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @proc_gid_seq_operations)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_projid_map_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_projid_map_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @proc_id_map_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @proc_projid_seq_operations)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_setgroups_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_setgroups_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %inode, i32 -40
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i49 = tail call ptr @get_pid_task(ptr noundef %1, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i49, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %6 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i38 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i38 to ptr
  %preempt_count.i.i.i.i39 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i39, align 4
  %add.i.i.i40 = add i32 %9, 1
  store volatile i32 %add.i.i.i40, ptr %preempt_count.i.i.i.i39, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i41 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i41, label %rcu_read_lock.exit.rcu_read_lock.exit48_crit_edge, label %land.lhs.true.i44

rcu_read_lock.exit.rcu_read_lock.exit48_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit48

land.lhs.true.i44:                                ; preds = %rcu_read_lock.exit
  %call1.i42 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %tobool.not.i43 = icmp eq i32 %call1.i42, 0
  br i1 %tobool.not.i43, label %land.lhs.true.i44.rcu_read_lock.exit48_crit_edge, label %land.lhs.true2.i46

land.lhs.true.i44.rcu_read_lock.exit48_crit_edge: ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit48

land.lhs.true2.i46:                               ; preds = %land.lhs.true.i44
  %.b4.i45 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i45, label %land.lhs.true2.i46.rcu_read_lock.exit48_crit_edge, label %if.then.i47

land.lhs.true2.i46.rcu_read_lock.exit48_crit_edge: ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit48

if.then.i47:                                      ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit48

rcu_read_lock.exit48:                             ; preds = %if.then.i47, %land.lhs.true2.i46.rcu_read_lock.exit48_crit_edge, %land.lhs.true.i44.rcu_read_lock.exit48_crit_edge, %rcu_read_lock.exit.rcu_read_lock.exit48_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %call1.i49, i32 0, i32 98
  %10 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %real_cred, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %rcu_read_lock.exit48.do.end10_crit_edge

rcu_read_lock.exit48.do.end10_crit_edge:          ; preds = %rcu_read_lock.exit48
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit48
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true6

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b37 = load i1, ptr @proc_setgroups_open.__warned, align 1
  br i1 %.b37, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @proc_setgroups_open.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 3096, ptr noundef nonnull @.str.1) #15
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit48.do.end10_crit_edge
  %user_ns = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns, align 4
  %call.i50 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i50, label %do.end10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i53

do.end10.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i53:                                ; preds = %do.end10
  %call1.i51 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51)
  %tobool.not.i52 = icmp eq i32 %call1.i51, 0
  br i1 %tobool.not.i52, label %land.lhs.true.i53.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i55

land.lhs.true.i53.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i55:                               ; preds = %land.lhs.true.i53
  %.b4.i54 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i54, label %land.lhs.true2.i55.rcu_read_unlock.exit_crit_edge, label %if.then.i56

land.lhs.true2.i55.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i55
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i56:                                      ; preds = %land.lhs.true2.i55
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i56, %land.lhs.true2.i55.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i53.rcu_read_unlock.exit_crit_edge, %do.end10.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %14 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i57 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i57 to ptr
  %preempt_count.i.i.i.i58 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i58, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i58, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %tobool.not.i59 = icmp eq ptr %13, null
  br i1 %tobool.not.i59, label %rcu_read_unlock.exit.get_user_ns.exit_crit_edge, label %if.then.i60

rcu_read_unlock.exit.get_user_ns.exit_crit_edge:  ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_user_ns.exit

if.then.i60:                                      ; preds = %rcu_read_unlock.exit
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %13, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !418
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i60.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !419

if.then.i60.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i60
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_user_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !410

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_user_ns.exit_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_user_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i60.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i60.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #15
  br label %get_user_ns.exit

get_user_ns.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_user_ns.exit_crit_edge, %rcu_read_unlock.exit.get_user_ns.exit_crit_edge
  %call.i61 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i61, label %get_user_ns.exit.rcu_read_unlock.exit71_crit_edge, label %land.lhs.true.i64

get_user_ns.exit.rcu_read_unlock.exit71_crit_edge: ; preds = %get_user_ns.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit71

land.lhs.true.i64:                                ; preds = %get_user_ns.exit
  %call1.i62 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62)
  %tobool.not.i63 = icmp eq i32 %call1.i62, 0
  br i1 %tobool.not.i63, label %land.lhs.true.i64.rcu_read_unlock.exit71_crit_edge, label %land.lhs.true2.i66

land.lhs.true.i64.rcu_read_unlock.exit71_crit_edge: ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit71

land.lhs.true2.i66:                               ; preds = %land.lhs.true.i64
  %.b4.i65 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i65, label %land.lhs.true2.i66.rcu_read_unlock.exit71_crit_edge, label %if.then.i67

land.lhs.true2.i66.rcu_read_unlock.exit71_crit_edge: ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit71

if.then.i67:                                      ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit71

rcu_read_unlock.exit71:                           ; preds = %if.then.i67, %land.lhs.true2.i66.rcu_read_unlock.exit71_crit_edge, %land.lhs.true.i64.rcu_read_unlock.exit71_crit_edge, %get_user_ns.exit.rcu_read_unlock.exit71_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %20 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i68 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i68 to ptr
  %preempt_count.i.i.i.i69 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i69, align 4
  %sub.i.i.i70 = add i32 %23, -1
  store volatile i32 %sub.i.i.i70, ptr %preempt_count.i.i.i.i69, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i49, i32 0, i32 2
  %call.i.i.i.i.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i74, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %rcu_read_unlock.exit71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i73 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i73, label %if.end5.i.i.i.i.if.end14_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.if.end14_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %if.end14

if.then.i74:                                      ; preds = %rcu_read_unlock.exit71
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i49) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then.i74, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end14_crit_edge
  br i1 %tobool.not.i59, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %25 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %f_mode, align 8
  %and = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end17.if.end23_crit_edge, label %if.then19

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then19:                                        ; preds = %if.end17
  %call20 = tail call zeroext i1 @ns_capable(ptr noundef nonnull %13, i32 noundef 21) #15
  br i1 %call20, label %if.then19.if.end23_crit_edge, label %if.then19.land.lhs.true.i80_crit_edge

if.then19.land.lhs.true.i80_crit_edge:            ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i80

if.then19.if.end23_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.end23:                                         ; preds = %if.then19.if.end23_crit_edge, %if.end17.if.end23_crit_edge
  %call24 = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @proc_setgroups_show, ptr noundef nonnull %13) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end23.land.lhs.true.i80_crit_edge

if.end23.land.lhs.true.i80_crit_edge:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i80

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.i80:                                ; preds = %if.end23.land.lhs.true.i80_crit_edge, %if.then19.land.lhs.true.i80_crit_edge
  %ret.0 = phi i32 [ %call24, %if.end23.land.lhs.true.i80_crit_edge ], [ -13, %if.then19.land.lhs.true.i80_crit_edge ]
  %count.i76 = getelementptr inbounds %struct.user_namespace, ptr %13, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i77 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i76, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %count.i76, i32 1, i32 3, i32 1) #15
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i76, ptr %count.i76, i32 1, ptr elementtype(i32) %count.i76) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i78 = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i78)
  %cmp.i.i.i.i79 = icmp eq i32 %asmresult.i.i.i.i.i.i.i78, 1
  br i1 %cmp.i.i.i.i79, label %if.then.i84, label %if.end5.i.i.i.i82

if.end5.i.i.i.i82:                                ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i78)
  %.not.i.i.i.i81 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i78, 0
  br i1 %.not.i.i.i.i81, label %if.end5.i.i.i.i82.cleanup_crit_edge, label %if.then10.i.i.i.i83, !prof !410

if.end5.i.i.i.i82.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i83:                              ; preds = %if.end5.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %count.i76, i32 noundef 3) #15
  br label %cleanup

if.then.i84:                                      ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_user_ns(ptr noundef nonnull %13) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i84, %if.then10.i.i.i.i83, %if.end5.i.i.i.i82.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23.cleanup_crit_edge ], [ -3, %if.end14.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i82.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i83 ], [ %ret.0, %if.then.i84 ], [ -3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_setgroups_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %call = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #15
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.put_user_ns.exit_crit_edge, label %land.lhs.true.i

entry.put_user_ns.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_user_ns.exit

land.lhs.true.i:                                  ; preds = %entry
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %3, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.put_user_ns.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_user_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #15
  br label %put_user_ns.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_user_ns(ptr noundef nonnull %3) #15
  br label %put_user_ns.exit

put_user_ns.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, %entry.put_user_ns.exit_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_setgroups_show(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_tgid_stat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_tgid_io_accounting(ptr noundef %m, ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %pid, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @do_io_accounting(ptr noundef %task, ptr noundef %m, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_task_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dir, i32 -40
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i28 = tail call ptr @get_pid_task(ptr noundef %1, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i28, null
  br i1 %tobool.not, label %entry.out_no_task_crit_edge, label %if.end

entry.out_no_task_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_no_task

if.end:                                           ; preds = %entry
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call2 = tail call i32 @name_to_int(ptr noundef %d_name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end4:                                          ; preds = %if.end
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end4.rcu_read_lock.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end4.rcu_read_lock.exit_crit_edge
  %call6 = tail call ptr @find_task_by_pid_ns(i32 noundef %call2, ptr noundef %7) #15
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %out.critedge, label %if.then8

if.then8:                                         ; preds = %rcu_read_lock.exit
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call6, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !418
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then8.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !419

if.then8.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then8
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !410

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then8.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then8.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #15
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i29, label %get_task_struct.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

get_task_struct.exit.rcu_read_unlock.exit_crit_edge: ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %get_task_struct.exit
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %get_task_struct.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %14 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i36 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %call1.i28, i32 0, i32 111
  %18 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %signal.i, align 16
  %signal1.i = getelementptr inbounds %struct.task_struct, ptr %call6, i32 0, i32 111
  %20 = ptrtoint ptr %signal1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %signal1.i, align 16
  %cmp.i = icmp eq ptr %19, %21
  br i1 %cmp.i, label %if.end16, label %rcu_read_unlock.exit.out_drop_task_crit_edge

rcu_read_unlock.exit.out_drop_task_crit_edge:     ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_drop_task

if.end16:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call17 = tail call ptr @proc_task_instantiate(ptr noundef %dentry, ptr noundef nonnull %call6, ptr noundef null)
  br label %out_drop_task

out_drop_task:                                    ; preds = %if.end16, %rcu_read_unlock.exit.out_drop_task_crit_edge
  %result.0 = phi ptr [ %call17, %if.end16 ], [ inttoptr (i32 -2 to ptr), %rcu_read_unlock.exit.out_drop_task_crit_edge ]
  %call.i.i.i.i.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i41, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_drop_task
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i40 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i40, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %out

if.then.i41:                                      ; preds = %out_drop_task
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call6) #15
  br label %out

out.critedge:                                     ; preds = %rcu_read_lock.exit
  %call.i42 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i42, label %out.critedge.rcu_read_unlock.exit52_crit_edge, label %land.lhs.true.i45

out.critedge.rcu_read_unlock.exit52_crit_edge:    ; preds = %out.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit52

land.lhs.true.i45:                                ; preds = %out.critedge
  %call1.i43 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %tobool.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool.not.i44, label %land.lhs.true.i45.rcu_read_unlock.exit52_crit_edge, label %land.lhs.true2.i47

land.lhs.true.i45.rcu_read_unlock.exit52_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit52

land.lhs.true2.i47:                               ; preds = %land.lhs.true.i45
  %.b4.i46 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i46, label %land.lhs.true2.i47.rcu_read_unlock.exit52_crit_edge, label %if.then.i48

land.lhs.true2.i47.rcu_read_unlock.exit52_crit_edge: ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit52

if.then.i48:                                      ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit52

rcu_read_unlock.exit52:                           ; preds = %if.then.i48, %land.lhs.true2.i47.rcu_read_unlock.exit52_crit_edge, %land.lhs.true.i45.rcu_read_unlock.exit52_crit_edge, %out.critedge.rcu_read_unlock.exit52_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %23 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i49 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i49 to ptr
  %preempt_count.i.i.i.i50 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i50, align 4
  %sub.i.i.i51 = add i32 %26, -1
  store volatile i32 %sub.i.i.i51, ptr %preempt_count.i.i.i.i50, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit52, %if.then.i41, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %if.end.out_crit_edge
  %result.1 = phi ptr [ inttoptr (i32 -2 to ptr), %if.end.out_crit_edge ], [ inttoptr (i32 -2 to ptr), %rcu_read_unlock.exit52 ], [ %result.0, %if.end5.i.i.i.i.out_crit_edge ], [ %result.0, %if.then10.i.i.i.i ], [ %result.0, %if.then.i41 ]
  %usage.i53 = getelementptr inbounds %struct.task_struct, ptr %call1.i28, i32 0, i32 2
  %call.i.i.i.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i53, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i53, i32 1, i32 3, i32 1) #15
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i53, ptr %usage.i53, i32 1, ptr elementtype(i32) %usage.i53) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i55 = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i55)
  %cmp.i.i.i.i56 = icmp eq i32 %asmresult.i.i.i.i.i.i.i55, 1
  br i1 %cmp.i.i.i.i56, label %if.then.i60, label %if.end5.i.i.i.i58

if.end5.i.i.i.i58:                                ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i55)
  %.not.i.i.i.i57 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i55, 0
  br i1 %.not.i.i.i.i57, label %if.end5.i.i.i.i58.out_no_task_crit_edge, label %if.then10.i.i.i.i59, !prof !410

if.end5.i.i.i.i58.out_no_task_crit_edge:          ; preds = %if.end5.i.i.i.i58
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_no_task

if.then10.i.i.i.i59:                              ; preds = %if.end5.i.i.i.i58
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i53, i32 noundef 3) #15
  br label %out_no_task

if.then.i60:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i28) #15
  br label %out_no_task

out_no_task:                                      ; preds = %if.then.i60, %if.then10.i.i.i.i59, %if.end5.i.i.i.i58.out_no_task_crit_edge, %entry.out_no_task_crit_edge
  %result.2 = phi ptr [ inttoptr (i32 -2 to ptr), %entry.out_no_task_crit_edge ], [ %result.1, %if.end5.i.i.i.i58.out_no_task_crit_edge ], [ %result.1, %if.then10.i.i.i.i59 ], [ %result.1, %if.then.i60 ]
  ret ptr %result.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_task_getattr(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -40
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %5, i32 noundef 0) #15
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 111
  %6 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal.i, align 16
  %nr_threads.i = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %nr_threads.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_threads.i, align 8
  %nlink = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 2
  %10 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlink, align 8
  %add = add i32 %11, %9
  store i32 %add, ptr %nlink, align 8
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_task_instantiate(ptr noundef %dentry, ptr noundef %task, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %call = tail call ptr @proc_pid_make_inode(ptr noundef %1, ptr noundef %task, i16 noundef zeroext 16749)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @proc_tid_base_inode_operations, ptr %i_op, align 8
  %3 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @proc_tid_base_operations, ptr %3, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_flags, align 4
  %or = or i32 %6, 8
  store i32 %or, ptr %i_flags, align 4
  %.b = load i1, ptr @nlink_tid, align 1
  %conv = select i1 %.b, i32 7, i32 0
  tail call void @set_nlink(ptr noundef nonnull %call, i32 noundef %conv) #15
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %call, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  tail call void @task_dump_owner(ptr noundef %task, i16 noundef zeroext %8, ptr noundef %i_uid.i, ptr noundef %i_gid.i) #15
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %call, align 8
  %11 = and i16 %10, -3073
  store i16 %11, ptr %call, align 8
  tail call void @security_task_to_inode(ptr noundef %task, ptr noundef nonnull %call) #15
  tail call void @d_set_d_op(ptr noundef %dentry, ptr noundef nonnull @pid_dentry_operations) #15
  %call2 = tail call ptr @d_splice_alias(ptr noundef nonnull %call, ptr noundef %dentry) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_tid_base_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @proc_pident_lookup(ptr noundef %dir, ptr noundef %dentry, ptr noundef nonnull @tid_base_stuff, ptr noundef getelementptr inbounds ([46 x %struct.pid_entry], ptr @tid_base_stuff, i32 1, i32 0))
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_tid_base_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @proc_pident_readdir(ptr noundef %file, ptr noundef %ctx, ptr noundef nonnull @tid_base_stuff, i32 noundef 46)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_task_readdir(ptr nocapture noundef %file, ptr noundef %ctx) #0 align 64 {
entry:
  %name = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %tasks.i = getelementptr inbounds %struct.pid, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tasks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tasks.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.cleanup23_crit_edge, label %if.end

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup23

if.end:                                           ; preds = %entry
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.140)
  switch i64 %7, label %if.end.if.end4_crit_edge [
    i64 0, label %if.then.i
    i64 1, label %if.end.if.then6.i_crit_edge
  ]

if.end.if.then6.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then.i:                                        ; preds = %if.end
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 8
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino.i.i, align 8
  %conv.i.i = zext i32 %15 to i64
  %call.i.i = tail call i32 %9(ptr noundef %ctx, ptr noundef nonnull @.str.12, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i.i, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end3.thread.i, label %if.then.i.cleanup23_crit_edge

if.then.i.cleanup23_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup23

if.end3.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1, ptr %pos.i, align 8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.thread.i, %if.end.if.then6.i_crit_edge
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 8
  %dentry.i19.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %dentry.i19.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dentry.i19.i, align 4
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #15
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_parent.i.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #15
  %conv.i20.i = zext i32 %26 to i64
  %call1.i.i = tail call i32 %18(ptr noundef %ctx, ptr noundef nonnull @.str.13, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i20.i, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i21.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i21.i, label %if.end9.i, label %if.then6.i.cleanup23_crit_edge

if.then6.i.cleanup23_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup23

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 2, ptr %pos.i, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end9.i, %if.end.if.end4_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i, align 16
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %f_version = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 14
  %34 = ptrtoint ptr %f_version to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %f_version, align 8
  %conv = trunc i64 %35 to i32
  store i64 0, ptr %f_version, align 8
  %36 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i.i.i, align 8
  %38 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %pos.i, align 8
  %sub = add i64 %39, -2
  %conv.i = trunc i64 %sub to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %40 = icmp ult i64 %sub, 4294967296
  br i1 %40, label %if.end.i, label %if.end4.cleanup23_crit_edge

if.end4.cleanup23_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup23

if.end.i:                                         ; preds = %if.end4
  %41 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i45 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i45, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i46 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i46)
  %tobool.not.i.i = icmp eq i32 %call1.i.i46, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call ptr @pid_task(ptr noundef %37, i32 noundef 0) #15
  %tobool.not.i47 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i47, label %rcu_read_lock.exit.i.out.i_crit_edge, label %if.end4.i

rcu_read_lock.exit.i.out.i_crit_edge:             ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end4.i:                                        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool5.not.i = icmp eq i32 %conv, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool6.not.i = icmp eq i32 %conv.i, 0
  %or.cond.i = or i1 %tobool5.not.i, %tobool6.not.i
  br i1 %or.cond.i, label %if.end4.i.if.end15.i_crit_edge, label %if.then7.i

if.end4.i.if.end15.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i

if.then7.i:                                       ; preds = %if.end4.i
  %call8.i = tail call ptr @find_task_by_pid_ns(i32 noundef %conv, ptr noundef %33) #15
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.then7.i.if.end15.i_crit_edge, label %land.lhs.true10.i

if.then7.i.if.end15.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i

land.lhs.true10.i:                                ; preds = %if.then7.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %call8.i, i32 0, i32 111
  %45 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %signal.i.i, align 16
  %signal1.i.i = getelementptr inbounds %struct.task_struct, ptr %call.i, i32 0, i32 111
  %47 = ptrtoint ptr %signal1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %signal1.i.i, align 16
  %cmp.i.i48 = icmp eq ptr %46, %48
  br i1 %cmp.i.i48, label %land.lhs.true10.i.found.i_crit_edge, label %land.lhs.true10.i.if.end15.i_crit_edge

land.lhs.true10.i.if.end15.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i

land.lhs.true10.i.found.i_crit_edge:              ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found.i

if.end15.i:                                       ; preds = %land.lhs.true10.i.if.end15.i_crit_edge, %if.then7.i.if.end15.i_crit_edge, %if.end4.i.if.end15.i_crit_edge
  %signal.i43.i = getelementptr inbounds %struct.task_struct, ptr %call.i, i32 0, i32 111
  %49 = ptrtoint ptr %signal.i43.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %signal.i43.i, align 16
  %nr_threads.i.i = getelementptr inbounds %struct.signal_struct, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %nr_threads.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nr_threads.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv.i)
  %cmp17.not.i = icmp ugt i32 %52, %conv.i
  br i1 %cmp17.not.i, label %if.end20.i, label %if.end15.i.out.i_crit_edge

if.end15.i.out.i_crit_edge:                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end20.i:                                       ; preds = %if.end15.i
  %group_leader.i = getelementptr inbounds %struct.task_struct, ptr %call.i, i32 0, i32 75
  %53 = ptrtoint ptr %group_leader.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %group_leader.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end20.i
  %pos.0.i = phi ptr [ %54, %if.end20.i ], [ %add.ptr.i.i49, %do.cond.i.do.body.i_crit_edge ]
  %nr.0.i = phi i32 [ %conv.i, %if.end20.i ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.0.i)
  %tobool21.not.i = icmp eq i32 %nr.0.i, 0
  br i1 %tobool21.not.i, label %do.body.i.found.i_crit_edge, label %do.cond.i

do.body.i.found.i_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found.i

do.cond.i:                                        ; preds = %do.body.i
  %dec.i = add i32 %nr.0.i, -1
  %thread_group.i.i = getelementptr inbounds %struct.task_struct, ptr %pos.0.i, i32 0, i32 80
  %55 = ptrtoint ptr %thread_group.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %thread_group.i.i, align 4
  %add.ptr.i.i49 = getelementptr i8, ptr %56, i32 -1396
  %cmp25.not.i = icmp eq ptr %add.ptr.i.i49, %54
  br i1 %cmp25.not.i, label %do.cond.i.out.i_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

do.cond.i.out.i_crit_edge:                        ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

found.i:                                          ; preds = %do.body.i.found.i_crit_edge, %land.lhs.true10.i.found.i_crit_edge
  %pos.1.i = phi ptr [ %call8.i, %land.lhs.true10.i.found.i_crit_edge ], [ %pos.0.i, %do.body.i.found.i_crit_edge ]
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %pos.1.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #15
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #15, !srcloc !418
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %found.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !419

found.i.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %found.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %58 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %.not.i.i.i.i.i = icmp sgt i32 %58, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.out.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !410

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.out.i_crit_edge:                ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %found.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %found.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %out.i

out.i:                                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.out.i_crit_edge, %do.cond.i.out.i_crit_edge, %if.end15.i.out.i_crit_edge, %rcu_read_lock.exit.i.out.i_crit_edge
  %pos.2.i = phi ptr [ null, %if.end15.i.out.i_crit_edge ], [ null, %rcu_read_lock.exit.i.out.i_crit_edge ], [ %pos.1.i, %if.else.i.i.i.i.i.out.i_crit_edge ], [ %pos.1.i, %if.end15.sink.split.i.i.i.i.i ], [ null, %do.cond.i.out.i_crit_edge ]
  %call.i44.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i44.i, label %out.i.first_tid.exit_crit_edge, label %land.lhs.true.i47.i

out.i.first_tid.exit_crit_edge:                   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %first_tid.exit

land.lhs.true.i47.i:                              ; preds = %out.i
  %call1.i45.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45.i)
  %tobool.not.i46.i = icmp eq i32 %call1.i45.i, 0
  br i1 %tobool.not.i46.i, label %land.lhs.true.i47.i.first_tid.exit_crit_edge, label %land.lhs.true2.i49.i

land.lhs.true.i47.i.first_tid.exit_crit_edge:     ; preds = %land.lhs.true.i47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %first_tid.exit

land.lhs.true2.i49.i:                             ; preds = %land.lhs.true.i47.i
  %.b4.i48.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48.i, label %land.lhs.true2.i49.i.first_tid.exit_crit_edge, label %if.then.i50.i

land.lhs.true2.i49.i.first_tid.exit_crit_edge:    ; preds = %land.lhs.true2.i49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %first_tid.exit

if.then.i50.i:                                    ; preds = %land.lhs.true2.i49.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %first_tid.exit

first_tid.exit:                                   ; preds = %if.then.i50.i, %land.lhs.true2.i49.i.first_tid.exit_crit_edge, %land.lhs.true.i47.i.first_tid.exit_crit_edge, %out.i.first_tid.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %59 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i51.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i51.i to ptr
  %preempt_count.i.i.i.i52.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i52.i, align 4
  %sub.i.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i52.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %tobool.not87 = icmp eq ptr %pos.2.i, null
  br i1 %tobool.not87, label %first_tid.exit.cleanup23_crit_edge, label %first_tid.exit.for.body_crit_edge

first_tid.exit.for.body_crit_edge:                ; preds = %first_tid.exit
  br label %for.body

first_tid.exit.cleanup23_crit_edge:               ; preds = %first_tid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup23

for.body:                                         ; preds = %next_tid.exit.for.body_crit_edge, %first_tid.exit.for.body_crit_edge
  %task.088 = phi ptr [ %pos.0.i78, %next_tid.exit.for.body_crit_edge ], [ %pos.2.i, %first_tid.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %name) #15
  %63 = call ptr @memset(ptr %name, i32 255, i32 11)
  %call.i51 = call i32 @__task_pid_nr_ns(ptr noundef nonnull %task.088, i32 noundef 0, ptr noundef %33) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool10.not = icmp eq i32 %call.i51, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.end12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 11, ptr noundef nonnull @.str.5, i32 noundef %call.i51)
  %call15 = call zeroext i1 @proc_fill_cache(ptr noundef %file, ptr noundef %ctx, ptr noundef nonnull %name, i32 noundef %call13, ptr noundef nonnull @proc_task_instantiate, ptr noundef nonnull %task.088, ptr noundef null)
  br i1 %call15, label %if.end12.for.inc_crit_edge, label %if.then16

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then16:                                        ; preds = %if.end12
  %conv17 = sext i32 %call.i51 to i64
  %64 = ptrtoint ptr %f_version to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv17, ptr %f_version, align 8
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %task.088, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i52 = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i52)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i52, 1
  br i1 %cmp.i.i.i.i, label %if.then.i53, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i52)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i52, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup.thread_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup.thread_crit_edge:         ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup.thread

if.then.i53:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void @__put_task_struct(ptr noundef nonnull %task.088) #15
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then.i53, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %name) #15
  br label %cleanup23

for.inc:                                          ; preds = %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %name) #15
  %66 = call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i.i55 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i.i55 to ptr
  %preempt_count.i.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i.i56, align 4
  %add.i.i.i.i57 = add i32 %69, 1
  store volatile i32 %add.i.i.i.i57, ptr %preempt_count.i.i.i.i.i56, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i58 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i58, label %for.inc.rcu_read_lock.exit.i65_crit_edge, label %land.lhs.true.i.i61

for.inc.rcu_read_lock.exit.i65_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i65

land.lhs.true.i.i61:                              ; preds = %for.inc
  %call1.i.i59 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i59)
  %tobool.not.i.i60 = icmp eq i32 %call1.i.i59, 0
  br i1 %tobool.not.i.i60, label %land.lhs.true.i.i61.rcu_read_lock.exit.i65_crit_edge, label %land.lhs.true2.i.i63

land.lhs.true.i.i61.rcu_read_lock.exit.i65_crit_edge: ; preds = %land.lhs.true.i.i61
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i65

land.lhs.true2.i.i63:                             ; preds = %land.lhs.true.i.i61
  %.b4.i.i62 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i62, label %land.lhs.true2.i.i63.rcu_read_lock.exit.i65_crit_edge, label %if.then.i.i64

land.lhs.true2.i.i63.rcu_read_lock.exit.i65_crit_edge: ; preds = %land.lhs.true2.i.i63
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i65

if.then.i.i64:                                    ; preds = %land.lhs.true2.i.i63
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit.i65

rcu_read_lock.exit.i65:                           ; preds = %if.then.i.i64, %land.lhs.true2.i.i63.rcu_read_lock.exit.i65_crit_edge, %land.lhs.true.i.i61.rcu_read_lock.exit.i65_crit_edge, %for.inc.rcu_read_lock.exit.i65_crit_edge
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %task.088, i32 0, i32 78
  %70 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %thread_pid.i.i, align 16
  %cmp.i.not.i = icmp eq ptr %71, null
  br i1 %cmp.i.not.i, label %rcu_read_lock.exit.i65.if.end5.i_crit_edge, label %if.then.i68

rcu_read_lock.exit.i65.if.end5.i_crit_edge:       ; preds = %rcu_read_lock.exit.i65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

if.then.i68:                                      ; preds = %rcu_read_lock.exit.i65
  %thread_group.i.i66 = getelementptr inbounds %struct.task_struct, ptr %task.088, i32 0, i32 80
  %72 = ptrtoint ptr %thread_group.i.i66 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %thread_group.i.i66, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %73, i32 -1396
  %exit_signal.i.i = getelementptr i8, ptr %73, i32 -160
  %74 = ptrtoint ptr %exit_signal.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %exit_signal.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp.i10.i = icmp sgt i32 %75, -1
  br i1 %cmp.i10.i, label %if.then.i68.if.end5.i_crit_edge, label %if.else.i

if.then.i68.if.end5.i_crit_edge:                  ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

if.else.i:                                        ; preds = %if.then.i68
  %usage.i.i69 = getelementptr i8, ptr %73, i32 -1388
  %call.i.i.i.i.i.i.i70 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i69, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %usage.i.i69, i32 1, i32 3, i32 1) #15
  %76 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i69, ptr %usage.i.i69, i32 1, ptr elementtype(i32) %usage.i.i69) #15, !srcloc !418
  %asmresult.i.i.i.i.i.i.i71 = extractvalue { i32, i32, i32 } %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i71)
  %tobool1.not.i.i.i.i.i72 = icmp eq i32 %asmresult.i.i.i.i.i.i.i71, 0
  br i1 %tobool1.not.i.i.i.i.i72, label %if.else.i.if.end15.sink.split.i.i.i.i.i77_crit_edge, label %if.else.i.i.i.i.i75, !prof !419

if.else.i.if.end15.sink.split.i.i.i.i.i77_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i77

if.else.i.i.i.i.i75:                              ; preds = %if.else.i
  %add.i.i.i.i.i73 = add i32 %asmresult.i.i.i.i.i.i.i71, 1
  %77 = or i32 %add.i.i.i.i.i73, %asmresult.i.i.i.i.i.i.i71
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %.not.i.i.i.i.i74 = icmp sgt i32 %77, -1
  br i1 %.not.i.i.i.i.i74, label %if.else.i.i.i.i.i75.if.end5.i_crit_edge, label %if.else.i.i.i.i.i75.if.end15.sink.split.i.i.i.i.i77_crit_edge, !prof !410

if.else.i.i.i.i.i75.if.end15.sink.split.i.i.i.i.i77_crit_edge: ; preds = %if.else.i.i.i.i.i75
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i77

if.else.i.i.i.i.i75.if.end5.i_crit_edge:          ; preds = %if.else.i.i.i.i.i75
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

if.end15.sink.split.i.i.i.i.i77:                  ; preds = %if.else.i.i.i.i.i75.if.end15.sink.split.i.i.i.i.i77_crit_edge, %if.else.i.if.end15.sink.split.i.i.i.i.i77_crit_edge
  %.sink.i.i.i.i.i76 = phi i32 [ 2, %if.else.i.if.end15.sink.split.i.i.i.i.i77_crit_edge ], [ 1, %if.else.i.i.i.i.i75.if.end15.sink.split.i.i.i.i.i77_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i.i69, i32 noundef %.sink.i.i.i.i.i76) #15
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end15.sink.split.i.i.i.i.i77, %if.else.i.i.i.i.i75.if.end5.i_crit_edge, %if.then.i68.if.end5.i_crit_edge, %rcu_read_lock.exit.i65.if.end5.i_crit_edge
  %pos.0.i78 = phi ptr [ null, %rcu_read_lock.exit.i65.if.end5.i_crit_edge ], [ null, %if.then.i68.if.end5.i_crit_edge ], [ %add.ptr.i.i67, %if.else.i.i.i.i.i75.if.end5.i_crit_edge ], [ %add.ptr.i.i67, %if.end15.sink.split.i.i.i.i.i77 ]
  %call.i11.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i11.i, label %if.end5.i.rcu_read_unlock.exit.i80_crit_edge, label %land.lhs.true.i14.i

if.end5.i.rcu_read_unlock.exit.i80_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i80

land.lhs.true.i14.i:                              ; preds = %if.end5.i
  %call1.i12.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call1.i12.i, 0
  br i1 %tobool.not.i13.i, label %land.lhs.true.i14.i.rcu_read_unlock.exit.i80_crit_edge, label %land.lhs.true2.i16.i

land.lhs.true.i14.i.rcu_read_unlock.exit.i80_crit_edge: ; preds = %land.lhs.true.i14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i80

land.lhs.true2.i16.i:                             ; preds = %land.lhs.true.i14.i
  %.b4.i15.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i, label %land.lhs.true2.i16.i.rcu_read_unlock.exit.i80_crit_edge, label %if.then.i17.i

land.lhs.true2.i16.i.rcu_read_unlock.exit.i80_crit_edge: ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i80

if.then.i17.i:                                    ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit.i80

rcu_read_unlock.exit.i80:                         ; preds = %if.then.i17.i, %land.lhs.true2.i16.i.rcu_read_unlock.exit.i80_crit_edge, %land.lhs.true.i14.i.rcu_read_unlock.exit.i80_crit_edge, %if.end5.i.rcu_read_unlock.exit.i80_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %78 = call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i18.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i18.i to ptr
  %preempt_count.i.i.i.i19.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i.i19.i, align 4
  %sub.i.i.i.i79 = add i32 %81, -1
  store volatile i32 %sub.i.i.i.i79, ptr %preempt_count.i.i.i.i19.i, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %usage.i20.i = getelementptr inbounds %struct.task_struct, ptr %task.088, i32 0, i32 2
  %call.i.i.i.i.i.i21.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i20.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  call void @llvm.prefetch.p0(ptr %usage.i20.i, i32 1, i32 3, i32 1) #15
  %82 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i20.i, ptr %usage.i20.i, i32 1, ptr elementtype(i32) %usage.i20.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i23.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %rcu_read_unlock.exit.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i22.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i22.i, label %if.end5.i.i.i.i.i.next_tid.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !410

if.end5.i.i.i.i.i.next_tid.exit_crit_edge:        ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_tid.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %usage.i20.i, i32 noundef 3) #15
  br label %next_tid.exit

if.then.i23.i:                                    ; preds = %rcu_read_unlock.exit.i80
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void @__put_task_struct(ptr noundef nonnull %task.088) #15
  br label %next_tid.exit

next_tid.exit:                                    ; preds = %if.then.i23.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.next_tid.exit_crit_edge
  %83 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %pos.i, align 8
  %inc = add i64 %84, 1
  store i64 %inc, ptr %pos.i, align 8
  %tobool.not = icmp eq ptr %pos.0.i78, null
  br i1 %tobool.not, label %next_tid.exit.cleanup23_crit_edge, label %next_tid.exit.for.body_crit_edge

next_tid.exit.for.body_crit_edge:                 ; preds = %next_tid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

next_tid.exit.cleanup23_crit_edge:                ; preds = %next_tid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup23

cleanup23:                                        ; preds = %next_tid.exit.cleanup23_crit_edge, %cleanup.thread, %first_tid.exit.cleanup23_crit_edge, %if.end4.cleanup23_crit_edge, %if.then6.i.cleanup23_crit_edge, %if.then.i.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup23_crit_edge ], [ 0, %if.then.i.cleanup23_crit_edge ], [ 0, %if.then6.i.cleanup23_crit_edge ], [ 0, %cleanup.thread ], [ 0, %first_tid.exit.cleanup23_crit_edge ], [ 0, %if.end4.cleanup23_crit_edge ], [ 0, %next_tid.exit.cleanup23_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_map_files_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  %sval.i = alloca i64, align 8
  %eval.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dir, i32 -40
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %1, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %call3 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %call1.i, i32 noundef 9) #15
  br i1 %call3, label %if.end5, label %if.end.out_put_task_crit_edge

if.end.out_put_task_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_task

if.end5:                                          ; preds = %if.end
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sval.i) #15
  %4 = ptrtoint ptr %sval.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %sval.i, align 8, !annotation !413
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eval.i) #15
  %5 = ptrtoint ptr %eval.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %eval.i, align 8, !annotation !413
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %7)
  %cmp.i = icmp eq i8 %7, 48
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end5.if.end.i_crit_edge

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end5
  %arrayidx2.i = getelementptr i8, ptr %3, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %9)
  %cmp4.not.i = icmp eq i8 %9, 45
  br i1 %cmp4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.dname_to_vma_addr.exit.thread_crit_edge

land.lhs.true.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end5.if.end.i_crit_edge
  %call.i = call i32 @_parse_integer(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %sval.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not.i = icmp sgt i32 %call.i, -1
  br i1 %tobool.not.i, label %if.end7.i, label %if.end.i.dname_to_vma_addr.exit.thread_crit_edge

if.end.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %sval.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sval.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %11)
  %12 = icmp ult i64 %11, 4294967296
  br i1 %12, label %if.end13.i, label %if.end7.i.dname_to_vma_addr.exit.thread_crit_edge

if.end7.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

if.end13.i:                                       ; preds = %if.end7.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 %call.i
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %14)
  %cmp15.not.i = icmp eq i8 %14, 45
  br i1 %cmp15.not.i, label %if.end18.i, label %if.end13.i.dname_to_vma_addr.exit.thread_crit_edge

if.end13.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

if.end18.i:                                       ; preds = %if.end13.i
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %15 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %16)
  %cmp21.i = icmp eq i8 %16, 48
  br i1 %cmp21.i, label %land.lhs.true23.i, label %if.end18.i.if.end28.i_crit_edge

if.end18.i.if.end28.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28.i

land.lhs.true23.i:                                ; preds = %if.end18.i
  %arrayidx24.i = getelementptr i8, ptr %incdec.ptr.i, i32 1
  %17 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx24.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool26.not.i = icmp eq i8 %18, 0
  br i1 %tobool26.not.i, label %land.lhs.true23.i.if.end28.i_crit_edge, label %land.lhs.true23.i.dname_to_vma_addr.exit.thread_crit_edge

land.lhs.true23.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

land.lhs.true23.i.if.end28.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28.i

if.end28.i:                                       ; preds = %land.lhs.true23.i.if.end28.i_crit_edge, %if.end18.i.if.end28.i_crit_edge
  %call29.i = call i32 @_parse_integer(ptr noundef %incdec.ptr.i, i32 noundef 16, ptr noundef nonnull %eval.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call29.i)
  %tobool31.not.i = icmp sgt i32 %call29.i, -1
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end28.i.dname_to_vma_addr.exit.thread_crit_edge

if.end28.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

if.end33.i:                                       ; preds = %if.end28.i
  %19 = ptrtoint ptr %eval.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %eval.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %20)
  %21 = icmp ult i64 %20, 4294967296
  br i1 %21, label %if.end39.i, label %if.end33.i.dname_to_vma_addr.exit.thread_crit_edge

if.end33.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

if.end39.i:                                       ; preds = %if.end33.i
  %add.ptr40.i = getelementptr i8, ptr %incdec.ptr.i, i32 %call29.i
  %22 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp42.not.i = icmp eq i8 %23, 0
  br i1 %cmp42.not.i, label %if.end10, label %if.end39.i.dname_to_vma_addr.exit.thread_crit_edge

if.end39.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

dname_to_vma_addr.exit.thread:                    ; preds = %if.end39.i.dname_to_vma_addr.exit.thread_crit_edge, %if.end33.i.dname_to_vma_addr.exit.thread_crit_edge, %if.end28.i.dname_to_vma_addr.exit.thread_crit_edge, %land.lhs.true23.i.dname_to_vma_addr.exit.thread_crit_edge, %if.end13.i.dname_to_vma_addr.exit.thread_crit_edge, %if.end7.i.dname_to_vma_addr.exit.thread_crit_edge, %if.end.i.dname_to_vma_addr.exit.thread_crit_edge, %land.lhs.true.i.dname_to_vma_addr.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eval.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sval.i) #15
  br label %out_put_task

if.end10:                                         ; preds = %if.end39.i
  %24 = ptrtoint ptr %sval.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %sval.i, align 8
  %conv46.i = trunc i64 %25 to i32
  %conv47.i = trunc i64 %20 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eval.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sval.i) #15
  %call11 = call ptr @get_task_mm(ptr noundef nonnull %call1.i) #15
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.out_put_task_crit_edge, label %if.end14

if.end10.out_put_task_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_task

if.end14:                                         ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@proc_map_files_lookup, %if.then.i.i)) #15
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !431

if.then.i.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %call11, i1 noundef zeroext false) #15
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end14
  %mmap_lock.i = getelementptr inbounds %struct.anon.4, ptr %call11, i32 0, i32 15
  %call.i41 = call i32 @down_read_killable(ptr noundef %mmap_lock.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@proc_map_files_lookup, %if.then.i4.i)) #15
          to label %mmap_read_lock_killable.exit [label %if.then.i4.i], !srcloc !431

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp.i42 = icmp eq i32 %call.i41, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %call11, i1 noundef zeroext false, i1 noundef zeroext %cmp.i42) #15
  br label %mmap_read_lock_killable.exit

mmap_read_lock_killable.exit:                     ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool17.not = icmp eq i32 %call.i41, 0
  br i1 %tobool17.not, label %if.end19, label %mmap_read_lock_killable.exit.out_put_mm_crit_edge

mmap_read_lock_killable.exit.out_put_mm_crit_edge: ; preds = %mmap_read_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_mm

if.end19:                                         ; preds = %mmap_read_lock_killable.exit
  %call.i43 = call ptr @find_vma(ptr noundef nonnull %call11, i32 noundef %conv46.i) #15
  %tobool.not.i44 = icmp eq ptr %call.i43, null
  br i1 %tobool.not.i44, label %if.end19.out_no_vma_crit_edge, label %land.lhs.true.i45

if.end19.out_no_vma_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_no_vma

land.lhs.true.i45:                                ; preds = %if.end19
  %26 = ptrtoint ptr %call.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call.i43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv46.i)
  %cmp.not.i = icmp eq i32 %27, %conv46.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %land.lhs.true.i45.out_no_vma_crit_edge

land.lhs.true.i45.out_no_vma_crit_edge:           ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_no_vma

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i45
  %vm_end2.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i43, i32 0, i32 1
  %28 = ptrtoint ptr %vm_end2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vm_end2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv47.i)
  %cmp3.not.i = icmp eq i32 %29, %conv47.i
  br i1 %cmp3.not.i, label %if.end24, label %lor.lhs.false.i.out_no_vma_crit_edge

lor.lhs.false.i.out_no_vma_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_no_vma

if.end24:                                         ; preds = %lor.lhs.false.i
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %call.i43, i32 0, i32 14
  %30 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vm_file, align 4
  %tobool25.not = icmp eq ptr %31, null
  br i1 %tobool25.not, label %if.end24.out_no_vma_crit_edge, label %if.then26

if.end24.out_no_vma_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_no_vma

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %f_mode = getelementptr inbounds %struct.file, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %f_mode, align 8
  %34 = inttoptr i32 %33 to ptr
  %call28 = call ptr @proc_map_files_instantiate(ptr noundef %dentry, ptr noundef nonnull %call1.i, ptr noundef %34)
  br label %out_no_vma

out_no_vma:                                       ; preds = %if.then26, %if.end24.out_no_vma_crit_edge, %lor.lhs.false.i.out_no_vma_crit_edge, %land.lhs.true.i45.out_no_vma_crit_edge, %if.end19.out_no_vma_crit_edge
  %result.0 = phi ptr [ %call28, %if.then26 ], [ inttoptr (i32 -2 to ptr), %if.end24.out_no_vma_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end19.out_no_vma_crit_edge ], [ inttoptr (i32 -2 to ptr), %lor.lhs.false.i.out_no_vma_crit_edge ], [ inttoptr (i32 -2 to ptr), %land.lhs.true.i45.out_no_vma_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@proc_map_files_lookup, %if.then.i.i47)) #15
          to label %mmap_read_unlock.exit [label %if.then.i.i47], !srcloc !431

if.then.i.i47:                                    ; preds = %out_no_vma
  call void @__sanitizer_cov_trace_pc() #17
  call void @__mmap_lock_do_trace_released(ptr noundef nonnull %call11, i1 noundef zeroext false) #15
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i47, %out_no_vma
  call void @up_read(ptr noundef %mmap_lock.i) #15
  br label %out_put_mm

out_put_mm:                                       ; preds = %mmap_read_unlock.exit, %mmap_read_lock_killable.exit.out_put_mm_crit_edge
  %result.1 = phi ptr [ inttoptr (i32 -4 to ptr), %mmap_read_lock_killable.exit.out_put_mm_crit_edge ], [ %result.0, %mmap_read_unlock.exit ]
  call void @mmput(ptr noundef nonnull %call11) #15
  br label %out_put_task

out_put_task:                                     ; preds = %out_put_mm, %if.end10.out_put_task_crit_edge, %dname_to_vma_addr.exit.thread, %if.end.out_put_task_crit_edge
  %result.2 = phi ptr [ %result.1, %out_put_mm ], [ inttoptr (i32 -2 to ptr), %if.end10.out_put_task_crit_edge ], [ inttoptr (i32 -13 to ptr), %if.end.out_put_task_crit_edge ], [ inttoptr (i32 -2 to ptr), %dname_to_vma_addr.exit.thread ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i49, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_put_task
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %out

if.then.i49:                                      ; preds = %out_put_task
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %out

out:                                              ; preds = %if.then.i49, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %entry.out_crit_edge
  %result.3 = phi ptr [ inttoptr (i32 -2 to ptr), %entry.out_crit_edge ], [ %result.2, %if.end5.i.i.i.i.out_crit_edge ], [ %result.2, %if.then10.i.i.i.i ], [ %result.2, %if.then.i49 ]
  ret ptr %result.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_fd_permission(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_map_files_instantiate(ptr noundef %dentry, ptr noundef %task, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %1 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_sb, align 4
  %trunc = trunc i32 %0 to i9
  %rev = tail call i9 @llvm.bitreverse.i9(i9 %trunc)
  %mask = and i9 %rev, -128
  %or = zext i9 %mask to i16
  %or4 = or i16 %or, -24576
  %call = tail call ptr @proc_pid_make_inode(ptr noundef %2, ptr noundef %task, i16 noundef zeroext %or4)
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %op = getelementptr i8, ptr %call, i32 -32
  %3 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @map_files_get_link, ptr %op, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @proc_map_files_link_inode_operations, ptr %i_op, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 64, ptr %i_size, align 8
  tail call void @d_set_d_op(ptr noundef %dentry, ptr noundef nonnull @tid_map_files_dentry_operations) #15
  %call8 = tail call ptr @d_splice_alias(ptr noundef nonnull %call, ptr noundef %dentry) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call8, %if.end ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmap_read_unlock(ptr noundef %mm) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@mmap_read_unlock, %if.then.i)) #15
          to label %__mmap_lock_trace_released.exit [label %if.then.i], !srcloc !431

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext false) #15
  br label %__mmap_lock_trace_released.exit

__mmap_lock_trace_released.exit:                  ; preds = %if.then.i, %entry
  %mmap_lock = getelementptr inbounds %struct.anon.4, ptr %mm, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_parse_integer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @map_files_get_link(ptr nocapture noundef readonly %dentry, ptr noundef %path) #0 align 64 {
entry:
  %sval.i = alloca i64, align 8
  %eval.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @get_task_mm(ptr noundef nonnull %call1.i) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %put_task_struct.exit.out_crit_edge, label %if.end5

put_task_struct.exit.out_crit_edge:               ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end5:                                          ; preds = %put_task_struct.exit
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sval.i) #15
  %7 = ptrtoint ptr %sval.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %sval.i, align 8, !annotation !413
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eval.i) #15
  %8 = ptrtoint ptr %eval.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %eval.i, align 8, !annotation !413
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %10)
  %cmp.i = icmp eq i8 %10, 48
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end5.if.end.i_crit_edge

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end5
  %arrayidx2.i = getelementptr i8, ptr %6, i32 1
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %12)
  %cmp4.not.i = icmp eq i8 %12, 45
  br i1 %cmp4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.dname_to_vma_addr.exit.thread_crit_edge

land.lhs.true.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end5.if.end.i_crit_edge
  %call.i = call i32 @_parse_integer(ptr noundef %6, i32 noundef 16, ptr noundef nonnull %sval.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not.i = icmp sgt i32 %call.i, -1
  br i1 %tobool.not.i, label %if.end7.i, label %if.end.i.dname_to_vma_addr.exit.thread_crit_edge

if.end.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %sval.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sval.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %14)
  %15 = icmp ult i64 %14, 4294967296
  br i1 %15, label %if.end13.i, label %if.end7.i.dname_to_vma_addr.exit.thread_crit_edge

if.end7.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

if.end13.i:                                       ; preds = %if.end7.i
  %add.ptr.i = getelementptr i8, ptr %6, i32 %call.i
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %17)
  %cmp15.not.i = icmp eq i8 %17, 45
  br i1 %cmp15.not.i, label %if.end18.i, label %if.end13.i.dname_to_vma_addr.exit.thread_crit_edge

if.end13.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

if.end18.i:                                       ; preds = %if.end13.i
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %19)
  %cmp21.i = icmp eq i8 %19, 48
  br i1 %cmp21.i, label %land.lhs.true23.i, label %if.end18.i.if.end28.i_crit_edge

if.end18.i.if.end28.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28.i

land.lhs.true23.i:                                ; preds = %if.end18.i
  %arrayidx24.i = getelementptr i8, ptr %incdec.ptr.i, i32 1
  %20 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx24.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool26.not.i = icmp eq i8 %21, 0
  br i1 %tobool26.not.i, label %land.lhs.true23.i.if.end28.i_crit_edge, label %land.lhs.true23.i.dname_to_vma_addr.exit.thread_crit_edge

land.lhs.true23.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

land.lhs.true23.i.if.end28.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28.i

if.end28.i:                                       ; preds = %land.lhs.true23.i.if.end28.i_crit_edge, %if.end18.i.if.end28.i_crit_edge
  %call29.i = call i32 @_parse_integer(ptr noundef %incdec.ptr.i, i32 noundef 16, ptr noundef nonnull %eval.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call29.i)
  %tobool31.not.i = icmp sgt i32 %call29.i, -1
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end28.i.dname_to_vma_addr.exit.thread_crit_edge

if.end28.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

if.end33.i:                                       ; preds = %if.end28.i
  %22 = ptrtoint ptr %eval.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %eval.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %23)
  %24 = icmp ult i64 %23, 4294967296
  br i1 %24, label %if.end39.i, label %if.end33.i.dname_to_vma_addr.exit.thread_crit_edge

if.end33.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

if.end39.i:                                       ; preds = %if.end33.i
  %add.ptr40.i = getelementptr i8, ptr %incdec.ptr.i, i32 %call29.i
  %25 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp42.not.i = icmp eq i8 %26, 0
  br i1 %cmp42.not.i, label %if.end9, label %if.end39.i.dname_to_vma_addr.exit.thread_crit_edge

if.end39.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

dname_to_vma_addr.exit.thread:                    ; preds = %if.end39.i.dname_to_vma_addr.exit.thread_crit_edge, %if.end33.i.dname_to_vma_addr.exit.thread_crit_edge, %if.end28.i.dname_to_vma_addr.exit.thread_crit_edge, %land.lhs.true23.i.dname_to_vma_addr.exit.thread_crit_edge, %if.end13.i.dname_to_vma_addr.exit.thread_crit_edge, %if.end7.i.dname_to_vma_addr.exit.thread_crit_edge, %if.end.i.dname_to_vma_addr.exit.thread_crit_edge, %land.lhs.true.i.dname_to_vma_addr.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eval.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sval.i) #15
  br label %out_mmput

if.end9:                                          ; preds = %if.end39.i
  %27 = ptrtoint ptr %sval.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %sval.i, align 8
  %conv46.i = trunc i64 %28 to i32
  %conv47.i = trunc i64 %23 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eval.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sval.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@map_files_get_link, %if.then.i.i)) #15
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !431

if.then.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %call2, i1 noundef zeroext false) #15
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end9
  %mmap_lock.i = getelementptr inbounds %struct.anon.4, ptr %call2, i32 0, i32 15
  %call.i32 = call i32 @down_read_killable(ptr noundef %mmap_lock.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@map_files_get_link, %if.then.i4.i)) #15
          to label %mmap_read_lock_killable.exit [label %if.then.i4.i], !srcloc !431

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %cmp.i33 = icmp eq i32 %call.i32, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %call2, i1 noundef zeroext false, i1 noundef zeroext %cmp.i33) #15
  br label %mmap_read_lock_killable.exit

mmap_read_lock_killable.exit:                     ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool11.not = icmp eq i32 %call.i32, 0
  br i1 %tobool11.not, label %if.end13, label %mmap_read_lock_killable.exit.out_mmput_crit_edge

mmap_read_lock_killable.exit.out_mmput_crit_edge: ; preds = %mmap_read_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_mmput

if.end13:                                         ; preds = %mmap_read_lock_killable.exit
  %call.i34 = call ptr @find_vma(ptr noundef nonnull %call2, i32 noundef %conv46.i) #15
  %tobool.not.i35 = icmp eq ptr %call.i34, null
  br i1 %tobool.not.i35, label %if.end13.if.end19_crit_edge, label %land.lhs.true.i36

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

land.lhs.true.i36:                                ; preds = %if.end13
  %29 = ptrtoint ptr %call.i34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv46.i)
  %cmp.not.i = icmp eq i32 %30, %conv46.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %land.lhs.true.i36.if.end19_crit_edge

land.lhs.true.i36.if.end19_crit_edge:             ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i36
  %vm_end2.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i34, i32 0, i32 1
  %31 = ptrtoint ptr %vm_end2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vm_end2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv47.i)
  %cmp3.not.i = icmp eq i32 %32, %conv47.i
  br i1 %cmp3.not.i, label %land.lhs.true, label %lor.lhs.false.i.if.end19_crit_edge

lor.lhs.false.i.if.end19_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

land.lhs.true:                                    ; preds = %lor.lhs.false.i
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %call.i34, i32 0, i32 14
  %33 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vm_file, align 4
  %tobool16.not = icmp eq ptr %34, null
  br i1 %tobool16.not, label %land.lhs.true.if.end19_crit_edge, label %if.then17

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %f_path = getelementptr inbounds %struct.file, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %f_path to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %f_path, align 8
  %37 = ptrtoint ptr %path to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %path, align 4
  call void @path_get(ptr noundef %path) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %land.lhs.true.if.end19_crit_edge, %lor.lhs.false.i.if.end19_crit_edge, %land.lhs.true.i36.if.end19_crit_edge, %if.end13.if.end19_crit_edge
  %rc.0 = phi i32 [ 0, %if.then17 ], [ -2, %land.lhs.true.if.end19_crit_edge ], [ -2, %if.end13.if.end19_crit_edge ], [ -2, %lor.lhs.false.i.if.end19_crit_edge ], [ -2, %land.lhs.true.i36.if.end19_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@map_files_get_link, %if.then.i.i39)) #15
          to label %mmap_read_unlock.exit [label %if.then.i.i39], !srcloc !431

if.then.i.i39:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  call void @__mmap_lock_do_trace_released(ptr noundef nonnull %call2, i1 noundef zeroext false) #15
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i39, %if.end19
  call void @up_read(ptr noundef %mmap_lock.i) #15
  br label %out_mmput

out_mmput:                                        ; preds = %mmap_read_unlock.exit, %mmap_read_lock_killable.exit.out_mmput_crit_edge, %dname_to_vma_addr.exit.thread
  %rc.1 = phi i32 [ %call.i32, %mmap_read_lock_killable.exit.out_mmput_crit_edge ], [ %rc.0, %mmap_read_unlock.exit ], [ -22, %dname_to_vma_addr.exit.thread ]
  call void @mmput(ptr noundef nonnull %call2) #15
  br label %out

out:                                              ; preds = %out_mmput, %put_task_struct.exit.out_crit_edge, %entry.out_crit_edge
  %rc.2 = phi i32 [ %rc.1, %out_mmput ], [ -2, %put_task_struct.exit.out_crit_edge ], [ -2, %entry.out_crit_edge ]
  ret i32 %rc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_map_files_get_link(ptr noundef %dentry, ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %done) #0 align 64 {
entry:
  %path.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @ns_capable(ptr noundef nonnull @init_user_ns, i32 noundef 40) #15
  br i1 %call.i, label %entry.if.end_crit_edge, label %checkpoint_restore_ns_capable.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

checkpoint_restore_ns_capable.exit:               ; preds = %entry
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef nonnull @init_user_ns, i32 noundef 21) #15
  br i1 %call1.i, label %checkpoint_restore_ns_capable.exit.if.end_crit_edge, label %checkpoint_restore_ns_capable.exit.return_crit_edge

checkpoint_restore_ns_capable.exit.return_crit_edge: ; preds = %checkpoint_restore_ns_capable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

checkpoint_restore_ns_capable.exit.if.end_crit_edge: ; preds = %checkpoint_restore_ns_capable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %checkpoint_restore_ns_capable.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #15
  %0 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i, align 4, !annotation !413
  %1 = getelementptr inbounds %struct.path, ptr %path.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !413
  %tobool.not.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i, label %if.end.proc_pid_get_link.exit_crit_edge, label %if.end.i

if.end.proc_pid_get_link.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %proc_pid_get_link.exit

if.end.i:                                         ; preds = %if.end
  %call1.i3 = tail call fastcc zeroext i1 @proc_fd_access_allowed(ptr noundef %inode) #15
  br i1 %call1.i3, label %if.end3.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end3.i:                                        ; preds = %if.end.i
  %op.i = getelementptr i8, ptr %inode, i32 -32
  %3 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op.i, align 8
  %call5.i = call i32 %4(ptr noundef nonnull %dentry, ptr noundef nonnull %path.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end3.i.out.i_crit_edge

if.end3.i.out.i_crit_edge:                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end8.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %call9.i = call i32 @nd_jump_link(ptr noundef nonnull %path.i) #15
  br label %out.i

out.i:                                            ; preds = %if.end8.i, %if.end3.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %error.0.i = phi i32 [ %call5.i, %if.end3.i.out.i_crit_edge ], [ %call9.i, %if.end8.i ], [ -13, %if.end.i.out.i_crit_edge ]
  %5 = inttoptr i32 %error.0.i to ptr
  br label %proc_pid_get_link.exit

proc_pid_get_link.exit:                           ; preds = %out.i, %if.end.proc_pid_get_link.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %out.i ], [ inttoptr (i32 -10 to ptr), %if.end.proc_pid_get_link.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #15
  br label %return

return:                                           ; preds = %proc_pid_get_link.exit, %checkpoint_restore_ns_capable.exit.return_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %proc_pid_get_link.exit ], [ inttoptr (i32 -1 to ptr), %checkpoint_restore_ns_capable.exit.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @map_files_d_revalidate(ptr nocapture noundef readonly %dentry, i32 noundef %flags) #0 align 64 {
entry:
  %sval.i = alloca i64, align 8
  %eval.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  %tobool2.not = icmp eq ptr %call1.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @mm_access(ptr noundef nonnull %call1.i, i32 noundef 9) #15
  %tobool.not.i = icmp eq ptr %call5, null
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end4.out_crit_edge, label %if.end8

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end8:                                          ; preds = %if.end4
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sval.i) #15
  %6 = ptrtoint ptr %sval.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %sval.i, align 8, !annotation !413
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eval.i) #15
  %7 = ptrtoint ptr %eval.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %eval.i, align 8, !annotation !413
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %9)
  %cmp.i42 = icmp eq i8 %9, 48
  br i1 %cmp.i42, label %land.lhs.true.i, label %if.end8.if.end.i_crit_edge

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end8
  %arrayidx2.i = getelementptr i8, ptr %5, i32 1
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %11)
  %cmp4.not.i = icmp eq i8 %11, 45
  br i1 %cmp4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.dname_to_vma_addr.exit.thread_crit_edge

land.lhs.true.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end8.if.end.i_crit_edge
  %call.i = call i32 @_parse_integer(ptr noundef %5, i32 noundef 16, ptr noundef nonnull %sval.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not.i43 = icmp sgt i32 %call.i, -1
  br i1 %tobool.not.i43, label %if.end7.i, label %if.end.i.dname_to_vma_addr.exit.thread_crit_edge

if.end.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %sval.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sval.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %13)
  %14 = icmp ult i64 %13, 4294967296
  br i1 %14, label %if.end13.i, label %if.end7.i.dname_to_vma_addr.exit.thread_crit_edge

if.end7.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

if.end13.i:                                       ; preds = %if.end7.i
  %add.ptr.i = getelementptr i8, ptr %5, i32 %call.i
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %16)
  %cmp15.not.i = icmp eq i8 %16, 45
  br i1 %cmp15.not.i, label %if.end18.i, label %if.end13.i.dname_to_vma_addr.exit.thread_crit_edge

if.end13.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

if.end18.i:                                       ; preds = %if.end13.i
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %17 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %18)
  %cmp21.i = icmp eq i8 %18, 48
  br i1 %cmp21.i, label %land.lhs.true23.i, label %if.end18.i.if.end28.i_crit_edge

if.end18.i.if.end28.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28.i

land.lhs.true23.i:                                ; preds = %if.end18.i
  %arrayidx24.i = getelementptr i8, ptr %incdec.ptr.i, i32 1
  %19 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx24.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool26.not.i = icmp eq i8 %20, 0
  br i1 %tobool26.not.i, label %land.lhs.true23.i.if.end28.i_crit_edge, label %land.lhs.true23.i.dname_to_vma_addr.exit.thread_crit_edge

land.lhs.true23.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

land.lhs.true23.i.if.end28.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28.i

if.end28.i:                                       ; preds = %land.lhs.true23.i.if.end28.i_crit_edge, %if.end18.i.if.end28.i_crit_edge
  %call29.i = call i32 @_parse_integer(ptr noundef %incdec.ptr.i, i32 noundef 16, ptr noundef nonnull %eval.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call29.i)
  %tobool31.not.i = icmp sgt i32 %call29.i, -1
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end28.i.dname_to_vma_addr.exit.thread_crit_edge

if.end28.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

if.end33.i:                                       ; preds = %if.end28.i
  %21 = ptrtoint ptr %eval.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %eval.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %22)
  %23 = icmp ult i64 %22, 4294967296
  br i1 %23, label %if.end39.i, label %if.end33.i.dname_to_vma_addr.exit.thread_crit_edge

if.end33.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

if.end39.i:                                       ; preds = %if.end33.i
  %add.ptr40.i = getelementptr i8, ptr %incdec.ptr.i, i32 %call29.i
  %24 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp42.not.i = icmp eq i8 %25, 0
  br i1 %cmp42.not.i, label %if.then11, label %if.end39.i.dname_to_vma_addr.exit.thread_crit_edge

if.end39.i.dname_to_vma_addr.exit.thread_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dname_to_vma_addr.exit.thread

dname_to_vma_addr.exit.thread:                    ; preds = %if.end39.i.dname_to_vma_addr.exit.thread_crit_edge, %if.end33.i.dname_to_vma_addr.exit.thread_crit_edge, %if.end28.i.dname_to_vma_addr.exit.thread_crit_edge, %land.lhs.true23.i.dname_to_vma_addr.exit.thread_crit_edge, %if.end13.i.dname_to_vma_addr.exit.thread_crit_edge, %if.end7.i.dname_to_vma_addr.exit.thread_crit_edge, %if.end.i.dname_to_vma_addr.exit.thread_crit_edge, %land.lhs.true.i.dname_to_vma_addr.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eval.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sval.i) #15
  br label %if.end19.thread

if.then11:                                        ; preds = %if.end39.i
  %26 = ptrtoint ptr %sval.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %sval.i, align 8
  %conv46.i = trunc i64 %27 to i32
  %conv47.i = trunc i64 %22 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eval.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sval.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@map_files_d_revalidate, %if.then.i.i)) #15
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !431

if.then.i.i:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %call5, i1 noundef zeroext false) #15
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.then11
  %mmap_lock.i = getelementptr inbounds %struct.anon.4, ptr %call5, i32 0, i32 15
  %call.i44 = call i32 @down_read_killable(ptr noundef %mmap_lock.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@map_files_d_revalidate, %if.then.i4.i)) #15
          to label %mmap_read_lock_killable.exit [label %if.then.i4.i], !srcloc !431

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp.i45 = icmp eq i32 %call.i44, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %call5, i1 noundef zeroext false, i1 noundef zeroext %cmp.i45) #15
  br label %mmap_read_lock_killable.exit

mmap_read_lock_killable.exit:                     ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool13.not = icmp eq i32 %call.i44, 0
  br i1 %tobool13.not, label %if.then14, label %mmap_read_lock_killable.exit.if.end19.thread_crit_edge

mmap_read_lock_killable.exit.if.end19.thread_crit_edge: ; preds = %mmap_read_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.thread

if.then14:                                        ; preds = %mmap_read_lock_killable.exit
  %call.i46 = call ptr @find_vma(ptr noundef nonnull %call5, i32 noundef %conv46.i) #15
  %tobool.not.i47 = icmp eq ptr %call.i46, null
  br i1 %tobool.not.i47, label %if.then14.find_exact_vma.exit_crit_edge, label %land.lhs.true.i48

if.then14.find_exact_vma.exit_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_exact_vma.exit

land.lhs.true.i48:                                ; preds = %if.then14
  %28 = ptrtoint ptr %call.i46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call.i46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv46.i)
  %cmp.not.i = icmp eq i32 %29, %conv46.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %land.lhs.true.i48.if.then.i_crit_edge

land.lhs.true.i48.if.then.i_crit_edge:            ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i48
  %vm_end2.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i46, i32 0, i32 1
  %30 = ptrtoint ptr %vm_end2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vm_end2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv47.i)
  %cmp3.not.i = icmp eq i32 %31, %conv47.i
  br i1 %cmp3.not.i, label %lor.lhs.false.i.find_exact_vma.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i.find_exact_vma.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_exact_vma.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %land.lhs.true.i48.if.then.i_crit_edge
  br label %find_exact_vma.exit

find_exact_vma.exit:                              ; preds = %if.then.i, %lor.lhs.false.i.find_exact_vma.exit_crit_edge, %if.then14.find_exact_vma.exit_crit_edge
  %vma.0.i = phi ptr [ null, %if.then.i ], [ %call.i46, %lor.lhs.false.i.find_exact_vma.exit_crit_edge ], [ null, %if.then14.find_exact_vma.exit_crit_edge ]
  %tobool16.not = icmp eq ptr %vma.0.i, null
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@map_files_d_revalidate, %if.then.i.i50)) #15
          to label %if.end19 [label %if.then.i.i50], !srcloc !431

if.then.i.i50:                                    ; preds = %find_exact_vma.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @__mmap_lock_do_trace_released(ptr noundef nonnull %call5, i1 noundef zeroext false) #15
  br label %if.end19

if.end19.thread:                                  ; preds = %mmap_read_lock_killable.exit.if.end19.thread_crit_edge, %dname_to_vma_addr.exit.thread
  %status.0.ph = phi i32 [ 0, %dname_to_vma_addr.exit.thread ], [ %call.i44, %mmap_read_lock_killable.exit.if.end19.thread_crit_edge ]
  call void @mmput(ptr noundef nonnull %call5) #15
  br label %out

if.end19:                                         ; preds = %if.then.i.i50, %find_exact_vma.exit
  call void @up_read(ptr noundef %mmap_lock.i) #15
  call void @mmput(ptr noundef nonnull %call5) #15
  br i1 %tobool16.not, label %if.end19.out_crit_edge, label %if.then21

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %i_uid = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %i_gid = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  call void @task_dump_owner(ptr noundef nonnull %call1.i, i16 noundef zeroext 0, ptr noundef %i_uid, ptr noundef %i_gid)
  call void @security_task_to_inode(ptr noundef nonnull %call1.i, ptr noundef %1) #15
  br label %out

out:                                              ; preds = %if.then21, %if.end19.out_crit_edge, %if.end19.thread, %if.end4.out_crit_edge
  %status.1 = phi i32 [ 0, %if.end4.out_crit_edge ], [ 1, %if.then21 ], [ 0, %if.end19.out_crit_edge ], [ %status.0.ph, %if.end19.thread ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i52, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i52:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i52, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -10, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %status.1, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %status.1, %if.then10.i.i.i.i ], [ %status.1, %if.then.i52 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_map_files_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #0 align 64 {
entry:
  %fa = alloca %struct.anon.86, align 4
  %buf = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fa) #15
  %0 = ptrtoint ptr %fa to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fa, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 -40
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %4, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %call1.i, i32 noundef 9) #15
  br i1 %call2, label %if.end4, label %if.end.out_put_task_crit_edge

if.end.out_put_task_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_task

if.end4:                                          ; preds = %if.end
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %5 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %pos.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.141)
  switch i64 %6, label %if.end4.if.end7_crit_edge [
    i64 0, label %if.then.i
    i64 1, label %if.end4.if.then6.i_crit_edge
  ]

if.end4.if.then6.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then.i:                                        ; preds = %if.end4
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 8
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino.i.i, align 8
  %conv.i.i = zext i32 %14 to i64
  %call.i.i = tail call i32 %8(ptr noundef %ctx, ptr noundef nonnull @.str.12, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i.i, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end3.thread.i, label %if.then.i.out_put_task_crit_edge

if.then.i.out_put_task_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_task

if.end3.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1, ptr %pos.i, align 8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.thread.i, %if.end4.if.then6.i_crit_edge
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 8
  %dentry.i19.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %dentry.i19.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dentry.i19.i, align 4
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #15
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_parent.i.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #15
  %conv.i20.i = zext i32 %25 to i64
  %call1.i.i = tail call i32 %17(ptr noundef %ctx, ptr noundef nonnull @.str.13, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i20.i, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i21.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i21.i, label %if.end9.i, label %if.then6.i.out_put_task_crit_edge

if.then6.i.out_put_task_crit_edge:                ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_task

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 2, ptr %pos.i, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end9.i, %if.end4.if.end7_crit_edge
  %call8 = tail call ptr @get_task_mm(ptr noundef nonnull %call1.i) #15
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.out_put_task_crit_edge, label %if.end11

if.end7.out_put_task_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_task

if.end11:                                         ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@proc_map_files_readdir, %if.then.i.i)) #15
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !431

if.then.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %call8, i1 noundef zeroext false) #15
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end11
  %mmap_lock.i = getelementptr inbounds %struct.anon.4, ptr %call8, i32 0, i32 15
  %call.i = tail call i32 @down_read_killable(ptr noundef %mmap_lock.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@proc_map_files_readdir, %if.then.i4.i)) #15
          to label %mmap_read_lock_killable.exit [label %if.then.i4.i], !srcloc !431

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %call8, i1 noundef zeroext false, i1 noundef zeroext %cmp.i) #15
  br label %mmap_read_lock_killable.exit

mmap_read_lock_killable.exit:                     ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %for.cond.preheader, label %if.then14

for.cond.preheader:                               ; preds = %mmap_read_lock_killable.exit
  %27 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %vma.0106 = load ptr, ptr %call8, align 4
  %tobool16.not107 = icmp eq ptr %vma.0106, null
  br i1 %tobool16.not107, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.then14:                                        ; preds = %mmap_read_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mmput(ptr noundef nonnull %call8) #15
  br label %out_put_task

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %vma.0110 = phi ptr [ %vma.0, %for.inc.for.body_crit_edge ], [ %vma.0106, %for.cond.preheader.for.body_crit_edge ]
  %pos.0109 = phi i32 [ %pos.1, %for.inc.for.body_crit_edge ], [ 2, %for.cond.preheader.for.body_crit_edge ]
  %nr_files.0108 = phi i32 [ %nr_files.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0110, i32 0, i32 14
  %28 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vm_file, align 4
  %tobool17.not = icmp eq ptr %29, null
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.end19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %inc = add i32 %pos.0109, 1
  %conv = zext i32 %inc to i64
  %30 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %pos.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %conv)
  %cmp.not = icmp slt i64 %31, %conv
  br i1 %cmp.not, label %if.end23, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end23:                                         ; preds = %if.end19
  %nr_files.0108.frozen = freeze i32 %nr_files.0108
  %div14.i = udiv i32 %nr_files.0108.frozen, 341
  %mul.i = shl i32 %div14.i, 12
  %32 = mul i32 %div14.i, 341
  %rem.i.decomposed = sub i32 %nr_files.0108.frozen, %32
  %mul15.i = mul nuw nsw i32 %rem.i.decomposed, 12
  %add.i = add nuw i32 %mul.i, %mul15.i
  %call27 = call ptr @__genradix_ptr_alloc(ptr noundef nonnull %fa, i32 noundef %add.i, i32 noundef 3264) #15
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @mmap_read_unlock(ptr noundef nonnull %call8)
  call void @mmput(ptr noundef nonnull %call8) #15
  br label %out_put_task

if.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %inc25 = add i32 %nr_files.0108, 1
  %33 = ptrtoint ptr %vma.0110 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vma.0110, align 4
  %35 = ptrtoint ptr %call27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %call27, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0110, i32 0, i32 1
  %36 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vm_end, align 4
  %end = getelementptr inbounds %struct.map_files_info, ptr %call27, i32 0, i32 1
  %38 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %end, align 4
  %39 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vm_file, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %f_mode, align 8
  %mode = getelementptr inbounds %struct.map_files_info, ptr %call27, i32 0, i32 2
  %43 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %mode, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %if.end19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %nr_files.1 = phi i32 [ %nr_files.0108, %if.end19.for.inc_crit_edge ], [ %inc25, %if.end30 ], [ %nr_files.0108, %for.body.for.inc_crit_edge ]
  %pos.1 = phi i32 [ %inc, %if.end19.for.inc_crit_edge ], [ %inc, %if.end30 ], [ %pos.0109, %for.body.for.inc_crit_edge ]
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0110, i32 0, i32 2
  %44 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %44)
  %vma.0 = load ptr, ptr %vm_next, align 4
  %tobool16.not = icmp eq ptr %vma.0, null
  br i1 %tobool16.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %nr_files.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %nr_files.1, %for.inc.for.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@proc_map_files_readdir, %if.then.i.i94)) #15
          to label %mmap_read_unlock.exit [label %if.then.i.i94], !srcloc !431

if.then.i.i94:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__mmap_lock_do_trace_released(ptr noundef nonnull %call8, i1 noundef zeroext false) #15
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i94, %for.end
  call void @up_read(ptr noundef %mmap_lock.i) #15
  call void @mmput(ptr noundef nonnull %call8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_files.0.lcssa)
  %cmp33111.not = icmp eq i32 %nr_files.0.lcssa, 0
  br i1 %cmp33111.not, label %mmap_read_unlock.exit.out_put_task_crit_edge, label %mmap_read_unlock.exit.for.body35_crit_edge

mmap_read_unlock.exit.for.body35_crit_edge:       ; preds = %mmap_read_unlock.exit
  br label %for.body35

mmap_read_unlock.exit.out_put_task_crit_edge:     ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_task

for.body35:                                       ; preds = %for.inc50.for.body35_crit_edge, %mmap_read_unlock.exit.for.body35_crit_edge
  %i.0112 = phi i32 [ %inc51, %for.inc50.for.body35_crit_edge ], [ 0, %mmap_read_unlock.exit.for.body35_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %buf) #15
  %i.0112.frozen = freeze i32 %i.0112
  %div14.i96 = udiv i32 %i.0112.frozen, 341
  %mul.i97 = shl i32 %div14.i96, 12
  %45 = mul i32 %div14.i96, 341
  %rem.i98.decomposed = sub i32 %i.0112.frozen, %45
  %mul15.i99 = mul nuw nsw i32 %rem.i98.decomposed, 12
  %add.i100 = add nuw i32 %mul.i97, %mul15.i99
  %46 = call ptr @memset(ptr %buf, i32 255, i32 18)
  %call38 = call ptr @__genradix_ptr(ptr noundef nonnull %fa, i32 noundef %add.i100) #15
  %47 = ptrtoint ptr %call38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call38, align 4
  %end40 = getelementptr inbounds %struct.map_files_info, ptr %call38, i32 0, i32 1
  %49 = ptrtoint ptr %end40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %end40, align 4
  %call41 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 18, ptr noundef nonnull @.str.126, i32 noundef %48, i32 noundef %50)
  %mode43 = getelementptr inbounds %struct.map_files_info, ptr %call38, i32 0, i32 2
  %51 = ptrtoint ptr %mode43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mode43, align 4
  %53 = inttoptr i32 %52 to ptr
  %call44 = call zeroext i1 @proc_fill_cache(ptr noundef %file, ptr noundef %ctx, ptr noundef nonnull %buf, i32 noundef %call41, ptr noundef nonnull @proc_map_files_instantiate, ptr noundef nonnull %call1.i, ptr noundef %53)
  br i1 %call44, label %for.inc50, label %cleanup

cleanup:                                          ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %buf) #15
  br label %out_put_task

for.inc50:                                        ; preds = %for.body35
  %54 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %pos.i, align 8
  %inc48 = add i64 %55, 1
  store i64 %inc48, ptr %pos.i, align 8
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %buf) #15
  %inc51 = add nuw i32 %i.0112, 1
  %exitcond.not = icmp eq i32 %inc51, %nr_files.0.lcssa
  br i1 %exitcond.not, label %for.inc50.out_put_task_crit_edge, label %for.inc50.for.body35_crit_edge

for.inc50.for.body35_crit_edge:                   ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body35

for.inc50.out_put_task_crit_edge:                 ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_task

out_put_task:                                     ; preds = %for.inc50.out_put_task_crit_edge, %cleanup, %mmap_read_unlock.exit.out_put_task_crit_edge, %if.then29, %if.then14, %if.end7.out_put_task_crit_edge, %if.then6.i.out_put_task_crit_edge, %if.then.i.out_put_task_crit_edge, %if.end.out_put_task_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then14 ], [ -12, %if.then29 ], [ 0, %cleanup ], [ 0, %if.end7.out_put_task_crit_edge ], [ -13, %if.end.out_put_task_crit_edge ], [ 0, %if.then.i.out_put_task_crit_edge ], [ 0, %if.then6.i.out_put_task_crit_edge ], [ 0, %mmap_read_unlock.exit.out_put_task_crit_edge ], [ 0, %for.inc50.out_put_task_crit_edge ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i101, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_put_task
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %out

if.then.i101:                                     ; preds = %out_put_task
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %out

out:                                              ; preds = %if.then.i101, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ -2, %entry.out_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.out_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.then.i101 ]
  call void @__genradix_free(ptr noundef nonnull %fa) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fa) #15
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__genradix_ptr_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__genradix_ptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__genradix_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_autogroup_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  %buffer = alloca [13 x i8], align 1
  %nice = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %buffer) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nice) #15
  %2 = ptrtoint ptr %nice to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %nice, align 4, !annotation !413
  %3 = call ptr @memset(ptr %buffer, i32 0, i32 13)
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 12)
  call void @__check_object_size(ptr noundef nonnull %buffer, i32 noundef %4, i1 noundef zeroext false) #15
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #15
  %call.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %4, i32 -1226833920) #18, !srcloc !426
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !410

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buffer, i32 noundef %4) #15
  %6 = call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !427
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !428
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !429
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buffer, ptr noundef %buf, i32 noundef %4) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #15, !srcloc !428
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !429
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end4, label %if.then11.i.i, !prof !410

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buffer, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i
  %call.i = call ptr @strim(ptr noundef nonnull %buffer) #15
  %call7 = call i32 @kstrtoint(ptr noundef %call.i, i32 noundef 0, ptr noundef nonnull %nice) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = call ptr @get_pid_task(ptr noundef %11, i32 noundef 0) #15
  %tobool12.not = icmp eq ptr %call1.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %12 = ptrtoint ptr %nice to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nice, align 4
  %call15 = call i32 @proc_sched_autogroup_set_nice(ptr noundef nonnull %call1.i, i32 noundef %13) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  %spec.select = select i1 %tobool16.not, i32 %4, i32 %call15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i30, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i30:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i30, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call7, %if.end4.cleanup_crit_edge ], [ -3, %if.end10.cleanup_crit_edge ], [ %spec.select, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %spec.select, %if.then10.i.i.i.i ], [ %spec.select, %if.then.i30 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nice) #15
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buffer) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_autogroup_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %filp, ptr noundef nonnull @sched_autogroup_show, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %inode, ptr %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_sched_autogroup_set_nice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_autogroup_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @proc_sched_autogroup_show_task(ptr noundef nonnull %call1.i, ptr noundef %m) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_sched_autogroup_show_task(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_coredump_filter_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buffer = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %buffer) #15
  %tobool.not = icmp eq ptr %call1.i, null
  %4 = call ptr @memset(ptr %buffer, i32 255, i32 13)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @get_task_mm(ptr noundef nonnull %call1.i) #15
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.anon.4, ptr %call2, i32 0, i32 43
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = lshr i32 %6, 2
  %shr = and i32 %and, 511
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buffer, i32 noundef 13, ptr noundef nonnull @.str.127, i32 noundef %shr)
  tail call void @mmput(ptr noundef nonnull %call2) #15
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buffer, i32 noundef %call5) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %ret.0 = phi i32 [ %call7, %if.then4 ], [ 0, %if.end.if.end8_crit_edge ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %7 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %entry.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buffer) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_coredump_filter_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #15
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !413
  %call = call i32 @kstrtouint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %val) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 -40
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = call ptr @get_pid_task(ptr noundef %4, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %if.end.out_no_task.thread_crit_edge, label %if.end4

if.end.out_no_task.thread_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_no_task.thread

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @get_task_mm(ptr noundef nonnull %call1.i) #15
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.out_no_mm_crit_edge, label %for.cond.preheader

if.end4.out_no_mm_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_no_mm

for.cond.preheader:                               ; preds = %if.end4
  %flags = getelementptr inbounds %struct.anon.4, ptr %call5, i32 0, i32 43
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 2, ptr noundef %flags) #15
  br label %for.inc

if.else:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #15
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then11
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and.1 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool10.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool10.not.1, label %if.else.1, label %if.then11.1

if.then11.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 3, ptr noundef %flags) #15
  br label %for.inc.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #15
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %if.then11.1
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and.2 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool10.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool10.not.2, label %if.else.2, label %if.then11.2

if.then11.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 4, ptr noundef %flags) #15
  br label %for.inc.2

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #15
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.2, %if.then11.2
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and.3 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool10.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool10.not.3, label %if.else.3, label %if.then11.3

if.then11.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 5, ptr noundef %flags) #15
  br label %for.inc.3

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #15
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.else.3, %if.then11.3
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and.4 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool10.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool10.not.4, label %if.else.4, label %if.then11.4

if.then11.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 6, ptr noundef %flags) #15
  br label %for.inc.4

if.else.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #15
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.else.4, %if.then11.4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and.5 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool10.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool10.not.5, label %if.else.5, label %if.then11.5

if.then11.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 7, ptr noundef %flags) #15
  br label %for.inc.5

if.else.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  call void @_clear_bit(i32 noundef 7, ptr noundef %flags) #15
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.else.5, %if.then11.5
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and.6 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool10.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool10.not.6, label %if.else.6, label %if.then11.6

if.then11.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 8, ptr noundef %flags) #15
  br label %for.inc.6

if.else.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  call void @_clear_bit(i32 noundef 8, ptr noundef %flags) #15
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.else.6, %if.then11.6
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %and.7 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool10.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool10.not.7, label %if.else.7, label %if.then11.7

if.then11.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 9, ptr noundef %flags) #15
  br label %for.inc.7

if.else.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  call void @_clear_bit(i32 noundef 9, ptr noundef %flags) #15
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.else.7, %if.then11.7
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %and.8 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool10.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool10.not.8, label %if.else.8, label %if.then11.8

if.then11.8:                                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 10, ptr noundef %flags) #15
  br label %for.inc.8

if.else.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #17
  call void @_clear_bit(i32 noundef 10, ptr noundef %flags) #15
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.else.8, %if.then11.8
  call void @mmput(ptr noundef nonnull %call5) #15
  br label %out_no_mm

out_no_mm:                                        ; preds = %for.inc.8, %if.end4.out_no_mm_crit_edge
  %ret.0 = phi i32 [ 0, %for.inc.8 ], [ -3, %if.end4.out_no_mm_crit_edge ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %23 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_no_mm
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_no_task_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.out_no_task_crit_edge:            ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_no_task

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %out_no_task

if.then.i:                                        ; preds = %out_no_mm
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #15
  br label %out_no_task

out_no_task:                                      ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_no_task_crit_edge
  br i1 %tobool6.not, label %out_no_task.out_no_task.thread_crit_edge, label %out_no_task.cleanup_crit_edge

out_no_task.cleanup_crit_edge:                    ; preds = %out_no_task
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

out_no_task.out_no_task.thread_crit_edge:         ; preds = %out_no_task
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_no_task.thread

out_no_task.thread:                               ; preds = %out_no_task.out_no_task.thread_crit_edge, %if.end.out_no_task.thread_crit_edge
  %ret.138 = phi i32 [ %ret.0, %out_no_task.out_no_task.thread_crit_edge ], [ -3, %if.end.out_no_task.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %out_no_task.thread, %out_no_task.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %ret.138, %out_no_task.thread ], [ %count, %out_no_task.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_timers_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__seq_open_private(ptr noundef %file, ptr noundef nonnull @proc_timers_seq_ops, i32 noundef 20) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -40
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %call, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %ns = getelementptr inbounds %struct.timers_private, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %ns, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @timers_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  %task = getelementptr inbounds %struct.timers_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %task, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.timers_private, ptr %1, i32 0, i32 4
  %call.i = tail call ptr @__lock_task_sighand(ptr noundef nonnull %call, ptr noundef %flags) #15
  %sighand = getelementptr inbounds %struct.timers_private, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %sighand to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %sighand, align 4
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 4
  %signal = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 111
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal, align 16
  %posix_timers = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos, align 8
  %call11 = tail call ptr @seq_list_start(ptr noundef %posix_timers, i64 noundef %11) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call11, %if.end9 ], [ inttoptr (i32 -3 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -3 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @timers_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sighand = getelementptr inbounds %struct.timers_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sighand, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %task = getelementptr inbounds %struct.timers_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 4
  %flags = getelementptr inbounds %struct.timers_private, ptr %1, i32 0, i32 4
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 112
  %6 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sighand.i, align 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %9) #15
  %10 = ptrtoint ptr %sighand to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sighand, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %task2 = getelementptr inbounds %struct.timers_private, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task2, align 4
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then4:                                         ; preds = %if.end
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %12) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %14 = ptrtoint ptr %task2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %task2, align 4
  br label %if.end7

if.end7:                                          ; preds = %put_task_struct.exit, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @timers_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %task = getelementptr inbounds %struct.timers_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 4
  %signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal, align 16
  %posix_timers = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 16
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %posix_timers, ptr noundef %pos) #15
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_timer(ptr noundef %m, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %it_sigev_notify = getelementptr inbounds %struct.k_itimer, ptr %v, i32 0, i32 10
  %2 = ptrtoint ptr %it_sigev_notify to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %it_sigev_notify, align 4
  %it_id = getelementptr inbounds %struct.k_itimer, ptr %v, i32 0, i32 5
  %4 = ptrtoint ptr %it_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %it_id, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.131, i32 noundef %5) #15
  %sigq = getelementptr inbounds %struct.k_itimer, ptr %v, i32 0, i32 14
  %6 = ptrtoint ptr %sigq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sigq, align 8
  %info = getelementptr inbounds %struct.sigqueue, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %info, align 4
  %_sigval = getelementptr inbounds %struct.sigqueue, ptr %7, i32 0, i32 2, i32 0, i32 3, i32 0, i32 2
  %10 = ptrtoint ptr %_sigval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_sigval, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.132, i32 noundef %9, ptr noundef %11) #15
  %and = and i32 %3, -5
  %arrayidx = getelementptr [3 x ptr], ptr @show_timer.nstr, i32 0, i32 %and
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %and3 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %cond = select i1 %tobool.not, ptr @.str.135, ptr @.str.134
  %14 = getelementptr inbounds %struct.k_itimer, ptr %v, i32 0, i32 13
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %ns = getelementptr inbounds %struct.timers_private, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ns, align 4
  %call = tail call i32 @pid_nr_ns(ptr noundef %16, ptr noundef %18) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.133, ptr noundef %13, ptr noundef nonnull %cond, i32 noundef %call) #15
  %it_clock = getelementptr inbounds %struct.k_itimer, ptr %v, i32 0, i32 4
  %19 = ptrtoint ptr %it_clock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %it_clock, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.136, i32 noundef %20) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timerslack_ns_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  %slack_ns = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %slack_ns) #15
  %2 = ptrtoint ptr %slack_ns to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %slack_ns, align 8, !annotation !413
  %call1 = call i32 @kstrtoull_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %slack_ns) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i49 = call ptr @get_pid_task(ptr noundef %4, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i49, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %cmp6.not = icmp eq ptr %call1.i49, %8
  br i1 %cmp6.not, label %if.end4.if.end27_crit_edge, label %if.then7

if.end4.if.end27_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then7:                                         ; preds = %if.end4
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.then7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then7.rcu_read_lock.exit_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then7
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then7.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %call1.i49, i32 0, i32 98
  %11 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %real_cred, align 4
  %call9 = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end18_crit_edge

rcu_read_lock.exit.do.end18_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end18

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call11 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true
  %.b48 = load i1, ptr @timerslack_ns_write.__warned, align 1
  br i1 %.b48, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @timerslack_ns_write.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2532, ptr noundef nonnull @.str.1) #15
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true.do.end18_crit_edge, %rcu_read_lock.exit.do.end18_crit_edge
  %user_ns = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 25
  %13 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %user_ns, align 4
  %call20 = call zeroext i1 @ns_capable(ptr noundef %14, i32 noundef 23) #15
  %call.i59 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %do.end18
  br i1 %call.i59, label %if.then21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i53

if.then21.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i53:                                ; preds = %if.then21
  %call1.i51 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51)
  %tobool.not.i52 = icmp eq i32 %call1.i51, 0
  br i1 %tobool.not.i52, label %land.lhs.true.i53.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i55

land.lhs.true.i53.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i55:                               ; preds = %land.lhs.true.i53
  %.b4.i54 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i54, label %land.lhs.true2.i55.rcu_read_unlock.exit_crit_edge, label %if.then.i56

land.lhs.true2.i55.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i55
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i56:                                      ; preds = %land.lhs.true2.i55
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i56, %land.lhs.true2.i55.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i53.rcu_read_unlock.exit_crit_edge, %if.then21.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %15 = call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i57 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i57 to ptr
  %preempt_count.i.i.i.i58 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i58, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i58, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %out

if.end22:                                         ; preds = %do.end18
  br i1 %call.i59, label %if.end22.rcu_read_unlock.exit69_crit_edge, label %land.lhs.true.i62

if.end22.rcu_read_unlock.exit69_crit_edge:        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit69

land.lhs.true.i62:                                ; preds = %if.end22
  %call1.i60 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %tobool.not.i61 = icmp eq i32 %call1.i60, 0
  br i1 %tobool.not.i61, label %land.lhs.true.i62.rcu_read_unlock.exit69_crit_edge, label %land.lhs.true2.i64

land.lhs.true.i62.rcu_read_unlock.exit69_crit_edge: ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit69

land.lhs.true2.i64:                               ; preds = %land.lhs.true.i62
  %.b4.i63 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i63, label %land.lhs.true2.i64.rcu_read_unlock.exit69_crit_edge, label %if.then.i65

land.lhs.true2.i64.rcu_read_unlock.exit69_crit_edge: ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit69

if.then.i65:                                      ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit69

rcu_read_unlock.exit69:                           ; preds = %if.then.i65, %land.lhs.true2.i64.rcu_read_unlock.exit69_crit_edge, %land.lhs.true.i62.rcu_read_unlock.exit69_crit_edge, %if.end22.rcu_read_unlock.exit69_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %19 = call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i66 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i66 to ptr
  %preempt_count.i.i.i.i67 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i67, align 4
  %sub.i.i.i68 = add i32 %22, -1
  store volatile i32 %sub.i.i.i68, ptr %preempt_count.i.i.i.i67, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %call23 = call i32 @security_task_setscheduler(ptr noundef nonnull %call1.i49) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %rcu_read_unlock.exit69.if.end27_crit_edge, label %rcu_read_unlock.exit69.out_crit_edge

rcu_read_unlock.exit69.out_crit_edge:             ; preds = %rcu_read_unlock.exit69
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

rcu_read_unlock.exit69.if.end27_crit_edge:        ; preds = %rcu_read_unlock.exit69
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.end27:                                         ; preds = %rcu_read_unlock.exit69.if.end27_crit_edge, %if.end4.if.end27_crit_edge
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %call1.i49, i32 0, i32 127
  call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #15
  %23 = ptrtoint ptr %slack_ns to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %slack_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %cmp28 = icmp eq i64 %24, 0
  br i1 %cmp28, label %if.then29, label %if.end27.if.end31_crit_edge

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %default_timer_slack_ns = getelementptr inbounds %struct.task_struct, ptr %call1.i49, i32 0, i32 190
  %25 = ptrtoint ptr %default_timer_slack_ns to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %default_timer_slack_ns, align 32
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge
  %.sink = phi i64 [ %26, %if.then29 ], [ %24, %if.end27.if.end31_crit_edge ]
  %27 = getelementptr inbounds %struct.task_struct, ptr %call1.i49, i32 0, i32 189
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %.sink, ptr %27, align 8
  call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #15
  br label %out

out:                                              ; preds = %if.end31, %rcu_read_unlock.exit69.out_crit_edge, %rcu_read_unlock.exit
  %count.addr.0 = phi i32 [ %count, %if.end31 ], [ -1, %rcu_read_unlock.exit ], [ %call23, %rcu_read_unlock.exit69.out_crit_edge ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i49, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i71, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i71:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void @__put_task_struct(ptr noundef nonnull %call1.i49) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i71, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -3, %if.end.cleanup_crit_edge ], [ %count.addr.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %count.addr.0, %if.then10.i.i.i.i ], [ %count.addr.0, %if.then.i71 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %slack_ns) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timerslack_ns_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %filp, ptr noundef nonnull @timerslack_ns_show, ptr noundef %inode) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_task_setscheduler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timerslack_ns_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i35 = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1.i35, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %call1.i35, %7
  br i1 %cmp.not, label %if.end.if.end22_crit_edge, label %if.then2

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then2:                                         ; preds = %if.end
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.then2.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then2.rcu_read_lock.exit_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then2
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then2.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %call1.i35, i32 0, i32 98
  %10 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %real_cred, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end13_crit_edge

rcu_read_lock.exit.do.end13_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @timerslack_ns_show.__warned, align 1
  br i1 %.b34, label %land.lhs.true8.do.end13_crit_edge, label %if.then10

land.lhs.true8.do.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @timerslack_ns_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2571, ptr noundef nonnull @.str.1) #15
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %land.lhs.true8.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %rcu_read_lock.exit.do.end13_crit_edge
  %user_ns = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns, align 4
  %call15 = tail call zeroext i1 @ns_capable(ptr noundef %13, i32 noundef 23) #15
  %call.i45 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %do.end13
  br i1 %call.i45, label %if.then16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i39

if.then16.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i39:                                ; preds = %if.then16
  %call1.i37 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i41

land.lhs.true.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i39
  %.b4.i40 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40, label %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, label %if.then.i42

land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i42:                                      ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i42, %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, %if.then16.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %14 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i43 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i43 to ptr
  %preempt_count.i.i.i.i44 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i44, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i44, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %out

if.end17:                                         ; preds = %do.end13
  br i1 %call.i45, label %if.end17.rcu_read_unlock.exit55_crit_edge, label %land.lhs.true.i48

if.end17.rcu_read_unlock.exit55_crit_edge:        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit55

land.lhs.true.i48:                                ; preds = %if.end17
  %call1.i46 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit55_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit55_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit55

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit55_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit55_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit55

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit55

rcu_read_unlock.exit55:                           ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit55_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit55_crit_edge, %if.end17.rcu_read_unlock.exit55_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %18 = tail call i32 @llvm.read_register.i32(metadata !398) #15
  %and.i.i.i.i.i52 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %sub.i.i.i54 = add i32 %21, -1
  store volatile i32 %sub.i.i.i54, ptr %preempt_count.i.i.i.i53, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %call18 = tail call i32 @security_task_getscheduler(ptr noundef nonnull %call1.i35) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %rcu_read_unlock.exit55.if.end22_crit_edge, label %rcu_read_unlock.exit55.out_crit_edge

rcu_read_unlock.exit55.out_crit_edge:             ; preds = %rcu_read_unlock.exit55
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

rcu_read_unlock.exit55.if.end22_crit_edge:        ; preds = %rcu_read_unlock.exit55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.end22:                                         ; preds = %rcu_read_unlock.exit55.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %call1.i35, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #15
  %timer_slack_ns = getelementptr inbounds %struct.task_struct, ptr %call1.i35, i32 0, i32 189
  %22 = ptrtoint ptr %timer_slack_ns to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %timer_slack_ns, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.137, i64 noundef %23) #15
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #15
  br label %out

out:                                              ; preds = %if.end22, %rcu_read_unlock.exit55.out_crit_edge, %rcu_read_unlock.exit
  %err.1 = phi i32 [ %call18, %rcu_read_unlock.exit55.out_crit_edge ], [ 0, %if.end22 ], [ -1, %rcu_read_unlock.exit ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i35, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !409
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i57, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !410

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i57:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i35) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i57, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %entry.cleanup_crit_edge ], [ %err.1, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.1, %if.then10.i.i.i.i ], [ %err.1, %if.then.i57 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_task_getscheduler(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i9 @llvm.bitreverse.i9(i9) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 175)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 175)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30, !31, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !256, !258, !260, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !286, !287, !288, !289, !291, !292, !293, !295, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396}
!llvm.named.register.sp = !{!398}
!llvm.module.flags = !{!399, !400, !401, !402, !403, !404, !405, !406}
!llvm.ident = !{!407}

!0 = !{ptr @proc_pid_link_inode_operations, !1, !"proc_pid_link_inode_operations", i1 false, i1 false}
!1 = !{!"../fs/proc/base.c", i32 1809, i32 31}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../fs/proc/base.c", i32 1836, i32 9}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pid_dentry_operations, !7, !"pid_dentry_operations", i1 false, i1 false}
!7 = !{!"../fs/proc/base.c", i32 2016, i32 32}
!8 = !{ptr @proc_fill_cache.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../fs/proc/base.c", i32 2048, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/proc/base.c", i32 3450, i32 22}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/proc/base.c", i32 3456, i32 22}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/proc/base.c", i32 3472, i32 38}
!17 = distinct !{null, !18, !"nlink_tid", i1 false, i1 false}
!18 = !{!"../fs/proc/base.c", i32 116, i32 11}
!19 = distinct !{null, !20, !"nlink_tgid", i1 false, i1 false}
!20 = !{!"../fs/proc/base.c", i32 117, i32 11}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @proc_def_inode_operations, !36, !"proc_def_inode_operations", i1 false, i1 false}
!36 = !{!"../fs/proc/base.c", i32 762, i32 38}
!37 = !{ptr @proc_tgid_base_operations, !38, !"proc_tgid_base_operations", i1 false, i1 false}
!38 = !{!"../fs/proc/base.c", i32 3297, i32 37}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/fs.h", i32 3571, i32 25}
!43 = !{ptr @proc_tgid_base_inode_operations, !44, !"proc_tgid_base_inode_operations", i1 false, i1 false}
!44 = !{!"../fs/proc/base.c", i32 3318, i32 38}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/proc/base.c", i32 3527, i32 2}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/proc/base.c", i32 3528, i32 2}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/proc/base.c", i32 3529, i32 2}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/proc/base.c", i32 3531, i32 2}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/proc/base.c", i32 3533, i32 2}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/proc/base.c", i32 3534, i32 2}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/proc/base.c", i32 3535, i32 2}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/proc/base.c", i32 3536, i32 2}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/proc/base.c", i32 3537, i32 2}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/proc/base.c", i32 3539, i32 2}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/proc/base.c", i32 3541, i32 2}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/proc/base.c", i32 3545, i32 2}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/proc/base.c", i32 3547, i32 2}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/proc/base.c", i32 3548, i32 2}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/proc/base.c", i32 3549, i32 2}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/proc/base.c", i32 3550, i32 2}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/proc/base.c", i32 3552, i32 2}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/proc/base.c", i32 3557, i32 2}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/proc/base.c", i32 3558, i32 2}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/proc/base.c", i32 3559, i32 2}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/proc/base.c", i32 3560, i32 2}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/proc/base.c", i32 3561, i32 2}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/proc/base.c", i32 3562, i32 2}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/proc/base.c", i32 3564, i32 2}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/proc/base.c", i32 3565, i32 2}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/proc/base.c", i32 3566, i32 2}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/proc/base.c", i32 3567, i32 2}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/proc/base.c", i32 3570, i32 2}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/proc/base.c", i32 3573, i32 2}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/proc/base.c", i32 3576, i32 2}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/proc/base.c", i32 3579, i32 2}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/proc/base.c", i32 3582, i32 2}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/proc/base.c", i32 3585, i32 2}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/proc/base.c", i32 3588, i32 2}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/proc/base.c", i32 3593, i32 2}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/proc/base.c", i32 3594, i32 2}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/proc/base.c", i32 3595, i32 2}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/proc/base.c", i32 3597, i32 2}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/proc/base.c", i32 3598, i32 2}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/proc/base.c", i32 3601, i32 2}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/proc/base.c", i32 3602, i32 2}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/proc/base.c", i32 3605, i32 2}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/proc/base.c", i32 3608, i32 2}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/proc/base.c", i32 3609, i32 2}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/proc/base.c", i32 3610, i32 2}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/proc/base.c", i32 3611, i32 2}
!137 = !{ptr @tid_base_stuff, !138, !"tid_base_stuff", i1 false, i1 false}
!138 = !{!"../fs/proc/base.c", i32 3526, i32 31}
!139 = !{ptr @proc_environ_operations, !140, !"proc_environ_operations", i1 false, i1 false}
!140 = !{!"../fs/proc/base.c", i32 1005, i32 37}
!141 = !{ptr @proc_auxv_operations, !142, !"proc_auxv_operations", i1 false, i1 false}
!142 = !{!"../fs/proc/base.c", i32 1032, i32 37}
!143 = !{ptr @proc_single_file_operations, !144, !"proc_single_file_operations", i1 false, i1 false}
!144 = !{!"../fs/proc/base.c", i32 789, i32 37}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/proc/base.c", i32 3143, i32 17}
!147 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/proc/base.c", i32 612, i32 14}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/proc/base.c", i32 619, i32 18}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/proc/base.c", i32 620, i32 24}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/proc/base.c", i32 622, i32 18}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/proc/base.c", i32 626, i32 18}
!157 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/proc/base.c", i32 628, i32 18}
!159 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/proc/base.c", i32 631, i32 18}
!161 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/proc/base.c", i32 577, i32 18}
!163 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/proc/base.c", i32 577, i32 34}
!165 = !{ptr @.str.70, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/proc/base.c", i32 578, i32 20}
!167 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/proc/base.c", i32 578, i32 37}
!169 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/proc/base.c", i32 579, i32 19}
!171 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/proc/base.c", i32 580, i32 20}
!173 = !{ptr @.str.74, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/proc/base.c", i32 581, i32 19}
!175 = !{ptr @.str.75, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/proc/base.c", i32 582, i32 18}
!177 = !{ptr @.str.76, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/proc/base.c", i32 583, i32 20}
!179 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/proc/base.c", i32 583, i32 37}
!181 = !{ptr @.str.78, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/proc/base.c", i32 584, i32 21}
!183 = !{ptr @.str.79, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/proc/base.c", i32 584, i32 39}
!185 = !{ptr @.str.80, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/proc/base.c", i32 585, i32 22}
!187 = !{ptr @.str.81, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/proc/base.c", i32 586, i32 17}
!189 = !{ptr @.str.82, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/proc/base.c", i32 587, i32 20}
!191 = !{ptr @.str.83, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/proc/base.c", i32 587, i32 38}
!193 = !{ptr @.str.84, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/proc/base.c", i32 588, i32 25}
!195 = !{ptr @.str.85, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/proc/base.c", i32 588, i32 48}
!197 = !{ptr @.str.86, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/proc/base.c", i32 589, i32 23}
!199 = !{ptr @.str.87, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/proc/base.c", i32 590, i32 19}
!201 = !{ptr @.str.88, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/proc/base.c", i32 591, i32 21}
!203 = !{ptr @.str.89, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/proc/base.c", i32 592, i32 21}
!205 = !{ptr @.str.90, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/proc/base.c", i32 592, i32 45}
!207 = !{ptr @lnames, !208, !"lnames", i1 false, i1 false}
!208 = !{!"../fs/proc/base.c", i32 576, i32 33}
!209 = !{ptr @proc_pid_sched_operations, !210, !"proc_pid_sched_operations", i1 false, i1 false}
!210 = !{!"../fs/proc/base.c", i32 1478, i32 37}
!211 = !{ptr @proc_tid_comm_inode_operations, !212, !"proc_tid_comm_inode_operations", i1 false, i1 false}
!212 = !{!"../fs/proc/base.c", i32 3519, i32 38}
!213 = !{ptr @proc_pid_set_comm_operations, !214, !"proc_pid_set_comm_operations", i1 false, i1 false}
!214 = !{!"../fs/proc/base.c", i32 1715, i32 37}
!215 = !{ptr @.str.91, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/proc/base.c", i32 652, i32 15}
!217 = !{ptr @.str.92, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/proc/base.c", i32 654, i32 17}
!219 = !{ptr @.str.93, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/proc/base.c", i32 658, i32 10}
!221 = !{ptr @proc_pid_cmdline_ops, !222, !"proc_pid_cmdline_ops", i1 false, i1 false}
!222 = !{!"../fs/proc/base.c", i32 376, i32 37}
!223 = !{ptr @proc_mem_operations, !224, !"proc_mem_operations", i1 false, i1 false}
!224 = !{!"../fs/proc/base.c", i32 929, i32 37}
!225 = !{ptr @proc_attr_dir_inode_operations, !226, !"proc_attr_dir_inode_operations", i1 false, i1 false}
!226 = !{!"../fs/proc/base.c", i32 2861, i32 38}
!227 = !{ptr @.str.94, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/proc/base.c", i32 2825, i32 2}
!229 = !{ptr @.str.95, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/proc/base.c", i32 2826, i32 2}
!231 = !{ptr @.str.96, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/proc/base.c", i32 2827, i32 2}
!233 = !{ptr @.str.97, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/proc/base.c", i32 2828, i32 2}
!235 = !{ptr @.str.98, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/proc/base.c", i32 2829, i32 2}
!237 = !{ptr @.str.99, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/proc/base.c", i32 2830, i32 2}
!239 = !{ptr @.str.100, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/proc/base.c", i32 2832, i32 2}
!241 = !{ptr @.str.101, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../fs/proc/base.c", i32 2836, i32 2}
!243 = !{ptr @attr_dir_stuff, !244, !"attr_dir_stuff", i1 false, i1 false}
!244 = !{!"../fs/proc/base.c", i32 2824, i32 31}
!245 = !{ptr @proc_pid_attr_operations, !246, !"proc_pid_attr_operations", i1 false, i1 false}
!246 = !{!"../fs/proc/base.c", i32 2771, i32 37}
!247 = distinct !{null, !248, !"__warned", i1 false, i1 false}
!248 = !{!"../fs/proc/base.c", i32 2737, i32 6}
!249 = distinct !{null, !250, !"__warned", i1 false, i1 false}
!250 = !{!"../fs/proc/base.c", i32 2737, i32 24}
!251 = !{ptr @proc_smack_attr_dir_inode_ops, !252, !"proc_smack_attr_dir_inode_ops", i1 false, i1 false}
!252 = !{!"../fs/proc/base.c", i32 2812, i32 1}
!253 = !{ptr @smack_attr_dir_stuff, !254, !"smack_attr_dir_stuff", i1 false, i1 false}
!254 = !{!"../fs/proc/base.c", i32 2809, i32 31}
!255 = !{ptr @proc_smack_attr_dir_ops, !252, !"proc_smack_attr_dir_ops", i1 false, i1 false}
!256 = !{ptr @proc_apparmor_attr_dir_inode_ops, !257, !"proc_apparmor_attr_dir_inode_ops", i1 false, i1 false}
!257 = !{!"../fs/proc/base.c", i32 2821, i32 1}
!258 = !{ptr @apparmor_attr_dir_stuff, !259, !"apparmor_attr_dir_stuff", i1 false, i1 false}
!259 = !{!"../fs/proc/base.c", i32 2816, i32 31}
!260 = !{ptr @proc_apparmor_attr_dir_ops, !257, !"proc_apparmor_attr_dir_ops", i1 false, i1 false}
!261 = !{ptr @proc_attr_dir_operations, !262, !"proc_attr_dir_operations", i1 false, i1 false}
!262 = !{!"../fs/proc/base.c", i32 2847, i32 37}
!263 = !{ptr @.str.103, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../fs/proc/base.c", i32 461, i32 18}
!265 = distinct !{null, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../fs/proc/base.c", i32 480, i32 15}
!267 = !{ptr @.str.105, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../fs/proc/base.c", i32 482, i32 17}
!269 = !{ptr @proc_lstats_operations, !270, !"proc_lstats_operations", i1 false, i1 false}
!270 = !{!"../fs/proc/base.c", i32 540, i32 37}
!271 = !{ptr @.str.106, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../fs/proc/base.c", i32 500, i32 14}
!273 = !{ptr @.str.107, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/proc/base.c", i32 505, i32 18}
!275 = !{ptr @.str.108, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../fs/proc/base.c", i32 512, i32 19}
!277 = !{ptr @.str.109, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../fs/proc/base.c", i32 566, i32 16}
!279 = !{ptr @proc_oom_adj_operations, !280, !"proc_oom_adj_operations", i1 false, i1 false}
!280 = !{!"../fs/proc/base.c", i32 1192, i32 37}
!281 = !{ptr @.str.110, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../fs/proc/base.c", i32 1057, i32 41}
!283 = distinct !{null, !284, !"__already_done", i1 false, i1 false}
!284 = !{!"../fs/proc/base.c", i32 1082, i32 3}
!285 = !{ptr @.str.111, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.112, !284, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @__set_oom_adj._entry, !284, !"_entry", i1 false, i1 false}
!288 = !{ptr @__set_oom_adj._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!289 = distinct !{null, !290, !"__already_done", i1 false, i1 false}
!290 = !{!"../include/trace/events/oom.h", i32 10, i32 1}
!291 = !{ptr @.str.113, !290, !"<string literal>", i1 false, i1 false}
!292 = distinct !{null, !290, !"__warned", i1 false, i1 false}
!293 = distinct !{null, !294, !"__already_done", i1 false, i1 false}
!294 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!295 = !{ptr @.str.114, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @proc_oom_score_adj_operations, !297, !"proc_oom_score_adj_operations", i1 false, i1 false}
!297 = !{!"../fs/proc/base.c", i32 1243, i32 37}
!298 = !{ptr @.str.115, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../fs/proc/base.c", i32 1210, i32 41}
!300 = !{ptr @proc_loginuid_operations, !301, !"proc_loginuid_operations", i1 false, i1 false}
!301 = !{!"../fs/proc/base.c", i32 1311, i32 37}
!302 = !{ptr @proc_sessionid_operations, !303, !"proc_sessionid_operations", i1 false, i1 false}
!303 = !{!"../fs/proc/base.c", i32 1333, i32 37}
!304 = !{ptr @proc_fault_inject_operations, !305, !"proc_fault_inject_operations", i1 false, i1 false}
!305 = !{!"../fs/proc/base.c", i32 1388, i32 37}
!306 = !{ptr @.str.116, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../fs/proc/base.c", i32 1353, i32 41}
!308 = !{ptr @proc_fail_nth_operations, !309, !"proc_fail_nth_operations", i1 false, i1 false}
!309 = !{!"../fs/proc/base.c", i32 1429, i32 37}
!310 = !{ptr @.str.117, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../fs/proc/base.c", i32 1424, i32 41}
!312 = !{ptr @.str.118, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../fs/proc/base.c", i32 2972, i32 6}
!314 = !{ptr @proc_uid_map_operations, !315, !"proc_uid_map_operations", i1 false, i1 false}
!315 = !{!"../fs/proc/base.c", i32 3062, i32 37}
!316 = distinct !{null, !317, !"__warned", i1 false, i1 false}
!317 = !{!"../fs/proc/base.c", i32 3018, i32 20}
!318 = !{ptr @proc_gid_map_operations, !319, !"proc_gid_map_operations", i1 false, i1 false}
!319 = !{!"../fs/proc/base.c", i32 3070, i32 37}
!320 = !{ptr @proc_projid_map_operations, !321, !"proc_projid_map_operations", i1 false, i1 false}
!321 = !{!"../fs/proc/base.c", i32 3078, i32 37}
!322 = !{ptr @proc_setgroups_operations, !323, !"proc_setgroups_operations", i1 false, i1 false}
!323 = !{!"../fs/proc/base.c", i32 3129, i32 37}
!324 = distinct !{null, !325, !"__warned", i1 false, i1 false}
!325 = !{!"../fs/proc/base.c", i32 3096, i32 20}
!326 = !{ptr @.str.119, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../fs/proc/base.c", i32 3180, i32 2}
!328 = !{ptr @.str.120, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../fs/proc/base.c", i32 3182, i32 2}
!330 = !{ptr @.str.121, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../fs/proc/base.c", i32 3197, i32 2}
!332 = !{ptr @.str.122, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../fs/proc/base.c", i32 3219, i32 2}
!334 = !{ptr @.str.123, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../fs/proc/base.c", i32 3262, i32 2}
!336 = !{ptr @.str.124, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../fs/proc/base.c", i32 3274, i32 2}
!338 = !{ptr @.str.125, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../fs/proc/base.c", i32 3276, i32 2}
!340 = !{ptr @tgid_base_stuff, !341, !"tgid_base_stuff", i1 false, i1 false}
!341 = !{!"../fs/proc/base.c", i32 3179, i32 31}
!342 = !{ptr @proc_task_inode_operations, !343, !"proc_task_inode_operations", i1 false, i1 false}
!343 = !{!"../fs/proc/base.c", i32 3841, i32 38}
!344 = !{ptr @proc_tid_base_inode_operations, !345, !"proc_tid_base_inode_operations", i1 false, i1 false}
!345 = !{!"../fs/proc/base.c", i32 3643, i32 38}
!346 = !{ptr @proc_tid_base_operations, !347, !"proc_tid_base_operations", i1 false, i1 false}
!347 = !{!"../fs/proc/base.c", i32 3637, i32 37}
!348 = !{ptr @proc_task_operations, !349, !"proc_task_operations", i1 false, i1 false}
!349 = !{!"../fs/proc/base.c", i32 3848, i32 37}
!350 = !{ptr @proc_map_files_inode_operations, !351, !"proc_map_files_inode_operations", i1 false, i1 false}
!351 = !{!"../fs/proc/base.c", i32 2310, i32 38}
!352 = !{ptr @proc_map_files_link_inode_operations, !353, !"proc_map_files_link_inode_operations", i1 false, i1 false}
!353 = !{!"../fs/proc/base.c", i32 2231, i32 38}
!354 = !{ptr @tid_map_files_dentry_operations, !355, !"tid_map_files_dentry_operations", i1 false, i1 false}
!355 = !{!"../fs/proc/base.c", i32 2160, i32 39}
!356 = !{ptr @proc_map_files_operations, !357, !"proc_map_files_operations", i1 false, i1 false}
!357 = !{!"../fs/proc/base.c", i32 2407, i32 37}
!358 = !{ptr @.str.126, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../fs/proc/base.c", i32 2390, i32 36}
!360 = !{ptr @proc_pid_sched_autogroup_operations, !361, !"proc_pid_sched_autogroup_operations", i1 false, i1 false}
!361 = !{!"../fs/proc/base.c", i32 1553, i32 37}
!362 = !{ptr @proc_coredump_filter_operations, !363, !"proc_coredump_filter_operations", i1 false, i1 false}
!363 = !{!"../fs/proc/base.c", i32 2939, i32 37}
!364 = !{ptr @.str.127, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../fs/proc/base.c", i32 2885, i32 42}
!366 = !{ptr @proc_timers_operations, !367, !"proc_timers_operations", i1 false, i1 false}
!367 = !{!"../fs/proc/base.c", i32 2506, i32 37}
!368 = !{ptr @proc_timers_seq_ops, !369, !"proc_timers_seq_ops", i1 false, i1 false}
!369 = !{!"../fs/proc/base.c", i32 2485, i32 36}
!370 = !{ptr @.str.128, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../fs/proc/base.c", i32 2464, i32 20}
!372 = !{ptr @.str.129, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../fs/proc/base.c", i32 2465, i32 18}
!374 = !{ptr @.str.130, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../fs/proc/base.c", i32 2466, i32 20}
!376 = !{ptr @show_timer.nstr, !377, !"nstr", i1 false, i1 false}
!377 = !{!"../fs/proc/base.c", i32 2463, i32 28}
!378 = !{ptr @.str.131, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../fs/proc/base.c", i32 2472, i32 16}
!380 = !{ptr @.str.132, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../fs/proc/base.c", i32 2473, i32 16}
!382 = !{ptr @.str.133, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../fs/proc/base.c", i32 2476, i32 16}
!384 = !{ptr @.str.134, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../fs/proc/base.c", i32 2478, i32 35}
!386 = !{ptr @.str.135, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../fs/proc/base.c", i32 2478, i32 43}
!388 = !{ptr @.str.136, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../fs/proc/base.c", i32 2480, i32 16}
!390 = !{ptr @proc_pid_set_timerslack_ns_operations, !391, !"proc_pid_set_timerslack_ns_operations", i1 false, i1 false}
!391 = !{!"../fs/proc/base.c", i32 2598, i32 37}
!392 = distinct !{null, !393, !"__warned", i1 false, i1 false}
!393 = !{!"../fs/proc/base.c", i32 2532, i32 19}
!394 = distinct !{null, !395, !"__warned", i1 false, i1 false}
!395 = !{!"../fs/proc/base.c", i32 2571, i32 19}
!396 = !{ptr @.str.137, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../fs/proc/base.c", i32 2584, i32 16}
!398 = !{!"sp"}
!399 = !{i32 1, !"wchar_size", i32 2}
!400 = !{i32 1, !"min_enum_size", i32 4}
!401 = !{i32 8, !"branch-target-enforcement", i32 0}
!402 = !{i32 8, !"sign-return-address", i32 0}
!403 = !{i32 8, !"sign-return-address-all", i32 0}
!404 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!405 = !{i32 7, !"uwtable", i32 1}
!406 = !{i32 7, !"frame-pointer", i32 2}
!407 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!408 = !{i64 2148625026}
!409 = !{i64 2148539490, i64 2148539522, i64 2148539551, i64 2148539585, i64 2148539616, i64 2148539639}
!410 = !{!"branch_weights", i32 2000, i32 1}
!411 = !{i64 2149660749}
!412 = !{i64 2148535495, i64 2148535521, i64 2148535550, i64 2148535584, i64 2148535615, i64 2148535638}
!413 = !{!"auto-init"}
!414 = !{i64 2150590876, i64 2150590901}
!415 = !{i64 2149352762}
!416 = !{i64 2149353028}
!417 = !{i64 2149454373}
!418 = !{i64 2148537025, i64 2148537057, i64 2148537086, i64 2148537120, i64 2148537151, i64 2148537174}
!419 = !{!"branch_weights", i32 1, i32 2000}
!420 = !{i64 2148534914}
!421 = !{i64 1021514, i64 1021539, i64 1021561, i64 1021577, i64 1021589, i64 1021609, i64 1021633, i64 1021649, i64 1021661}
!422 = !{i64 2148535102}
!423 = !{i64 2148623947}
!424 = !{i64 2148538680, i64 2148538712, i64 2148538741, i64 2148538775, i64 2148538806, i64 2148538829}
!425 = !{i64 2148624176}
!426 = !{i64 2150590195, i64 2150590220}
!427 = !{i64 3085750}
!428 = !{i64 3085947}
!429 = !{i64 2150571180}
!430 = !{i64 2155809442, i64 2155809921, i64 2155809479, i64 2155809535, i64 2155809569, i64 2155809593, i64 2155809634, i64 2155809655, i64 2155809683, i64 2155809717}
!431 = !{i64 2148348888, i64 2148348893, i64 2148348906, i64 2148348950, i64 2148348984, i64 2148349005}
!432 = !{i64 2155644267}
!433 = !{i64 2155644478}
!434 = !{i64 2149361321}
!435 = !{i64 2149362357}
