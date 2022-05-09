; ModuleID = '/llk/IR_all_yes/drivers/android/binderfs.c_pt.bc'
source_filename = "../drivers/android/binderfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.28 }
%union.anon.28 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, i32, %struct.rhashtable }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.binder_features = type { i8 }
%struct.binder_transaction_log = type { %struct.atomic_t, i8, [32 x %struct.binder_transaction_log_entry] }
%struct.binder_transaction_log_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8] }
%struct.constant_table = type { ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.77 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.72 = type { %struct.list_head }
%union.anon.73 = type { %struct.hlist_node }
%struct.binderfs_mount_opts = type { i32, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.fs_parse_result = type { i8, %union.anon.69 }
%union.anon.69 = type { i64 }
%struct.binderfs_info = type { ptr, ptr, %struct.kuid_t, %struct.kgid_t, %struct.binderfs_mount_opts, i32, ptr }
%struct.binderfs_device = type { [256 x i8], i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%union.anon.21 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.binder_device = type { %struct.hlist_node, %struct.miscdevice, %struct.binder_context, ptr, %struct.refcount_struct }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.binder_context = type { ptr, %struct.mutex, %struct.kuid_t, ptr }
%struct.file = type { %union.anon.7, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@binder_devices_param = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@binderfs_dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"binder\00", [25 x i8] zeroinitializer }, align 32
@binder_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.1, i32 8, ptr @binderfs_init_fs_context, ptr @binderfs_fs_parameters, ptr null, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@binderfs_fs_parameters = internal constant { [3 x %struct.fs_parameter_spec], [48 x i8] } { [3 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.25, ptr @fs_param_is_u32, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.18, ptr @fs_param_is_enum, i8 1, i16 0, ptr @binderfs_param_stats }, %struct.fs_parameter_spec zeroinitializer], [48 x i8] zeroinitializer }, align 32
@binderfs_fs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @binderfs_fs_context_free, ptr null, ptr @binderfs_fs_context_parse_param, ptr null, ptr @binderfs_fs_context_get_tree, ptr @binderfs_fs_context_reconfigure }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bad value for '%s'\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported parameter '%s'\00", [37 x i8] zeroinitializer }, align 32
@binderfs_super_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @binderfs_evict_inode, ptr @binderfs_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr @binderfs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@binderfs_dir_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @binderfs_unlink, ptr null, ptr null, ptr null, ptr null, ptr @binderfs_rename, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@binderfs_minors_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @binderfs_minors_mutex, i64 52), ptr getelementptr (i8, ptr @binderfs_minors_mutex, i64 52) }, ptr @binderfs_minors_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@binderfs_minors = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"binderfs_minors_mutex.wait_lock\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"binderfs_minors_mutex\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"binderfs_minors.xa_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",max=%d\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",stats=global\00", [18 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@init_ipc_ns = external dso_local global %struct.ipc_namespace, align 4
@binder_ctl_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @binder_ctl_ioctl, ptr @binder_ctl_ioctl, ptr null, i32 0, ptr @nonseekable_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"binder-control\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@binder_fops = external dso_local constant %struct.file_operations, align 4
@binderfs_binder_device_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"&device->context.context_mgr_node_lock\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"features\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"oneway_spam_detection\00", [42 x i8] zeroinitializer }, align 32
@binder_features_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @binder_features_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@binder_features = internal global { %struct.binder_features, [31 x i8] } { %struct.binder_features { i8 1 }, [31 x i8] zeroinitializer }, align 32
@simple_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"binder_logs\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@binder_stats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @binder_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@binder_state_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @binder_state_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"transactions\00", [19 x i8] zeroinitializer }, align 32
@binder_transactions_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @binder_transactions_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"transaction_log\00", [16 x i8] zeroinitializer }, align 32
@binder_transaction_log_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @binder_transaction_log_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@binder_transaction_log = external dso_local global %struct.binder_transaction_log, align 4
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed_transaction_log\00", [41 x i8] zeroinitializer }, align 32
@binder_transaction_log_failed = external dso_local global %struct.binder_transaction_log, align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"proc\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Binderfs stats mode cannot be changed during a remount\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"max\00", [28 x i8] zeroinitializer }, align 32
@binderfs_param_stats = internal constant { [2 x %struct.constant_table], [16 x i8] } { [2 x %struct.constant_table] [%struct.constant_table { ptr @.str.26, i32 1 }, %struct.constant_table zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"global\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 823, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"binderfs_dev\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 47, i32 14 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 833, i32 7 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"binder_fs_type\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 807, i32 32 }
@___asan_gen_.39 = private unnamed_addr constant [23 x i8] c"binderfs_fs_parameters\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 70, i32 39 }
@___asan_gen_.42 = private unnamed_addr constant [24 x i8] c"binderfs_fs_context_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 783, i32 43 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 293, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 304, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"binderfs_super_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 352, i32 38 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"binderfs_minors_mutex\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"binderfs_minors\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 48, i32 8 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 49, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 328, i32 19 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 334, i32 19 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"binder_ctl_fops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 387, i32 37 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 457, i32 30 }
@___asan_gen_.82 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 156, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 175, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 608, i32 40 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 612, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"binder_features_fops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 602, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"binder_features\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 76, i32 31 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 598, i32 16 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 628, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 634, i32 54 }
@___asan_gen_.111 = private unnamed_addr constant [18 x i8] c"binder_stats_fops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 111, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 641, i32 54 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"binder_state_fops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 114, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 648, i32 54 }
@___asan_gen_.123 = private unnamed_addr constant [25 x i8] c"binder_transactions_fops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 117, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 656, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant [28 x i8] c"binder_transaction_log_fops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [37 x i8] c"../drivers/android/binder_internal.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 120, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 665, i32 11 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 673, i32 59 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 316, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 71, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [21 x i8] c"binderfs_param_stats\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 65, i32 36 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [30 x i8] c"../drivers/android/binderfs.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 66, i32 4 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @.str, ptr @binderfs_dev, ptr @.str.1, ptr @binder_fs_type, ptr @binderfs_fs_parameters, ptr @binderfs_fs_context_ops, ptr @.str.2, ptr @.str.3, ptr @binderfs_super_ops, ptr @binderfs_minors_mutex, ptr @binderfs_minors, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @binder_ctl_fops, ptr @.str.9, ptr @.str.12, ptr @binderfs_binder_device_create.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @binder_features_fops, ptr @binder_features, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @binder_stats_fops, ptr @.str.19, ptr @binder_state_fops, ptr @.str.20, ptr @binder_transactions_fops, ptr @.str.21, ptr @binder_transaction_log_fops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @binderfs_param_stats, ptr @.str.26], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binderfs_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binderfs_fs_parameters to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binderfs_fs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binderfs_super_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binderfs_minors_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binderfs_minors to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_ctl_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binderfs_binder_device_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_features_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_features to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_stats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_state_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_transactions_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_transaction_log_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binderfs_param_stats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_binderfs_device(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1819242352, i32 %3)
  %cmp = icmp eq i32 %3, 1819242352
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @binderfs_remove_file(ptr noundef %dentry) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #9
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %5, null
  br i1 %cmp.i.not.i, label %entry.if.end_crit_edge, label %simple_positive.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

