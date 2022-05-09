; ModuleID = '/llk/IR_all_yes/fs/ubifs/dir.c_pt.bc'
source_filename = "../fs/ubifs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { [5 x %struct.uid_gid_extent] }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.84, i32, i32, i32, [64 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.84 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.fscrypt_name = type { ptr, %struct.fscrypt_str, i32, i32, %struct.fscrypt_str, i8 }
%struct.fscrypt_str = type { ptr, i32 }
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
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_dent_node = type { %struct.ubifs_ch, [16 x i8], i64, i8, i8, i16, i32, [0 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_budget_req = type { i24, i16, i32, i32, i32 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fscrypt_prepare_new_inode failed: %i\00", [59 x i8] zeroinitializer }, align 32
@ubifs_file_address_operations = external dso_local constant %struct.address_space_operations, align 4
@ubifs_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ubifs_file_operations = external dso_local constant %struct.file_operations, align 4
@ubifs_dir_inode_operations = dso_local constant %struct.inode_operations { ptr @ubifs_lookup, ptr null, ptr null, ptr null, ptr null, ptr @ubifs_create, ptr @ubifs_link, ptr @ubifs_unlink, ptr @ubifs_symlink, ptr @ubifs_mkdir, ptr @ubifs_rmdir, ptr @ubifs_mknod, ptr @ubifs_rename, ptr @ubifs_setattr, ptr @ubifs_getattr, ptr @ubifs_listxattr, ptr null, ptr @ubifs_update_time, ptr null, ptr @ubifs_tmpfile, ptr null, ptr @ubifs_fileattr_set, ptr @ubifs_fileattr_get, [36 x i8] undef }, align 128
@ubifs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ubifs_readdir, ptr null, ptr @ubifs_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @ubifs_dir_release, ptr @ubifs_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ubifs_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"out of inode numbers\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"running out of inode numbers (current %lu, max %u)\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fscrypt_set_context failed: %i\00", [33 x i8] zeroinitializer }, align 32
@ubifs_lookup.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ubifs_lookup\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ubifs/dir.c\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UBIFS DBG gen (pid %d): '%pd' in dir ino %lu\0A\00", [50 x i8] zeroinitializer }, align 32
@ubifs_lookup.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UBIFS DBG gen (pid %d): not found\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dead directory entry '%pd', error %d\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Inconsistent encryption contexts: %lu/%lu\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"!(hash & ~UBIFS_S_KEY_HASH_MASK)\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ubifs/key.h\00", [17 x i8] zeroinitializer }, align 32
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@ubifs_create.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.13, ptr @.str.6, ptr @.str.14, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ubifs_create\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"UBIFS DBG gen (pid %d): dent '%pd', mode %#hx in dir ino %lu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot create regular file, error %d\00", [59 x i8] zeroinitializer }, align 32
@ubifs_link.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.16, ptr @.str.6, ptr @.str.17, i8 0, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ubifs_link\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"UBIFS DBG gen (pid %d): dent '%pd' to ino %lu (nlink %d) in dir ino %lu\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"inode_is_locked(dir)\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"inode_is_locked(inode)\00", [41 x i8] zeroinitializer }, align 32
@ubifs_unlink.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.20, ptr @.str.6, ptr @.str.21, i8 0, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ubifs_unlink\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"UBIFS DBG gen (pid %d): dent '%pd' from ino %lu (nlink %d) in dir ino %lu\0A\00", [53 x i8] zeroinitializer }, align 32
@ubifs_symlink.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.22, ptr @.str.6, ptr @.str.23, i8 1, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ubifs_symlink\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"UBIFS DBG gen (pid %d): dent '%pd', target '%s' in dir ino %lu\0A\00", [32 x i8] zeroinitializer }, align 32
@ubifs_mkdir.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.24, ptr @.str.6, ptr @.str.14, i8 0, i8 -16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ubifs_mkdir\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot create directory, error %d\00", [62 x i8] zeroinitializer }, align 32
@__const.ubifs_rmdir.req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 4, i8 0, i8 2, i8 -1, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@ubifs_rmdir.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.26, ptr @.str.6, ptr @.str.27, i8 0, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ubifs_rmdir\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"UBIFS DBG gen (pid %d): directory '%pd', ino %lu in dir ino %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@__const.ubifs_mknod.req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 10, i8 0, i8 1, i8 -1, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@ubifs_mknod.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.28, ptr @.str.6, ptr @.str.29, i8 1, i8 3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ubifs_mknod\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UBIFS DBG gen (pid %d): dent '%pd' in dir ino %lu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"inode_is_locked(old_dir)\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"inode_is_locked(new_dir)\00", [39 x i8] zeroinitializer }, align 32
@__const.ubifs_xrename.req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 12, i8 0, i8 2, i8 -1, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fst_inode && snd_inode\00", [41 x i8] zeroinitializer }, align 32
@__const.do_rename.req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 12, i8 0, i8 3, i8 -1, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@do_rename.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.33, ptr @.str.6, ptr @.str.34, i8 1, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"do_rename\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"UBIFS DBG gen (pid %d): dent '%pd' ino %lu in dir ino %lu to dent '%pd' in dir ino %lu flags 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"inode_is_locked(new_inode)\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"!whiteout_ui->dirty\00", [44 x i8] zeroinitializer }, align 32
@__const.do_tmpfile.req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 10, i8 0, i8 0, i8 -1, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@__const.do_tmpfile.ino_req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 0, i8 0, i8 1, i8 -1, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@do_tmpfile.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.37, ptr @.str.6, ptr @.str.14, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"do_tmpfile\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"inode->i_op == &ubifs_file_inode_operations\00", [52 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ui->dirty\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot create temporary file, error %d\00", [57 x i8] zeroinitializer }, align 32
@ubifs_readdir.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.41, ptr @.str.6, ptr @.str.42, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ubifs_readdir\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"UBIFS DBG gen (pid %d): dir ino %lu, f_pos %#llx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"!file->private_data\00", [44 x i8] zeroinitializer }, align 32
@ubifs_readdir.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.41, ptr @.str.6, ptr @.str.44, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG gen (pid %d): ino %llu, new f_pos %#x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"le64_to_cpu(dent->ch.sqnum) > ubifs_inode(dir)->creat_sqnum\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot find next direntry, error %d\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@switch.table.ubifs_readdir = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 8, i32 4, i32 10, i32 6, i32 2, i32 1, i32 12], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 104, i32 16 }
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"ubifs_dir_operations\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1651, i32 30 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 145, i32 17 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 149, i32 17 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 167, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 203, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 235, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 253, i32 16 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 262, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"../fs/ubifs/key.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 169, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 299, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 348, i32 15 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 706, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 709, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 710, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 781, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1120, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 960, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 992, i32 16 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 885, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1036, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1564, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1565, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1511, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1280, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1285, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1347, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 368, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 397, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 414, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 440, i32 15 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 508, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 549, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 587, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 590, i32 3 }
@___asan_gen_.198 = private constant [18 x i8] c"../fs/ubifs/dir.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 640, i32 16 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 3566, i32 25 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 3571, i32 25 }
@___asan_gen_.206 = private unnamed_addr constant [27 x i8] c"switch.table.ubifs_readdir\00", align 1
@llvm.compiler.used = appending global [51 x ptr] [ptr @.str, ptr @ubifs_dir_operations, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @switch.table.ubifs_readdir], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ubifs_readdir to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_new_inode(ptr noundef %c, ptr noundef %dir, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %encrypted = alloca i8, align 1
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %encrypted) #9
  %0 = ptrtoint ptr %encrypted to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %encrypted, align 1
  %1 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %c, align 8
  %call = tail call ptr @new_inode(ptr noundef %2) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_flags, align 4
  %or = or i32 %4, 128
  store i32 %or, ptr %i_flags, align 4
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call, ptr noundef %dir, i16 noundef zeroext %mode) #9
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call) #9
  %5 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %6 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %7 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %nrpages to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %nrpages, align 4
  %call3 = call i32 @fscrypt_prepare_new_inode(ptr noundef %dir, ptr noundef nonnull %call, ptr noundef nonnull %encrypted) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str, i32 noundef %call3) #9
  br label %out_iput

if.end6:                                          ; preds = %if.end
  %11 = and i16 %mode, -4096
  %and = zext i16 %11 to i32
  %12 = add nsw i32 %and, -4096
  %13 = lshr exact i32 %12, 12
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.body [
    i32 7, label %sw.bb
    i32 3, label %sw.bb8
    i32 9, label %sw.bb10
    i32 11, label %if.end6.sw.bb12_crit_edge
    i32 0, label %if.end6.sw.bb12_crit_edge104
    i32 5, label %if.end6.sw.bb12_crit_edge105
    i32 1, label %if.end6.sw.bb12_crit_edge106
  ]

if.end6.sw.bb12_crit_edge106:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

if.end6.sw.bb12_crit_edge105:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

if.end6.sw.bb12_crit_edge104:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

if.end6.sw.bb12_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ubifs_file_address_operations, ptr %a_ops, align 4
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %18 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ubifs_file_inode_operations, ptr %i_op, align 8
  %19 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ubifs_file_operations, ptr %19, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %i_op9 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %21 = ptrtoint ptr %i_op9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ubifs_dir_inode_operations, ptr %i_op9, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ubifs_dir_operations, ptr %22, align 8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %call, i32 0, i32 11
  %24 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 160, ptr %ui_size, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %25 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 160, ptr %i_size, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %i_op11 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %26 = ptrtoint ptr %i_op11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ubifs_symlink_inode_operations, ptr %i_op11, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end6.sw.bb12_crit_edge, %if.end6.sw.bb12_crit_edge104, %if.end6.sw.bb12_crit_edge105, %if.end6.sw.bb12_crit_edge106
  %i_op13 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %27 = ptrtoint ptr %i_op13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ubifs_file_inode_operations, ptr %i_op13, align 8
  br label %sw.epilog

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 129, 0\0A.popsection", ""() #9, !srcloc !113
  unreachable

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb
  %28 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dir, align 8
  %30 = and i16 %29, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %30)
  %cmp.i = icmp eq i16 %30, 16384
  br i1 %cmp.i, label %if.end.i, label %sw.epilog.inherit_flags.exit_crit_edge

sw.epilog.inherit_flags.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %inherit_flags.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %flags2.i = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 12
  %31 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %11)
  %cmp6.i = icmp eq i16 %11, 16384
  %spec.select.v.i = select i1 %cmp6.i, i32 19, i32 3
  %spec.select.i = and i32 %32, %spec.select.v.i
  br label %inherit_flags.exit

inherit_flags.exit:                               ; preds = %if.end.i, %sw.epilog.inherit_flags.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end.i ], [ 0, %sw.epilog.inherit_flags.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.ubifs_inode, ptr %call, i32 0, i32 12
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i, ptr %flags, align 8
  call void @ubifs_set_inode_flags(ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %11)
  %cmp = icmp eq i16 %11, -32768
  br i1 %cmp, label %if.then21, label %if.else

if.then21:                                        ; preds = %inherit_flags.exit
  call void @__sanitizer_cov_trace_pc() #11
  %default_compr = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %34 = ptrtoint ptr %default_compr to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load = load i16, ptr %default_compr, align 8
  %compr_type = getelementptr inbounds %struct.ubifs_inode, ptr %call, i32 0, i32 6
  %35 = ptrtoint ptr %compr_type to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load22 = load i8, ptr %compr_type, align 4
  %sh.diff = lshr i16 %bf.load, 5
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, 24
  %bf.clear23 = and i8 %bf.load22, -25
  %bf.set = or i8 %bf.shl, %bf.clear23
  store i8 %bf.set, ptr %compr_type, align 4
  br label %if.end28

if.else:                                          ; preds = %inherit_flags.exit
  call void @__sanitizer_cov_trace_pc() #11
  %compr_type24 = getelementptr inbounds %struct.ubifs_inode, ptr %call, i32 0, i32 6
  %36 = ptrtoint ptr %compr_type24 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load25 = load i8, ptr %compr_type24, align 4
  %bf.clear26 = and i8 %bf.load25, -25
  store i8 %bf.clear26, ptr %compr_type24, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then21
  %synced_i_size = getelementptr inbounds %struct.ubifs_inode, ptr %call, i32 0, i32 10
  %37 = ptrtoint ptr %synced_i_size to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %synced_i_size, align 8
  %cnt_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %cnt_lock) #9
  %highest_inum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 2
  %38 = ptrtoint ptr %highest_inum to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %highest_inum, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048577, i32 %39)
  %cmp29 = icmp ugt i32 %39, -1048577
  br i1 %cmp29, label %if.then31, label %if.end28.if.end39_crit_edge

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -257, i32 %39)
  %cmp33 = icmp ugt i32 %39, -257
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %cnt_lock) #9
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.1) #9
  br label %out_iput

if.end37:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.2, i32 noundef %39, i32 noundef -256) #9
  br label %if.end39

if.end39:                                         ; preds = %if.end37, %if.end28.if.end39_crit_edge
  %40 = ptrtoint ptr %highest_inum to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %highest_inum, align 8
  %inc = add i32 %41, 1
  store i32 %inc, ptr %highest_inum, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %42 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %inc, ptr %i_ino, align 8
  %max_sqnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 3
  %43 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %max_sqnum, align 8
  %inc41 = add i64 %44, 1
  store i64 %inc41, ptr %max_sqnum, align 8
  %creat_sqnum = getelementptr inbounds %struct.ubifs_inode, ptr %call, i32 0, i32 1
  %45 = ptrtoint ptr %creat_sqnum to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %inc41, ptr %creat_sqnum, align 8
  call void @_raw_spin_unlock(ptr noundef %cnt_lock) #9
  %46 = ptrtoint ptr %encrypted to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %encrypted, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool43.not = icmp eq i8 %47, 0
  br i1 %tobool43.not, label %if.end39.cleanup_crit_edge, label %if.then44

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then44:                                        ; preds = %if.end39
  %call45 = call i32 @fscrypt_set_context(ptr noundef nonnull %call, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then44.cleanup_crit_edge, label %if.then47

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.3, i32 noundef %call45) #9
  br label %out_iput

out_iput:                                         ; preds = %if.then47, %if.then35, %if.then5
  %err.0 = phi i32 [ %call3, %if.then5 ], [ -22, %if.then35 ], [ %call45, %if.then47 ]
  call void @make_bad_inode(ptr noundef nonnull %call) #9
  call void @iput(ptr noundef nonnull %call) #9
  %48 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out_iput, %if.then44.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %48, %out_iput ], [ %call, %if.then44.cleanup_crit_edge ], [ %call, %if.end39.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %encrypted) #9
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_prepare_new_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_set_inode_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_set_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_check_dir_empty(ptr nocapture noundef readonly %dir) local_unnamed_addr #0 align 64 {
entry:
  %nm = alloca %struct.fscrypt_name, align 4
  %key = alloca %union.ubifs_key, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #9
  %4 = call ptr @memset(ptr %nm, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  %7 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %key, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1073741824, ptr %arrayidx1.i, align 4
  %call = call ptr @ubifs_tnc_next_ent(ptr noundef %3, ptr noundef nonnull %key, ptr noundef nonnull %nm) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call to i32
  %cmp = icmp eq ptr %call, inttoptr (i32 -2 to ptr)
  %spec.store.select = select i1 %cmp, i32 0, i32 %9
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef %call) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %spec.store.select, %if.then ], [ -39, %if.else ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #9
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_next_ent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_getattr(ptr nocapture readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 %request_mask, i32 %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ui_mutex, i32 noundef 0) #9
  %flags2 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags2, align 8
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %attributes = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %6 = ptrtoint ptr %attributes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %attributes, align 8
  %or = or i64 %7, 32
  store i64 %or, ptr %attributes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags2, align 8
  %and4 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %attributes7 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %10 = ptrtoint ptr %attributes7 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %attributes7, align 8
  %or8 = or i64 %11, 4
  store i64 %or8, ptr %attributes7, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %12 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags2, align 8
  %and11 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end16_crit_edge, label %if.then13

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %attributes14 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %14 = ptrtoint ptr %attributes14 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %attributes14, align 8
  %or15 = or i64 %15, 2048
  store i64 %or15, ptr %attributes14, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end9.if.end16_crit_edge
  %16 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags2, align 8
  %and18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end23_crit_edge, label %if.then20

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %attributes21 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %18 = ptrtoint ptr %attributes21 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %attributes21, align 8
  %or22 = or i64 %19, 16
  store i64 %or22, ptr %attributes21, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end16.if.end23_crit_edge
  %attributes_mask = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 5
  %20 = ptrtoint ptr %attributes_mask to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %attributes_mask, align 8
  %or24 = or i64 %21, 2100
  store i64 %or24, ptr %attributes_mask, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #9
  %blksize = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %22 = ptrtoint ptr %blksize to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4096, ptr %blksize, align 4
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 11
  %23 = ptrtoint ptr %ui_size to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ui_size, align 8
  %size25 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %25 = ptrtoint ptr %size25 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %size25, align 8
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %3, align 8
  %28 = and i16 %27, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %28)
  %cmp = icmp eq i16 %28, -32768
  br i1 %cmp, label %if.then28, label %if.end23.if.end34_crit_edge

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %xattr_size = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 3
  %29 = ptrtoint ptr %xattr_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xattr_size, align 8
  %conv29 = zext i32 %30 to i64
  %add = add i64 %24, 4095
  %add31 = add i64 %add, %conv29
  %and32 = ashr i64 %add31, 9
  %shr = and i64 %and32, -8
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.end23.if.end34_crit_edge
  %.sink = phi i64 [ %shr, %if.then28 ], [ 0, %if.end23.if.end34_crit_edge ]
  %31 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 16
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %.sink, ptr %31, align 8
  tail call void @mutex_unlock(ptr noundef %ui_mutex) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ubifs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  %key = alloca %union.ubifs_key, align 8
  %nm = alloca %struct.fscrypt_name, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #9
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %key, align 8, !annotation !115
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #9
  %5 = call ptr @memset(ptr %nm, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_lookup.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_lookup, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !103) #9
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_lookup.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.7, i32 noundef %11, ptr noundef %dentry, i32 noundef %13) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %14 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_flags.i, align 4
  %and.i138 = and i32 %15, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool.not.i = icmp eq i32 %and.i138, 0
  br i1 %tobool.not.i, label %fscrypt_prepare_lookup.exit.thread, label %fscrypt_prepare_lookup.exit