simple_positive.exit:                             ; preds = %entry
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i.not, label %simple_positive.exit.if.end_crit_edge, label %if.then

simple_positive.exit.if.end_crit_edge:            ; preds = %simple_positive.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %simple_positive.exit
  %tobool.not.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i, label %if.then.dget.exit_crit_edge, label %if.then.i

if.then.dget.exit_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dget.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #9
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.then.dget.exit_crit_edge
  %call3 = tail call i32 @simple_unlink(ptr noundef %3, ptr noundef %dentry) #9
  tail call void @d_delete(ptr noundef %dentry) #9
  tail call void @dput(ptr noundef %dentry) #9
  br label %if.end

if.end:                                           ; preds = %dget.exit, %simple_positive.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @up_write(ptr noundef %i_rwsem.i) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_unlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @binderfs_create_file(ptr noundef %parent, ptr noundef %name, ptr noundef %fops, ptr noundef %data) local_unnamed_addr #1 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #9
  %call.i = tail call i32 @strlen(ptr noundef %name) #12
  %call1.i = tail call ptr @lookup_one_len(ptr noundef %name, ptr noundef %parent, i32 noundef %call.i) #9
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i:                                         ; preds = %entry
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call1.i, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i12.not.i = icmp eq ptr %3, null
  br i1 %cmp.i12.not.i, label %if.end, label %binderfs_create_dentry.exit.thread

binderfs_create_dentry.exit.thread:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dput(ptr noundef %call1.i) #9
  br label %out

if.end:                                           ; preds = %if.end.i
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %call.i18 = tail call ptr @new_inode(ptr noundef %5) #9
  %tobool.not.i = icmp eq ptr %call.i18, null
  br i1 %tobool.not.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dput(ptr noundef %call1.i) #9
  br label %out

if.end6:                                          ; preds = %if.end
  %call1.i19 = tail call i32 @iunique(ptr noundef %5, i32 noundef 1048579) #9
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call.i18, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1.i19, ptr %i_ino.i, align 8
  %7 = ptrtoint ptr %call.i18 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -32476, ptr %call.i18, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call.i18, i32 0, i32 15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call.i18, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call.i18, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %call.i18) #9
  %8 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #9
  %9 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %10 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  %11 = getelementptr inbounds %struct.inode, ptr %call.i18, i32 0, i32 44
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %fops, ptr %11, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %call.i18, i32 0, i32 54
  %13 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data, ptr %i_private, align 4
  call void @d_instantiate(ptr noundef %call1.i, ptr noundef nonnull %call.i18) #9
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 48
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #9
  %16 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i.i, label %if.end6.out_crit_edge, label %if.end.i.i.i

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i.i.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %d_name.i.i = getelementptr inbounds %struct.dentry, ptr %call1.i, i32 0, i32 4
  %call1.i.i.i = call i32 @fsnotify(i32 noundef 256, ptr noundef %call1.i, i32 noundef 3, ptr noundef %1, ptr noundef %d_name.i.i, ptr noundef null, i32 noundef 0) #9
  br label %out

out:                                              ; preds = %if.end.i.i.i, %if.end6.out_crit_edge, %if.then4, %binderfs_create_dentry.exit.thread, %entry.out_crit_edge
  %dentry.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then4 ], [ inttoptr (i32 -17 to ptr), %binderfs_create_dentry.exit.thread ], [ %call1.i, %if.end6.out_crit_edge ], [ %call1.i, %if.end.i.i.i ], [ %call1.i, %entry.out_crit_edge ]
  call void @up_write(ptr noundef %i_rwsem.i) #9
  ret ptr %dentry.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_binderfs() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @binder_devices_param to i32))
  %0 = load ptr, ptr @binder_devices_param, align 4
  %call = tail call i32 @strcspn(ptr noundef %0, ptr noundef nonnull @.str)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not26 = icmp eq i32 %call, 0
  br i1 %cmp.not26, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %len.028 = phi i32 [ %call6, %if.end.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %name.027 = phi ptr [ %spec.select, %if.end.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %len.028)
  %cmp1 = icmp ugt i32 %len.028, 255
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %name.027, i32 %len.028
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %2)
  %cmp2 = icmp eq i8 %2, 44
  %spec.select.idx = zext i1 %cmp2 to i32
  %spec.select = getelementptr i8, ptr %add.ptr, i32 %spec.select.idx
  %call6 = tail call i32 @strcspn(ptr noundef %spec.select, ptr noundef nonnull @.str)
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %call7 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @binderfs_dev, i32 noundef 0, i32 noundef 1048576, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %for.end
  %call10 = tail call i32 @register_filesystem(ptr noundef nonnull @binder_fs_type) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %3 = load i32, ptr @binderfs_dev, align 4
  tail call void @unregister_chrdev_region(i32 noundef %3, i32 noundef 1048576) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then12 ], [ %call7, %for.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ -7, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iunique(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @binderfs_init_fs_context(ptr nocapture noundef writeonly %fc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1048576, ptr %call7.i.i, align 8
  %stats_mode = getelementptr inbounds %struct.binderfs_mount_opts, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %stats_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %stats_mode, align 4
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %3 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %fs_private, align 4
  %4 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @binderfs_fs_context_ops, ptr %fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @binderfs_fs_context_free(ptr nocapture noundef readonly %fc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @binderfs_fs_context_parse_param(ptr noundef %fc, ptr noundef %param) #1 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #9
  %2 = call ptr @memset(ptr %result, i32 255, i32 16)
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @binderfs_fs_parameters, ptr noundef %param, ptr noundef nonnull %result) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  %4 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %6)
  %cmp1 = icmp ugt i32 %6, 1048576
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %log3 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %log3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log3, align 4
  %9 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %log.i, align 4
  %11 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %param, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %8, ptr noundef %10, i8 noundef zeroext 101, ptr noundef nonnull @.str.2, ptr noundef %12) #9
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %6, ptr %1, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %call7 = call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call7, label %if.end9, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  %14 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %stats_mode = getelementptr inbounds %struct.binderfs_mount_opts, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %stats_mode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %stats_mode, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %log11 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %log11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %log11, align 4
  %20 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %log.i, align 4
  %22 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %param, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %19, ptr noundef %21, i8 noundef zeroext 101, ptr noundef nonnull @.str.3, ptr noundef %23) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end9, %sw.bb6.cleanup_crit_edge, %if.end5, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ -22, %if.then2 ], [ %call.i, %entry.cleanup_crit_edge ], [ -1, %sw.bb6.cleanup_crit_edge ], [ 0, %if.end9 ], [ 0, %if.end5 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @binderfs_fs_context_get_tree(ptr noundef %fc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_nodev(ptr noundef %fc, ptr noundef nonnull @binderfs_fill_super) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @binderfs_fs_context_reconfigure(ptr nocapture noundef readonly %fc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %stats_mode = getelementptr inbounds %struct.binderfs_info, ptr %7, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %stats_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stats_mode, align 4
  %stats_mode1 = getelementptr inbounds %struct.binderfs_mount_opts, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %stats_mode1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stats_mode1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %log = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log2 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %log2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %log2, align 4
  %14 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %log, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %13, ptr noundef %15, i8 noundef zeroext 101, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mount_opts = getelementptr inbounds %struct.binderfs_info, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %18 = ptrtoint ptr %mount_opts to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %mount_opts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_nodev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @binderfs_fill_super(ptr noundef %sb, ptr nocapture noundef readonly %fc) #1 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %device_info = alloca %struct.binderfs_device, align 4
  %tmp33 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %device_info) #9
  %2 = call ptr @memset(ptr %device_info, i32 0, i32 264)
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %3 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4096, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %4 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 12, ptr %s_blocksize_bits, align 4
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 11
  %5 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_iflags, align 8
  %and = and i32 %6, -7
  %or = or i32 %and, 2
  store i32 %or, ptr %s_iflags, align 8
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %7 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1819242352, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %8 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @binderfs_super_ops, ptr %s_op, align 4
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %9 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %s_time_gran, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 32) #13
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 110
  %16 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nsproxy, align 4
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ipc_ns, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.get_ipc_ns.exit_crit_edge, label %if.then.i

if.end.get_ipc_ns.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_ipc_ns.exit

if.then.i:                                        ; preds = %if.end
  %count.i = getelementptr inbounds %struct.ipc_namespace, ptr %19, i32 0, i32 24, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #9, !srcloc !95
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !96

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %21 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_ipc_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !97

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_ipc_ns.exit_crit_edge:        ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_ipc_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #9
  br label %get_ipc_ns.exit

get_ipc_ns.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_ipc_ns.exit_crit_edge, %if.end.get_ipc_ns.exit_crit_edge
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %call7.i.i, align 8
  %root_gid = getelementptr inbounds %struct.binderfs_info, ptr %call7.i.i, i32 0, i32 3
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 53
  %23 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_user_ns, align 8
  %call7 = tail call i32 @make_kgid(ptr noundef %24, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp.i.not = icmp eq i32 %call7, -1
  %spec.store.select = select i1 %cmp.i.not, i32 0, i32 %call7
  %25 = ptrtoint ptr %root_gid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.store.select, ptr %root_gid, align 4
  %root_uid = getelementptr inbounds %struct.binderfs_info, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_user_ns, align 8
  %call16 = tail call i32 @make_kuid(ptr noundef %27, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16)
  %cmp.i122.not = icmp eq i32 %call16, -1
  %spec.store.select136 = select i1 %cmp.i122.not, i32 0, i32 %call16
  %28 = ptrtoint ptr %root_uid to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.store.select136, ptr %root_uid, align 8
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %mount_opts = getelementptr inbounds %struct.binderfs_info, ptr %call7.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %mount_opts to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %mount_opts, align 8
  %stats_mode = getelementptr inbounds %struct.binderfs_mount_opts, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %stats_mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stats_mode, align 4
  %stats_mode28 = getelementptr inbounds %struct.binderfs_info, ptr %call7.i.i, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %stats_mode28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %stats_mode28, align 4
  %call29 = tail call ptr @new_inode(ptr noundef %sb) #9
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %get_ipc_ns.exit.cleanup_crit_edge, label %if.end32

get_ipc_ns.exit.cleanup_crit_edge:                ; preds = %get_ipc_ns.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %get_ipc_ns.exit
  %i_ino = getelementptr inbounds %struct.inode, ptr %call29, i32 0, i32 11
  %35 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %i_ino, align 8
  %36 = getelementptr inbounds %struct.inode, ptr %call29, i32 0, i32 44
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @simple_dir_operations, ptr %36, align 8
  %38 = ptrtoint ptr %call29 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 16877, ptr %call29, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call29, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call29, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call29, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp33) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp33, ptr noundef nonnull %call29) #9
  %39 = call ptr @memcpy(ptr %i_ctime, ptr %tmp33, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp33) #9
  %40 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %41 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %i_op = getelementptr inbounds %struct.inode, ptr %call29, i32 0, i32 7
  %42 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @binderfs_dir_inode_operations, ptr %i_op, align 8
  call void @set_nlink(ptr noundef nonnull %call29, i32 noundef 2) #9
  %call34 = call ptr @d_make_root(ptr noundef nonnull %call29) #9
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %43 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call34, ptr %s_root, align 64
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %if.end32.cleanup_crit_edge, label %if.end38

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %44 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info, align 16
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %cmp.i123 = icmp eq ptr %47, @init_ipc_ns
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 160) #13
  %tobool.not.i124 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i124, label %if.end38.cleanup_crit_edge, label %if.end.i

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end38
  %control_dentry.i = getelementptr inbounds %struct.binderfs_info, ptr %45, i32 0, i32 1
  %49 = ptrtoint ptr %control_dentry.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %control_dentry.i, align 4
  %tobool1.not.i = icmp eq ptr %50, null
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.binderfs_binder_ctl_create.exit_crit_edge

if.end.i.binderfs_binder_ctl_create.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %binderfs_binder_ctl_create.exit

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = call ptr @new_inode(ptr noundef %sb) #9
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end3.i.binderfs_binder_ctl_create.exit_crit_edge, label %if.end7.i

if.end3.i.binderfs_binder_ctl_create.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %binderfs_binder_ctl_create.exit