fscrypt_prepare_lookup.exit.thread:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = getelementptr inbounds i8, ptr %nm, i32 4
  %17 = getelementptr inbounds i8, ptr %nm, i32 12
  %18 = call ptr @memset(ptr %17, i32 0, i32 20)
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %19 = ptrtoint ptr %nm to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %d_name.i, ptr %nm, align 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name.i, align 8
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %16, align 4
  %23 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %d_name.i, align 8
  %len5.i = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %len5.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %len5.i, align 4
  tail call void @generic_set_encrypted_ci_d_ops(ptr noundef %dentry) #9
  br label %if.end11

fscrypt_prepare_lookup.exit:                      ; preds = %do.end
  %call.i = call i32 @__fscrypt_prepare_lookup(ptr noundef %dir, ptr noundef %dentry, ptr noundef nonnull %nm) #9
  call void @generic_set_encrypted_ci_d_ops(ptr noundef %dentry) #9
  %26 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call.i, label %if.then9 [
    i32 -2, label %if.then5
    i32 0, label %fscrypt_prepare_lookup.exit.if.end11_crit_edge
  ]

fscrypt_prepare_lookup.exit.if.end11_crit_edge:   ; preds = %fscrypt_prepare_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then5:                                         ; preds = %fscrypt_prepare_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = call ptr @d_splice_alias(ptr noundef null, ptr noundef %dentry) #9
  br label %cleanup

if.then9:                                         ; preds = %fscrypt_prepare_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  %27 = inttoptr i32 %call.i to ptr
  br label %cleanup

if.end11:                                         ; preds = %fscrypt_prepare_lookup.exit.if.end11_crit_edge, %fscrypt_prepare_lookup.exit.thread
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %29)
  %cmp12 = icmp ugt i32 %29, 255
  br i1 %cmp12, label %if.end11.done_crit_edge, label %if.end15

if.end11.done_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end15:                                         ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3136, i32 noundef 312) #12
  %tobool17.not = icmp eq ptr %call7.i, null
  br i1 %tobool17.not, label %if.end15.done_crit_edge, label %if.end20

if.end15.done_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end20:                                         ; preds = %if.end15
  %31 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %disk_name, align 4
  %cmp22 = icmp eq ptr %32, null
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  %hash = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 2
  %33 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %34)
  %tobool24.not = icmp ult i32 %34, 536870912
  br i1 %tobool24.not, label %dent_key_init_hash.exit, label %if.then23.done_crit_edge

if.then23.done_crit_edge:                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

dent_key_init_hash.exit:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino27 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %35 = ptrtoint ptr %i_ino27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_ino27, align 8
  %37 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %key, align 8
  %or.i = or i32 %34, 1073741824
  %arrayidx5.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i, ptr %arrayidx5.i, align 4
  %minor_hash = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 3
  %39 = ptrtoint ptr %minor_hash to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %minor_hash, align 4
  %call29 = call i32 @ubifs_tnc_lookup_dh(ptr noundef %4, ptr noundef nonnull %key, ptr noundef nonnull %call7.i, i32 noundef %40) #9
  br label %if.end32

if.else:                                          ; preds = %if.end20
  %i_ino30 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %41 = ptrtoint ptr %i_ino30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_ino30, align 8
  %key_hash.i = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 66
  %43 = ptrtoint ptr %key_hash.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %key_hash.i, align 4
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %call.i143 = call i32 %44(ptr noundef nonnull %32, i32 noundef %46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %call.i143)
  %tobool.not.i144 = icmp ult i32 %call.i143, 536870912
  br i1 %tobool.not.i144, label %if.else.dent_key_init.exit_crit_edge, label %if.then.i145, !prof !117

if.else.dent_key_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %dent_key_init.exit

if.then.i145:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 152) #9
  br label %dent_key_init.exit

dent_key_init.exit:                               ; preds = %if.then.i145, %if.else.dent_key_init.exit_crit_edge
  %47 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %42, ptr %key, align 8
  %or.i146 = or i32 %call.i143, 1073741824
  %arrayidx6.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i146, ptr %arrayidx6.i, align 4
  %call31 = call i32 @ubifs_tnc_lookup_nm(ptr noundef %4, ptr noundef nonnull %key, ptr noundef nonnull %call7.i, ptr noundef nonnull %nm) #9
  br label %if.end32

if.end32:                                         ; preds = %dent_key_init.exit, %dent_key_init_hash.exit
  %err.0 = phi i32 [ %call29, %dent_key_init_hash.exit ], [ %call31, %dent_key_init.exit ]
  %49 = zext i32 %err.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %err.0, label %if.else56 [
    i32 0, label %if.end59
    i32 -2, label %do.body37
  ]

do.body37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_lookup.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_lookup, %if.then49)) #9
          to label %done [label %if.then49], !srcloc !116

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %50 = call i32 @llvm.read_register.i32(metadata !103) #9
  %and.i147 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i147 to ptr
  %task51 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task51, align 8
  %pid52 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 68
  %54 = ptrtoint ptr %pid52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pid52, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_lookup.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.8, i32 noundef %55) #9
  br label %done

if.else56:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %56 = inttoptr i32 %err.0 to ptr
  br label %done

if.end59:                                         ; preds = %if.end32
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i = load i8, ptr @ubifs_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %dbg_is_chk_gen.exit.i, label %if.end59.if.end.i150_crit_edge

if.end59.if.end.i150_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i150

dbg_is_chk_gen.exit.i:                            ; preds = %if.end59
  %dbg.i.i = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 194
  %57 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dbg.i.i, align 4
  %chk_gen.i.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %58, i32 0, i32 19
  %59 = ptrtoint ptr %chk_gen.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load1.i.i = load i8, ptr %chk_gen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i.i)
  %tobool.not.i148 = icmp sgt i8 %bf.load1.i.i, -1
  br i1 %tobool.not.i148, label %dbg_is_chk_gen.exit.i.if.end64_crit_edge, label %dbg_is_chk_gen.exit.i.if.end.i150_crit_edge

dbg_is_chk_gen.exit.i.if.end.i150_crit_edge:      ; preds = %dbg_is_chk_gen.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i150

dbg_is_chk_gen.exit.i.if.end64_crit_edge:         ; preds = %dbg_is_chk_gen.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.end.i150:                                      ; preds = %dbg_is_chk_gen.exit.i.if.end.i150_crit_edge, %if.end59.if.end.i150_crit_edge
  %nlen.i = getelementptr inbounds %struct.ubifs_dent_node, ptr %call7.i, i32 0, i32 5
  %60 = ptrtoint ptr %nlen.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %nlen.i, align 2
  %62 = call i16 @llvm.bswap.i16(i16 %61) #9
  %conv.i = zext i16 %62 to i32
  %63 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %64, %conv.i
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i150.done_crit_edge

if.end.i150.done_crit_edge:                       ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end3.i:                                        ; preds = %if.end.i150
  %name.i152 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call7.i, i32 0, i32 7
  %65 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %disk_name, align 4
  %bcmp.i = call i32 @bcmp(ptr %name.i152, ptr %66, i32 %conv.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool9.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool9.not.i, label %if.end3.i.if.end64_crit_edge, label %if.end3.i.done_crit_edge

if.end3.i.done_crit_edge:                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end3.i.if.end64_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.end64:                                         ; preds = %if.end3.i.if.end64_crit_edge, %dbg_is_chk_gen.exit.i.if.end64_crit_edge
  %67 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i_sb, align 4
  %inum = getelementptr inbounds %struct.ubifs_dent_node, ptr %call7.i, i32 0, i32 2
  %69 = ptrtoint ptr %inum to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %inum, align 8
  %71 = call i64 @llvm.bswap.i64(i64 %70)
  %conv = trunc i64 %71 to i32
  %call66 = call ptr @ubifs_iget(ptr noundef %68, i32 noundef %conv) #9
  %cmp.i = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %call66 to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef %dentry, i32 noundef %72) #9
  call void @ubifs_ro_mode(ptr noundef %4, i32 noundef %72) #9
  br label %done

if.end70:                                         ; preds = %if.end64
  %73 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %i_flags.i, align 4
  %and71 = and i32 %74, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.done_crit_edge, label %land.lhs.true

if.end70.done_crit_edge:                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

land.lhs.true:                                    ; preds = %if.end70
  %75 = ptrtoint ptr %call66 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %call66, align 8
  %77 = and i16 %76, -4096
  %78 = zext i16 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %77, label %land.lhs.true.done_crit_edge [
    i16 16384, label %land.lhs.true.land.lhs.true82_crit_edge
    i16 -24576, label %land.lhs.true.land.lhs.true82_crit_edge159
  ]

land.lhs.true.land.lhs.true82_crit_edge159:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true82

land.lhs.true.land.lhs.true82_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true82

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

land.lhs.true82:                                  ; preds = %land.lhs.true.land.lhs.true82_crit_edge, %land.lhs.true.land.lhs.true82_crit_edge159
  %call83 = call i32 @fscrypt_has_permitted_context(ptr noundef %dir, ptr noundef %call66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then85, label %land.lhs.true82.done_crit_edge

land.lhs.true82.done_crit_edge:                   ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then85:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino86 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %79 = ptrtoint ptr %i_ino86 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %i_ino86, align 8
  %i_ino87 = getelementptr inbounds %struct.inode, ptr %call66, i32 0, i32 11
  %81 = ptrtoint ptr %i_ino87 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %i_ino87, align 8
  call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %80, i32 noundef %82) #9
  call void @iput(ptr noundef %call66) #9
  br label %done

done:                                             ; preds = %if.then85, %land.lhs.true82.done_crit_edge, %land.lhs.true.done_crit_edge, %if.end70.done_crit_edge, %if.then68, %if.end3.i.done_crit_edge, %if.end.i150.done_crit_edge, %if.else56, %if.then49, %do.body37, %if.then23.done_crit_edge, %if.end15.done_crit_edge, %if.end11.done_crit_edge
  %dent.0 = phi ptr [ %call7.i, %if.then23.done_crit_edge ], [ %call7.i, %if.then49 ], [ %call7.i, %if.else56 ], [ %call7.i, %if.then68 ], [ %call7.i, %land.lhs.true82.done_crit_edge ], [ %call7.i, %if.then85 ], [ %call7.i, %if.end70.done_crit_edge ], [ %call7.i, %land.lhs.true.done_crit_edge ], [ null, %if.end11.done_crit_edge ], [ null, %if.end15.done_crit_edge ], [ %call7.i, %do.body37 ], [ %call7.i, %if.end.i150.done_crit_edge ], [ %call7.i, %if.end3.i.done_crit_edge ]
  %inode.0 = phi ptr [ null, %if.then23.done_crit_edge ], [ null, %if.then49 ], [ %56, %if.else56 ], [ %call66, %if.then68 ], [ %call66, %land.lhs.true82.done_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.then85 ], [ %call66, %if.end70.done_crit_edge ], [ %call66, %land.lhs.true.done_crit_edge ], [ inttoptr (i32 -36 to ptr), %if.end11.done_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end15.done_crit_edge ], [ null, %do.body37 ], [ inttoptr (i32 -22 to ptr), %if.end.i150.done_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end3.i.done_crit_edge ]
  call void @kfree(ptr noundef %dent.0) #9
  %crypto_buf.i = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 4
  %83 = ptrtoint ptr %crypto_buf.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %crypto_buf.i, align 4
  call void @kfree(ptr noundef %84) #9
  %call90 = call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then9, %if.then5
  %retval.0 = phi ptr [ %call6, %if.then5 ], [ %27, %if.then9 ], [ %call90, %done ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  %req = alloca %struct.ubifs_budget_req, align 4
  %nm = alloca %struct.fscrypt_name, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #9
  %4 = call ptr @memcpy(ptr %req, ptr @__const.ubifs_mknod.req, i32 20)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #9
  %5 = call ptr @memset(ptr %nm, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !103) #9
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  %conv = zext i16 %mode to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.14, i32 noundef %11, ptr noundef %dentry, i32 noundef %conv, i32 noundef %13) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = call i32 @ubifs_budget_space(ptr noundef %3, ptr noundef nonnull %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %14 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %15, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %ubifs_prepare_create.exit, label %if.end9.out_budg_crit_edge

if.end9.out_budg_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_budg

ubifs_prepare_create.exit:                        ; preds = %if.end9
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call1.i = call i32 @fscrypt_setup_filename(ptr noundef %dir, ptr noundef %d_name.i, i32 noundef 0, ptr noundef nonnull %nm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool11.not = icmp eq i32 %call1.i, 0
  br i1 %tobool11.not, label %if.end13, label %ubifs_prepare_create.exit.out_budg_crit_edge

ubifs_prepare_create.exit.out_budg_crit_edge:     ; preds = %ubifs_prepare_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_budg

if.end13:                                         ; preds = %ubifs_prepare_create.exit
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %add15 = add i32 %17, 64
  %and = and i32 %add15, -8
  %call16 = call ptr @ubifs_new_inode(ptr noundef %3, ptr noundef %dir, i16 noundef zeroext %mode)
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call16 to i32
  br label %out_fname

if.end20:                                         ; preds = %if.end13
  %call21 = call i32 @ubifs_init_security(ptr noundef %dir, ptr noundef %call16, ptr noundef %d_name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.out_inode_crit_edge

if.end20.out_inode_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_inode

if.end24:                                         ; preds = %if.end20
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex, i32 noundef 0) #9
  %conv25 = sext i32 %and to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %19 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_size, align 8
  %add26 = add i64 %20, %conv25
  store i64 %add26, ptr %i_size, align 8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 11
  %21 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %add26, ptr %ui_size, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_ctime28 = getelementptr inbounds %struct.inode, ptr %call16, i32 0, i32 17
  %22 = call ptr @memcpy(ptr %i_ctime, ptr %i_ctime28, i32 16)
  %23 = call ptr @memmove(ptr %i_mtime, ptr %i_ctime28, i32 16)
  %call29 = call i32 @ubifs_jnl_update(ptr noundef %3, ptr noundef %dir, ptr noundef nonnull %nm, ptr noundef %call16, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %out_cancel

if.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %ui_mutex) #9
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  %crypto_buf.i = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 4
  %24 = ptrtoint ptr %crypto_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crypto_buf.i, align 4
  call void @kfree(ptr noundef %25) #9
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call16, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino.i, align 8
  call void @__insert_inode_hash(ptr noundef %call16, i32 noundef %27) #9
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %call16) #9
  br label %cleanup

out_cancel:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_size, align 8
  %sub = sub i64 %29, %conv25
  store i64 %sub, ptr %i_size, align 8
  %30 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %sub, ptr %ui_size, align 8
  call void @mutex_unlock(ptr noundef %ui_mutex) #9
  br label %out_inode

out_inode:                                        ; preds = %out_cancel, %if.end20.out_inode_crit_edge
  %err.0 = phi i32 [ %call21, %if.end20.out_inode_crit_edge ], [ %call29, %out_cancel ]
  call void @make_bad_inode(ptr noundef %call16) #9
  call void @iput(ptr noundef %call16) #9
  br label %out_fname

out_fname:                                        ; preds = %out_inode, %if.then18
  %err.1 = phi i32 [ %18, %if.then18 ], [ %err.0, %out_inode ]
  %crypto_buf.i86 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 4
  %31 = ptrtoint ptr %crypto_buf.i86 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %crypto_buf.i86, align 4
  call void @kfree(ptr noundef %32) #9
  br label %out_budg

out_budg:                                         ; preds = %out_fname, %ubifs_prepare_create.exit.out_budg_crit_edge, %if.end9.out_budg_crit_edge
  %err.2 = phi i32 [ %call1.i, %ubifs_prepare_create.exit.out_budg_crit_edge ], [ %err.1, %out_fname ], [ -126, %if.end9.out_budg_crit_edge ]
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %3, ptr noundef nonnull @.str.15, i32 noundef %err.2) #9
  br label %cleanup

cleanup:                                          ; preds = %out_budg, %if.end32, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %out_budg ], [ 0, %if.end32 ], [ %call6, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_link(ptr nocapture noundef readonly %old_dentry, ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %req = alloca %struct.ubifs_budget_req, align 4
  %nm = alloca %struct.fscrypt_name, align 4
  %tmp89 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %6 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d_name, align 8
  %add4 = add i32 %7, 64
  %and = and i32 %add4, -8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #9
  %8 = getelementptr inbounds i8, ptr %req, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 134218240, ptr %req, align 4
  %dirtied_ino_d = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 1
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 15
  %11 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len, align 4
  %13 = trunc i32 %12 to i16
  %14 = shl i16 %13, 1
  %bf.value = add i16 %14, 14
  %bf.shl = and i16 %bf.value, -16
  %bf.set33 = or i16 %bf.shl, 1
  %15 = ptrtoint ptr %dirtied_ino_d to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %bf.set33, ptr %dirtied_ino_d, align 4
  %idx_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %idx_growth to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %idx_growth, align 4
  %data_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 3
  %17 = ptrtoint ptr %data_growth to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %data_growth, align 4
  %dd_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 4
  %18 = ptrtoint ptr %dd_growth to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dd_growth, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #9
  %19 = call ptr @memset(ptr %nm, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_link.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_link, %if.then)) #9
          to label %do.body39 [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %20 = tail call i32 @llvm.read_register.i32(metadata !103) #9
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino, align 8
  %28 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 12
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %i_ino38 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %31 = ptrtoint ptr %i_ino38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_ino38, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_link.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.17, i32 noundef %25, ptr noundef %dentry, i32 noundef %27, i32 noundef %30, i32 noundef %32) #9
  br label %do.body39

do.body39:                                        ; preds = %if.then, %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #9
  %33 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.not = icmp eq i32 %34, 0
  br i1 %cmp.i.i.not, label %if.then50, label %do.body39.do.body54_crit_edge, !prof !118

do.body39.do.body54_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body54

if.then50:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.6, i32 noundef 709) #9
  br label %do.body54

do.body54:                                        ; preds = %if.then50, %do.body39.do.body54_crit_edge
  %i_rwsem.i172 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  %call.i.i.i.i173 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i172, i32 noundef 4) #9
  %35 = ptrtoint ptr %i_rwsem.i172 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %i_rwsem.i172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i174.not = icmp eq i32 %36, 0
  br i1 %cmp.i.i174.not, label %if.then65, label %do.body54.do.end68_crit_edge, !prof !118

do.body54.do.end68_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.6, i32 noundef 710) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %do.body54.do.end68_crit_edge
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %37 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_flags.i, align 4
  %and.i176 = and i32 %38, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i176)
  %tobool.not.i = icmp eq i32 %and.i176, 0
  br i1 %tobool.not.i, label %do.end68.if.end72_crit_edge, label %fscrypt_prepare_link.exit

do.end68.if.end72_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