if.end7.i:                                        ; preds = %if.end3.i
  call void @mutex_lock_nested(ptr noundef nonnull @binderfs_minors_mutex, i32 noundef 0) #9
  %cond.i = select i1 %cmp.i123, i32 1048576, i32 1048572
  %call.i.i = call i32 @ida_alloc_range(ptr noundef nonnull @binderfs_minors, i32 noundef 0, i32 noundef %cond.i, i32 noundef 3264) #9
  call void @mutex_unlock(ptr noundef nonnull @binderfs_minors_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp10.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp10.i, label %if.end7.i.binderfs_binder_ctl_create.exit_crit_edge, label %if.end12.i

if.end7.i.binderfs_binder_ctl_create.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %binderfs_binder_ctl_create.exit

if.end12.i:                                       ; preds = %if.end7.i
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 11
  %51 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %i_ino.i, align 8
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 16
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 15
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %call4.i) #9
  %52 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #9
  %53 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  %54 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %55 = load i32, ptr @binderfs_dev, align 4
  %shr.i = and i32 %55, -1048576
  %or.i = or i32 %shr.i, %call.i.i
  call void @init_special_inode(ptr noundef nonnull %call4.i, i16 noundef zeroext 8576, i32 noundef %or.i) #9
  %56 = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 44
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @binder_ctl_fops, ptr %56, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 2
  %root_uid.i = getelementptr inbounds %struct.binderfs_info, ptr %45, i32 0, i32 2
  %58 = ptrtoint ptr %root_uid.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %root_uid.i, align 4
  %60 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 3
  %root_gid.i = getelementptr inbounds %struct.binderfs_info, ptr %45, i32 0, i32 3
  %61 = ptrtoint ptr %root_gid.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %root_gid.i, align 4
  %63 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %i_gid.i, align 8
  %ref.i = getelementptr inbounds %struct.binder_device, ptr %call7.i.i.i, i32 0, i32 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #9
  %64 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 1, ptr %ref.i, align 4
  %binderfs_inode.i = getelementptr inbounds %struct.binder_device, ptr %call7.i.i.i, i32 0, i32 3
  %65 = ptrtoint ptr %binderfs_inode.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call4.i, ptr %binderfs_inode.i, align 8
  %miscdev.i = getelementptr inbounds %struct.binder_device, ptr %call7.i.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %miscdev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call.i.i, ptr %miscdev.i, align 8
  %call14.i = call ptr @d_alloc_name(ptr noundef nonnull %call34, ptr noundef nonnull @.str.9) #9
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.end12.i.binderfs_binder_ctl_create.exit_crit_edge, label %binderfs_binder_ctl_create.exit.thread

if.end12.i.binderfs_binder_ctl_create.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %binderfs_binder_ctl_create.exit

binderfs_binder_ctl_create.exit.thread:           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_private.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 54
  %67 = ptrtoint ptr %i_private.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i.i, ptr %i_private.i, align 4
  %68 = ptrtoint ptr %control_dentry.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call14.i, ptr %control_dentry.i, align 4
  call void @d_add(ptr noundef nonnull %call14.i, ptr noundef nonnull %call4.i) #9
  br label %if.end42

binderfs_binder_ctl_create.exit:                  ; preds = %if.end12.i.binderfs_binder_ctl_create.exit_crit_edge, %if.end7.i.binderfs_binder_ctl_create.exit_crit_edge, %if.end3.i.binderfs_binder_ctl_create.exit_crit_edge, %if.end.i.binderfs_binder_ctl_create.exit_crit_edge
  %ret.0.i = phi i32 [ -12, %if.end12.i.binderfs_binder_ctl_create.exit_crit_edge ], [ -12, %if.end3.i.binderfs_binder_ctl_create.exit_crit_edge ], [ 0, %if.end.i.binderfs_binder_ctl_create.exit_crit_edge ], [ %call.i.i, %if.end7.i.binderfs_binder_ctl_create.exit_crit_edge ]
  %inode.0.i = phi ptr [ %call4.i, %if.end12.i.binderfs_binder_ctl_create.exit_crit_edge ], [ null, %if.end3.i.binderfs_binder_ctl_create.exit_crit_edge ], [ null, %if.end.i.binderfs_binder_ctl_create.exit_crit_edge ], [ %call4.i, %if.end7.i.binderfs_binder_ctl_create.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  call void @iput(ptr noundef %inode.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool40.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool40.not, label %binderfs_binder_ctl_create.exit.if.end42_crit_edge, label %binderfs_binder_ctl_create.exit.cleanup_crit_edge

binderfs_binder_ctl_create.exit.cleanup_crit_edge: ; preds = %binderfs_binder_ctl_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

binderfs_binder_ctl_create.exit.if.end42_crit_edge: ; preds = %binderfs_binder_ctl_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.end42:                                         ; preds = %binderfs_binder_ctl_create.exit.if.end42_crit_edge, %binderfs_binder_ctl_create.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @binder_devices_param to i32))
  %69 = load ptr, ptr @binder_devices_param, align 4
  %call43 = call i32 @strcspn(ptr noundef %69, ptr noundef nonnull @.str)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp.not137 = icmp eq i32 %call43, 0
  br i1 %cmp.not137, label %if.end42.for.end_crit_edge, label %if.end42.for.body_crit_edge

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  br label %for.body

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end49.for.body_crit_edge, %if.end42.for.body_crit_edge
  %len.0139 = phi i32 [ %call54, %if.end49.for.body_crit_edge ], [ %call43, %if.end42.for.body_crit_edge ]
  %name.0138 = phi ptr [ %spec.select, %if.end49.for.body_crit_edge ], [ %69, %if.end42.for.body_crit_edge ]
  %add = add i32 %len.0139, 1
  %call45 = call i32 @strscpy(ptr noundef nonnull %device_info, ptr noundef %name.0138, i32 noundef %add) #9
  %call46 = call fastcc i32 @binderfs_binder_device_create(ptr noundef nonnull %call29, ptr noundef null, ptr noundef nonnull %device_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end49:                                         ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %name.0138, i32 %len.0139
  %70 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %71)
  %cmp50 = icmp eq i8 %71, 44
  %spec.select.idx = zext i1 %cmp50 to i32
  %spec.select = getelementptr i8, ptr %add.ptr, i32 %spec.select.idx
  %call54 = call i32 @strcspn(ptr noundef %spec.select, ptr noundef nonnull @.str)
  %cmp.not = icmp eq i32 %call54, 0
  br i1 %cmp.not, label %if.end49.for.end_crit_edge, label %if.end49.for.body_crit_edge