fscrypt_prepare_link.exit:                        ; preds = %do.end68
  %39 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d_inode.i, align 8
  %call1.i = tail call i32 @__fscrypt_prepare_link(ptr noundef %40, ptr noundef %dir, ptr noundef %dentry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool70.not = icmp eq i32 %call1.i, 0
  br i1 %tobool70.not, label %fscrypt_prepare_link.exit.if.end72_crit_edge, label %fscrypt_prepare_link.exit.cleanup_crit_edge

fscrypt_prepare_link.exit.cleanup_crit_edge:      ; preds = %fscrypt_prepare_link.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fscrypt_prepare_link.exit.if.end72_crit_edge:     ; preds = %fscrypt_prepare_link.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end72:                                         ; preds = %fscrypt_prepare_link.exit.if.end72_crit_edge, %do.end68.if.end72_crit_edge
  %call74 = call i32 @fscrypt_setup_filename(ptr noundef %dir, ptr noundef %d_name, i32 noundef 0, ptr noundef nonnull %nm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end77:                                         ; preds = %if.end72
  %call78 = call i32 @dbg_check_synced_i_size(ptr noundef %3, ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.cleanup.sink.split_crit_edge

if.end77.cleanup.sink.split_crit_edge:            ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end81:                                         ; preds = %if.end77
  %call82 = call i32 @ubifs_budget_space(ptr noundef %3, ptr noundef nonnull %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end81.cleanup.sink.split_crit_edge

if.end81.cleanup.sink.split_crit_edge:            ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end85:                                         ; preds = %if.end81
  %ui_mutex.i = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex.i, i32 noundef 0) #9
  %ui_mutex2.i = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex2.i, i32 noundef 1) #9
  %41 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 12
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp = icmp eq i32 %43, 0
  br i1 %cmp, label %if.then86, label %if.end85.if.end88_crit_edge

if.end85.if.end88_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then86:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino87 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %44 = ptrtoint ptr %i_ino87 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_ino87, align 8
  call void @ubifs_delete_orphan(ptr noundef %3, i32 noundef %45) #9
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end85.if.end88_crit_edge
  call void @inc_nlink(ptr noundef %5) #9
  call void @ihold(ptr noundef %5) #9
  %i_ctime = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp89) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp89, ptr noundef %5) #9
  %46 = call ptr @memcpy(ptr %i_ctime, ptr %tmp89, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp89) #9
  %conv = sext i32 %and to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %47 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %i_size, align 8
  %add90 = add i64 %48, %conv
  store i64 %add90, ptr %i_size, align 8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 11
  %49 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %add90, ptr %ui_size, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime92 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %50 = call ptr @memcpy(ptr %i_ctime92, ptr %i_ctime, i32 16)
  %51 = call ptr @memmove(ptr %i_mtime, ptr %i_ctime, i32 16)
  %call94 = call i32 @ubifs_jnl_update(ptr noundef %3, ptr noundef %dir, ptr noundef nonnull %nm, ptr noundef %5, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %out_cancel

if.end97:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %ui_mutex2.i) #9
  call void @mutex_unlock(ptr noundef %ui_mutex.i) #9
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %5) #9
  br label %cleanup.sink.split

out_cancel:                                       ; preds = %if.end88
  %52 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %i_size, align 8
  %sub = sub i64 %53, %conv
  store i64 %sub, ptr %i_size, align 8
  %54 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %sub, ptr %ui_size, align 8
  call void @drop_nlink(ptr noundef %5) #9
  %55 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp102 = icmp eq i32 %56, 0
  br i1 %cmp102, label %if.then104, label %out_cancel.if.end107_crit_edge

out_cancel.if.end107_crit_edge:                   ; preds = %out_cancel
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then104:                                       ; preds = %out_cancel
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino105 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %57 = ptrtoint ptr %i_ino105 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %i_ino105, align 8
  %call106 = call i32 @ubifs_add_orphan(ptr noundef %3, i32 noundef %58) #9
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %out_cancel.if.end107_crit_edge
  call void @mutex_unlock(ptr noundef %ui_mutex2.i) #9
  call void @mutex_unlock(ptr noundef %ui_mutex.i) #9
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  call void @iput(ptr noundef %5) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end107, %if.end97, %if.end81.cleanup.sink.split_crit_edge, %if.end77.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end97 ], [ %call78, %if.end77.cleanup.sink.split_crit_edge ], [ %call82, %if.end81.cleanup.sink.split_crit_edge ], [ %call94, %if.end107 ]
  %crypto_buf.i182 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 4
  %59 = ptrtoint ptr %crypto_buf.i182 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %crypto_buf.i182, align 4
  call void @kfree(ptr noundef %60) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end72.cleanup_crit_edge, %fscrypt_prepare_link.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %fscrypt_prepare_link.exit.cleanup_crit_edge ], [ %call74, %if.end72.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_unlink(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %req = alloca %struct.ubifs_budget_req, align 4
  %nm = alloca %struct.fscrypt_name, align 4
  %tmp57 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #9
  %6 = call ptr @memcpy(ptr %req, ptr @__const.ubifs_rmdir.req, i32 20)
  %7 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #9
  %10 = call ptr @memset(ptr %nm, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_unlink.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_unlink, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call i32 @llvm.read_register.i32(metadata !103) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino, align 8
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %7, align 4
  %i_ino6 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %21 = ptrtoint ptr %i_ino6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino6, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_unlink.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.21, i32 noundef %16, ptr noundef %dentry, i32 noundef %18, i32 noundef %20, i32 noundef %22) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call7 = call i32 @fscrypt_setup_filename(ptr noundef %dir, ptr noundef %d_name, i32 noundef 1, ptr noundef nonnull %nm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %call11 = call i32 @ubifs_purge_xattrs(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %add16 = add i32 %24, 64
  %and = and i32 %add16, -8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 25
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #9
  %25 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.i.not = icmp eq i32 %26, 0
  br i1 %cmp.i.i.not, label %if.then28, label %if.end14.do.body32_crit_edge, !prof !118

if.end14.do.body32_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.then28:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.6, i32 noundef 795) #9
  br label %do.body32

do.body32:                                        ; preds = %if.then28, %if.end14.do.body32_crit_edge
  %i_rwsem.i143 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  %call.i.i.i.i144 = call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i143, i32 noundef 4) #9
  %27 = ptrtoint ptr %i_rwsem.i143 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %i_rwsem.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i145.not = icmp eq i32 %28, 0
  br i1 %cmp.i.i145.not, label %if.then43, label %do.body32.do.end46_crit_edge, !prof !118

do.body32.do.end46_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

if.then43:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.6, i32 noundef 796) #9
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.body32.do.end46_crit_edge
  %call47 = call i32 @dbg_check_synced_i_size(ptr noundef %3, ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %do.end46.cleanup.sink.split_crit_edge

do.end46.cleanup.sink.split_crit_edge:            ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end50:                                         ; preds = %do.end46
  %call51 = call i32 @ubifs_budget_space(ptr noundef %3, ptr noundef nonnull %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  %29 = zext i32 %call51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %call51, label %if.end50.cleanup.sink.split_crit_edge [
    i32 -28, label %if.end50.if.end56_crit_edge
    i32 0, label %if.end50.if.end56_crit_edge153
  ]

if.end50.if.end56_crit_edge153:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.end50.cleanup.sink.split_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end56:                                         ; preds = %if.end50.if.end56_crit_edge, %if.end50.if.end56_crit_edge153
  %ui_mutex.i = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex.i, i32 noundef 0) #9
  %ui_mutex2.i = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex2.i, i32 noundef 1) #9
  %i_ctime = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp57) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp57, ptr noundef %dir) #9
  %30 = call ptr @memcpy(ptr %i_ctime, ptr %tmp57, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp57) #9
  call void @drop_nlink(ptr noundef %5) #9
  %conv = sext i32 %and to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %31 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_size, align 8
  %sub = sub i64 %32, %conv
  store i64 %sub, ptr %i_size, align 8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 11
  %33 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %sub, ptr %ui_size, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime59 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %34 = call ptr @memcpy(ptr %i_ctime59, ptr %i_ctime, i32 16)
  %35 = call ptr @memmove(ptr %i_mtime, ptr %i_ctime, i32 16)
  %call61 = call i32 @ubifs_jnl_update(ptr noundef %3, ptr noundef %dir, ptr noundef nonnull %nm, ptr noundef %5, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %out_cancel

if.end64:                                         ; preds = %if.end56
  call void @mutex_unlock(ptr noundef %ui_mutex2.i) #9
  call void @mutex_unlock(ptr noundef %ui_mutex.i) #9
  br i1 %tobool52.not, label %if.then66, label %if.else

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %nospace_rp = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 87, i32 6
  %36 = ptrtoint ptr %nospace_rp to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %nospace_rp, align 4
  %bf.clear69 = and i8 %bf.load, 63
  store i8 %bf.clear69, ptr %nospace_rp, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !119
  br label %cleanup.sink.split

out_cancel:                                       ; preds = %if.end56
  %37 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_size, align 8
  %add80 = add i64 %38, %conv
  store i64 %add80, ptr %i_size, align 8
  %39 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %add80, ptr %ui_size, align 8
  call void @set_nlink(ptr noundef %5, i32 noundef %9) #9
  call void @mutex_unlock(ptr noundef %ui_mutex2.i) #9
  call void @mutex_unlock(ptr noundef %ui_mutex.i) #9
  br i1 %tobool52.not, label %if.then84, label %out_cancel.cleanup.sink.split_crit_edge

out_cancel.cleanup.sink.split_crit_edge:          ; preds = %out_cancel
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then84:                                        ; preds = %out_cancel
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then84, %out_cancel.cleanup.sink.split_crit_edge, %if.else, %if.then66, %if.end50.cleanup.sink.split_crit_edge, %do.end46.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.else ], [ 0, %if.then66 ], [ %call47, %do.end46.cleanup.sink.split_crit_edge ], [ %call61, %if.then84 ], [ %call61, %out_cancel.cleanup.sink.split_crit_edge ], [ %call51, %if.end50.cleanup.sink.split_crit_edge ]
  %crypto_buf.i151 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 4
  %40 = ptrtoint ptr %crypto_buf.i151 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %crypto_buf.i151, align 4
  call void @kfree(ptr noundef %41) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) #0 align 64 {
entry:
  %disk_link = alloca %struct.fscrypt_str, align 4
  %req = alloca %struct.ubifs_budget_req, align 4
  %nm = alloca %struct.fscrypt_name, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %call1 = tail call i32 @strlen(ptr noundef %symname) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %disk_link) #9
  %4 = ptrtoint ptr %disk_link to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %disk_link, align 4, !annotation !115
  %5 = getelementptr inbounds %struct.fscrypt_str, ptr %disk_link, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !115
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #9
  %7 = getelementptr inbounds i8, ptr %req, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %add = shl i32 %call1, 12
  %bf.value = add i32 %add, 28672
  %bf.shl = and i32 %bf.value, 33521664
  %bf.set25 = or i32 %bf.shl, 167772416
  %9 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bf.set25, ptr %req, align 4
  %dirtied_ino_d = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 1
  %10 = ptrtoint ptr %dirtied_ino_d to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %dirtied_ino_d, align 4
  %idx_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %idx_growth to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idx_growth, align 4
  %data_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 3
  %12 = ptrtoint ptr %data_growth to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %data_growth, align 4
  %dd_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 4
  %13 = ptrtoint ptr %dd_growth to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %dd_growth, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #9
  %14 = call ptr @memset(ptr %nm, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_symlink.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_symlink, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %15 = tail call i32 @llvm.read_register.i32(metadata !103) #9
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %21 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_symlink.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.23, i32 noundef %20, ptr noundef %dentry, ptr noundef %symname, i32 noundef %22) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call33 = call i32 @fscrypt_prepare_symlink(ptr noundef %dir, ptr noundef %symname, i32 noundef %call1, i32 noundef 4096, ptr noundef nonnull %disk_link) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %do.end
  %call37 = call i32 @ubifs_budget_space(ptr noundef %3, ptr noundef nonnull %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %23 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %24, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %ubifs_prepare_create.exit, label %if.end40.out_budg_crit_edge

if.end40.out_budg_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_budg

ubifs_prepare_create.exit:                        ; preds = %if.end40
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call1.i = call i32 @fscrypt_setup_filename(ptr noundef %dir, ptr noundef %d_name.i, i32 noundef 0, ptr noundef nonnull %nm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool42.not = icmp eq i32 %call1.i, 0
  br i1 %tobool42.not, label %if.end44, label %ubifs_prepare_create.exit.out_budg_crit_edge

ubifs_prepare_create.exit.out_budg_crit_edge:     ; preds = %ubifs_prepare_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_budg

if.end44:                                         ; preds = %ubifs_prepare_create.exit
  %len45 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %len45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len45, align 4
  %add48 = add i32 %26, 64
  %and49 = and i32 %add48, -8
  %call50 = call ptr @ubifs_new_inode(ptr noundef %3, ptr noundef %dir, i16 noundef zeroext -24065)
  %cmp.i167 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %if.then52, label %if.end8.i

if.then52:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call50 to i32
  br label %out_fname

if.end8.i:                                        ; preds = %if.end44
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %5, align 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3136) #15
  %data = getelementptr inbounds %struct.ubifs_inode, ptr %call50, i32 0, i32 16
  %30 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call9.i, ptr %data, align 8
  %tobool59.not = icmp eq ptr %call9.i, null
  br i1 %tobool59.not, label %if.end8.i.out_inode_crit_edge, label %if.end61

if.end8.i.out_inode_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_inode

if.end61:                                         ; preds = %if.end8.i
  %i_flags = getelementptr inbounds %struct.inode, ptr %call50, i32 0, i32 4
  %31 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_flags, align 4
  %and62 = and i32 %32, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.else, label %fscrypt_encrypt_symlink.exit

fscrypt_encrypt_symlink.exit:                     ; preds = %if.end61
  %33 = ptrtoint ptr %disk_link to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9.i, ptr %disk_link, align 4
  %call.i = call i32 @__fscrypt_encrypt_symlink(ptr noundef %call50, ptr noundef %symname, i32 noundef %call1, ptr noundef nonnull %disk_link) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool67.not = icmp eq i32 %call.i, 0
  br i1 %tobool67.not, label %fscrypt_encrypt_symlink.exit.if.end74_crit_edge, label %fscrypt_encrypt_symlink.exit.out_inode_crit_edge

fscrypt_encrypt_symlink.exit.out_inode_crit_edge: ; preds = %fscrypt_encrypt_symlink.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_inode

fscrypt_encrypt_symlink.exit.if.end74_crit_edge:  ; preds = %fscrypt_encrypt_symlink.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.else:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %disk_link to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %disk_link, align 4
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %5, align 4
  %38 = call ptr @memcpy(ptr %call9.i, ptr %35, i32 %37)
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 8
  %41 = getelementptr inbounds %struct.inode, ptr %call50, i32 0, i32 48
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %41, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.else, %fscrypt_encrypt_symlink.exit.if.end74_crit_edge
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 4
  %sub = add i32 %44, -1
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %call50, i32 0, i32 15
  %45 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub, ptr %data_len, align 4
  %conv = zext i32 %sub to i64
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %call50, i32 0, i32 11
  %46 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv, ptr %ui_size, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %call50, i32 0, i32 14
  %47 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv, ptr %i_size, align 8
  %call79 = call i32 @ubifs_init_security(ptr noundef %dir, ptr noundef %call50, ptr noundef %d_name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end74.out_inode_crit_edge

if.end74.out_inode_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_inode

if.end82:                                         ; preds = %if.end74
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex, i32 noundef 0) #9
  %conv83 = sext i32 %and49 to i64
  %i_size84 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %48 = ptrtoint ptr %i_size84 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %i_size84, align 8
  %add85 = add i64 %49, %conv83
  store i64 %add85, ptr %i_size84, align 8
  %ui_size87 = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 11
  %50 = ptrtoint ptr %ui_size87 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %add85, ptr %ui_size87, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_ctime88 = getelementptr inbounds %struct.inode, ptr %call50, i32 0, i32 17
  %51 = call ptr @memcpy(ptr %i_ctime, ptr %i_ctime88, i32 16)
  %52 = call ptr @memmove(ptr %i_mtime, ptr %i_ctime88, i32 16)
  %call89 = call i32 @ubifs_jnl_update(ptr noundef %3, ptr noundef %dir, ptr noundef nonnull %nm, ptr noundef %call50, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %out_cancel

if.end92:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %ui_mutex) #9
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call50, i32 0, i32 11
  %53 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i_ino.i, align 8
  call void @__insert_inode_hash(ptr noundef %call50, i32 noundef %54) #9
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %call50) #9
  br label %out_fname

out_cancel:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %i_size84 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %i_size84, align 8
  %sub96 = sub i64 %56, %conv83
  store i64 %sub96, ptr %i_size84, align 8
  %57 = ptrtoint ptr %ui_size87 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %sub96, ptr %ui_size87, align 8
  call void @mutex_unlock(ptr noundef %ui_mutex) #9
  br label %out_inode

out_inode:                                        ; preds = %out_cancel, %if.end74.out_inode_crit_edge, %fscrypt_encrypt_symlink.exit.out_inode_crit_edge, %if.end8.i.out_inode_crit_edge
  %err.0 = phi i32 [ %call.i, %fscrypt_encrypt_symlink.exit.out_inode_crit_edge ], [ %call79, %if.end74.out_inode_crit_edge ], [ %call89, %out_cancel ], [ -12, %if.end8.i.out_inode_crit_edge ]
  call void @make_bad_inode(ptr noundef %call50) #9
  call void @iput(ptr noundef %call50) #9
  br label %out_fname

out_fname:                                        ; preds = %out_inode, %if.end92, %if.then52
  %err.1 = phi i32 [ %27, %if.then52 ], [ %err.0, %out_inode ], [ 0, %if.end92 ]
  %crypto_buf.i = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 4
  %58 = ptrtoint ptr %crypto_buf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %crypto_buf.i, align 4
  call void @kfree(ptr noundef %59) #9
  br label %out_budg

out_budg:                                         ; preds = %out_fname, %ubifs_prepare_create.exit.out_budg_crit_edge, %if.end40.out_budg_crit_edge
  %err.2 = phi i32 [ %call1.i, %ubifs_prepare_create.exit.out_budg_crit_edge ], [ %err.1, %out_fname ], [ -126, %if.end40.out_budg_crit_edge ]
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  br label %cleanup

cleanup:                                          ; preds = %out_budg, %if.end36.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %out_budg ], [ %call33, %do.end.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %disk_link) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  %req = alloca %struct.ubifs_budget_req, align 4
  %nm = alloca %struct.fscrypt_name, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #9
  %4 = call ptr @memcpy(ptr %req, ptr @__const.do_tmpfile.req, i32 20)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #9
  %5 = call ptr @memset(ptr %nm, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_mkdir.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_mkdir, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !103) #9
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  %conv = zext i16 %mode to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_mkdir.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.14, i32 noundef %11, ptr noundef %dentry, i32 noundef %conv, i32 noundef %13) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = call i32 @ubifs_budget_space(ptr noundef %3, ptr noundef nonnull %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %14 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %15, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %ubifs_prepare_create.exit, label %if.end8.out_budg_crit_edge

if.end8.out_budg_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_budg

ubifs_prepare_create.exit:                        ; preds = %if.end8
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call1.i = call i32 @fscrypt_setup_filename(ptr noundef %dir, ptr noundef %d_name.i, i32 noundef 0, ptr noundef nonnull %nm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool10.not = icmp eq i32 %call1.i, 0
  br i1 %tobool10.not, label %if.end12, label %ubifs_prepare_create.exit.out_budg_crit_edge

ubifs_prepare_create.exit.out_budg_crit_edge:     ; preds = %ubifs_prepare_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_budg

if.end12:                                         ; preds = %ubifs_prepare_create.exit
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %add14 = add i32 %17, 64
  %and = and i32 %add14, -8
  %18 = or i16 %mode, 16384
  %call17 = call ptr @ubifs_new_inode(ptr noundef %3, ptr noundef %dir, i16 noundef zeroext %18)
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call17 to i32
  br label %out_fname

if.end21:                                         ; preds = %if.end12
  %call22 = call i32 @ubifs_init_security(ptr noundef %dir, ptr noundef %call17, ptr noundef %d_name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.out_inode_crit_edge

if.end21.out_inode_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_inode

if.end25:                                         ; preds = %if.end21
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex, i32 noundef 0) #9
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 11
  %20 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino.i, align 8
  call void @__insert_inode_hash(ptr noundef %call17, i32 noundef %21) #9
  call void @inc_nlink(ptr noundef %call17) #9
  call void @inc_nlink(ptr noundef %dir) #9
  %conv26 = sext i32 %and to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %22 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_size, align 8
  %add27 = add i64 %23, %conv26
  store i64 %add27, ptr %i_size, align 8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 11
  %24 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add27, ptr %ui_size, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_ctime29 = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 17
  %25 = call ptr @memcpy(ptr %i_ctime, ptr %i_ctime29, i32 16)
  %26 = call ptr @memmove(ptr %i_mtime, ptr %i_ctime29, i32 16)
  %call30 = call i32 @ubifs_jnl_update(ptr noundef %3, ptr noundef %dir, ptr noundef nonnull %nm, ptr noundef %call17, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %3, ptr noundef nonnull @.str.25, i32 noundef %call30) #9
  %27 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_size, align 8
  %sub = sub i64 %28, %conv26
  store i64 %sub, ptr %i_size, align 8
  %29 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %sub, ptr %ui_size, align 8
  call void @drop_nlink(ptr noundef %dir) #9
  call void @mutex_unlock(ptr noundef %ui_mutex) #9
  br label %out_inode

if.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %ui_mutex) #9
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %call17) #9
  %crypto_buf.i = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 4
  %30 = ptrtoint ptr %crypto_buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %crypto_buf.i, align 4
  call void @kfree(ptr noundef %31) #9
  br label %cleanup

out_inode:                                        ; preds = %if.then32, %if.end21.out_inode_crit_edge
  %err.0 = phi i32 [ %call22, %if.end21.out_inode_crit_edge ], [ %call30, %if.then32 ]
  call void @make_bad_inode(ptr noundef %call17) #9
  call void @iput(ptr noundef %call17) #9
  br label %out_fname

out_fname:                                        ; preds = %out_inode, %if.then19
  %err.1 = phi i32 [ %19, %if.then19 ], [ %err.0, %out_inode ]
  %crypto_buf.i90 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 4
  %32 = ptrtoint ptr %crypto_buf.i90 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crypto_buf.i90, align 4
  call void @kfree(ptr noundef %33) #9
  br label %out_budg

out_budg:                                         ; preds = %out_fname, %ubifs_prepare_create.exit.out_budg_crit_edge, %if.end8.out_budg_crit_edge
  %err.2 = phi i32 [ %call1.i, %ubifs_prepare_create.exit.out_budg_crit_edge ], [ %err.1, %out_fname ], [ -126, %if.end8.out_budg_crit_edge ]
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  br label %cleanup

cleanup:                                          ; preds = %out_budg, %if.end33, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %out_budg ], [ 0, %if.end33 ], [ %call5, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_rmdir(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %nm.i = alloca %struct.fscrypt_name, align 4
  %key.i = alloca %union.ubifs_key, align 8
  %req = alloca %struct.ubifs_budget_req, align 4
  %nm = alloca %struct.fscrypt_name, align 4
  %tmp58 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #9
  %6 = call ptr @memcpy(ptr %req, ptr @__const.ubifs_rmdir.req, i32 20)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #9
  %7 = call ptr @memset(ptr %nm, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_rmdir.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_rmdir, %if.then)) #9
          to label %do.body7 [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !103) #9
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  %i_ino6 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino6, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_rmdir.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.27, i32 noundef %13, ptr noundef %dentry, i32 noundef %15, i32 noundef %17) #9
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #9
  %18 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i.not = icmp eq i32 %19, 0
  br i1 %cmp.i.i.not, label %if.then18, label %do.body7.do.body22_crit_edge, !prof !118

do.body7.do.body22_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

if.then18:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.6, i32 noundef 887) #9
  br label %do.body22

do.body22:                                        ; preds = %if.then18, %do.body7.do.body22_crit_edge
  %i_rwsem.i143 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  %call.i.i.i.i144 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i143, i32 noundef 4) #9
  %20 = ptrtoint ptr %i_rwsem.i143 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_rwsem.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i145.not = icmp eq i32 %21, 0
  br i1 %cmp.i.i145.not, label %if.then33, label %do.body22.do.end36_crit_edge, !prof !118

do.body22.do.end36_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

if.then33:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.6, i32 noundef 888) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %do.body22.do.end36_crit_edge
  %22 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm.i) #9
  %28 = call ptr @memset(ptr %nm.i, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key.i) #9
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_ino.i, align 8
  %31 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %key.i, align 8
  %arrayidx1.i.i = getelementptr inbounds [2 x i32], ptr %key.i, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1073741824, ptr %arrayidx1.i.i, align 4
  %call.i = call ptr @ubifs_tnc_next_ent(ptr noundef %27, ptr noundef nonnull %key.i, ptr noundef nonnull %nm.i) #9
  %cmp.i.i148 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i148, label %if.then.i, label %ubifs_check_dir_empty.exit.thread157

if.then.i:                                        ; preds = %do.end36
  %cmp.i = icmp eq ptr %call.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.i, label %ubifs_check_dir_empty.exit.thread, label %ubifs_check_dir_empty.exit

ubifs_check_dir_empty.exit.thread157:             ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm.i) #9
  br label %cleanup

ubifs_check_dir_empty.exit.thread:                ; preds = %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm.i) #9
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call42 = call i32 @fscrypt_setup_filename(ptr noundef %dir, ptr noundef %d_name, i32 noundef 1, ptr noundef nonnull %nm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %ubifs_check_dir_empty.exit.thread.cleanup_crit_edge

ubifs_check_dir_empty.exit.thread.cleanup_crit_edge: ; preds = %ubifs_check_dir_empty.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ubifs_check_dir_empty.exit:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %call.i to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm.i) #9
  br label %cleanup

if.end45:                                         ; preds = %ubifs_check_dir_empty.exit.thread
  %call46 = call i32 @ubifs_purge_xattrs(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %call52 = call i32 @ubifs_budget_space(ptr noundef %3, ptr noundef nonnull %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  %36 = zext i32 %call52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call52, label %if.end49.out_fname_crit_edge [
    i32 -28, label %if.end49.if.end57_crit_edge
    i32 0, label %if.end49.if.end57_crit_edge160
  ]

if.end49.if.end57_crit_edge160:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end49.out_fname_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_fname

if.end57:                                         ; preds = %if.end49.if.end57_crit_edge, %if.end49.if.end57_crit_edge160
  %add51 = add i32 %35, 64
  %and = and i32 %add51, -8
  %ui_mutex.i = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex.i, i32 noundef 0) #9
  %ui_mutex2.i = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex2.i, i32 noundef 1) #9
  %i_ctime = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp58) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp58, ptr noundef %dir) #9
  %37 = call ptr @memcpy(ptr %i_ctime, ptr %tmp58, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp58) #9
  call void @clear_nlink(ptr noundef %5) #9
  call void @drop_nlink(ptr noundef %dir) #9
  %conv = sext i32 %and to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %38 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %i_size, align 8
  %sub = sub i64 %39, %conv
  store i64 %sub, ptr %i_size, align 8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 11
  %40 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %sub, ptr %ui_size, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime60 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %41 = call ptr @memcpy(ptr %i_ctime60, ptr %i_ctime, i32 16)
  %42 = call ptr @memmove(ptr %i_mtime, ptr %i_ctime, i32 16)
  %call62 = call i32 @ubifs_jnl_update(ptr noundef %3, ptr noundef %dir, ptr noundef nonnull %nm, ptr noundef %5, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %out_cancel

if.end65:                                         ; preds = %if.end57
  call void @mutex_unlock(ptr noundef %ui_mutex2.i) #9
  call void @mutex_unlock(ptr noundef %ui_mutex.i) #9
  br i1 %tobool53.not, label %if.then67, label %if.else

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  br label %if.end78

if.else:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %nospace_rp = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 87, i32 6
  %43 = ptrtoint ptr %nospace_rp to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load = load i8, ptr %nospace_rp, align 4
  %bf.clear70 = and i8 %bf.load, 63
  store i8 %bf.clear70, ptr %nospace_rp, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !120
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then67
  %crypto_buf.i = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 4
  %44 = ptrtoint ptr %crypto_buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %crypto_buf.i, align 4
  call void @kfree(ptr noundef %45) #9
  br label %cleanup

out_cancel:                                       ; preds = %if.end57
  %46 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %i_size, align 8
  %add81 = add i64 %47, %conv
  store i64 %add81, ptr %i_size, align 8
  %48 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %add81, ptr %ui_size, align 8
  call void @inc_nlink(ptr noundef %dir) #9
  call void @set_nlink(ptr noundef %5, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef %ui_mutex2.i) #9
  call void @mutex_unlock(ptr noundef %ui_mutex.i) #9
  br i1 %tobool53.not, label %if.then85, label %out_cancel.out_fname_crit_edge

out_cancel.out_fname_crit_edge:                   ; preds = %out_cancel
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_fname

if.then85:                                        ; preds = %out_cancel
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  br label %out_fname

out_fname:                                        ; preds = %if.then85, %out_cancel.out_fname_crit_edge, %if.end49.out_fname_crit_edge
  %err.0 = phi i32 [ %call62, %if.then85 ], [ %call62, %out_cancel.out_fname_crit_edge ], [ %call52, %if.end49.out_fname_crit_edge ]
  %crypto_buf.i153 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 4
  %49 = ptrtoint ptr %crypto_buf.i153 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %crypto_buf.i153, align 4
  call void @kfree(ptr noundef %50) #9
  br label %cleanup

cleanup:                                          ; preds = %out_fname, %if.end78, %if.end45.cleanup_crit_edge, %ubifs_check_dir_empty.exit, %ubifs_check_dir_empty.exit.thread.cleanup_crit_edge, %ubifs_check_dir_empty.exit.thread157
  %retval.0 = phi i32 [ %err.0, %out_fname ], [ 0, %if.end78 ], [ %33, %ubifs_check_dir_empty.exit ], [ %call42, %ubifs_check_dir_empty.exit.thread.cleanup_crit_edge ], [ %call46, %if.end45.cleanup_crit_edge ], [ -39, %ubifs_check_dir_empty.exit.thread157 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #0 align 64 {
entry:
  %req = alloca %struct.ubifs_budget_req, align 4
  %nm = alloca %struct.fscrypt_name, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #9
  %4 = call ptr @memcpy(ptr %req, ptr @__const.ubifs_mknod.req, i32 20)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #9
  %5 = call ptr @memset(ptr %nm, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_mknod.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_mknod, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !103) #9
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_mknod.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.29, i32 noundef %11, ptr noundef %dentry, i32 noundef %13) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %14 = and i16 %mode, -4096
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %14, label %do.end.if.end16_crit_edge [
    i16 24576, label %do.end.if.then10_crit_edge
    i16 8192, label %do.end.if.then10_crit_edge126
  ]

do.end.if.then10_crit_edge126:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

do.end.if.then10_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then10:                                        ; preds = %do.end.if.then10_crit_edge, %do.end.if.then10_crit_edge126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3136, i32 noundef 8) #12
  %tobool12.not = icmp eq ptr %call7.i, null
  br i1 %tobool12.not, label %if.then10.cleanup_crit_edge, label %if.end14

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %and1.i.i = and i32 %rdev, 255
  %17 = lshr i32 %rdev, 12
  %shl.i.i = and i32 %17, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %rdev, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #9
  %19 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %call7.i, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %do.end.if.end16_crit_edge
  %dev.0 = phi ptr [ %call7.i, %if.end14 ], [ null, %do.end.if.end16_crit_edge ]
  %devlen.0 = phi i32 [ 4, %if.end14 ], [ 0, %do.end.if.end16_crit_edge ]
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load = load i32, ptr %req, align 4
  %add = shl nuw nsw i32 %devlen.0, 12
  %and17 = add nuw nsw i32 %add, 28672
  %bf.shl = and i32 %and17, 32768
  %bf.clear = and i32 %bf.load, -33550337
  %bf.set = or i32 %bf.shl, %bf.clear
  store i32 %bf.set, ptr %req, align 4
  %call18 = call i32 @ubifs_budget_space(ptr noundef %3, ptr noundef nonnull %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef %dev.0) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %21 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %ubifs_prepare_create.exit, label %if.end21.out_budg_crit_edge

if.end21.out_budg_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_budg

ubifs_prepare_create.exit:                        ; preds = %if.end21
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call1.i = call i32 @fscrypt_setup_filename(ptr noundef %dir, ptr noundef %d_name.i, i32 noundef 0, ptr noundef nonnull %nm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool23.not = icmp eq i32 %call1.i, 0
  br i1 %tobool23.not, label %if.end25, label %ubifs_prepare_create.exit.out_budg_crit_edge

ubifs_prepare_create.exit.out_budg_crit_edge:     ; preds = %ubifs_prepare_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_budg

if.end25:                                         ; preds = %ubifs_prepare_create.exit
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %add28 = add i32 %24, 64
  %and29 = and i32 %add28, -8
  %call30 = call ptr @ubifs_new_inode(ptr noundef %3, ptr noundef %dir, i16 noundef zeroext %mode)
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef %dev.0) #9
  %25 = ptrtoint ptr %call30 to i32
  br label %out_fname

if.end34:                                         ; preds = %if.end25
  %26 = ptrtoint ptr %call30 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %call30, align 8
  call void @init_special_inode(ptr noundef %call30, i16 noundef zeroext %27, i32 noundef %rdev) #9
  %28 = zext i32 %devlen.0 to i64
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %call30, i32 0, i32 11
  %29 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %ui_size, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %call30, i32 0, i32 14
  %30 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %28, ptr %i_size, align 8
  %data = getelementptr inbounds %struct.ubifs_inode, ptr %call30, i32 0, i32 16
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev.0, ptr %data, align 8
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %call30, i32 0, i32 15
  %32 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %devlen.0, ptr %data_len, align 4
  %call38 = call i32 @ubifs_init_security(ptr noundef %dir, ptr noundef %call30, ptr noundef %d_name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end34.out_inode_crit_edge

if.end34.out_inode_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_inode

if.end41:                                         ; preds = %if.end34
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex, i32 noundef 0) #9
  %conv42 = sext i32 %and29 to i64
  %i_size43 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %33 = ptrtoint ptr %i_size43 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_size43, align 8
  %add44 = add i64 %34, %conv42
  store i64 %add44, ptr %i_size43, align 8
  %ui_size46 = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 11
  %35 = ptrtoint ptr %ui_size46 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %add44, ptr %ui_size46, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_ctime47 = getelementptr inbounds %struct.inode, ptr %call30, i32 0, i32 17
  %36 = call ptr @memcpy(ptr %i_ctime, ptr %i_ctime47, i32 16)
  %37 = call ptr @memmove(ptr %i_mtime, ptr %i_ctime47, i32 16)
  %call48 = call i32 @ubifs_jnl_update(ptr noundef %3, ptr noundef %dir, ptr noundef nonnull %nm, ptr noundef %call30, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %out_cancel

if.end51:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %ui_mutex) #9
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call30, i32 0, i32 11
  %38 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_ino.i, align 8
  call void @__insert_inode_hash(ptr noundef %call30, i32 noundef %39) #9
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %call30) #9
  %crypto_buf.i = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 4
  %40 = ptrtoint ptr %crypto_buf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %crypto_buf.i, align 4
  call void @kfree(ptr noundef %41) #9
  br label %cleanup

out_cancel:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %i_size43 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %i_size43, align 8
  %sub = sub i64 %43, %conv42
  store i64 %sub, ptr %i_size43, align 8
  %44 = ptrtoint ptr %ui_size46 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %sub, ptr %ui_size46, align 8
  call void @mutex_unlock(ptr noundef %ui_mutex) #9
  br label %out_inode

out_inode:                                        ; preds = %out_cancel, %if.end34.out_inode_crit_edge
  %err.0 = phi i32 [ %call38, %if.end34.out_inode_crit_edge ], [ %call48, %out_cancel ]
  call void @make_bad_inode(ptr noundef %call30) #9
  call void @iput(ptr noundef %call30) #9
  br label %out_fname

out_fname:                                        ; preds = %out_inode, %if.then32
  %err.1 = phi i32 [ %25, %if.then32 ], [ %err.0, %out_inode ]
  %crypto_buf.i121 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 4
  %45 = ptrtoint ptr %crypto_buf.i121 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %crypto_buf.i121, align 4
  br label %out_budg

out_budg:                                         ; preds = %out_fname, %ubifs_prepare_create.exit.out_budg_crit_edge, %if.end21.out_budg_crit_edge
  %.sink = phi ptr [ %46, %out_fname ], [ %dev.0, %if.end21.out_budg_crit_edge ], [ %dev.0, %ubifs_prepare_create.exit.out_budg_crit_edge ]
  %err.2 = phi i32 [ %err.1, %out_fname ], [ -126, %if.end21.out_budg_crit_edge ], [ %call1.i, %ubifs_prepare_create.exit.out_budg_crit_edge ]
  call void @kfree(ptr noundef %.sink) #9
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  br label %cleanup