if.end49.for.body_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end49.for.end_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end49.for.end_crit_edge, %if.end42.for.end_crit_edge
  %72 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_root, align 64
  %call.i = call fastcc ptr @binderfs_create_dir(ptr noundef %73, ptr noundef nonnull @.str.14) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.end.init_binder_features.exit_crit_edge, label %if.end.i127

for.end.init_binder_features.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_binder_features.exit

if.end.i127:                                      ; preds = %for.end
  %call3.i = call ptr @binderfs_create_file(ptr noundef %call.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @binder_features_fops, ptr noundef nonnull @binder_features) #9
  %cmp.i12.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i12.i, label %if.end.i127.init_binder_features.exit_crit_edge, label %if.end.i127.if.end58_crit_edge

if.end.i127.if.end58_crit_edge:                   ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.end.i127.init_binder_features.exit_crit_edge:  ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_binder_features.exit

init_binder_features.exit:                        ; preds = %if.end.i127.init_binder_features.exit_crit_edge, %for.end.init_binder_features.exit_crit_edge
  %retval.0.i128.in = phi ptr [ %call3.i, %if.end.i127.init_binder_features.exit_crit_edge ], [ %call.i, %for.end.init_binder_features.exit_crit_edge ]
  %retval.0.i128 = ptrtoint ptr %retval.0.i128.in to i32
  %tobool56.not = icmp eq ptr %retval.0.i128.in, null
  br i1 %tobool56.not, label %init_binder_features.exit.if.end58_crit_edge, label %init_binder_features.exit.cleanup_crit_edge

init_binder_features.exit.cleanup_crit_edge:      ; preds = %init_binder_features.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

init_binder_features.exit.if.end58_crit_edge:     ; preds = %init_binder_features.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.end58:                                         ; preds = %init_binder_features.exit.if.end58_crit_edge, %if.end.i127.if.end58_crit_edge
  %74 = ptrtoint ptr %stats_mode28 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %stats_mode28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp61 = icmp eq i32 %75, 1
  br i1 %cmp61, label %if.then63, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = call fastcc i32 @init_binder_logs(ptr noundef %sb)
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end58.cleanup_crit_edge, %init_binder_features.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %binderfs_binder_ctl_create.exit.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %get_ipc_ns.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call64, %if.then63 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %get_ipc_ns.exit.cleanup_crit_edge ], [ -12, %if.end32.cleanup_crit_edge ], [ %ret.0.i, %binderfs_binder_ctl_create.exit.cleanup_crit_edge ], [ %retval.0.i128, %init_binder_features.exit.cleanup_crit_edge ], [ 0, %if.end58.cleanup_crit_edge ], [ -12, %if.end38.cleanup_crit_edge ], [ %call46, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %device_info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @binderfs_binder_device_create(ptr nocapture noundef readonly %ref_inode, ptr noundef %userp, ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ref_inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @binderfs_minors_mutex, i32 noundef 0) #9
  %device_count = getelementptr inbounds %struct.binderfs_info, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %device_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device_count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %device_count, align 4
  %mount_opts = getelementptr inbounds %struct.binderfs_info, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mount_opts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %9)
  %cmp1.not = icmp sgt i32 %inc, %9
  br i1 %cmp1.not, label %entry.if.then3_crit_edge, label %if.end

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end:                                           ; preds = %entry
  %cmp = icmp eq ptr %5, @init_ipc_ns
  %cond = select i1 %cmp, i32 1048576, i32 1048572
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @binderfs_minors, i32 noundef 0, i32 noundef %cond, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end.if.then3_crit_edge, label %if.end5

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %entry.if.then3_crit_edge
  %minor.0130 = phi i32 [ %call.i, %if.end.if.then3_crit_edge ], [ -28, %entry.if.then3_crit_edge ]
  %10 = ptrtoint ptr %device_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device_count, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %device_count, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @binderfs_minors_mutex) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @mutex_unlock(ptr noundef nonnull @binderfs_minors_mutex) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 160) #13
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.err_crit_edge, label %if.end9

if.end5.err_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end9:                                          ; preds = %if.end5
  %call10 = tail call ptr @new_inode(ptr noundef %1) #9
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.err_crit_edge, label %if.end13

if.end9.err_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end13:                                         ; preds = %if.end9
  %add = add nuw i32 %call.i, 3
  %i_ino = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %i_ino, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call10) #9
  %14 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %15 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %16 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %17 = load i32, ptr @binderfs_dev, align 4
  %shr = and i32 %17, -1048576
  %or = or i32 %shr, %call.i
  call void @init_special_inode(ptr noundef nonnull %call10, i16 noundef zeroext 8576, i32 noundef %or) #9
  %18 = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 44
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @binder_fops, ptr %18, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 2
  %root_uid = getelementptr inbounds %struct.binderfs_info, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %root_uid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %root_uid, align 4
  %22 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 3
  %root_gid = getelementptr inbounds %struct.binderfs_info, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %root_gid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %root_gid, align 4
  %25 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %i_gid, align 8
  %arrayidx = getelementptr [256 x i8], ptr %req, i32 0, i32 255
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx, align 1
  %call16 = call i32 @strlen(ptr noundef %req) #14
  %add19 = add i32 %call16, 1
  %call20 = call ptr @kmemdup(ptr noundef %req, i32 noundef %add19, i32 noundef 3264) #9
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end13.err_crit_edge, label %if.end23

if.end13.err_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end23:                                         ; preds = %if.end13
  %ref = getelementptr inbounds %struct.binder_device, ptr %call7.i.i, i32 0, i32 4
  %call.i.i.i119 = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #9
  %27 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %ref, align 4
  %binderfs_inode = getelementptr inbounds %struct.binder_device, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %binderfs_inode to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call10, ptr %binderfs_inode, align 8
  %binder_context_mgr_uid = getelementptr inbounds %struct.binder_device, ptr %call7.i.i, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %binder_context_mgr_uid to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %binder_context_mgr_uid, align 8
  %name25 = getelementptr inbounds %struct.binder_device, ptr %call7.i.i, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %name25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call20, ptr %name25, align 4
  %miscdev = getelementptr inbounds %struct.binder_device, ptr %call7.i.i, i32 0, i32 1
  %name26 = getelementptr inbounds %struct.binder_device, ptr %call7.i.i, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %name26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call20, ptr %name26, align 4
  %32 = ptrtoint ptr %miscdev to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i, ptr %miscdev, align 8
  %context_mgr_node_lock = getelementptr inbounds %struct.binder_device, ptr %call7.i.i, i32 0, i32 2, i32 1
  call void @__mutex_init(ptr noundef %context_mgr_node_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @binderfs_binder_device_create.__key) #9
  %33 = load i32, ptr @binderfs_dev, align 4
  %shr30 = lshr i32 %33, 20
  %major = getelementptr inbounds %struct.binderfs_device, ptr %req, i32 0, i32 1
  %34 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr30, ptr %major, align 4
  %minor31 = getelementptr inbounds %struct.binderfs_device, ptr %req, i32 0, i32 2
  %35 = ptrtoint ptr %minor31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call.i, ptr %minor31, align 4
  %tobool32.not = icmp eq ptr %userp, null
  br i1 %tobool32.not, label %if.end23.if.end36_crit_edge, label %if.then.i

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then.i:                                        ; preds = %if.end23
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.err_crit_edge, label %if.end.i.i