cleanup:                                          ; preds = %out_budg, %if.end51, %if.then20, %if.then10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.then20 ], [ %err.2, %out_budg ], [ 0, %if.end51 ], [ -12, %if.then10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #0 align 64 {
entry:
  %req.i = alloca %struct.ubifs_budget_req, align 4
  %time.i = alloca %struct.timespec64, align 8
  %fst_nm.i = alloca %struct.fscrypt_name, align 4
  %snd_nm.i = alloca %struct.fscrypt_name, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fst_nm.i.sroa.gep = getelementptr inbounds %struct.fscrypt_name, ptr %fst_nm.i, i32 0, i32 4
  %snd_nm.i.sroa.gep = getelementptr inbounds %struct.fscrypt_name, ptr %snd_nm.i, i32 0, i32 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 8
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.i.not, label %if.then5, label %do.body.do.body7_crit_edge, !prof !118

do.body.do.body7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.6, i32 noundef 1564) #9
  br label %do.body7

do.body7:                                         ; preds = %if.then5, %do.body.do.body7_crit_edge
  %i_rwsem.i49 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 25
  %call.i.i.i.i50 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i49, i32 noundef 4) #9
  %6 = ptrtoint ptr %i_rwsem.i49 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_rwsem.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i51.not = icmp eq i32 %7, 0
  br i1 %cmp.i.i51.not, label %if.then18, label %do.body7.do.end21_crit_edge, !prof !118

do.body7.do.end21_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

if.then18:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.6, i32 noundef 1565) #9
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body7.do.end21_crit_edge
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 4
  %8 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %do.end21.fscrypt_prepare_rename.exit_crit_edge

do.end21.fscrypt_prepare_rename.exit_crit_edge:   ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscrypt_prepare_rename.exit

lor.lhs.false.i:                                  ; preds = %do.end21
  %i_flags1.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 4
  %10 = ptrtoint ptr %i_flags1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags1.i, align 4
  %and2.i = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end25_crit_edge, label %lor.lhs.false.i.fscrypt_prepare_rename.exit_crit_edge

lor.lhs.false.i.fscrypt_prepare_rename.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscrypt_prepare_rename.exit

lor.lhs.false.i.if.end25_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

fscrypt_prepare_rename.exit:                      ; preds = %lor.lhs.false.i.fscrypt_prepare_rename.exit_crit_edge, %do.end21.fscrypt_prepare_rename.exit_crit_edge
  %call.i = tail call i32 @__fscrypt_prepare_rename(ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %fscrypt_prepare_rename.exit.if.end25_crit_edge, label %fscrypt_prepare_rename.exit.cleanup_crit_edge

fscrypt_prepare_rename.exit.cleanup_crit_edge:    ; preds = %fscrypt_prepare_rename.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fscrypt_prepare_rename.exit.if.end25_crit_edge:   ; preds = %fscrypt_prepare_rename.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25:                                         ; preds = %fscrypt_prepare_rename.exit.if.end25_crit_edge, %lor.lhs.false.i.if.end25_crit_edge
  %and26 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end25
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i) #9
  %16 = call ptr @memcpy(ptr %req.i, ptr @__const.ubifs_xrename.req, i32 20)
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 10
  %17 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_flags.i, align 4
  %and.i53 = and i32 %18, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %tobool.not.i54 = icmp eq i32 %and.i53, 0
  br i1 %tobool.not.i54, label %lor.lhs.false.i58, label %if.then28.lor.end12.i_crit_edge

if.then28.lor.end12.i_crit_edge:                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end12.i

lor.lhs.false.i58:                                ; preds = %if.then28
  %19 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_flags.i, align 4
  %and2.i56 = and i32 %20, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i56)
  %tobool3.not.i57 = icmp eq i32 %and2.i56, 0
  br i1 %tobool3.not.i57, label %lor.rhs.i, label %lor.lhs.false.i58.lor.end12.i_crit_edge

lor.lhs.false.i58.lor.end12.i_crit_edge:          ; preds = %lor.lhs.false.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end12.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i58
  %i_sb4.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 8
  %21 = ptrtoint ptr %i_sb4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb4.i, align 4
  %s_flags5.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %s_flags5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_flags5.i, align 4
  %and6.i = and i32 %24, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %lor.rhs8.i, label %lor.rhs.i.lor.end12.i_crit_edge

lor.rhs.i.lor.end12.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end12.i

lor.rhs8.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_flags9.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 4
  %25 = ptrtoint ptr %i_flags9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_flags9.i, align 4
  %and10.i = and i32 %26, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.i = icmp ne i32 %and10.i, 0
  %phi.cast.i = zext i1 %tobool11.i to i32
  br label %lor.end12.i

lor.end12.i:                                      ; preds = %lor.rhs8.i, %lor.rhs.i.lor.end12.i_crit_edge, %lor.lhs.false.i58.lor.end12.i_crit_edge, %if.then28.lor.end12.i_crit_edge
  %27 = phi i32 [ 1, %lor.lhs.false.i58.lor.end12.i_crit_edge ], [ 1, %if.then28.lor.end12.i_crit_edge ], [ 1, %lor.rhs.i.lor.end12.i_crit_edge ], [ %phi.cast.i, %lor.rhs8.i ]
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %28 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode.i.i, align 8
  %d_inode.i104.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %30 = ptrtoint ptr %d_inode.i104.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_inode.i104.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %time.i) #9
  %32 = call ptr @memset(ptr %time.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fst_nm.i) #9
  %33 = call ptr @memset(ptr %fst_nm.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %snd_nm.i) #9
  %34 = call ptr @memset(ptr %snd_nm.i, i32 255, i32 32)
  %tobool14.not.i = icmp eq ptr %29, null
  %tobool15.i = icmp eq ptr %31, null
  %spec.select.i = select i1 %tobool14.not.i, i1 true, i1 %tobool15.i, !prof !118
  br i1 %spec.select.i, label %if.then.i59, label %lor.end12.i.do.end.i_crit_edge, !prof !118

lor.end12.i.do.end.i_crit_edge:                   ; preds = %lor.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i59:                                      ; preds = %lor.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %15, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.6, i32 noundef 1511) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i59, %lor.end12.i.do.end.i_crit_edge
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %call19.i = call i32 @fscrypt_setup_filename(ptr noundef %old_dir, ptr noundef %d_name.i, i32 noundef 0, ptr noundef nonnull %fst_nm.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %do.end.i.ubifs_xrename.exit_crit_edge

do.end.i.ubifs_xrename.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_xrename.exit

if.end22.i:                                       ; preds = %do.end.i
  %d_name23.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %call24.i = call i32 @fscrypt_setup_filename(ptr noundef %new_dir, ptr noundef %d_name23.i, i32 noundef 0, ptr noundef nonnull %snd_nm.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end22.i.cleanup.sink.split.i_crit_edge

if.end22.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end27.i:                                       ; preds = %if.end22.i
  %ui_mutex.i.i = getelementptr inbounds %struct.ubifs_inode, ptr %old_dir, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex.i.i, i32 noundef 0) #9
  %cmp.not.i.i = icmp eq ptr %new_dir, %old_dir
  br i1 %cmp.not.i.i, label %if.end27.i.lock_4_inodes.exit.i_crit_edge, label %if.then.i.i

if.end27.i.lock_4_inodes.exit.i_crit_edge:        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_4_inodes.exit.i

if.then.i.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %ui_mutex2.i.i = getelementptr inbounds %struct.ubifs_inode, ptr %new_dir, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex2.i.i, i32 noundef 1) #9
  br label %lock_4_inodes.exit.i

lock_4_inodes.exit.i:                             ; preds = %if.then.i.i, %if.end27.i.lock_4_inodes.exit.i_crit_edge
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %time.i, ptr noundef %old_dir) #9
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 17
  %35 = call ptr @memcpy(ptr %i_ctime.i, ptr %time.i, i32 16)
  %i_ctime28.i = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 17
  %36 = call ptr @memcpy(ptr %i_ctime28.i, ptr %time.i, i32 16)
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 16
  %i_ctime29.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 17
  %37 = call ptr @memcpy(ptr %i_ctime29.i, ptr %time.i, i32 16)
  %38 = call ptr @memcpy(ptr %i_mtime.i, ptr %time.i, i32 16)
  %i_mtime30.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 16
  %i_ctime31.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 17
  %39 = call ptr @memcpy(ptr %i_ctime31.i, ptr %time.i, i32 16)
  %40 = call ptr @memcpy(ptr %i_mtime30.i, ptr %time.i, i32 16)
  br i1 %cmp.not.i.i, label %if.end56.i, label %if.then32.i

if.then32.i:                                      ; preds = %lock_4_inodes.exit.i
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %29, align 8
  %43 = and i16 %42, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %43)
  %cmp34.i = icmp eq i16 %43, 16384
  %44 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %31, align 8
  %46 = and i16 %45, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %46)
  %cmp39.i = icmp eq i16 %46, 16384
  br i1 %cmp34.i, label %land.lhs.true.i, label %land.lhs.true47.i

land.lhs.true.i:                                  ; preds = %if.then32.i
  br i1 %cmp39.i, label %land.lhs.true.i.if.then6.i.i_crit_edge, label %if.then41.i

land.lhs.true.i.if.then6.i.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i.i

if.then41.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @inc_nlink(ptr noundef %new_dir) #9
  call void @drop_nlink(ptr noundef %old_dir) #9
  br label %if.then6.i.i

land.lhs.true47.i:                                ; preds = %if.then32.i
  br i1 %cmp39.i, label %if.then53.i, label %land.lhs.true47.i.if.then6.i.i_crit_edge

land.lhs.true47.i.if.then6.i.i_crit_edge:         ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i.i

if.then53.i:                                      ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @drop_nlink(ptr noundef %new_dir) #9
  call void @inc_nlink(ptr noundef %old_dir) #9
  br label %if.then6.i.i

if.end56.i:                                       ; preds = %lock_4_inodes.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call57.i = call i32 @ubifs_jnl_xrename(ptr noundef %15, ptr noundef %old_dir, ptr noundef %29, ptr noundef nonnull %fst_nm.i, ptr noundef %old_dir, ptr noundef %31, ptr noundef nonnull %snd_nm.i, i32 noundef %27) #9
  br label %unlock_4_inodes.exit.i

if.then6.i.i:                                     ; preds = %if.then53.i, %land.lhs.true47.i.if.then6.i.i_crit_edge, %if.then41.i, %land.lhs.true.i.if.then6.i.i_crit_edge
  %call57108.i = call i32 @ubifs_jnl_xrename(ptr noundef %15, ptr noundef %old_dir, ptr noundef %29, ptr noundef nonnull %fst_nm.i, ptr noundef %new_dir, ptr noundef %31, ptr noundef nonnull %snd_nm.i, i32 noundef %27) #9
  %ui_mutex8.i.i = getelementptr inbounds %struct.ubifs_inode, ptr %new_dir, i32 0, i32 7
  call void @mutex_unlock(ptr noundef %ui_mutex8.i.i) #9
  br label %unlock_4_inodes.exit.i

unlock_4_inodes.exit.i:                           ; preds = %if.then6.i.i, %if.end56.i
  %call57110.i = phi i32 [ %call57.i, %if.end56.i ], [ %call57108.i, %if.then6.i.i ]
  call void @mutex_unlock(ptr noundef %ui_mutex.i.i) #9
  call void @ubifs_release_budget(ptr noundef %15, ptr noundef nonnull %req.i) #9
  %47 = ptrtoint ptr %fst_nm.i.sroa.gep to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fst_nm.i.sroa.gep, align 4
  call void @kfree(ptr noundef %48) #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %unlock_4_inodes.exit.i, %if.end22.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call57110.i, %unlock_4_inodes.exit.i ], [ %call24.i, %if.end22.i.cleanup.sink.split.i_crit_edge ]
  %snd_nm.sink.i.sroa.phi = phi ptr [ %snd_nm.i.sroa.gep, %unlock_4_inodes.exit.i ], [ %fst_nm.i.sroa.gep, %if.end22.i.cleanup.sink.split.i_crit_edge ]
  %49 = ptrtoint ptr %snd_nm.sink.i.sroa.phi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %snd_nm.sink.i.sroa.phi, align 4
  call void @kfree(ptr noundef %50) #9
  br label %ubifs_xrename.exit

ubifs_xrename.exit:                               ; preds = %cleanup.sink.split.i, %do.end.i.ubifs_xrename.exit_crit_edge
  %retval.0.i60 = phi i32 [ %call19.i, %do.end.i.ubifs_xrename.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %snd_nm.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fst_nm.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %time.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call fastcc i32 @do_rename(ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %ubifs_xrename.exit, %fscrypt_prepare_rename.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i60, %ubifs_xrename.exit ], [ %call31, %if.end30 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %fscrypt_prepare_rename.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_update_time(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_tmpfile(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @do_tmpfile(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef null)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_fileattr_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_readdir(ptr nocapture noundef %file, ptr noundef %ctx) #0 align 64 {
entry:
  %nm = alloca %struct.fscrypt_name, align 4
  %fstr = alloca %struct.fscrypt_str, align 8
  %key = alloca %union.ubifs_key, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #9
  %0 = call ptr @memset(ptr %nm, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fstr) #9
  %1 = ptrtoint ptr %fstr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %fstr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #9
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %key, align 8, !annotation !115
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info, align 16
  %i_flags = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_flags, align 4
  %and = and i32 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_readdir.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_readdir, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call i32 @llvm.read_register.i32(metadata !103) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino, align 8
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %pos, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_readdir.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.42, i32 noundef %16, i32 noundef %18, i64 noundef %20) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pos7 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %21 = ptrtoint ptr %pos7 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pos7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 536870911, i64 %22)
  %cmp = icmp sgt i64 %22, 536870911
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %22)
  %cmp9 = icmp eq i64 %22, 2
  %or.cond = or i1 %cmp, %cmp9
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %do.end
  br i1 %tobool.not, label %if.end11.if.end22_crit_edge, label %if.then13

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then13:                                        ; preds = %if.end11
  %23 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_flags, align 4
  %and.i267 = and i32 %24, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i267)
  %tobool.not.i = icmp eq i32 %and.i267, 0
  br i1 %tobool.not.i, label %if.then13.if.end17_crit_edge, label %fscrypt_prepare_readdir.exit

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

fscrypt_prepare_readdir.exit:                     ; preds = %if.then13
  %call.i = tail call i32 @__fscrypt_prepare_readdir(ptr noundef %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %fscrypt_prepare_readdir.exit.if.end17_crit_edge, label %fscrypt_prepare_readdir.exit.cleanup_crit_edge

fscrypt_prepare_readdir.exit.cleanup_crit_edge:   ; preds = %fscrypt_prepare_readdir.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fscrypt_prepare_readdir.exit.if.end17_crit_edge:  ; preds = %fscrypt_prepare_readdir.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end17:                                         ; preds = %fscrypt_prepare_readdir.exit.if.end17_crit_edge, %if.then13.if.end17_crit_edge
  %call18 = call i32 @fscrypt_fname_alloc_buffer(i32 noundef 255, ptr noundef nonnull %fstr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.fscrypt_str, ptr %fstr, i32 0, i32 1
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end11.if.end22_crit_edge
  %fstr_real_len.0 = phi i32 [ %26, %if.end21 ], [ 0, %if.end11.if.end22_crit_edge ]
  %f_version = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 14
  %27 = ptrtoint ptr %f_version to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %f_version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %cmp23 = icmp eq i64 %28, 0
  br i1 %cmp23, label %if.then24, label %if.end22.if.end26_crit_edge

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %29 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private_data, align 4
  call void @kfree(ptr noundef %30) #9
  %31 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %private_data, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22.if.end26_crit_edge
  %32 = ptrtoint ptr %f_version to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1, ptr %f_version, align 8
  %33 = ptrtoint ptr %pos7 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %pos7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %34)
  %cmp29 = icmp slt i64 %34, 2
  br i1 %cmp29, label %do.body31, label %if.end26.if.end65_crit_edge

if.end26.if.end65_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

do.body31:                                        ; preds = %if.end26
  %private_data32 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %35 = ptrtoint ptr %private_data32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %private_data32, align 4
  %tobool33.not = icmp eq ptr %36, null
  br i1 %tobool33.not, label %do.body31.do.end47_crit_edge, label %if.then44, !prof !117

do.body31.do.end47_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

if.then44:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %8, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.6, i32 noundef 549) #9
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %do.body31.do.end47_crit_edge
  %37 = ptrtoint ptr %pos7 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %pos7, align 8
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.55)
  switch i64 %38, label %do.end47.if.end53_crit_edge [
    i64 0, label %if.then.i269
    i64 1, label %do.end47.if.then6.i_crit_edge
  ]

do.end47.if.then6.i_crit_edge:                    ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

do.end47.if.end53_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then.i269:                                     ; preds = %do.end47
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 8
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i_ino.i.i, align 8
  %conv.i.i = zext i32 %46 to i64
  %call.i.i = call i32 %40(ptr noundef %ctx, ptr noundef nonnull @.str.47, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end3.thread.i, label %if.then.i269.if.then49_crit_edge

if.then.i269.if.then49_crit_edge:                 ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

if.end3.thread.i:                                 ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %pos7 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 1, ptr %pos7, align 8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.thread.i, %do.end47.if.then6.i_crit_edge
  %48 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx, align 8
  %dentry.i19.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %dentry.i19.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dentry.i19.i, align 4
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #9
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %d_parent.i.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %i_ino.i.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #9
  %conv.i20.i = zext i32 %57 to i64
  %call1.i.i = call i32 %49(ptr noundef %ctx, ptr noundef nonnull @.str.48, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i20.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i21.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i21.i, label %if.end9.i, label %if.then6.i.if.then49_crit_edge

if.then6.i.if.then49_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %pos7 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 2, ptr %pos7, align 8
  br label %if.end53

if.then49:                                        ; preds = %if.then6.i.if.then49_crit_edge, %if.then.i269.if.then49_crit_edge
  br i1 %tobool.not, label %if.then49.cleanup_crit_edge, label %if.then51

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then51:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  call void @fscrypt_fname_free_buffer(ptr noundef nonnull %fstr) #9
  br label %cleanup

if.end53:                                         ; preds = %if.end9.i, %do.end47.if.end53_crit_edge
  %i_ino54 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 11
  %59 = ptrtoint ptr %i_ino54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %i_ino54, align 8
  %61 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %key, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %62 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1073741824, ptr %arrayidx1.i, align 4
  %len55 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %len55 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %len55, align 4
  %call56 = call ptr @ubifs_tnc_next_ent(ptr noundef %8, ptr noundef nonnull %key, ptr noundef nonnull %nm) #9
  %cmp.i = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end53.out_crit_edge, label %if.end60

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.ubifs_dent_node, ptr %call56, i32 0, i32 1, i32 4
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i, align 4
  %66 = and i32 %65, -225
  %67 = call i32 @llvm.bswap.i32(i32 %66) #9
  %conv = zext i32 %67 to i64
  %68 = ptrtoint ptr %pos7 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv, ptr %pos7, align 8
  %69 = ptrtoint ptr %private_data32 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call56, ptr %private_data32, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end60, %if.end26.if.end65_crit_edge
  %private_data66 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %70 = ptrtoint ptr %private_data66 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %private_data66, align 4
  %tobool67.not = icmp eq ptr %71, null
  br i1 %tobool67.not, label %if.then68, label %if.end65.if.end84_crit_edge

if.end65.if.end84_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then68:                                        ; preds = %if.end65
  %i_ino69 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 11
  %72 = ptrtoint ptr %i_ino69 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_ino69, align 8
  %74 = ptrtoint ptr %pos7 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %pos7, align 8
  %conv71 = trunc i64 %75 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %conv71)
  %tobool.not.i271 = icmp ult i32 %conv71, 536870912
  br i1 %tobool.not.i271, label %if.then68.dent_key_init_hash.exit_crit_edge, label %if.then.i272, !prof !117

if.then68.dent_key_init_hash.exit_crit_edge:      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %dent_key_init_hash.exit

if.then.i272:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %8, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 169) #9
  br label %dent_key_init_hash.exit

dent_key_init_hash.exit:                          ; preds = %if.then.i272, %if.then68.dent_key_init_hash.exit_crit_edge
  %76 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %73, ptr %key, align 8
  %or.i = or i32 %conv71, 1073741824
  %arrayidx5.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %77 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or.i, ptr %arrayidx5.i, align 4
  %len73 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %len73 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %len73, align 4
  %call74 = call ptr @ubifs_tnc_next_ent(ptr noundef %8, ptr noundef nonnull %key, ptr noundef nonnull %nm) #9
  %cmp.i273 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i273, label %dent_key_init_hash.exit.out_crit_edge, label %if.end78

dent_key_init_hash.exit.out_crit_edge:            ; preds = %dent_key_init_hash.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end78:                                         ; preds = %dent_key_init_hash.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i274 = getelementptr %struct.ubifs_dent_node, ptr %call74, i32 0, i32 1, i32 4
  %79 = ptrtoint ptr %arrayidx.i274 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i274, align 4
  %81 = and i32 %80, -225
  %82 = call i32 @llvm.bswap.i32(i32 %81) #9
  %conv81 = zext i32 %82 to i64
  %83 = ptrtoint ptr %pos7 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv81, ptr %pos7, align 8
  %84 = ptrtoint ptr %private_data66 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call74, ptr %private_data66, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.end78, %if.end65.if.end84_crit_edge
  %dent.0 = phi ptr [ %71, %if.end65.if.end84_crit_edge ], [ %call74, %if.end78 ]
  %creat_sqnum = getelementptr inbounds %struct.ubifs_inode, ptr %4, i32 0, i32 1
  %disk_name123 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1
  %len124 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %len129 = getelementptr inbounds %struct.fscrypt_str, ptr %fstr, i32 0, i32 1
  %arrayidx3.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end159, %if.end84
  %dent.1 = phi ptr [ %dent.0, %if.end84 ], [ %call155, %if.end159 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_readdir.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_readdir, %if.then97)) #9
          to label %do.body106 [label %if.then97], !srcloc !116

if.then97:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %85 = call i32 @llvm.read_register.i32(metadata !103) #9
  %and.i275 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i275 to ptr
  %task99 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %task99 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %task99, align 8
  %pid100 = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 68
  %89 = ptrtoint ptr %pid100 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pid100, align 8
  %inum = getelementptr inbounds %struct.ubifs_dent_node, ptr %dent.1, i32 0, i32 2
  %91 = ptrtoint ptr %inum to i32
  call void @__asan_loadN_noabort(i32 %91, i32 8)
  %92 = load i64, ptr %inum, align 1
  %93 = call i64 @llvm.bswap.i64(i64 %92)
  %arrayidx.i276 = getelementptr %struct.ubifs_dent_node, ptr %dent.1, i32 0, i32 1, i32 4
  %94 = ptrtoint ptr %arrayidx.i276 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i276, align 4
  %96 = and i32 %95, -225
  %97 = call i32 @llvm.bswap.i32(i32 %96) #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_readdir.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.44, i32 noundef %90, i64 noundef %93, i32 noundef %97) #9
  br label %do.body106

do.body106:                                       ; preds = %if.then97, %while.cond
  %sqnum = getelementptr inbounds %struct.ubifs_ch, ptr %dent.1, i32 0, i32 2
  %98 = ptrtoint ptr %sqnum to i32
  call void @__asan_loadN_noabort(i32 %98, i32 8)
  %99 = load i64, ptr %sqnum, align 1
  %100 = call i64 @llvm.bswap.i64(i64 %99)
  %101 = ptrtoint ptr %creat_sqnum to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %creat_sqnum, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %100, i64 %102)
  %cmp108.not = icmp ugt i64 %100, %102
  br i1 %cmp108.not, label %do.body106.do.end121_crit_edge, label %if.then118, !prof !117

do.body106.do.end121_crit_edge:                   ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end121

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %8, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.6, i32 noundef 591) #9
  br label %do.end121

do.end121:                                        ; preds = %if.then118, %do.body106.do.end121_crit_edge
  %nlen = getelementptr inbounds %struct.ubifs_dent_node, ptr %dent.1, i32 0, i32 5
  %103 = ptrtoint ptr %nlen to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %104 = load i16, ptr %nlen, align 1
  %105 = call i16 @llvm.bswap.i16(i16 %104)
  %conv122 = zext i16 %105 to i32
  %106 = ptrtoint ptr %len124 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv122, ptr %len124, align 4
  %name = getelementptr inbounds %struct.ubifs_dent_node, ptr %dent.1, i32 0, i32 7
  %107 = ptrtoint ptr %disk_name123 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %name, ptr %disk_name123, align 4
  br i1 %tobool.not, label %if.else, label %if.then128

if.then128:                                       ; preds = %do.end121
  %108 = ptrtoint ptr %len129 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %fstr_real_len.0, ptr %len129, align 4
  %arrayidx.i277 = getelementptr %struct.ubifs_dent_node, ptr %dent.1, i32 0, i32 1, i32 4
  %109 = ptrtoint ptr %arrayidx.i277 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i277, align 4
  %111 = and i32 %110, -225
  %112 = call i32 @llvm.bswap.i32(i32 %111) #9
  %cookie = getelementptr inbounds %struct.ubifs_dent_node, ptr %dent.1, i32 0, i32 6
  %113 = ptrtoint ptr %cookie to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %cookie, align 1
  %115 = call i32 @llvm.bswap.i32(i32 %114)
  %call133 = call i32 @fscrypt_fname_disk_to_usr(ptr noundef %4, i32 noundef %112, i32 noundef %115, ptr noundef %disk_name123, ptr noundef nonnull %fstr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then128.if.end143_crit_edge, label %out.thread

if.then128.if.end143_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

out.thread:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %private_data66 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %private_data66, align 4
  call void @kfree(ptr noundef %117) #9
  %118 = ptrtoint ptr %private_data66 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %private_data66, align 4
  br label %if.then171

if.else:                                          ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %len129 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %conv122, ptr %len129, align 4
  %120 = ptrtoint ptr %fstr to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %name, ptr %fstr, align 8
  br label %if.end143

if.end143:                                        ; preds = %if.else, %if.then128.if.end143_crit_edge
  %type = getelementptr inbounds %struct.ubifs_dent_node, ptr %dent.1, i32 0, i32 4
  %121 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %122)
  %123 = icmp ult i8 %122, 7
  br i1 %123, label %switch.lookup, label %do.body.i

do.body.i:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 475, 0\0A.popsection", ""() #9, !srcloc !121
  unreachable

switch.lookup:                                    ; preds = %if.end143
  %inum146 = getelementptr inbounds %struct.ubifs_dent_node, ptr %dent.1, i32 0, i32 2
  %124 = ptrtoint ptr %inum146 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 8)
  %125 = load i64, ptr %inum146, align 1
  %126 = call i64 @llvm.bswap.i64(i64 %125)
  %127 = ptrtoint ptr %len129 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %len129, align 4
  %129 = ptrtoint ptr %fstr to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %fstr, align 8
  %131 = sext i8 %122 to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.ubifs_readdir, i32 0, i32 %131
  %132 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %132)
  %switch.load = load i32, ptr %switch.gep, align 4
  %133 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ctx, align 8
  %135 = ptrtoint ptr %pos7 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %pos7, align 8
  %call.i280 = call i32 %134(ptr noundef %ctx, ptr noundef %130, i32 noundef %128, i64 noundef %136, i64 noundef %126, i32 noundef %switch.load) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i280)
  %cmp.i281 = icmp eq i32 %call.i280, 0
  br i1 %cmp.i281, label %if.end153, label %if.then149

if.then149:                                       ; preds = %switch.lookup
  br i1 %tobool.not, label %if.then149.cleanup_crit_edge, label %if.then151

if.then149.cleanup_crit_edge:                     ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then151:                                       ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #11
  call void @fscrypt_fname_free_buffer(ptr noundef nonnull %fstr) #9
  br label %cleanup

if.end153:                                        ; preds = %switch.lookup
  %key154 = getelementptr inbounds %struct.ubifs_dent_node, ptr %dent.1, i32 0, i32 1
  %137 = ptrtoint ptr %key154 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %key154, align 8
  %139 = call i32 @llvm.bswap.i32(i32 %138) #9
  %140 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %key, align 8
  %arrayidx2.i = getelementptr %struct.ubifs_dent_node, ptr %dent.1, i32 0, i32 1, i32 4
  %141 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx2.i, align 4
  %143 = call i32 @llvm.bswap.i32(i32 %142) #9
  %144 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %arrayidx3.i, align 4
  %call155 = call ptr @ubifs_tnc_next_ent(ptr noundef %8, ptr noundef nonnull %key, ptr noundef nonnull %nm) #9
  %cmp.i282 = icmp ugt ptr %call155, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i282, label %if.end153.out_crit_edge, label %if.end159

if.end153.out_crit_edge:                          ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end159:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  %145 = ptrtoint ptr %private_data66 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %private_data66, align 4
  call void @kfree(ptr noundef %146) #9
  %arrayidx.i283 = getelementptr %struct.ubifs_dent_node, ptr %call155, i32 0, i32 1, i32 4
  %147 = ptrtoint ptr %arrayidx.i283 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.i283, align 4
  %149 = and i32 %148, -225
  %150 = call i32 @llvm.bswap.i32(i32 %149) #9
  %conv163 = zext i32 %150 to i64
  %151 = ptrtoint ptr %pos7 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %conv163, ptr %pos7, align 8
  %152 = ptrtoint ptr %private_data66 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call155, ptr %private_data66, align 4
  call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 629, i32 noundef 0) #9
  %call.i284 = call i32 @__cond_resched() #9
  br label %while.cond

out:                                              ; preds = %if.end153.out_crit_edge, %dent_key_init_hash.exit.out_crit_edge, %if.end53.out_crit_edge
  %err.0.in = phi ptr [ %call56, %if.end53.out_crit_edge ], [ %call74, %dent_key_init_hash.exit.out_crit_edge ], [ %call155, %if.end153.out_crit_edge ]
  %err.0 = ptrtoint ptr %err.0.in to i32
  %private_data168 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %153 = ptrtoint ptr %private_data168 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %private_data168, align 4
  call void @kfree(ptr noundef %154) #9
  %155 = ptrtoint ptr %private_data168 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %private_data168, align 4
  br i1 %tobool.not, label %out.if.end172_crit_edge, label %out.if.then171_crit_edge

out.if.then171_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then171

out.if.end172_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then171:                                       ; preds = %out.if.then171_crit_edge, %out.thread
  %err.0292 = phi i32 [ %call133, %out.thread ], [ %err.0, %out.if.then171_crit_edge ]
  call void @fscrypt_fname_free_buffer(ptr noundef nonnull %fstr) #9
  br label %if.end172

if.end172:                                        ; preds = %if.then171, %out.if.end172_crit_edge
  %err.0293 = phi i32 [ %err.0292, %if.then171 ], [ %err.0, %out.if.end172_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %err.0293)
  %cmp173.not = icmp eq i32 %err.0293, -2
  br i1 %cmp173.not, label %if.end172.if.end177_crit_edge, label %if.then175

if.end172.if.end177_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end177

if.then175:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %8, ptr noundef nonnull @.str.46, i32 noundef %err.0293) #9
  br label %if.end177