if.then.i.err_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end.i.i:                                       ; preds = %if.then.i
  %36 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %userp, i32 264, i32 -1226833920) #15, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.err_crit_edge

if.end.i.i.err_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %req, i32 noundef 264) #9
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %userp, ptr noundef %req, i32 noundef 264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool34.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool34.not, label %copy_to_user.exit.if.end36_crit_edge, label %copy_to_user.exit.err_crit_edge

copy_to_user.exit.err_crit_edge:                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

copy_to_user.exit.if.end36_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end36:                                         ; preds = %copy_to_user.exit.if.end36_crit_edge, %if.end23.if.end36_crit_edge
  %s_root = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13
  %37 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i) #9
  %call38 = call ptr @lookup_one_len(ptr noundef nonnull %call20, ptr noundef %38, i32 noundef %call16) #9
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i121 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i121) #9
  %43 = ptrtoint ptr %call38 to i32
  br label %err

if.end43:                                         ; preds = %if.end36
  %d_inode.i122 = getelementptr inbounds %struct.dentry, ptr %call38, i32 0, i32 5
  %44 = ptrtoint ptr %d_inode.i122 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_inode.i122, align 8
  %cmp.i123.not = icmp eq ptr %45, null
  br i1 %cmp.i123.not, label %if.end47, label %if.then45

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  call void @dput(ptr noundef %call38) #9
  %46 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i125 = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i125) #9
  br label %err

if.end47:                                         ; preds = %if.end43
  %i_private = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 54
  %48 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i, ptr %i_private, align 4
  call void @d_instantiate(ptr noundef %call38, ptr noundef nonnull %call10) #9
  %49 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 48
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #9
  %53 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i.i.i = icmp eq i32 %54, 0
  br i1 %cmp.i.i.i, label %if.end47.fsnotify_create.exit_crit_edge, label %if.end.i.i.i

if.end47.fsnotify_create.exit_crit_edge:          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsnotify_create.exit

if.end.i.i.i:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %d_name.i.i = getelementptr inbounds %struct.dentry, ptr %call38, i32 0, i32 4
  %call1.i.i.i = call i32 @fsnotify(i32 noundef 256, ptr noundef %call38, i32 noundef 3, ptr noundef %50, ptr noundef %d_name.i.i, ptr noundef null, i32 noundef 0) #9
  br label %fsnotify_create.exit

fsnotify_create.exit:                             ; preds = %if.end.i.i.i, %if.end47.fsnotify_create.exit_crit_edge
  %55 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i127 = getelementptr inbounds %struct.inode, ptr %56, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i127) #9
  br label %cleanup

err:                                              ; preds = %if.then45, %if.then40, %copy_to_user.exit.err_crit_edge, %if.end.i.i.err_crit_edge, %if.then.i.err_crit_edge, %if.end13.err_crit_edge, %if.end9.err_crit_edge, %if.end5.err_crit_edge
  %ret.0 = phi i32 [ %43, %if.then40 ], [ -17, %if.then45 ], [ -12, %if.end13.err_crit_edge ], [ -12, %if.end9.err_crit_edge ], [ -12, %if.end5.err_crit_edge ], [ -14, %copy_to_user.exit.err_crit_edge ], [ -14, %if.then.i.err_crit_edge ], [ -14, %if.end.i.i.err_crit_edge ]
  %name.0 = phi ptr [ %call20, %if.then40 ], [ %call20, %if.then45 ], [ null, %if.end13.err_crit_edge ], [ null, %if.end9.err_crit_edge ], [ null, %if.end5.err_crit_edge ], [ %call20, %copy_to_user.exit.err_crit_edge ], [ %call20, %if.then.i.err_crit_edge ], [ %call20, %if.end.i.i.err_crit_edge ]
  %inode.0 = phi ptr [ %call10, %if.then40 ], [ %call10, %if.then45 ], [ %call10, %if.end13.err_crit_edge ], [ null, %if.end9.err_crit_edge ], [ null, %if.end5.err_crit_edge ], [ %call10, %copy_to_user.exit.err_crit_edge ], [ %call10, %if.then.i.err_crit_edge ], [ %call10, %if.end.i.i.err_crit_edge ]
  call void @kfree(ptr noundef %name.0) #9
  call void @kfree(ptr noundef %call7.i.i) #9
  call void @mutex_lock_nested(ptr noundef nonnull @binderfs_minors_mutex, i32 noundef 0) #9
  %57 = ptrtoint ptr %device_count to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %device_count, align 4
  %dec50 = add i32 %58, -1
  store i32 %dec50, ptr %device_count, align 4
  call void @ida_free(ptr noundef nonnull @binderfs_minors, i32 noundef %call.i) #9
  call void @mutex_unlock(ptr noundef nonnull @binderfs_minors_mutex) #9
  call void @iput(ptr noundef %inode.0) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %fsnotify_create.exit, %if.then3
  %retval.0 = phi i32 [ %minor.0130, %if.then3 ], [ %ret.0, %err ], [ 0, %fsnotify_create.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_binder_logs(ptr nocapture noundef readonly %sb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %0 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_root, align 64
  %call = tail call fastcc ptr @binderfs_create_dir(ptr noundef %1, ptr noundef nonnull @.str.17)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call to i32
  br label %out

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @binderfs_create_file(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef nonnull @binder_stats_fops, ptr noundef null)
  %cmp.i53 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call3 to i32
  br label %out

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @binderfs_create_file(ptr noundef %call, ptr noundef nonnull @.str.19, ptr noundef nonnull @binder_state_fops, ptr noundef null)
  %cmp.i54 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call8 to i32
  br label %out

if.end12:                                         ; preds = %if.end7
  %call13 = tail call ptr @binderfs_create_file(ptr noundef %call, ptr noundef nonnull @.str.20, ptr noundef nonnull @binder_transactions_fops, ptr noundef null)
  %cmp.i55 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call13 to i32
  br label %out

if.end17:                                         ; preds = %if.end12
  %call18 = tail call ptr @binderfs_create_file(ptr noundef %call, ptr noundef nonnull @.str.21, ptr noundef nonnull @binder_transaction_log_fops, ptr noundef nonnull @binder_transaction_log)
  %cmp.i56 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call18 to i32
  br label %out

if.end22:                                         ; preds = %if.end17
  %call23 = tail call ptr @binderfs_create_file(ptr noundef %call, ptr noundef nonnull @.str.22, ptr noundef nonnull @binder_transaction_log_fops, ptr noundef nonnull @binder_transaction_log_failed)
  %cmp.i57 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i57, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call23 to i32
  br label %out

if.end27:                                         ; preds = %if.end22
  %call28 = tail call fastcc ptr @binderfs_create_dir(ptr noundef %call, ptr noundef nonnull @.str.23)
  %cmp.i58 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call28 to i32
  br label %out

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info, align 16
  %proc_log_dir33 = getelementptr inbounds %struct.binderfs_info, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %proc_log_dir33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call28, ptr %proc_log_dir33, align 4
  br label %out

out:                                              ; preds = %if.end32, %if.then30, %if.then25, %if.then20, %if.then15, %if.then10, %if.then5, %if.then
  %ret.0 = phi i32 [ %2, %if.then ], [ %3, %if.then5 ], [ %4, %if.then10 ], [ %5, %if.then15 ], [ %6, %if.then20 ], [ %7, %if.then25 ], [ %8, %if.then30 ], [ 0, %if.end32 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @binderfs_evict_inode(ptr noundef %inode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @clear_inode(ptr noundef %inode) #9
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %8)
  %cmp = icmp ne i16 %8, 8192
  %tobool.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @binderfs_minors_mutex, i32 noundef 0) #9
  %device_count = getelementptr inbounds %struct.binderfs_info, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %device_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device_count, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %device_count, align 4
  %miscdev = getelementptr inbounds %struct.binder_device, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %miscdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %miscdev, align 4
  tail call void @ida_free(ptr noundef nonnull @binderfs_minors, i32 noundef %12) #9
  tail call void @mutex_unlock(ptr noundef nonnull @binderfs_minors_mutex) #9
  %ref = getelementptr inbounds %struct.binder_device, ptr %1, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #9, !srcloc !100
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then3, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !97

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !101
  %name = getelementptr inbounds %struct.binder_device, ptr %1, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %15) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @binderfs_put_super(ptr nocapture noundef %sb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @put_ipc_ns(ptr noundef nonnull %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #9
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %s_fs_info, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @binderfs_show_options(ptr noundef %seq, ptr nocapture noundef readonly %root) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %mount_opts = getelementptr inbounds %struct.binderfs_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mount_opts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048577, i32 %5)
  %cmp = icmp ult i32 %5, 1048577
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, i32 noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stats_mode = getelementptr inbounds %struct.binderfs_info, ptr %3, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %stats_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stats_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cond = icmp eq i32 %7, 1
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.8) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_ipc_ns(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @binderfs_unlink(ptr noundef %dir, ptr noundef %dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %control_dentry.i = getelementptr inbounds %struct.binderfs_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %control_dentry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control_dentry.i, align 4
  %cmp.i = icmp eq ptr %5, %dentry
  br i1 %cmp.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @simple_unlink(ptr noundef %dir, ptr noundef %dentry) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @binderfs_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %control_dentry.i = getelementptr inbounds %struct.binderfs_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %control_dentry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control_dentry.i, align 4
  %cmp.i = icmp eq ptr %5, %old_dentry
  br i1 %cmp.i, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %d_sb.i5 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 9
  %6 = ptrtoint ptr %d_sb.i5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_sb.i5, align 4
  %s_fs_info.i6 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i6, align 16
  %control_dentry.i7 = getelementptr inbounds %struct.binderfs_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %control_dentry.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %control_dentry.i7, align 4
  %cmp.i8 = icmp eq ptr %11, %new_dentry
  br i1 %cmp.i8, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @simple_rename(ptr noundef nonnull @init_user_ns, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #9
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -1, %lor.lhs.false.return_crit_edge ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @binder_ctl_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #1 align 64 {
entry:
  %device_req = alloca %struct.binderfs_device, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %device_req) #9
  %3 = call ptr @memset(ptr %device_req, i32 255, i32 264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1056415231, i32 %cmd)
  %cond = icmp eq i32 %cmd, -1056415231
  br i1 %cond, label %if.then.i, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 264, i32 -1226833920) #15, !srcloc !102
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !97

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %device_req, i32 noundef 264) #9
  %5 = call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !103
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !104
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %device_req, ptr noundef %2, i32 noundef 264) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #9, !srcloc !104
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !97

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 264, %if.then.i.if.then11.i.i_crit_edge ], [ 264, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 264, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %device_req, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %sw.epilog

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = call fastcc i32 @binderfs_binder_device_create(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %device_req)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.then11.i.i, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.sw.epilog_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %device_req) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @binderfs_create_dir(ptr noundef %parent, ptr noundef %name) unnamed_addr #1 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #9
  %call.i = tail call i32 @strlen(ptr noundef %name) #12
  %call1.i = tail call ptr @lookup_one_len(ptr noundef %name, ptr noundef %parent, i32 noundef %call.i) #9
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i:                                         ; preds = %entry
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call1.i, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i12.not.i = icmp eq ptr %3, null
  br i1 %cmp.i12.not.i, label %if.end, label %binderfs_create_dentry.exit.thread

binderfs_create_dentry.exit.thread:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dput(ptr noundef %call1.i) #9
  br label %out

if.end:                                           ; preds = %if.end.i
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %call.i20 = tail call ptr @new_inode(ptr noundef %5) #9
  %tobool.not.i = icmp eq ptr %call.i20, null
  br i1 %tobool.not.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dput(ptr noundef %call1.i) #9
  br label %out