if.end177:                                        ; preds = %if.then175, %if.end172.if.end177_crit_edge
  %err.1 = phi i32 [ %err.0293, %if.then175 ], [ 0, %if.end172.if.end177_crit_edge ]
  %156 = ptrtoint ptr %pos7 to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 2, ptr %pos7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end177, %if.then151, %if.then149.cleanup_crit_edge, %if.then51, %if.then49.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %fscrypt_prepare_readdir.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %if.end177 ], [ 0, %do.end.cleanup_crit_edge ], [ %call.i, %fscrypt_prepare_readdir.exit.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ 0, %if.then51 ], [ 0, %if.then49.cleanup_crit_edge ], [ 0, %if.then151 ], [ 0, %if.then149.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fstr) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_dir_release(ptr nocapture noundef readnone %dir, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_set_encrypted_ci_d_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_lookup_dh(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_lookup_nm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_iget(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_has_permitted_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscrypt_prepare_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_budget_space(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_init_security(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_release_budget(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_setup_filename(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_synced_i_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_delete_orphan(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_add_orphan(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscrypt_prepare_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_purge_xattrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_prepare_symlink(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscrypt_encrypt_symlink(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_rename(ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %nm.i = alloca %struct.fscrypt_name, align 4
  %key.i = alloca %union.ubifs_key, align 8
  %whiteout = alloca ptr, align 4
  %req = alloca %struct.ubifs_budget_req, align 4
  %ino_req = alloca %struct.ubifs_budget_req, align 4
  %time = alloca %struct.timespec64, align 8
  %old_nm = alloca %struct.fscrypt_name, align 4
  %new_nm = alloca %struct.fscrypt_name, align 4
  %wht_req = alloca %struct.ubifs_budget_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i460 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i460 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i460, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %whiteout) #9
  %8 = ptrtoint ptr %whiteout to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %whiteout, align 4
  %cmp.not = icmp eq ptr %new_dir, %old_dir
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %5, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %11)
  %cmp4 = icmp eq i16 %11, 16384
  %tobool.not = icmp eq ptr %7, null
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #9
  %12 = call ptr @memcpy(ptr %req, ptr @__const.do_rename.req, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ino_req) #9
  %13 = getelementptr inbounds i8, ptr %ino_req, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4
  %15 = ptrtoint ptr %ino_req to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 256, ptr %ino_req, align 4
  %dirtied_ino_d = getelementptr inbounds %struct.ubifs_budget_req, ptr %ino_req, i32 0, i32 1
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 15
  %16 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len, align 4
  %18 = trunc i32 %17 to i16
  %19 = shl i16 %18, 1
  %bf.value = add i16 %19, 14
  %bf.shl = and i16 %bf.value, -16
  %bf.set34 = or i16 %bf.shl, 1
  %20 = ptrtoint ptr %dirtied_ino_d to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %bf.set34, ptr %dirtied_ino_d, align 4
  %idx_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %ino_req, i32 0, i32 2
  %21 = ptrtoint ptr %idx_growth to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %idx_growth, align 4
  %data_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %ino_req, i32 0, i32 3
  %22 = ptrtoint ptr %data_growth to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %data_growth, align 4
  %dd_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %ino_req, i32 0, i32 4
  %23 = ptrtoint ptr %dd_growth to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %dd_growth, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %time)
  %24 = call ptr @memset(ptr %time, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old_nm) #9
  %25 = call ptr @memset(ptr %old_nm, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %new_nm) #9
  %26 = call ptr @memset(ptr %new_nm, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_rename.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_rename, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %27 = tail call i32 @llvm.read_register.i32(metadata !103) #9
  %and.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %33 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_ino, align 8
  %i_ino43 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 11
  %35 = ptrtoint ptr %i_ino43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_ino43, align 8
  %i_ino44 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 11
  %37 = ptrtoint ptr %i_ino44 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_ino44, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_rename.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.34, i32 noundef %32, ptr noundef %old_dentry, i32 noundef %34, i32 noundef %36, ptr noundef %new_dentry, i32 noundef %38, i32 noundef %flags) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  br i1 %tobool.not, label %do.end.if.end74_crit_edge, label %do.body47

do.end.if.end74_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

do.body47:                                        ; preds = %do.end
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #9
  %39 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i.not = icmp eq i32 %40, 0
  br i1 %cmp.i.i.not, label %if.then58, label %do.body47.do.end61_crit_edge, !prof !118

do.body47.do.end61_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end61

if.then58:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.6, i32 noundef 1285) #9
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %do.body47.do.end61_crit_edge
  %call62 = tail call i32 @ubifs_purge_xattrs(ptr noundef nonnull %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true.critedge, label %do.end61.cleanup317_crit_edge

do.end61.cleanup317_crit_edge:                    ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup317

land.lhs.true.critedge:                           ; preds = %do.end61
  br i1 %cmp4, label %if.then69, label %land.lhs.true.critedge.if.end74_crit_edge

land.lhs.true.critedge.if.end74_crit_edge:        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then69:                                        ; preds = %land.lhs.true.critedge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %41 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 33
  %43 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm.i) #9
  %45 = call ptr @memset(ptr %nm.i, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key.i) #9
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 11
  %46 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_ino.i, align 8
  %48 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %key.i, align 8
  %arrayidx1.i.i = getelementptr inbounds [2 x i32], ptr %key.i, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1073741824, ptr %arrayidx1.i.i, align 4
  %call.i = call ptr @ubifs_tnc_next_ent(ptr noundef %44, ptr noundef nonnull %key.i, ptr noundef nonnull %nm.i) #9
  %cmp.i.i461 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i461, label %if.then.i, label %ubifs_check_dir_empty.exit.thread473

if.then.i:                                        ; preds = %if.then69
  %cmp.i = icmp eq ptr %call.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.i, label %ubifs_check_dir_empty.exit.thread, label %ubifs_check_dir_empty.exit

ubifs_check_dir_empty.exit.thread473:             ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm.i) #9
  br label %cleanup317

ubifs_check_dir_empty.exit.thread:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm.i) #9
  br label %if.end74

ubifs_check_dir_empty.exit:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %call.i to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm.i) #9
  br label %cleanup317

if.end74:                                         ; preds = %ubifs_check_dir_empty.exit.thread, %land.lhs.true.critedge.if.end74_crit_edge, %do.end.if.end74_crit_edge
  %d_name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %call75 = call i32 @fscrypt_setup_filename(ptr noundef %old_dir, ptr noundef %d_name, i32 noundef 0, ptr noundef nonnull %old_nm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end74.cleanup317_crit_edge

if.end74.cleanup317_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup317

if.end78:                                         ; preds = %if.end74
  %d_name79 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %call80 = call i32 @fscrypt_setup_filename(ptr noundef %new_dir, ptr noundef %d_name79, i32 noundef 0, ptr noundef nonnull %new_nm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %crypto_buf.i = getelementptr inbounds %struct.fscrypt_name, ptr %old_nm, i32 0, i32 4
  %51 = ptrtoint ptr %crypto_buf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %crypto_buf.i, align 4
  call void @kfree(ptr noundef %52) #9
  br label %cleanup317

if.end83:                                         ; preds = %if.end78
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %new_nm, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  %add86 = add i32 %54, 64
  %and87 = and i32 %add86, -8
  %len89 = getelementptr inbounds %struct.fscrypt_name, ptr %old_nm, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %len89 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len89, align 4
  %add92 = add i32 %56, 64
  %and93 = and i32 %add92, -8
  %call94 = call i32 @ubifs_budget_space(ptr noundef %3, ptr noundef nonnull %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.then96

if.then96:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %crypto_buf.i462 = getelementptr inbounds %struct.fscrypt_name, ptr %old_nm, i32 0, i32 4
  %57 = ptrtoint ptr %crypto_buf.i462 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %crypto_buf.i462, align 4
  call void @kfree(ptr noundef %58) #9
  %crypto_buf.i463 = getelementptr inbounds %struct.fscrypt_name, ptr %new_nm, i32 0, i32 4
  %59 = ptrtoint ptr %crypto_buf.i463 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %crypto_buf.i463, align 4
  call void @kfree(ptr noundef %60) #9
  br label %cleanup317

if.end97:                                         ; preds = %if.end83
  %call98 = call i32 @ubifs_budget_space(ptr noundef %3, ptr noundef nonnull %ino_req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %crypto_buf.i464 = getelementptr inbounds %struct.fscrypt_name, ptr %old_nm, i32 0, i32 4
  %61 = ptrtoint ptr %crypto_buf.i464 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %crypto_buf.i464, align 4
  call void @kfree(ptr noundef %62) #9
  %crypto_buf.i465 = getelementptr inbounds %struct.fscrypt_name, ptr %new_nm, i32 0, i32 4
  %63 = ptrtoint ptr %crypto_buf.i465 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %crypto_buf.i465, align 4
  call void @kfree(ptr noundef %64) #9
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  br label %cleanup317

if.end101:                                        ; preds = %if.end97
  %and102 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end101.if.end134_crit_edge, label %if.then104

if.end101.if.end134_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then104:                                       ; preds = %if.end101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %65 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3136, i32 noundef 8) #12
  %tobool106.not = icmp eq ptr %call7.i, null
  br i1 %tobool106.not, label %if.then104.out_release_crit_edge, label %if.end108

if.then104.out_release_crit_edge:                 ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release

if.end108:                                        ; preds = %if.then104
  %call109 = call fastcc i32 @do_tmpfile(ptr noundef %old_dir, ptr noundef %old_dentry, i16 noundef zeroext 8192, ptr noundef nonnull %whiteout)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %if.then111

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %out_release

if.end112:                                        ; preds = %if.end108
  %66 = ptrtoint ptr %whiteout to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %whiteout, align 4
  %i_lock = getelementptr inbounds %struct.inode, ptr %67, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock) #9
  %68 = ptrtoint ptr %whiteout to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %whiteout, align 4
  %i_state = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 24
  %70 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %i_state, align 8
  %or = or i32 %71, 1024
  store i32 %or, ptr %i_state, align 8
  %i_lock113 = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 18
  call void @_raw_spin_unlock(ptr noundef %i_lock113) #9
  %72 = ptrtoint ptr %whiteout to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %whiteout, align 4
  %data = getelementptr inbounds %struct.ubifs_inode, ptr %73, i32 0, i32 16
  %74 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i, ptr %data, align 8
  %75 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %call7.i, align 8
  %data_len116 = getelementptr inbounds %struct.ubifs_inode, ptr %73, i32 0, i32 15
  %76 = ptrtoint ptr %data_len116 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 4, ptr %data_len116, align 4
  %dirty = getelementptr inbounds %struct.ubifs_inode, ptr %73, i32 0, i32 6
  %77 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load118 = load i8, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load118)
  %tobool119.not = icmp sgt i8 %bf.load118, -1
  br i1 %tobool119.not, label %if.end112.if.end134_crit_edge, label %if.then130, !prof !117

if.end112.if.end134_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then130:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.6, i32 noundef 1347) #9
  br label %if.end134

if.end134:                                        ; preds = %if.then130, %if.end112.if.end134_crit_edge, %if.end101.if.end134_crit_edge
  %whiteout_ui.1 = phi ptr [ null, %if.end101.if.end134_crit_edge ], [ %73, %if.then130 ], [ %73, %if.end112.if.end134_crit_edge ]
  %78 = ptrtoint ptr %whiteout to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %whiteout, align 4
  call fastcc void @lock_4_inodes(ptr noundef %old_dir, ptr noundef %new_dir, ptr noundef %7, ptr noundef %79)
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %time, ptr noundef %old_dir) #9
  %i_ctime = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 17
  %80 = call ptr @memcpy(ptr %i_ctime, ptr %time, i32 16)
  br i1 %cmp4, label %if.then137, label %if.end134.if.end147_crit_edge

if.end134.if.end147_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

if.then137:                                       ; preds = %if.end134
  br i1 %cmp.not, label %if.else, label %if.then139

if.then139:                                       ; preds = %if.then137
  call void @drop_nlink(ptr noundef %old_dir) #9
  br i1 %tobool.not, label %if.then141, label %if.then139.if.end147_crit_edge

if.then139.if.end147_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

if.then141:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  call void @inc_nlink(ptr noundef %new_dir) #9
  br label %if.end147

if.else:                                          ; preds = %if.then137
  br i1 %tobool.not, label %if.else.if.end147_crit_edge, label %if.then144

if.else.if.end147_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

if.then144:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @drop_nlink(ptr noundef %old_dir) #9
  br label %if.end147

if.end147:                                        ; preds = %if.then144, %if.else.if.end147_crit_edge, %if.then141, %if.then139.if.end147_crit_edge, %if.end134.if.end147_crit_edge
  %conv148 = sext i32 %and93 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 14
  %81 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %i_size, align 8
  %sub = sub i64 %82, %conv148
  store i64 %sub, ptr %i_size, align 8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %old_dir, i32 0, i32 11
  %83 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %sub, ptr %ui_size, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 16
  %i_ctime151 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 17
  %84 = call ptr @memcpy(ptr %i_ctime151, ptr %time, i32 16)
  %85 = call ptr @memcpy(ptr %i_mtime, ptr %time, i32 16)
  %i_mtime152 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 16
  %i_ctime153 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 17
  %86 = call ptr @memcpy(ptr %i_ctime153, ptr %time, i32 16)
  %87 = call ptr @memcpy(ptr %i_mtime152, ptr %time, i32 16)
  br i1 %tobool.not, label %if.else161, label %if.then155

if.then155:                                       ; preds = %if.end147
  %88 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 12
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  br i1 %cmp4, label %if.then157, label %if.else158

if.then157:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #11
  call void @clear_nlink(ptr noundef nonnull %7) #9
  br label %if.end159

if.else158:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #11
  call void @drop_nlink(ptr noundef nonnull %7) #9
  br label %if.end159

if.end159:                                        ; preds = %if.else158, %if.then157
  %i_ctime160 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 17
  %91 = call ptr @memcpy(ptr %i_ctime160, ptr %time, i32 16)
  br label %if.end168

if.else161:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  %conv162 = sext i32 %and87 to i64
  %i_size163 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 14
  %92 = ptrtoint ptr %i_size163 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %i_size163, align 8
  %add164 = add i64 %93, %conv162
  store i64 %add164, ptr %i_size163, align 8
  %ui_size167 = getelementptr inbounds %struct.ubifs_inode, ptr %new_dir, i32 0, i32 11
  %94 = ptrtoint ptr %ui_size167 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %add164, ptr %ui_size167, align 8
  br label %if.end168

if.end168:                                        ; preds = %if.else161, %if.end159
  %saved_nlink.0 = phi i32 [ %90, %if.end159 ], [ -1, %if.else161 ]
  %i_sb169 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %95 = ptrtoint ptr %i_sb169 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i_sb169, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %96, i32 0, i32 10
  %97 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %s_flags, align 4
  %and170 = and i32 %98, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %lor.lhs.false, label %if.end168.if.then174_crit_edge

if.end168.if.then174_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then174

lor.lhs.false:                                    ; preds = %if.end168
  %i_flags = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 4
  %99 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %i_flags, align 4
  %and172 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %lor.lhs.false.if.end204_crit_edge, label %lor.lhs.false.if.then174_crit_edge

lor.lhs.false.if.then174_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then174

lor.lhs.false.if.end204_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end204

if.then174:                                       ; preds = %lor.lhs.false.if.then174_crit_edge, %if.end168.if.then174_crit_edge
  %101 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %i_sb, align 4
  %s_flags176 = getelementptr inbounds %struct.super_block, ptr %102, i32 0, i32 10
  %103 = ptrtoint ptr %s_flags176 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %s_flags176, align 4
  %and177 = and i32 %104, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %lor.lhs.false179, label %if.then174.lor.end191_crit_edge

if.then174.lor.end191_crit_edge:                  ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end191

lor.lhs.false179:                                 ; preds = %if.then174
  %i_flags180 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 4
  %105 = ptrtoint ptr %i_flags180 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %i_flags180, align 4
  %and181 = and i32 %106, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %lor.rhs, label %lor.lhs.false179.lor.end191_crit_edge

lor.lhs.false179.lor.end191_crit_edge:            ; preds = %lor.lhs.false179
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end191

lor.rhs:                                          ; preds = %lor.lhs.false179
  %i_sb183 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 8
  %107 = ptrtoint ptr %i_sb183 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i_sb183, align 4
  %s_flags184 = getelementptr inbounds %struct.super_block, ptr %108, i32 0, i32 10
  %109 = ptrtoint ptr %s_flags184 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %s_flags184, align 4
  %and185 = and i32 %110, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %lor.rhs187, label %lor.rhs.lor.end191_crit_edge

lor.rhs.lor.end191_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end191

lor.rhs187:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %i_flags188 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 4
  %111 = ptrtoint ptr %i_flags188 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %i_flags188, align 4
  %and189 = and i32 %112, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190 = icmp ne i32 %and189, 0
  br label %lor.end191

lor.end191:                                       ; preds = %lor.rhs187, %lor.rhs.lor.end191_crit_edge, %lor.lhs.false179.lor.end191_crit_edge, %if.then174.lor.end191_crit_edge
  %113 = phi i1 [ true, %lor.lhs.false179.lor.end191_crit_edge ], [ true, %if.then174.lor.end191_crit_edge ], [ true, %lor.rhs.lor.end191_crit_edge ], [ %tobool190, %lor.rhs187 ]
  br i1 %tobool.not, label %lor.end191.if.end204_crit_edge, label %land.lhs.true193

lor.end191.if.end204_crit_edge:                   ; preds = %lor.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end204

land.lhs.true193:                                 ; preds = %lor.end191
  %i_sb194 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %114 = ptrtoint ptr %i_sb194 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %i_sb194, align 4
  %s_flags195 = getelementptr inbounds %struct.super_block, ptr %115, i32 0, i32 10
  %116 = ptrtoint ptr %s_flags195 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %s_flags195, align 4
  %and196 = and i32 %117, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %lor.lhs.false198, label %land.lhs.true193.if.then202_crit_edge

land.lhs.true193.if.then202_crit_edge:            ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then202

lor.lhs.false198:                                 ; preds = %land.lhs.true193
  %i_flags199 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  %118 = ptrtoint ptr %i_flags199 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %i_flags199, align 4
  %and200 = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %lor.lhs.false198.if.end204_crit_edge, label %lor.lhs.false198.if.then202_crit_edge

lor.lhs.false198.if.then202_crit_edge:            ; preds = %lor.lhs.false198
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then202

lor.lhs.false198.if.end204_crit_edge:             ; preds = %lor.lhs.false198
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end204

if.then202:                                       ; preds = %lor.lhs.false198.if.then202_crit_edge, %land.lhs.true193.if.then202_crit_edge
  br label %if.end204

if.end204:                                        ; preds = %if.then202, %lor.lhs.false198.if.end204_crit_edge, %lor.end191.if.end204_crit_edge, %lor.lhs.false.if.end204_crit_edge
  %sync.0.shrunk = phi i1 [ true, %if.then202 ], [ %113, %lor.lhs.false198.if.end204_crit_edge ], [ %113, %lor.end191.if.end204_crit_edge ], [ false, %lor.lhs.false.if.end204_crit_edge ]
  %sync.0 = zext i1 %sync.0.shrunk to i32
  %120 = ptrtoint ptr %whiteout to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %whiteout, align 4
  %tobool205.not = icmp eq ptr %121, null
  br i1 %tobool205.not, label %if.end204.if.end260_crit_edge, label %if.then206

if.end204.if.end260_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end260

if.then206:                                       ; preds = %if.end204
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wht_req) #9
  %122 = getelementptr inbounds i8, ptr %wht_req, i32 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 -1, ptr %122, align 4
  %124 = ptrtoint ptr %wht_req to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 256, ptr %wht_req, align 4
  %dirtied_ino_d234 = getelementptr inbounds %struct.ubifs_budget_req, ptr %wht_req, i32 0, i32 1
  %data_len236 = getelementptr inbounds %struct.ubifs_inode, ptr %121, i32 0, i32 15
  %125 = ptrtoint ptr %data_len236 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %data_len236, align 4
  %127 = trunc i32 %126 to i16
  %128 = shl i16 %127, 1
  %bf.value240 = add i16 %128, 14
  %bf.shl241 = and i16 %bf.value240, -16
  %bf.set243 = or i16 %bf.shl241, 1
  %129 = ptrtoint ptr %dirtied_ino_d234 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %bf.set243, ptr %dirtied_ino_d234, align 4
  %idx_growth244 = getelementptr inbounds %struct.ubifs_budget_req, ptr %wht_req, i32 0, i32 2
  %130 = ptrtoint ptr %idx_growth244 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %idx_growth244, align 4
  %data_growth245 = getelementptr inbounds %struct.ubifs_budget_req, ptr %wht_req, i32 0, i32 3
  %131 = ptrtoint ptr %data_growth245 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %data_growth245, align 4
  %dd_growth246 = getelementptr inbounds %struct.ubifs_budget_req, ptr %wht_req, i32 0, i32 4
  %132 = ptrtoint ptr %dd_growth246 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %dd_growth246, align 4
  %call247 = call i32 @ubifs_budget_space(ptr noundef %3, ptr noundef nonnull %wht_req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %cleanup257.thread, label %cleanup257

cleanup257.thread:                                ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #11
  %133 = ptrtoint ptr %whiteout to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %whiteout, align 4
  call void @inc_nlink(ptr noundef %134) #9
  %135 = ptrtoint ptr %whiteout to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %whiteout, align 4
  call void @__mark_inode_dirty(ptr noundef %136, i32 noundef 7) #9
  %137 = ptrtoint ptr %whiteout to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %whiteout, align 4
  %i_lock253 = getelementptr inbounds %struct.inode, ptr %138, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock253) #9
  %139 = ptrtoint ptr %whiteout to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %whiteout, align 4
  %i_state254 = getelementptr inbounds %struct.inode, ptr %140, i32 0, i32 24
  %141 = ptrtoint ptr %i_state254 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %i_state254, align 8
  %and255 = and i32 %142, -1025
  store i32 %and255, ptr %i_state254, align 8
  %i_lock256 = getelementptr inbounds %struct.inode, ptr %140, i32 0, i32 18
  call void @_raw_spin_unlock(ptr noundef %i_lock256) #9
  %143 = ptrtoint ptr %whiteout to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %whiteout, align 4
  call void @iput(ptr noundef %144) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wht_req) #9
  br label %if.end260

cleanup257:                                       ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #11
  %data250 = getelementptr inbounds %struct.ubifs_inode, ptr %whiteout_ui.1, i32 0, i32 16
  %145 = ptrtoint ptr %data250 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %data250, align 8
  call void @kfree(ptr noundef %146) #9
  %data_len251 = getelementptr inbounds %struct.ubifs_inode, ptr %whiteout_ui.1, i32 0, i32 15
  %147 = ptrtoint ptr %data_len251 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %data_len251, align 4
  %148 = ptrtoint ptr %whiteout to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %whiteout, align 4
  call void @iput(ptr noundef %149) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wht_req) #9
  br label %out_release

if.end260:                                        ; preds = %cleanup257.thread, %if.end204.if.end260_crit_edge
  %150 = ptrtoint ptr %whiteout to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %whiteout, align 4
  %call261 = call i32 @ubifs_jnl_rename(ptr noundef %3, ptr noundef %old_dir, ptr noundef %5, ptr noundef nonnull %old_nm, ptr noundef %new_dir, ptr noundef %7, ptr noundef nonnull %new_nm, ptr noundef %151, i32 noundef %sync.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %if.end264, label %out_cancel

if.end264:                                        ; preds = %if.end260
  %152 = ptrtoint ptr %whiteout to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %whiteout, align 4
  call fastcc void @unlock_4_inodes(ptr noundef %old_dir, ptr noundef %new_dir, ptr noundef %7, ptr noundef %153)
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex, i32 noundef 0) #9
  %dirty265 = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 6
  %154 = ptrtoint ptr %dirty265 to i32
  call void @__asan_load1_noabort(i32 %154)
  %bf.load266 = load i8, ptr %dirty265, align 4
  call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 1) #9
  call void @mutex_unlock(ptr noundef %ui_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load266)
  %tobool270.not = icmp sgt i8 %bf.load266, -1
  br i1 %tobool270.not, label %if.end264.if.end272_crit_edge, label %if.then271

if.end264.if.end272_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end272

if.then271:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %ino_req) #9
  br label %if.end272