if.end6:                                          ; preds = %if.end
  %call1.i21 = tail call i32 @iunique(ptr noundef %5, i32 noundef 1048579) #9
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call.i20, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1.i21, ptr %i_ino.i, align 8
  %7 = ptrtoint ptr %call.i20 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 16877, ptr %call.i20, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call.i20, i32 0, i32 15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call.i20, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call.i20, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %call.i20) #9
  %8 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #9
  %9 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %10 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  %11 = getelementptr inbounds %struct.inode, ptr %call.i20, i32 0, i32 44
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @simple_dir_operations, ptr %11, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call.i20, i32 0, i32 7
  %13 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @simple_dir_inode_operations, ptr %i_op, align 8
  call void @set_nlink(ptr noundef nonnull %call.i20, i32 noundef 2) #9
  call void @d_instantiate(ptr noundef %call1.i, ptr noundef nonnull %call.i20) #9
  call void @inc_nlink(ptr noundef %1) #9
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 48
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #9
  %16 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i.i, label %if.end6.out_crit_edge, label %if.end.i.i.i

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i.i.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %d_name.i.i = getelementptr inbounds %struct.dentry, ptr %call1.i, i32 0, i32 4
  %call1.i.i.i = call i32 @fsnotify(i32 noundef 1073742080, ptr noundef %call1.i, i32 noundef 3, ptr noundef %1, ptr noundef %d_name.i.i, ptr noundef null, i32 noundef 0) #9
  br label %out

out:                                              ; preds = %if.end.i.i.i, %if.end6.out_crit_edge, %if.then4, %binderfs_create_dentry.exit.thread, %entry.out_crit_edge
  %dentry.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then4 ], [ inttoptr (i32 -17 to ptr), %binderfs_create_dentry.exit.thread ], [ %call1.i, %if.end6.out_crit_edge ], [ %call1.i, %if.end.i.i.i ], [ %call1.i, %entry.out_crit_edge ]
  call void @up_write(ptr noundef %i_rwsem.i) #9
  ret ptr %dentry.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @binder_features_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @binder_features_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @binder_features_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1, !range !106
  %4 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.16, i32 noundef %4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @binder_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @binder_stats_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @binder_stats_show(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @binder_state_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @binder_state_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @binder_state_show(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @binder_transactions_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @binder_transactions_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @binder_transactions_show(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @binder_transaction_log_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @binder_transaction_log_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @binder_transaction_log_show(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_enum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/android/binderfs.c", i32 823, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/android/binderfs.c", i32 833, i32 7}
!4 = !{ptr @binderfs_dev, !5, !"binderfs_dev", i1 false, i1 false}
!5 = !{!"../drivers/android/binderfs.c", i32 47, i32 14}
!6 = !{ptr @binder_fs_type, !7, !"binder_fs_type", i1 false, i1 false}
!7 = !{!"../drivers/android/binderfs.c", i32 807, i32 32}
!8 = !{ptr @binderfs_fs_context_ops, !9, !"binderfs_fs_context_ops", i1 false, i1 false}
!9 = !{!"../drivers/android/binderfs.c", i32 783, i32 43}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/android/binderfs.c", i32 293, i32 11}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/android/binderfs.c", i32 304, i32 10}
!14 = !{ptr @binderfs_super_ops, !15, !"binderfs_super_ops", i1 false, i1 false}
!15 = !{!"../drivers/android/binderfs.c", i32 352, i32 38}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/android/binderfs.c", i32 48, i32 8}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @binderfs_minors_mutex, !17, !"binderfs_minors_mutex", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/android/binderfs.c", i32 49, i32 8}
!22 = !{ptr @binderfs_minors, !21, !"binderfs_minors", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/android/binderfs.c", i32 328, i32 19}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/android/binderfs.c", i32 334, i32 19}
!27 = !{ptr @binderfs_dir_inode_operations, !28, !"binderfs_dir_inode_operations", i1 false, i1 false}
!28 = !{!"../drivers/android/binderfs.c", i32 474, i32 38}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/android/binderfs.c", i32 457, i32 30}
!31 = !{ptr @binder_ctl_fops, !32, !"binder_ctl_fops", i1 false, i1 false}
!32 = !{!"../drivers/android/binderfs.c", i32 387, i32 37}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!35 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!40 = !{ptr @binderfs_binder_device_create.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/android/binderfs.c", i32 175, i32 2}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/android/binderfs.c", i32 608, i32 40}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/android/binderfs.c", i32 612, i32 37}
!47 = !{ptr @binder_features_fops, !48, !"binder_features_fops", i1 false, i1 false}
!48 = !{!"../drivers/android/binderfs.c", i32 602, i32 1}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/android/binderfs.c", i32 598, i32 16}
!51 = !{ptr @binder_features, !52, !"binder_features", i1 false, i1 false}
!52 = !{!"../drivers/android/binderfs.c", i32 76, i32 31}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/android/binderfs.c", i32 628, i32 10}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/android/binderfs.c", i32 634, i32 54}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/android/binderfs.c", i32 641, i32 54}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/android/binderfs.c", i32 648, i32 54}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/android/binderfs.c", i32 656, i32 11}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/android/binderfs.c", i32 665, i32 11}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/android/binderfs.c", i32 673, i32 59}
!67 = !{ptr @binder_stats_fops, !68, !"binder_stats_fops", i1 false, i1 false}
!68 = !{!"../drivers/android/binder_internal.h", i32 111, i32 1}
!69 = !{ptr @binder_state_fops, !70, !"binder_state_fops", i1 false, i1 false}
!70 = !{!"../drivers/android/binder_internal.h", i32 114, i32 1}
!71 = !{ptr @binder_transactions_fops, !72, !"binder_transactions_fops", i1 false, i1 false}
!72 = !{!"../drivers/android/binder_internal.h", i32 117, i32 1}
!73 = !{ptr @binder_transaction_log_fops, !74, !"binder_transaction_log_fops", i1 false, i1 false}
!74 = !{!"../drivers/android/binder_internal.h", i32 120, i32 1}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/android/binderfs.c", i32 316, i32 10}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/android/binderfs.c", i32 71, i32 2}
!79 = !{ptr @binderfs_fs_parameters, !80, !"binderfs_fs_parameters", i1 false, i1 false}
!80 = !{!"../drivers/android/binderfs.c", i32 70, i32 39}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/android/binderfs.c", i32 66, i32 4}
!83 = !{ptr @binderfs_param_stats, !84, !"binderfs_param_stats", i1 false, i1 false}
!84 = !{!"../drivers/android/binderfs.c", i32 65, i32 36}
!85 = !{!"sp"}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2148674061, i64 2148674093, i64 2148674122, i64 2148674156, i64 2148674187, i64 2148674210}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 2152184153, i64 2152184178}
!99 = !{i64 2148762086}
!100 = !{i64 2148676526, i64 2148676558, i64 2148676587, i64 2148676621, i64 2148676652, i64 2148676675}
!101 = !{i64 2150381637}
!102 = !{i64 2152183472, i64 2152183497}
!103 = !{i64 4679027}
!104 = !{i64 4679224}
!105 = !{i64 2152164457}
!106 = !{i8 0, i8 2}