if.end272:                                        ; preds = %if.then271, %if.end264.if.end272_crit_edge
  %155 = ptrtoint ptr %i_sb169 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %i_sb169, align 4
  %s_flags274 = getelementptr inbounds %struct.super_block, ptr %156, i32 0, i32 10
  %157 = ptrtoint ptr %s_flags274 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %s_flags274, align 4
  %and275 = and i32 %158, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and275)
  %tobool276.not = icmp eq i32 %and275, 0
  br i1 %tobool276.not, label %lor.lhs.false277, label %if.end272.if.then281_crit_edge

if.end272.if.then281_crit_edge:                   ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then281

lor.lhs.false277:                                 ; preds = %if.end272
  %i_flags278 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 4
  %159 = ptrtoint ptr %i_flags278 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %i_flags278, align 4
  %and279 = and i32 %160, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and279)
  %tobool280.not = icmp eq i32 %and279, 0
  br i1 %tobool280.not, label %lor.lhs.false277.if.end284_crit_edge, label %lor.lhs.false277.if.then281_crit_edge

lor.lhs.false277.if.then281_crit_edge:            ; preds = %lor.lhs.false277
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then281

lor.lhs.false277.if.end284_crit_edge:             ; preds = %lor.lhs.false277
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end284

if.then281:                                       ; preds = %lor.lhs.false277.if.then281_crit_edge, %if.end272.if.then281_crit_edge
  %s_op = getelementptr inbounds %struct.super_block, ptr %156, i32 0, i32 6
  %161 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %s_op, align 4
  %write_inode = getelementptr inbounds %struct.super_operations, ptr %162, i32 0, i32 4
  %163 = ptrtoint ptr %write_inode to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %write_inode, align 4
  %call283 = call i32 %164(ptr noundef %5, ptr noundef null) #9
  br label %if.end284

if.end284:                                        ; preds = %if.then281, %lor.lhs.false277.if.end284_crit_edge
  %err.1 = phi i32 [ %call283, %if.then281 ], [ 0, %lor.lhs.false277.if.end284_crit_edge ]
  %crypto_buf.i466 = getelementptr inbounds %struct.fscrypt_name, ptr %old_nm, i32 0, i32 4
  %165 = ptrtoint ptr %crypto_buf.i466 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %crypto_buf.i466, align 4
  call void @kfree(ptr noundef %166) #9
  %crypto_buf.i467 = getelementptr inbounds %struct.fscrypt_name, ptr %new_nm, i32 0, i32 4
  %167 = ptrtoint ptr %crypto_buf.i467 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %crypto_buf.i467, align 4
  call void @kfree(ptr noundef %168) #9
  br label %cleanup317

out_cancel:                                       ; preds = %if.end260
  br i1 %tobool.not, label %if.else287, label %if.then286

if.then286:                                       ; preds = %out_cancel
  call void @__sanitizer_cov_trace_pc() #11
  call void @set_nlink(ptr noundef nonnull %7, i32 noundef %saved_nlink.0) #9
  br label %if.end294

if.else287:                                       ; preds = %out_cancel
  call void @__sanitizer_cov_trace_pc() #11
  %conv288 = sext i32 %and87 to i64
  %i_size289 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 14
  %169 = ptrtoint ptr %i_size289 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %i_size289, align 8
  %sub290 = sub i64 %170, %conv288
  store i64 %sub290, ptr %i_size289, align 8
  %ui_size293 = getelementptr inbounds %struct.ubifs_inode, ptr %new_dir, i32 0, i32 11
  %171 = ptrtoint ptr %ui_size293 to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %sub290, ptr %ui_size293, align 8
  br label %if.end294

if.end294:                                        ; preds = %if.else287, %if.then286
  %172 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %i_size, align 8
  %add297 = add i64 %173, %conv148
  store i64 %add297, ptr %i_size, align 8
  %174 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %add297, ptr %ui_size, align 8
  br i1 %cmp4, label %if.then302, label %if.end294.if.end313_crit_edge

if.end294.if.end313_crit_edge:                    ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end313

if.then302:                                       ; preds = %if.end294
  br i1 %cmp.not, label %if.else308, label %if.then304

if.then304:                                       ; preds = %if.then302
  call void @inc_nlink(ptr noundef %old_dir) #9
  br i1 %tobool.not, label %if.then306, label %if.then304.if.end313_crit_edge

if.then304.if.end313_crit_edge:                   ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end313

if.then306:                                       ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #11
  call void @drop_nlink(ptr noundef %new_dir) #9
  br label %if.end313

if.else308:                                       ; preds = %if.then302
  br i1 %tobool.not, label %if.else308.if.end313_crit_edge, label %if.then310

if.else308.if.end313_crit_edge:                   ; preds = %if.else308
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end313

if.then310:                                       ; preds = %if.else308
  call void @__sanitizer_cov_trace_pc() #11
  call void @inc_nlink(ptr noundef %old_dir) #9
  br label %if.end313

if.end313:                                        ; preds = %if.then310, %if.else308.if.end313_crit_edge, %if.then306, %if.then304.if.end313_crit_edge, %if.end294.if.end313_crit_edge
  %175 = ptrtoint ptr %whiteout to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %whiteout, align 4
  %tobool314.not = icmp eq ptr %176, null
  br i1 %tobool314.not, label %if.end313.if.end316_crit_edge, label %if.then315

if.end313.if.end316_crit_edge:                    ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end316

if.then315:                                       ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #11
  call void @drop_nlink(ptr noundef nonnull %176) #9
  %177 = ptrtoint ptr %whiteout to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %whiteout, align 4
  call void @iput(ptr noundef %178) #9
  br label %if.end316

if.end316:                                        ; preds = %if.then315, %if.end313.if.end316_crit_edge
  %179 = ptrtoint ptr %whiteout to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %whiteout, align 4
  call fastcc void @unlock_4_inodes(ptr noundef %old_dir, ptr noundef %new_dir, ptr noundef %7, ptr noundef %180)
  br label %out_release

out_release:                                      ; preds = %if.end316, %cleanup257, %if.then111, %if.then104.out_release_crit_edge
  %err.2 = phi i32 [ %call247, %cleanup257 ], [ %call261, %if.end316 ], [ %call109, %if.then111 ], [ -12, %if.then104.out_release_crit_edge ]
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %ino_req) #9
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  %crypto_buf.i468 = getelementptr inbounds %struct.fscrypt_name, ptr %old_nm, i32 0, i32 4
  %181 = ptrtoint ptr %crypto_buf.i468 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %crypto_buf.i468, align 4
  call void @kfree(ptr noundef %182) #9
  %crypto_buf.i469 = getelementptr inbounds %struct.fscrypt_name, ptr %new_nm, i32 0, i32 4
  %183 = ptrtoint ptr %crypto_buf.i469 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %crypto_buf.i469, align 4
  call void @kfree(ptr noundef %184) #9
  br label %cleanup317

cleanup317:                                       ; preds = %out_release, %if.end284, %if.then100, %if.then96, %if.then82, %if.end74.cleanup317_crit_edge, %ubifs_check_dir_empty.exit, %ubifs_check_dir_empty.exit.thread473, %do.end61.cleanup317_crit_edge
  %retval.0 = phi i32 [ %call80, %if.then82 ], [ %call94, %if.then96 ], [ %call98, %if.then100 ], [ %err.2, %out_release ], [ %err.1, %if.end284 ], [ %call62, %do.end61.cleanup317_crit_edge ], [ %50, %ubifs_check_dir_empty.exit ], [ %call75, %if.end74.cleanup317_crit_edge ], [ -39, %ubifs_check_dir_empty.exit.thread473 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %new_nm) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old_nm) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %time)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ino_req) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %whiteout) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscrypt_prepare_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lock_4_inodes(ptr noundef %inode1, ptr noundef %inode2, ptr noundef %inode3, ptr noundef %inode4) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %inode1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ui_mutex, i32 noundef 0) #9
  %cmp.not = icmp eq ptr %inode2, %inode1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ui_mutex2 = getelementptr inbounds %struct.ubifs_inode, ptr %inode2, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ui_mutex2, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool.not = icmp eq ptr %inode3, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ui_mutex5 = getelementptr inbounds %struct.ubifs_inode, ptr %inode3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ui_mutex5, i32 noundef 2) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %inode4, null
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %ui_mutex10 = getelementptr inbounds %struct.ubifs_inode, ptr %inode4, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ui_mutex10, i32 noundef 3) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_xrename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unlock_4_inodes(ptr noundef %inode1, ptr noundef %inode2, ptr noundef %inode3, ptr noundef %inode4) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %inode4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %inode4, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %ui_mutex) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %inode3, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ui_mutex4 = getelementptr inbounds %struct.ubifs_inode, ptr %inode3, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %ui_mutex4) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %cmp.not = icmp eq ptr %inode1, %inode2
  br i1 %cmp.not, label %if.end5.if.end9_crit_edge, label %if.then6

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %ui_mutex8 = getelementptr inbounds %struct.ubifs_inode, ptr %inode2, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %ui_mutex8) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end5.if.end9_crit_edge
  %ui_mutex11 = getelementptr inbounds %struct.ubifs_inode, ptr %inode1, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %ui_mutex11) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_tmpfile(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef writeonly %whiteout) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.ubifs_budget_req, align 4
  %ino_req = alloca %struct.ubifs_budget_req, align 4
  %nm = alloca %struct.fscrypt_name, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #9
  %4 = call ptr @memcpy(ptr %req, ptr @__const.do_tmpfile.req, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ino_req) #9
  %5 = call ptr @memcpy(ptr %ino_req, ptr @__const.do_tmpfile.ino_req, i32 20)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #9
  %6 = call ptr @memset(ptr %nm, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_tmpfile.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_tmpfile, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = tail call i32 @llvm.read_register.i32(metadata !103) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  %conv = zext i16 %mode to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_tmpfile.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.14, i32 noundef %12, ptr noundef %dentry, i32 noundef %conv, i32 noundef %14) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call5 = call i32 @fscrypt_setup_filename(ptr noundef %dir, ptr noundef %d_name, i32 noundef 0, ptr noundef nonnull %nm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %call9 = call i32 @ubifs_budget_space(ptr noundef %3, ptr noundef nonnull %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %crypto_buf.i = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 4
  %15 = ptrtoint ptr %crypto_buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %crypto_buf.i, align 4
  call void @kfree(ptr noundef %16) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @ubifs_budget_space(ptr noundef %3, ptr noundef nonnull %ino_req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  %crypto_buf.i134 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 4
  %17 = ptrtoint ptr %crypto_buf.i134 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %crypto_buf.i134, align 4
  call void @kfree(ptr noundef %18) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = call ptr @ubifs_new_inode(ptr noundef %3, ptr noundef %dir, i16 noundef zeroext %mode)
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call17 to i32
  br label %if.then74

if.end21:                                         ; preds = %if.end16
  %tobool23.not = icmp eq ptr %whiteout, null
  br i1 %tobool23.not, label %if.end21.if.end39_crit_edge, label %if.then24

if.end21.if.end39_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then24:                                        ; preds = %if.end21
  %20 = ptrtoint ptr %call17 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %call17, align 8
  call void @init_special_inode(ptr noundef %call17, i16 noundef zeroext %21, i32 noundef 0) #9
  %i_op = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 7
  %22 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_op, align 8
  %cmp.not = icmp eq ptr %23, @ubifs_file_inode_operations
  br i1 %cmp.not, label %if.then24.if.end39_crit_edge, label %if.then35, !prof !117

if.then24.if.end39_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then35:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.6, i32 noundef 397) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.then24.if.end39_crit_edge, %if.end21.if.end39_crit_edge
  %call41 = call i32 @ubifs_init_security(ptr noundef %dir, ptr noundef %call17, ptr noundef %d_name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.then71

if.end44:                                         ; preds = %if.end39
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %call17, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex, i32 noundef 0) #9
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 11
  %24 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino.i, align 8
  call void @__insert_inode_hash(ptr noundef %call17, i32 noundef %25) #9
  br i1 %tobool23.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mark_inode_dirty(ptr noundef %call17, i32 noundef 7) #9
  call void @drop_nlink(ptr noundef %call17) #9
  %26 = ptrtoint ptr %whiteout to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call17, ptr %whiteout, align 4
  br label %do.body48

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  call void @d_tmpfile(ptr noundef %dentry, ptr noundef %call17) #9
  br label %do.body48

do.body48:                                        ; preds = %if.else, %if.then46
  %dirty = getelementptr inbounds %struct.ubifs_inode, ptr %call17, i32 0, i32 6
  %27 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool49.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool49.not, label %if.then58, label %do.body48.do.end61_crit_edge, !prof !118

do.body48.do.end61_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end61

if.then58:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.6, i32 noundef 414) #9
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %do.body48.do.end61_crit_edge
  call void @mutex_unlock(ptr noundef %ui_mutex) #9
  %ui_mutex63 = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex63, i32 noundef 0) #9
  %call64 = call i32 @ubifs_jnl_update(ptr noundef %3, ptr noundef %dir, ptr noundef nonnull %nm, ptr noundef %call17, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  call void @mutex_unlock(ptr noundef %ui_mutex63) #9
  br i1 %tobool65.not, label %if.end67, label %out_budg

if.end67:                                         ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  br label %cleanup

if.then71:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  call void @make_bad_inode(ptr noundef %call17) #9
  call void @iput(ptr noundef %call17) #9
  br label %if.then74

out_budg:                                         ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  call void @make_bad_inode(ptr noundef %call17) #9
  br label %if.end75

if.then74:                                        ; preds = %if.then71, %if.then19
  %err.1.ph = phi i32 [ %call41, %if.then71 ], [ %19, %if.then19 ]
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #9
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %out_budg
  %req.sink = phi ptr [ %req, %out_budg ], [ %ino_req, %if.then74 ]
  %err.1140 = phi i32 [ %call64, %out_budg ], [ %err.1.ph, %if.then74 ]
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req.sink) #9
  %crypto_buf.i135 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 4
  %28 = ptrtoint ptr %crypto_buf.i135 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %crypto_buf.i135, align 4
  call void @kfree(ptr noundef %29) #9
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %3, ptr noundef nonnull @.str.40, i32 noundef %err.1140) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.end67, %if.then15, %if.then11, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then11 ], [ %call13, %if.then15 ], [ %err.1140, %if.end75 ], [ 0, %if.end67 ], [ %call5, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ino_req) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_tmpfile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_fname_alloc_buffer(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_fname_free_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_fname_disk_to_usr(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscrypt_prepare_readdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !23, !25, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !72, !73, !75, !77, !79, !80, !82, !84, !86, !88, !89, !90, !92, !94, !95, !97, !99, !101}
!llvm.named.register.sp = !{!103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/dir.c", i32 104, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ubifs/dir.c", i32 145, i32 17}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ubifs/dir.c", i32 149, i32 17}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ubifs/dir.c", i32 167, i32 17}
!8 = !{ptr @ubifs_dir_inode_operations, !9, !"ubifs_dir_inode_operations", i1 false, i1 false}
!9 = !{!"../fs/ubifs/dir.c", i32 1632, i32 31}
!10 = !{ptr @ubifs_dir_operations, !11, !"ubifs_dir_operations", i1 false, i1 false}
!11 = !{!"../fs/ubifs/dir.c", i32 1651, i32 30}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ubifs/dir.c", i32 203, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ubifs_lookup.__UNIQUE_ID_ddebug276, !13, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ubifs/dir.c", i32 235, i32 4}
!20 = !{ptr @ubifs_lookup.__UNIQUE_ID_ddebug277, !19, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ubifs/dir.c", i32 253, i32 16}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ubifs/dir.c", i32 262, i32 17}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ubifs/key.h", i32 169, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ubifs/dir.c", i32 299, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ubifs_create.__UNIQUE_ID_ddebug278, !29, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ubifs/dir.c", i32 348, i32 15}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ubifs/dir.c", i32 706, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ubifs_link.__UNIQUE_ID_ddebug282, !35, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ubifs/dir.c", i32 709, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ubifs/dir.c", i32 710, i32 2}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ubifs/dir.c", i32 781, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ubifs_unlink.__UNIQUE_ID_ddebug283, !43, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ubifs/dir.c", i32 1120, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ubifs_symlink.__UNIQUE_ID_ddebug287, !47, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ubifs/dir.c", i32 960, i32 2}
!52 = !{ptr @ubifs_mkdir.__UNIQUE_ID_ddebug285, !51, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ubifs/dir.c", i32 992, i32 16}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ubifs/dir.c", i32 885, i32 2}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ubifs_rmdir.__UNIQUE_ID_ddebug284, !56, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ubifs/dir.c", i32 1036, i32 2}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ubifs_mknod.__UNIQUE_ID_ddebug286, !60, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ubifs/dir.c", i32 1564, i32 2}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ubifs/dir.c", i32 1565, i32 2}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ubifs/dir.c", i32 1511, i32 2}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ubifs/dir.c", i32 1280, i32 2}
!71 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @do_rename.__UNIQUE_ID_ddebug288, !70, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ubifs/dir.c", i32 1285, i32 3}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ubifs/dir.c", i32 1347, i32 3}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ubifs/dir.c", i32 368, i32 2}
!79 = !{ptr @do_tmpfile.__UNIQUE_ID_ddebug279, !78, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ubifs/dir.c", i32 397, i32 3}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ubifs/dir.c", i32 414, i32 2}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ubifs/dir.c", i32 440, i32 15}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ubifs/dir.c", i32 508, i32 2}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ubifs_readdir.__UNIQUE_ID_ddebug280, !87, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ubifs/dir.c", i32 549, i32 3}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ubifs/dir.c", i32 587, i32 3}
!94 = !{ptr @ubifs_readdir.__UNIQUE_ID_ddebug281, !93, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ubifs/dir.c", i32 590, i32 3}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ubifs/dir.c", i32 640, i32 16}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/fs.h", i32 3571, i32 25}
!103 = !{!"sp"}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{i64 2155151895, i64 2155152374, i64 2155151932, i64 2155151988, i64 2155152022, i64 2155152046, i64 2155152087, i64 2155152108, i64 2155152136, i64 2155152170}
!114 = !{i8 0, i8 2}
!115 = !{!"auto-init"}
!116 = !{i64 2149102061, i64 2149102066, i64 2149102079, i64 2149102123, i64 2149102157, i64 2149102178}
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{!"branch_weights", i32 1, i32 2000}
!119 = !{i64 2155192212}
!120 = !{i64 2155197223}
!121 = !{i64 2155167992, i64 2155168471, i64 2155168029, i64 2155168085, i64 2155168119, i64 2155168143, i64 2155168184, i64 2155168205, i64 2155168233, i64 2155168267}
