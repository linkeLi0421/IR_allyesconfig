; ModuleID = '/llk/IR_all_yes/fs/fuse/dir.c_pt.bc'
source_filename = "../fs/fuse/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.fuse_entry_out = type { i64, i64, i64, i64, i32, i32, %struct.fuse_attr }
%struct.fuse_attr = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.82, %struct.list_head, %struct.list_head, %union.anon.83 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.80 }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.82 = type { %struct.list_head }
%union.anon.83 = type { %struct.hlist_node }
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
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fuse_conn = type { %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.callback_head, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, i32, i32, i32, %struct.fuse_iqueue, %struct.atomic64_t, %struct.rb_root, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, i32, i8, [7 x i8], %struct.atomic_t, i32, %struct.list_head, i32, [5 x ptr], i32, [4 x i32], %struct.atomic64_t, ptr, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr }
%struct.fuse_iqueue = type { i32, %struct.spinlock, %struct.wait_queue_head, i64, %struct.list_head, %struct.list_head, %struct.fuse_forget_link, ptr, i32, ptr, ptr, ptr }
%struct.fuse_forget_link = type { %struct.fuse_forget_one, ptr }
%struct.fuse_forget_one = type { i64, i64 }
%struct.atomic64_t = type { i64 }
%struct.fuse_inode = type { %struct.inode, i64, i64, ptr, i64, i32, i16, i64, i64, %union.anon.84, i32, %struct.mutex, %struct.spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%union.anon.77 = type { %struct.callback_head }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
%union.anon.84 = type { %struct.anon.86 }
%struct.anon.86 = type { i8, i64, i64, i64, %struct.timespec64, i64, %struct.spinlock }
%struct.fuse_args = type { i64, i32, i16, i16, i16, [3 x %struct.fuse_in_arg], [2 x %struct.fuse_arg], ptr }
%struct.fuse_in_arg = type { i32, ptr }
%struct.fuse_arg = type { i32, ptr }
%struct.path = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.anon.3 = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.33 }
%struct.llist_node = type { ptr }
%union.anon.33 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.59 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.19 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.19 = type { %struct.callback_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.anon.85 = type { %struct.list_head, %struct.list_head, i32, %struct.wait_queue_head, %struct.rb_root }
%struct.fuse_setattr_in = type { i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fuse_attr_out = type { i64, i32, i32, %struct.fuse_attr }
%struct.fuse_file = type { ptr, ptr, i64, i64, i64, %struct.refcount_struct, i32, %struct.list_head, %struct.anon.87, %struct.rb_node, %struct.wait_queue_head, i8 }
%struct.anon.87 = type { %struct.mutex, i64, i64, i64 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fuse_getattr_in = type { i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fuse_access_in = type { i32, i32 }
%struct.fuse_mknod_in = type { i32, i32, i32, i32 }
%struct.fuse_link_in = type { i64 }
%struct.fuse_mkdir_in = type { i32, i32 }
%struct.fuse_create_in = type { i32, i32, i32, i32 }
%struct.fuse_open_out = type { i64, i32, i32 }
%struct.fuse_secctx_header = type { i32, i32 }
%struct.fuse_rename2_in = type { i64, i32, i32 }
%struct.delayed_call = type { ptr, ptr }
%struct.fuse_page_desc = type { i32, i32 }
%struct.fuse_args_pages = type { %struct.fuse_args, ptr, ptr, i32 }
%struct.page = type { i32, %union.anon.20, %union.anon.65, %struct.atomic_t, i32 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.65 = type { %struct.atomic_t }

@fuse_dentry_operations = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr @fuse_dentry_revalidate, ptr null, ptr null, ptr null, ptr @fuse_dentry_delete, ptr @fuse_dentry_init, ptr @fuse_dentry_release, ptr null, ptr null, ptr null, ptr @fuse_dentry_automount, ptr null, ptr null, [76 x i8] undef }, align 128
@fuse_root_dentry_operations = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fuse_dentry_init, ptr @fuse_dentry_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/fuse/dir.c\00", [18 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@fuse_common_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr @fuse_permission, ptr @fuse_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fuse_setattr, ptr @fuse_getattr, ptr @fuse_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @fuse_set_acl, ptr @fuse_fileattr_set, ptr @fuse_fileattr_get, [36 x i8] undef }, align 128
@fuse_dir_inode_operations = internal constant %struct.inode_operations { ptr @fuse_lookup, ptr null, ptr @fuse_permission, ptr @fuse_get_acl, ptr null, ptr @fuse_create, ptr @fuse_link, ptr @fuse_unlink, ptr @fuse_symlink, ptr @fuse_mkdir, ptr @fuse_rmdir, ptr @fuse_mknod, ptr @fuse_rename2, ptr @fuse_setattr, ptr @fuse_getattr, ptr @fuse_listxattr, ptr null, ptr null, ptr @fuse_atomic_open, ptr null, ptr @fuse_set_acl, ptr @fuse_fileattr_set, ptr @fuse_fileattr_get, [36 x i8] undef }, align 128
@fuse_dir_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fuse_readdir, ptr null, ptr @fuse_dir_ioctl, ptr @fuse_dir_compat_ioctl, ptr null, i32 0, ptr @fuse_dir_open, ptr null, ptr @fuse_dir_release, ptr @fuse_dir_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fuse_init_dir.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&fi->rdc.lock\00", [18 x i8] zeroinitializer }, align 32
@fuse_symlink_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @fuse_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fuse_setattr, ptr @fuse_getattr, ptr @fuse_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@fuse_symlink_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @fuse_symlink_readpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.6 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.7 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.9 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.10 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.14 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 1554, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"fuse_dir_operations\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 1912, i32 37 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 1953, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"fuse_symlink_aops\00", align 1
@___asan_gen_.30 = private constant [17 x i8] c"../fs/fuse/dir.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 1972, i32 46 }
@___asan_gen_.33 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 271, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 260, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @fuse_dir_operations, ptr @fuse_init_dir.__key, ptr @.str.1, ptr @fuse_symlink_aops, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_init_dir.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_symlink_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_change_entry_timeout(ptr noundef %entry1, ptr nocapture noundef readonly %o) local_unnamed_addr #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %entry_valid = getelementptr inbounds %struct.fuse_entry_out, ptr %o, i32 0, i32 2
  %0 = ptrtoint ptr %entry_valid to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %entry_valid, align 8
  %entry_valid_nsec = getelementptr inbounds %struct.fuse_entry_out, ptr %o, i32 0, i32 4
  %2 = ptrtoint ptr %entry_valid_nsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entry_valid_nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not.i = icmp eq i64 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  %or.cond.i = and i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.land.end.i_crit_edge, label %time_to_jiffies.exit

entry.land.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end.i

time_to_jiffies.exit:                             ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #16
  %4 = getelementptr inbounds i8, ptr %ts.i, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %4, align 8
  %6 = ptrtoint ptr %ts.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %1, ptr %ts.i, align 8
  %7 = tail call i32 @llvm.umin.i32(i32 %3, i32 999999999) #16
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %4, align 8
  %call.i = tail call i64 @get_jiffies_64() #16
  %call2.i = call i32 @timespec64_to_jiffies(ptr noundef nonnull %ts.i) #16
  %conv.i = zext i32 %call2.i to i64
  %add.i = add i64 %call.i, %conv.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %tobool.not.i3 = icmp eq i64 %add.i, 0
  br i1 %tobool.not.i3, label %time_to_jiffies.exit.land.end.i_crit_edge, label %time_to_jiffies.exit.land.lhs.true.i_crit_edge

time_to_jiffies.exit.land.lhs.true.i_crit_edge:   ; preds = %time_to_jiffies.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i

time_to_jiffies.exit.land.end.i_crit_edge:        ; preds = %time_to_jiffies.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end.i

land.end.i:                                       ; preds = %time_to_jiffies.exit.land.end.i_crit_edge, %entry.land.end.i_crit_edge
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 9
  %9 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %delete_stale.i = getelementptr inbounds %struct.fuse_conn, ptr %14, i32 0, i32 26
  %15 = ptrtoint ptr %delete_stale.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 7)
  %bf.load.i = load i56, ptr %delete_stale.i, align 1
  %16 = and i56 %bf.load.i, 2048
  %tobool1.not.i4 = icmp eq i56 %16, 0
  br i1 %tobool1.not.i4, label %land.end.i.land.lhs.true.i_crit_edge, label %land.lhs.true5.critedge.i

land.end.i.land.lhs.true.i_crit_edge:             ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %land.end.i.land.lhs.true.i_crit_edge, %time_to_jiffies.exit.land.lhs.true.i_crit_edge
  %retval.0.i9 = phi i64 [ 0, %land.end.i.land.lhs.true.i_crit_edge ], [ %add.i, %time_to_jiffies.exit.land.lhs.true.i_crit_edge ]
  %17 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %entry1, align 8
  %and.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.fuse_dentry_settime.exit_crit_edge, label %if.then10.i

land.lhs.true.i.fuse_dentry_settime.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_dentry_settime.exit

land.lhs.true5.critedge.i:                        ; preds = %land.end.i
  %19 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %entry1, align 8
  %and7.i = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.else.i, label %land.lhs.true5.critedge.i.fuse_dentry_settime.exit_crit_edge

land.lhs.true5.critedge.i.fuse_dentry_settime.exit_crit_edge: ; preds = %land.lhs.true5.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_dentry_settime.exit

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i) #16
  %21 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %entry1, align 8
  %and12.i = and i32 %22, -9
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true5.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref27.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref27.i) #16
  %23 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %entry1, align 8
  %or.i = or i32 %24, 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then10.i
  %retval.0.i8 = phi i64 [ %retval.0.i9, %if.then10.i ], [ 0, %if.else.i ]
  %d_lockref28.i = phi ptr [ %d_lockref.i, %if.then10.i ], [ %d_lockref27.i, %if.else.i ]
  %storemerge.i = phi i32 [ %and12.i, %if.then10.i ], [ %or.i, %if.else.i ]
  %25 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %storemerge.i, ptr %entry1, align 8
  call void @_raw_spin_unlock(ptr noundef %d_lockref28.i) #16
  br label %fuse_dentry_settime.exit

fuse_dentry_settime.exit:                         ; preds = %if.end.i, %land.lhs.true5.critedge.i.fuse_dentry_settime.exit_crit_edge, %land.lhs.true.i.fuse_dentry_settime.exit_crit_edge
  %retval.0.i7 = phi i64 [ %retval.0.i9, %land.lhs.true.i.fuse_dentry_settime.exit_crit_edge ], [ 0, %land.lhs.true5.critedge.i.fuse_dentry_settime.exit_crit_edge ], [ %retval.0.i8, %if.end.i ]
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 11
  %26 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_fsdata.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %retval.0.i7, ptr %27, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @entry_attr_timeout(ptr nocapture noundef readonly %o) local_unnamed_addr #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_valid = getelementptr inbounds %struct.fuse_entry_out, ptr %o, i32 0, i32 3
  %0 = ptrtoint ptr %attr_valid to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %attr_valid, align 8
  %attr_valid_nsec = getelementptr inbounds %struct.fuse_entry_out, ptr %o, i32 0, i32 5
  %2 = ptrtoint ptr %attr_valid_nsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr_valid_nsec, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not.i = icmp eq i64 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  %or.cond.i = and i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.time_to_jiffies.exit_crit_edge, label %if.then.i

entry.time_to_jiffies.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %time_to_jiffies.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #16
  %4 = getelementptr inbounds i8, ptr %ts.i, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %4, align 8
  %6 = ptrtoint ptr %ts.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %1, ptr %ts.i, align 8
  %7 = tail call i32 @llvm.umin.i32(i32 %3, i32 999999999) #16
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %4, align 8
  %call.i = tail call i64 @get_jiffies_64() #16
  %call2.i = call i32 @timespec64_to_jiffies(ptr noundef nonnull %ts.i) #16
  %conv.i = zext i32 %call2.i to i64
  %add.i = add i64 %call.i, %conv.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #16
  br label %time_to_jiffies.exit

time_to_jiffies.exit:                             ; preds = %if.then.i, %entry.time_to_jiffies.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.then.i ], [ 0, %entry.time_to_jiffies.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_invalidate_attr_mask(ptr noundef %inode, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %inval_mask = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %__cmpxchg.exit.do.body_crit_edge, %entry
  %0 = ptrtoint ptr %inval_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %inval_mask, align 8
  %or = or i32 %1, %mask
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inval_mask, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %inval_mask, i32 1, i32 3, i32 1) #16
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body
  %2 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %inval_mask, i32 %1, i32 %or) #16, !srcloc !41
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !42
  %cmp.not = icmp eq i32 %asmresult1.i, %1
  br i1 %cmp.not, label %do.end24, label %__cmpxchg.exit.do.body_crit_edge

__cmpxchg.exit.do.body_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.end24:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_invalidate_attr(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %inval_mask.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 5
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %entry
  %0 = ptrtoint ptr %inval_mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %inval_mask.i, align 8
  %or.i = or i32 %1, 2047
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inval_mask.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %inval_mask.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.i
  %2 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %inval_mask.i, i32 %1, i32 %or.i) #16, !srcloc !41
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !42
  %cmp.not.i = icmp eq i32 %asmresult1.i.i, %1
  br i1 %cmp.not.i, label %fuse_invalidate_attr_mask.exit, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

fuse_invalidate_attr_mask.exit:                   ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_invalidate_atime(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %inval_mask.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 5
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %if.then
  %4 = ptrtoint ptr %inval_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %inval_mask.i, align 8
  %or.i = or i32 %5, 32
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inval_mask.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %inval_mask.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.i
  %6 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %inval_mask.i, i32 %5, i32 %or.i) #16, !srcloc !41
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !42
  %cmp.not.i = icmp eq i32 %asmresult1.i.i, %5
  br i1 %cmp.not.i, label %__cmpxchg.exit.i.if.end_crit_edge, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

__cmpxchg.exit.i.if.end_crit_edge:                ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %__cmpxchg.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_invalidate_entry_cache(ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %delete_stale.i = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %delete_stale.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 7)
  %bf.load.i = load i56, ptr %delete_stale.i, align 1
  %7 = and i56 %bf.load.i, 2048
  %tobool1.not.i = icmp eq i56 %7, 0
  %8 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %entry1, align 8
  %and.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %land.lhs.true5.critedge.i

land.lhs.true.i:                                  ; preds = %entry
  br i1 %tobool3.not.i, label %land.lhs.true.i.fuse_dentry_settime.exit_crit_edge, label %if.then10.i

land.lhs.true.i.fuse_dentry_settime.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_dentry_settime.exit

land.lhs.true5.critedge.i:                        ; preds = %entry
  br i1 %tobool3.not.i, label %if.else.i, label %land.lhs.true5.critedge.i.fuse_dentry_settime.exit_crit_edge

land.lhs.true5.critedge.i.fuse_dentry_settime.exit_crit_edge: ; preds = %land.lhs.true5.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_dentry_settime.exit

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i) #16
  %10 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entry1, align 8
  %and12.i = and i32 %11, -9
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true5.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref27.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref27.i) #16
  %12 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %entry1, align 8
  %or.i = or i32 %13, 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then10.i
  %d_lockref28.i = phi ptr [ %d_lockref.i, %if.then10.i ], [ %d_lockref27.i, %if.else.i ]
  %storemerge.i = phi i32 [ %and12.i, %if.then10.i ], [ %or.i, %if.else.i ]
  %14 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge.i, ptr %entry1, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref28.i) #16
  br label %fuse_dentry_settime.exit

fuse_dentry_settime.exit:                         ; preds = %if.end.i, %land.lhs.true5.critedge.i.fuse_dentry_settime.exit_crit_edge, %land.lhs.true.i.fuse_dentry_settime.exit_crit_edge
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 11
  %15 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_fsdata.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %16, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_dentry_revalidate(ptr noundef %entry1, i32 noundef %flags) #0 align 64 {
entry:
  %outarg = alloca %struct.fuse_entry_out, align 8
  %args = alloca %struct.fuse_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %d_inode.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.invalid_crit_edge

land.lhs.true.invalid_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %invalid

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 11
  %5 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_fsdata.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  %call4 = tail call i64 @get_jiffies_64() #16
  %sub = sub i64 %8, %call4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub)
  %cmp = icmp sgt i64 %sub, -1
  %and = and i32 %flags, 1056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool5.not, %cmp
  br i1 %or.cond, label %if.else71, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %outarg) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #16
  %9 = getelementptr inbounds i8, ptr %args, i32 16
  %10 = call ptr @memset(ptr %9, i32 0, i32 48)
  br i1 %tobool.not, label %if.then6.cleanup.thread_crit_edge, label %if.end

if.then6.cleanup.thread_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end:                                           ; preds = %if.then6
  %and9 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup.thread147_crit_edge

if.end.cleanup.thread147_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread147

if.end12:                                         ; preds = %if.end
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  %call14 = tail call ptr @fuse_alloc_forget() #16
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end12.cleanup.thread147_crit_edge, label %if.end17

if.end12.cleanup.thread147_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread147

if.end17:                                         ; preds = %if.end12
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %attr_version.i = getelementptr inbounds %struct.fuse_conn, ptr %16, i32 0, i32 34
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %attr_version.i, i32 noundef 8) #16
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %attr_version.i) #16
  %call19 = tail call ptr @dget_parent(ptr noundef %entry1) #16
  %d_inode.i134 = getelementptr inbounds %struct.dentry, ptr %call19, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i134 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i134, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %nodeid.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4
  %21 = call ptr @memset(ptr %outarg, i32 0, i32 128)
  %opcode.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %22 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %opcode.i, align 8
  %23 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %20, ptr %args, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %24 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %in_numargs.i, align 4
  %25 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %d_name, align 8
  %add.i = add i32 %26, 1
  %in_args.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %27 = ptrtoint ptr %in_args.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i, ptr %in_args.i, align 4
  %name2.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name2.i, align 8
  %value.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %30 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %value.i, align 8
  %out_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 3
  %31 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %out_numargs.i, align 2
  %out_args.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6
  %32 = ptrtoint ptr %out_args.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 128, ptr %out_args.i, align 4
  %value9.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6, i32 0, i32 1
  %33 = ptrtoint ptr %value9.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %outarg, ptr %value9.i, align 8
  %call23 = call i32 @fuse_simple_request(ptr noundef %14, ptr noundef nonnull %args) #16
  call void @dput(ptr noundef %call19) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %if.end49.thread

land.lhs.true25:                                  ; preds = %if.end17
  %34 = ptrtoint ptr %outarg to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %outarg, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool26.not = icmp eq i64 %35, 0
  br i1 %tobool26.not, label %if.end49.thread.thread, label %if.then30

if.end49.thread.thread:                           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %call14) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %outarg) #16
  br label %invalid

if.then30:                                        ; preds = %land.lhs.true25
  %36 = ptrtoint ptr %outarg to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %outarg, align 8
  %nodeid.i135 = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %nodeid.i135 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %nodeid.i135, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %39)
  %cmp34.not = icmp eq i64 %37, %39
  br i1 %cmp34.not, label %lor.lhs.false35, label %if.then30.if.then44_crit_edge

if.then30.if.then44_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then44

lor.lhs.false35:                                  ; preds = %if.then30
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_flags, align 4
  %and36 = lshr i32 %41, 11
  %flags38 = getelementptr inbounds %struct.fuse_entry_out, ptr %outarg, i32 0, i32 6, i32 15
  %42 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags38, align 4
  %44 = xor i32 %and36, %43
  %45 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp42.not = icmp eq i32 %45, 0
  br i1 %cmp42.not, label %if.end49, label %lor.lhs.false35.if.then44_crit_edge

lor.lhs.false35.if.then44_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false35.if.then44_crit_edge, %if.then30.if.then44_crit_edge
  %46 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %14, align 4
  call void @fuse_queue_forget(ptr noundef %47, ptr noundef nonnull %call14, i64 noundef %37, i64 noundef 1) #16
  br label %cleanup.thread

if.end49.thread:                                  ; preds = %if.end17
  call void @kfree(ptr noundef nonnull %call14) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call23)
  %cmp50155 = icmp eq i32 %call23, -12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %outarg) #16
  br i1 %cmp50155, label %if.end49.thread.cleanup94_crit_edge, label %if.end49.thread.invalid_crit_edge

if.end49.thread.invalid_crit_edge:                ; preds = %if.end49.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %invalid

if.end49.thread.cleanup94_crit_edge:              ; preds = %if.end49.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup94

if.end49:                                         ; preds = %lor.lhs.false35
  %lock = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 12
  call void @_raw_spin_lock(ptr noundef %lock) #16
  %nlookup = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %nlookup to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %nlookup, align 8
  %inc = add i64 %49, 1
  store i64 %inc, ptr %nlookup, align 8
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  call void @kfree(ptr noundef nonnull %call14) #16
  %attr56 = getelementptr inbounds %struct.fuse_entry_out, ptr %outarg, i32 0, i32 6
  %mode.i = getelementptr inbounds %struct.fuse_entry_out, ptr %outarg, i32 0, i32 6, i32 9
  %50 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mode.i, align 4
  %and.i.i = and i32 %51, 61440
  %52 = add nsw i32 %and.i.i, -4096
  %53 = lshr exact i32 %52, 12
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %53, label %fuse_valid_type.exit.i [
    i32 7, label %if.end49.fuse_invalid_attr.exit_crit_edge
    i32 3, label %if.end49.fuse_invalid_attr.exit_crit_edge160
    i32 9, label %if.end49.fuse_invalid_attr.exit_crit_edge161
    i32 1, label %if.end49.fuse_invalid_attr.exit_crit_edge162
    i32 5, label %if.end49.fuse_invalid_attr.exit_crit_edge163
    i32 0, label %if.end49.fuse_invalid_attr.exit_crit_edge164
  ]

if.end49.fuse_invalid_attr.exit_crit_edge164:     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.end49.fuse_invalid_attr.exit_crit_edge163:     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.end49.fuse_invalid_attr.exit_crit_edge162:     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.end49.fuse_invalid_attr.exit_crit_edge161:     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.end49.fuse_invalid_attr.exit_crit_edge160:     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.end49.fuse_invalid_attr.exit_crit_edge:        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

fuse_valid_type.exit.i:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and.i.i)
  %cmp16.i.not.i = icmp eq i32 %and.i.i, 49152
  br i1 %cmp16.i.not.i, label %fuse_valid_type.exit.i.fuse_invalid_attr.exit_crit_edge, label %fuse_valid_type.exit.i.cleanup.thread_crit_edge

fuse_valid_type.exit.i.cleanup.thread_crit_edge:  ; preds = %fuse_valid_type.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

fuse_valid_type.exit.i.fuse_invalid_attr.exit_crit_edge: ; preds = %fuse_valid_type.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

fuse_invalid_attr.exit:                           ; preds = %fuse_valid_type.exit.i.fuse_invalid_attr.exit_crit_edge, %if.end49.fuse_invalid_attr.exit_crit_edge, %if.end49.fuse_invalid_attr.exit_crit_edge160, %if.end49.fuse_invalid_attr.exit_crit_edge161, %if.end49.fuse_invalid_attr.exit_crit_edge162, %if.end49.fuse_invalid_attr.exit_crit_edge163, %if.end49.fuse_invalid_attr.exit_crit_edge164
  %size.i = getelementptr inbounds %struct.fuse_entry_out, ptr %outarg, i32 0, i32 6, i32 1
  %55 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %cmp.i = icmp slt i64 %56, 0
  br i1 %cmp.i, label %fuse_invalid_attr.exit.cleanup.thread_crit_edge, label %lor.lhs.false59

fuse_invalid_attr.exit.cleanup.thread_crit_edge:  ; preds = %fuse_invalid_attr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

lor.lhs.false59:                                  ; preds = %fuse_invalid_attr.exit
  %generation = getelementptr inbounds %struct.fuse_entry_out, ptr %outarg, i32 0, i32 1
  %57 = ptrtoint ptr %generation to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %generation, align 8
  %conv60 = trunc i64 %58 to i32
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 49
  %59 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %i_generation.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %conv60)
  %cmp.not.i = icmp eq i32 %60, %conv60
  br i1 %cmp.not.i, label %fuse_stale_inode.exit, label %lor.lhs.false59.cleanup.thread_crit_edge

lor.lhs.false59.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

fuse_stale_inode.exit:                            ; preds = %lor.lhs.false59
  %conv.i = trunc i32 %51 to i16
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %1, align 8
  %xor2.i.i = xor i16 %62, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i.i)
  %tobool.i.i = icmp ugt i16 %xor2.i.i, 4095
  br i1 %tobool.i.i, label %fuse_stale_inode.exit.cleanup.thread_crit_edge, label %cleanup.thread150

fuse_stale_inode.exit.cleanup.thread_crit_edge:   ; preds = %fuse_stale_inode.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

cleanup.thread150:                                ; preds = %fuse_stale_inode.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @forget_all_cached_acls(ptr noundef nonnull %1) #16
  %call67 = call i64 @entry_attr_timeout(ptr noundef nonnull %outarg)
  call void @fuse_change_attributes(ptr noundef nonnull %1, ptr noundef %attr56, i64 noundef %call67, i64 noundef %call.i.i) #16
  call void @fuse_change_entry_timeout(ptr noundef %entry1, ptr noundef nonnull %outarg)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %outarg) #16
  br label %if.end93

cleanup.thread:                                   ; preds = %fuse_stale_inode.exit.cleanup.thread_crit_edge, %lor.lhs.false59.cleanup.thread_crit_edge, %fuse_invalid_attr.exit.cleanup.thread_crit_edge, %fuse_valid_type.exit.i.cleanup.thread_crit_edge, %if.then44, %if.then6.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %outarg) #16
  br label %invalid

cleanup.thread147:                                ; preds = %if.end12.cleanup.thread147_crit_edge, %if.end.cleanup.thread147_crit_edge
  %ret.1.ph = phi i32 [ -12, %if.end12.cleanup.thread147_crit_edge ], [ -10, %if.end.cleanup.thread147_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %outarg) #16
  br label %cleanup94

if.else71:                                        ; preds = %if.else
  br i1 %tobool.not, label %if.else71.if.end93_crit_edge, label %if.then73

if.else71.if.end93_crit_edge:                     ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93

if.then73:                                        ; preds = %if.else71
  %and75 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %state83 = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 10
  br i1 %tobool76.not, label %if.else82, label %if.then77

if.then77:                                        ; preds = %if.then73
  %63 = ptrtoint ptr %state83 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %state83, align 4
  %65 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool79.not = icmp eq i32 %65, 0
  br i1 %tobool79.not, label %if.then77.if.end93_crit_edge, label %if.then77.cleanup94_crit_edge

if.then77.cleanup94_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup94

if.then77.if.end93_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93

if.else82:                                        ; preds = %if.then73
  %call84 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state83) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.else82.if.end93_crit_edge, label %if.then86

if.else82.if.end93_crit_edge:                     ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93

if.then86:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #18
  %call87 = tail call ptr @dget_parent(ptr noundef %entry1) #16
  %d_inode.i138 = getelementptr inbounds %struct.dentry, ptr %call87, i32 0, i32 5
  %66 = ptrtoint ptr %d_inode.i138 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %d_inode.i138, align 8
  %state.i139 = getelementptr inbounds %struct.fuse_inode, ptr %67, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i139) #16
  tail call void @dput(ptr noundef %call87) #16
  br label %if.end93

if.end93:                                         ; preds = %if.then86, %if.else82.if.end93_crit_edge, %if.then77.if.end93_crit_edge, %if.else71.if.end93_crit_edge, %cleanup.thread150
  br label %cleanup94

invalid:                                          ; preds = %cleanup.thread, %if.end49.thread.invalid_crit_edge, %if.end49.thread.thread, %land.lhs.true.invalid_crit_edge
  br label %cleanup94

cleanup94:                                        ; preds = %invalid, %if.end93, %if.then77.cleanup94_crit_edge, %cleanup.thread147, %if.end49.thread.cleanup94_crit_edge
  %retval.0 = phi i32 [ -10, %if.then77.cleanup94_crit_edge ], [ 0, %invalid ], [ 1, %if.end93 ], [ %ret.1.ph, %cleanup.thread147 ], [ -12, %if.end49.thread.cleanup94_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_dentry_delete(ptr nocapture noundef readonly %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  %call1 = tail call i64 @get_jiffies_64() #16
  %sub = sub i64 %3, %call1
  %sub.lobit = lshr i64 %sub, 63
  %4 = trunc i64 %sub.lobit to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_dentry_init(ptr nocapture noundef writeonly %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 2, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 2, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 4197840, i32 noundef 8) #19
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %1 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %d_fsdata, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  %cond = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fuse_dentry_release(ptr nocapture noundef readonly %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kvfree_call_rcu(ptr noundef nonnull %1, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fuse_dentry_automount(ptr nocapture noundef readonly %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %4 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path, align 4
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mnt_sb, align 4
  %s_type = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_type, align 32
  %call4 = tail call ptr @fs_context_for_submount(ptr noundef %9, ptr noundef %1) #16
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %call4, i32 0, i32 3
  %10 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %fs_private, align 4
  %call7 = tail call ptr @fc_mount(ptr noundef %call4) #16
  %cmp.i22 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call10 = tail call ptr @mntget(ptr noundef %call7) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  tail call void @put_fs_context(ptr noundef %call4) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %if.end11 ], [ %call4, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fuse_valid_type(i32 noundef %m) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %m, 61440
  %0 = add nsw i32 %and, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %0)
  %1 = icmp ult i32 %0, 40960
  br i1 %1, label %switch.hole_check, label %entry.lor.rhs_crit_edge

entry.lor.rhs_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs

lor.rhs:                                          ; preds = %switch.hole_check.lor.rhs_crit_edge, %entry.lor.rhs_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and)
  %cmp16 = icmp eq i32 %and, 49152
  %phi.cast = zext i1 %cmp16 to i32
  br label %lor.end

switch.hole_check:                                ; preds = %entry
  %2 = lshr exact i32 %0, 12
  %switch.maskindex = trunc i32 %2 to i16
  %switch.shifted = lshr i16 683, %switch.maskindex
  %3 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %switch.lobit.not = icmp eq i16 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.lor.rhs_crit_edge, label %switch.hole_check.lor.end_crit_edge

switch.hole_check.lor.end_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

switch.hole_check.lor.rhs_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs

lor.end:                                          ; preds = %switch.hole_check.lor.end_crit_edge, %lor.rhs
  %4 = phi i32 [ %phi.cast, %lor.rhs ], [ 1, %switch.hole_check.lor.end_crit_edge ]
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @fuse_invalid_attr(ptr nocapture noundef readonly %attr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.fuse_attr, ptr %attr, i32 0, i32 9
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %and.i = and i32 %1, 61440
  %2 = add nsw i32 %and.i, -4096
  %3 = lshr exact i32 %2, 12
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %3, label %fuse_valid_type.exit [
    i32 7, label %entry.lor.rhs_crit_edge
    i32 3, label %entry.lor.rhs_crit_edge3
    i32 9, label %entry.lor.rhs_crit_edge4
    i32 1, label %entry.lor.rhs_crit_edge5
    i32 5, label %entry.lor.rhs_crit_edge6
    i32 0, label %entry.lor.rhs_crit_edge7
  ]

entry.lor.rhs_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs

entry.lor.rhs_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs

entry.lor.rhs_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs

entry.lor.rhs_crit_edge4:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs

entry.lor.rhs_crit_edge3:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs

entry.lor.rhs_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs

fuse_valid_type.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and.i)
  %cmp16.i.not = icmp eq i32 %and.i, 49152
  br i1 %cmp16.i.not, label %fuse_valid_type.exit.lor.rhs_crit_edge, label %fuse_valid_type.exit.lor.end_crit_edge

fuse_valid_type.exit.lor.end_crit_edge:           ; preds = %fuse_valid_type.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

fuse_valid_type.exit.lor.rhs_crit_edge:           ; preds = %fuse_valid_type.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs

lor.rhs:                                          ; preds = %fuse_valid_type.exit.lor.rhs_crit_edge, %entry.lor.rhs_crit_edge, %entry.lor.rhs_crit_edge3, %entry.lor.rhs_crit_edge4, %entry.lor.rhs_crit_edge5, %entry.lor.rhs_crit_edge6, %entry.lor.rhs_crit_edge7
  %size = getelementptr inbounds %struct.fuse_attr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp = icmp slt i64 %6, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %fuse_valid_type.exit.lor.end_crit_edge
  %7 = phi i1 [ true, %fuse_valid_type.exit.lor.end_crit_edge ], [ %cmp, %lor.rhs ]
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_lookup_name(ptr noundef %sb, i64 noundef %nodeid, ptr nocapture noundef readonly %name, ptr noundef %outarg, ptr nocapture noundef writeonly %inode) local_unnamed_addr #0 align 64 {
entry:
  %ts.i.i = alloca %struct.timespec64, align 8
  %args = alloca %struct.fuse_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #16
  %2 = getelementptr inbounds i8, ptr %args, i32 16
  %3 = call ptr @memset(ptr %2, i32 0, i32 48)
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %inode, align 4
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %6)
  %cmp = icmp ugt i32 %6, 1024
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @fuse_alloc_forget() #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %attr_version.i = getelementptr inbounds %struct.fuse_conn, ptr %8, i32 0, i32 34
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %attr_version.i, i32 noundef 8) #16
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %attr_version.i) #16
  %9 = call ptr @memset(ptr %outarg, i32 0, i32 128)
  %opcode.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %10 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %opcode.i, align 8
  %11 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %nodeid, ptr %args, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %12 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %in_numargs.i, align 4
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %name, align 8
  %add.i = add i32 %14, 1
  %in_args.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %15 = ptrtoint ptr %in_args.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i, ptr %in_args.i, align 4
  %name2.i = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %16 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name2.i, align 8
  %value.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %18 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %value.i, align 8
  %out_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 3
  %19 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %out_numargs.i, align 2
  %out_args.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6
  %20 = ptrtoint ptr %out_args.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 128, ptr %out_args.i, align 4
  %value9.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6, i32 0, i32 1
  %21 = ptrtoint ptr %value9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %outarg, ptr %value9.i, align 8
  %call6 = call i32 @fuse_simple_request(ptr noundef %1, ptr noundef nonnull %args) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end3.out_put_forget_crit_edge

if.end3.out_put_forget_crit_edge:                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_forget

lor.lhs.false:                                    ; preds = %if.end3
  %22 = ptrtoint ptr %outarg to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %outarg, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool9.not = icmp eq i64 %23, 0
  br i1 %tobool9.not, label %lor.lhs.false.out_put_forget_crit_edge, label %if.end15

lor.lhs.false.out_put_forget_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_forget

if.end15:                                         ; preds = %lor.lhs.false
  %attr = getelementptr inbounds %struct.fuse_entry_out, ptr %outarg, i32 0, i32 6
  %mode.i = getelementptr inbounds %struct.fuse_entry_out, ptr %outarg, i32 0, i32 6, i32 9
  %24 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode.i, align 4
  %and.i.i = and i32 %25, 61440
  %26 = add nsw i32 %and.i.i, -4096
  %27 = lshr exact i32 %26, 12
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %27, label %fuse_valid_type.exit.i [
    i32 7, label %if.end15.fuse_invalid_attr.exit_crit_edge
    i32 3, label %if.end15.fuse_invalid_attr.exit_crit_edge47
    i32 9, label %if.end15.fuse_invalid_attr.exit_crit_edge48
    i32 1, label %if.end15.fuse_invalid_attr.exit_crit_edge49
    i32 5, label %if.end15.fuse_invalid_attr.exit_crit_edge50
    i32 0, label %if.end15.fuse_invalid_attr.exit_crit_edge51
  ]

if.end15.fuse_invalid_attr.exit_crit_edge51:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.end15.fuse_invalid_attr.exit_crit_edge50:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.end15.fuse_invalid_attr.exit_crit_edge49:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.end15.fuse_invalid_attr.exit_crit_edge48:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.end15.fuse_invalid_attr.exit_crit_edge47:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.end15.fuse_invalid_attr.exit_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

fuse_valid_type.exit.i:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and.i.i)
  %cmp16.i.not.i = icmp eq i32 %and.i.i, 49152
  br i1 %cmp16.i.not.i, label %fuse_valid_type.exit.i.fuse_invalid_attr.exit_crit_edge, label %fuse_valid_type.exit.i.out_put_forget_crit_edge

fuse_valid_type.exit.i.out_put_forget_crit_edge:  ; preds = %fuse_valid_type.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_forget

fuse_valid_type.exit.i.fuse_invalid_attr.exit_crit_edge: ; preds = %fuse_valid_type.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

fuse_invalid_attr.exit:                           ; preds = %fuse_valid_type.exit.i.fuse_invalid_attr.exit_crit_edge, %if.end15.fuse_invalid_attr.exit_crit_edge, %if.end15.fuse_invalid_attr.exit_crit_edge47, %if.end15.fuse_invalid_attr.exit_crit_edge48, %if.end15.fuse_invalid_attr.exit_crit_edge49, %if.end15.fuse_invalid_attr.exit_crit_edge50, %if.end15.fuse_invalid_attr.exit_crit_edge51
  %size.i = getelementptr inbounds %struct.fuse_entry_out, ptr %outarg, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %cmp.i = icmp slt i64 %30, 0
  br i1 %cmp.i, label %fuse_invalid_attr.exit.out_put_forget_crit_edge, label %if.end18

fuse_invalid_attr.exit.out_put_forget_crit_edge:  ; preds = %fuse_invalid_attr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_forget

if.end18:                                         ; preds = %fuse_invalid_attr.exit
  %generation = getelementptr inbounds %struct.fuse_entry_out, ptr %outarg, i32 0, i32 1
  %31 = ptrtoint ptr %generation to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %generation, align 8
  %conv = trunc i64 %32 to i32
  %attr_valid.i = getelementptr inbounds %struct.fuse_entry_out, ptr %outarg, i32 0, i32 3
  %33 = ptrtoint ptr %attr_valid.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %attr_valid.i, align 8
  %attr_valid_nsec.i = getelementptr inbounds %struct.fuse_entry_out, ptr %outarg, i32 0, i32 5
  %35 = ptrtoint ptr %attr_valid_nsec.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %attr_valid_nsec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool.not.i.i = icmp eq i64 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool1.not.i.i = icmp eq i32 %36, 0
  %or.cond.i.i = and i1 %tobool.not.i.i, %tobool1.not.i.i
  br i1 %or.cond.i.i, label %if.end18.entry_attr_timeout.exit_crit_edge, label %if.then.i.i

if.end18.entry_attr_timeout.exit_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %entry_attr_timeout.exit

if.then.i.i:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i.i) #16
  %37 = getelementptr inbounds i8, ptr %ts.i.i, i32 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 -1, ptr %37, align 8
  %39 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %34, ptr %ts.i.i, align 8
  %40 = call i32 @llvm.umin.i32(i32 %36, i32 999999999) #16
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %37, align 8
  %call.i.i46 = call i64 @get_jiffies_64() #16
  %call2.i.i = call i32 @timespec64_to_jiffies(ptr noundef nonnull %ts.i.i) #16
  %conv.i.i = zext i32 %call2.i.i to i64
  %add.i.i = add i64 %call.i.i46, %conv.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i.i) #16
  br label %entry_attr_timeout.exit

entry_attr_timeout.exit:                          ; preds = %if.then.i.i, %if.end18.entry_attr_timeout.exit_crit_edge
  %retval.0.i.i = phi i64 [ %add.i.i, %if.then.i.i ], [ 0, %if.end18.entry_attr_timeout.exit_crit_edge ]
  %call22 = call ptr @fuse_iget(ptr noundef %sb, i64 noundef %23, i32 noundef %conv, ptr noundef %attr, i64 noundef %retval.0.i.i, i64 noundef %call.i.i) #16
  %42 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call22, ptr %inode, align 4
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.then24, label %entry_attr_timeout.exit.out_put_forget_crit_edge

entry_attr_timeout.exit.out_put_forget_crit_edge: ; preds = %entry_attr_timeout.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_forget

if.then24:                                        ; preds = %entry_attr_timeout.exit
  call void @__sanitizer_cov_trace_pc() #18
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %45 = ptrtoint ptr %outarg to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %outarg, align 8
  call void @fuse_queue_forget(ptr noundef %44, ptr noundef nonnull %call1, i64 noundef %46, i64 noundef 1) #16
  br label %out

out_put_forget:                                   ; preds = %entry_attr_timeout.exit.out_put_forget_crit_edge, %fuse_invalid_attr.exit.out_put_forget_crit_edge, %fuse_valid_type.exit.i.out_put_forget_crit_edge, %lor.lhs.false.out_put_forget_crit_edge, %if.end3.out_put_forget_crit_edge
  %err.0 = phi i32 [ %call6, %if.end3.out_put_forget_crit_edge ], [ -5, %fuse_invalid_attr.exit.out_put_forget_crit_edge ], [ 0, %lor.lhs.false.out_put_forget_crit_edge ], [ 0, %entry_attr_timeout.exit.out_put_forget_crit_edge ], [ -5, %fuse_valid_type.exit.i.out_put_forget_crit_edge ]
  call void @kfree(ptr noundef nonnull %call1) #16
  br label %out

out:                                              ; preds = %out_put_forget, %if.then24, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.1 = phi i32 [ -36, %entry.out_crit_edge ], [ %err.0, %out_put_forget ], [ -12, %if.then24 ], [ -12, %if.end.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fuse_alloc_forget() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_simple_request(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fuse_iget(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_queue_forget(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_flush_time_update(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sync_inode_metadata(ptr noundef %inode, i32 noundef 1) #16
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not.i = icmp eq i32 %call, 0
  br i1 %tobool.not.i, label %entry.mapping_set_error.exit_crit_edge, label %if.end.i, !prof !43

entry.mapping_set_error.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mapping_set_error.exit

if.end.i:                                         ; preds = %entry
  tail call void @__filemap_set_wb_err(ptr noundef %1, i32 noundef %call) #16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool4.not.i = icmp eq ptr %3, null
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 50
  %call.i = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %call) #16
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp.i = icmp eq i32 %call, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 10
  %..i = zext i1 %cmp.i to i32
  tail call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #16
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.end7.i, %entry.mapping_set_error.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_inode_metadata(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_update_ctime(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %inval_mask.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 5
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %entry
  %0 = ptrtoint ptr %inval_mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %inval_mask.i, align 8
  %or.i = or i32 %1, 128
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inval_mask.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %inval_mask.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.i
  %2 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %inval_mask.i, i32 %1, i32 %or.i) #16, !srcloc !41
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !42
  %cmp.not.i = icmp eq i32 %asmresult1.i.i, %1
  br i1 %cmp.not.i, label %fuse_invalidate_attr_mask.exit, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

fuse_invalidate_attr_mask.exit:                   ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @fuse_update_ctime_in_cache(ptr noundef %inode)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fuse_update_ctime_in_cache(ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #16
  %2 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #16
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #16
  %call.i = call i32 @sync_inode_metadata(ptr noundef %inode, i32 noundef 1) #16
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %3 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_mapping.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.i, label %if.then.if.end_crit_edge, label %if.end.i.i, !prof !43

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__filemap_set_wb_err(ptr noundef %4, i32 noundef %call.i) #16
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool4.not.i.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.then5.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i.i, align 4
  %s_wb_err.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 50
  %call.i.i = call i32 @errseq_set(ptr noundef %s_wb_err.i.i, i32 noundef %call.i) #16
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i)
  %cmp.i.i = icmp eq i32 %call.i, -28
  %flags.i.i = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 10
  %..i.i = zext i1 %cmp.i.i to i32
  call void @_set_bit(i32 noundef %..i.i, ptr noundef %flags.i.i) #16
  br label %if.end

if.end:                                           ; preds = %if.end7.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_update_attributes(ptr noundef %inode, ptr noundef %file, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %inval_mask1.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 5
  %0 = ptrtoint ptr %inval_mask1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %inval_mask1.i, align 8
  %call2.i = tail call i32 @fuse_get_cache_mask(ptr noundef %inode) #16
  %and7.i = and i32 %1, %mask
  %neg.i = xor i32 %call2.i, -1
  %and8.i = and i32 %and7.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else11.i, label %entry.if.then16.i_crit_edge

entry.if.then16.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16.i

if.else11.i:                                      ; preds = %entry
  %i_time.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 4
  %2 = ptrtoint ptr %i_time.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_time.i, align 8
  %call12.i = tail call i64 @get_jiffies_64() #16
  %sub.i = sub i64 %3, %call12.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %extract.t.i = icmp slt i64 %sub.i, 0
  br i1 %extract.t.i, label %if.else11.i.if.then16.i_crit_edge, label %if.else11.i.fuse_update_get_attr.exit_crit_edge

if.else11.i.fuse_update_get_attr.exit_crit_edge:  ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_update_get_attr.exit

if.else11.i.if.then16.i_crit_edge:                ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16.i

if.then16.i:                                      ; preds = %if.else11.i.if.then16.i_crit_edge, %entry.if.then16.i_crit_edge
  tail call void @forget_all_cached_acls(ptr noundef %inode) #16
  %call17.i = tail call fastcc i32 @fuse_do_getattr(ptr noundef %inode, ptr noundef null, ptr noundef %file) #16
  br label %fuse_update_get_attr.exit

fuse_update_get_attr.exit:                        ; preds = %if.then16.i, %if.else11.i.fuse_update_get_attr.exit_crit_edge
  %err.0.i = phi i32 [ %call17.i, %if.then16.i ], [ 0, %if.else11.i.fuse_update_get_attr.exit_crit_edge ]
  ret i32 %err.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_reverse_inval_entry(ptr noundef %fc, i64 noundef %parent_nodeid, i64 noundef %child_nodeid, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @fuse_ilookup(ptr noundef %fc, i64 noundef %parent_nodeid, ptr noundef null) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #16
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %call, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp = icmp eq i16 %2, 16384
  br i1 %cmp, label %if.end4, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @d_find_alias(ptr noundef nonnull %call) #16
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.unlock_crit_edge, label %if.end8

if.end4.unlock_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

if.end8:                                          ; preds = %if.end4
  %name9 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %3 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name9, align 8
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %name, align 8
  %call10 = tail call i32 @full_name_hash(ptr noundef nonnull %call5, ptr noundef %4, i32 noundef %6) #20
  %hash = getelementptr inbounds %struct.anon.3, ptr %name, i32 0, i32 1
  %7 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call10, ptr %hash, align 4
  %call11 = tail call ptr @d_lookup(ptr noundef nonnull %call5, ptr noundef %name) #16
  tail call void @dput(ptr noundef nonnull %call5) #16
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end8.unlock_crit_edge, label %if.end14

if.end8.unlock_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

if.end14:                                         ; preds = %if.end8
  tail call fastcc void @fuse_dir_changed(ptr noundef nonnull %call)
  tail call void @d_invalidate(ptr noundef nonnull %call11) #16
  %d_sb.i.i.i = getelementptr inbounds %struct.dentry, ptr %call11, i32 0, i32 9
  %8 = ptrtoint ptr %d_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i.i.i.i, align 16
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %delete_stale.i.i.i = getelementptr inbounds %struct.fuse_conn, ptr %13, i32 0, i32 26
  %14 = ptrtoint ptr %delete_stale.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 7)
  %bf.load.i.i.i = load i56, ptr %delete_stale.i.i.i, align 1
  %15 = and i56 %bf.load.i.i.i, 2048
  %tobool1.not.i.i.i = icmp eq i56 %15, 0
  %16 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call11, align 8
  %and.i.i.i = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i, label %land.lhs.true5.critedge.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end14
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.fuse_invalidate_entry.exit_crit_edge, label %if.then10.i.i.i

land.lhs.true.i.i.i.fuse_invalidate_entry.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalidate_entry.exit

land.lhs.true5.critedge.i.i.i:                    ; preds = %if.end14
  br i1 %tobool3.not.i.i.i, label %if.else.i.i.i, label %land.lhs.true5.critedge.i.i.i.fuse_invalidate_entry.exit_crit_edge

land.lhs.true5.critedge.i.i.i.fuse_invalidate_entry.exit_crit_edge: ; preds = %land.lhs.true5.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalidate_entry.exit

if.then10.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %call11, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #16
  %18 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call11, align 8
  %and12.i.i.i = and i32 %19, -9
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true5.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref27.i.i.i = getelementptr inbounds %struct.dentry, ptr %call11, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref27.i.i.i) #16
  %20 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call11, align 8
  %or.i.i.i = or i32 %21, 8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then10.i.i.i
  %d_lockref28.i.i.i = phi ptr [ %d_lockref.i.i.i, %if.then10.i.i.i ], [ %d_lockref27.i.i.i, %if.else.i.i.i ]
  %storemerge.i.i.i = phi i32 [ %and12.i.i.i, %if.then10.i.i.i ], [ %or.i.i.i, %if.else.i.i.i ]
  %22 = ptrtoint ptr %call11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge.i.i.i, ptr %call11, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref28.i.i.i) #16
  br label %fuse_invalidate_entry.exit

fuse_invalidate_entry.exit:                       ; preds = %if.end.i.i.i, %land.lhs.true5.critedge.i.i.i.fuse_invalidate_entry.exit_crit_edge, %land.lhs.true.i.i.i.fuse_invalidate_entry.exit_crit_edge
  %d_fsdata.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %call11, i32 0, i32 11
  %23 = ptrtoint ptr %d_fsdata.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_fsdata.i.i.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %24, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %child_nodeid)
  %cmp15.not = icmp eq i64 %child_nodeid, 0
  br i1 %cmp15.not, label %fuse_invalidate_entry.exit.if.end43_crit_edge, label %land.lhs.true

fuse_invalidate_entry.exit.if.end43_crit_edge:    ; preds = %fuse_invalidate_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

land.lhs.true:                                    ; preds = %fuse_invalidate_entry.exit
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call11, i32 0, i32 5
  %26 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %27, null
  br i1 %cmp.i.not, label %land.lhs.true.if.end43_crit_edge, label %if.then19

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then19:                                        ; preds = %land.lhs.true
  %i_rwsem.i76 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i76) #16
  %28 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode.i, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %nodeid.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %child_nodeid)
  %cmp23.not = icmp eq i64 %31, %child_nodeid
  br i1 %cmp23.not, label %if.end26, label %if.then19.badentry.thread_crit_edge

if.then19.badentry.thread_crit_edge:              ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %badentry.thread

if.end26:                                         ; preds = %if.then19
  %32 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call11, align 8
  %and.i = and i32 %33, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end29, label %if.end26.badentry.thread_crit_edge

if.end26.badentry.thread_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %badentry.thread

if.end29:                                         ; preds = %if.end26
  %34 = and i32 %33, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %34)
  %35 = icmp eq i32 %34, 2097152
  br i1 %35, label %if.then31, label %if.end29.if.then41_crit_edge

if.end29.if.then41_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then41

if.then31:                                        ; preds = %if.end29
  tail call void @shrink_dcache_parent(ptr noundef nonnull %call11) #16
  %call32 = tail call i32 @simple_empty(ptr noundef nonnull %call11) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then31.badentry.thread_crit_edge, label %if.end35

if.then31.badentry.thread_crit_edge:              ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  br label %badentry.thread

if.end35:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_flags, align 4
  %or = or i32 %39, 16
  store i32 %or, ptr %i_flags, align 4
  br label %if.then41

badentry.thread:                                  ; preds = %if.then31.badentry.thread_crit_edge, %if.end26.badentry.thread_crit_edge, %if.then19.badentry.thread_crit_edge
  %err.0.ph = phi i32 [ -39, %if.then31.badentry.thread_crit_edge ], [ -16, %if.end26.badentry.thread_crit_edge ], [ -2, %if.then19.badentry.thread_crit_edge ]
  %40 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i8185 = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i8185) #16
  br label %if.end43

if.then41:                                        ; preds = %if.end35, %if.end29.if.then41_crit_edge
  tail call fastcc void @dont_mount(ptr noundef nonnull %call11)
  %42 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %d_inode.i, align 8
  tail call void @clear_nlink(ptr noundef %43) #16
  %44 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i81 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i81) #16
  tail call void @d_delete(ptr noundef nonnull %call11) #16
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %badentry.thread, %land.lhs.true.if.end43_crit_edge, %fuse_invalidate_entry.exit.if.end43_crit_edge
  %err.1 = phi i32 [ 0, %if.then41 ], [ 0, %land.lhs.true.if.end43_crit_edge ], [ 0, %fuse_invalidate_entry.exit.if.end43_crit_edge ], [ %err.0.ph, %badentry.thread ]
  tail call void @dput(ptr noundef nonnull %call11) #16
  br label %unlock

unlock:                                           ; preds = %if.end43, %if.end8.unlock_crit_edge, %if.end4.unlock_crit_edge, %if.end.unlock_crit_edge
  %err.2 = phi i32 [ %err.1, %if.end43 ], [ -2, %if.end8.unlock_crit_edge ], [ -2, %if.end4.unlock_crit_edge ], [ -20, %if.end.unlock_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #16
  tail call void @iput(ptr noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %unlock ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fuse_ilookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_alias(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_lookup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fuse_dir_changed(ptr noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %inval_mask.i.i = getelementptr inbounds %struct.fuse_inode, ptr %dir, i32 0, i32 5
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %__cmpxchg.exit.i.i.do.body.i.i_crit_edge, %entry
  %0 = ptrtoint ptr %inval_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %inval_mask.i.i, align 8
  %or.i.i = or i32 %1, 2047
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inval_mask.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %inval_mask.i.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body.i.i
  %2 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %inval_mask.i.i, i32 %1, i32 %or.i.i) #16, !srcloc !41
  %asmresult.i.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !42
  %cmp.not.i.i = icmp eq i32 %asmresult1.i.i.i, %1
  br i1 %cmp.not.i.i, label %fuse_invalidate_attr.exit, label %__cmpxchg.exit.i.i.do.body.i.i_crit_edge

__cmpxchg.exit.i.i.do.body.i.i_crit_edge:         ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

fuse_invalidate_attr.exit:                        ; preds = %__cmpxchg.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !44
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #16
  %call.i.i1.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #16
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %fuse_invalidate_attr.exit
  %cur.0.i = phi i64 [ %call.i.i1.i, %fuse_invalidate_attr.exit ], [ %call.i.i, %if.end.i.for.cond.i_crit_edge ]
  %and.i = and i64 %cur.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool4.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool4.not.i, label %for.cond.i.inode_maybe_inc_iversion.exit_crit_edge, label %if.end.i

for.cond.i.inode_maybe_inc_iversion.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_maybe_inc_iversion.exit

if.end.i:                                         ; preds = %for.cond.i
  %3 = add i64 %cur.0.i, 2
  %add.i = and i64 %3, -2
  %call.i.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #16
  %call.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i, i64 noundef %add.i) #16
  %cmp.i = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i, label %if.end.i.inode_maybe_inc_iversion.exit_crit_edge, label %if.end.i.for.cond.i_crit_edge, !prof !43

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

if.end.i.inode_maybe_inc_iversion.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_maybe_inc_iversion.exit

inode_maybe_inc_iversion.exit:                    ; preds = %if.end.i.inode_maybe_inc_iversion.exit_crit_edge, %for.cond.i.inode_maybe_inc_iversion.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_empty(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dont_mount(ptr noundef %dentry) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #16
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dentry, align 8
  %or = or i32 %1, 256
  store i32 %or, ptr %dentry, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_allow_current_process(ptr nocapture noundef readonly %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %allow_other = getelementptr inbounds %struct.fuse_conn, ptr %fc, i32 0, i32 26
  %0 = ptrtoint ptr %allow_other to i32
  call void @__asan_loadN_noabort(i32 %0, i32 7)
  %bf.load = load i56, ptr %allow_other, align 1
  %1 = and i56 %bf.load, 16384
  %tobool.not = icmp eq i56 %1, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %user_ns = getelementptr inbounds %struct.fuse_conn, ptr %fc, i32 0, i32 7
  %2 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ns, align 8
  %call = tail call zeroext i1 @current_in_userns(ptr noundef %3) #16
  %conv = zext i1 %call to i32
  br label %cleanup

do.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !30) #16
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cred2 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 99
  %8 = ptrtoint ptr %cred2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cred2, align 16
  %euid = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 8
  %user_id = getelementptr inbounds %struct.fuse_conn, ptr %fc, i32 0, i32 4
  %10 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack = load i32, ptr %euid, align 4
  %11 = ptrtoint ptr %user_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack48 = load i32, ptr %user_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack48)
  %cmp.i = icmp eq i32 %.unpack, %.unpack48
  br i1 %cmp.i, label %land.lhs.true, label %do.end.if.end35_crit_edge

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true:                                    ; preds = %do.end
  %suid = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %suid to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack49 = load i32, ptr %suid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack49, i32 %.unpack)
  %cmp.i59 = icmp eq i32 %.unpack49, %.unpack
  br i1 %cmp.i59, label %land.lhs.true11, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true11:                                  ; preds = %land.lhs.true
  %uid = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 4
  %13 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack51 = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack51, i32 %.unpack)
  %cmp.i60 = icmp eq i32 %.unpack51, %.unpack
  br i1 %cmp.i60, label %land.lhs.true17, label %land.lhs.true11.if.end35_crit_edge

land.lhs.true11.if.end35_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true17:                                  ; preds = %land.lhs.true11
  %egid = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 9
  %group_id = getelementptr inbounds %struct.fuse_conn, ptr %fc, i32 0, i32 5
  %14 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack53 = load i32, ptr %egid, align 4
  %15 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack54 = load i32, ptr %group_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack53, i32 %.unpack54)
  %cmp.i61 = icmp eq i32 %.unpack53, %.unpack54
  br i1 %cmp.i61, label %land.lhs.true22, label %land.lhs.true17.if.end35_crit_edge

land.lhs.true17.if.end35_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true22:                                  ; preds = %land.lhs.true17
  %sgid = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 7
  %16 = ptrtoint ptr %sgid to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack55 = load i32, ptr %sgid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack55, i32 %.unpack53)
  %cmp.i62 = icmp eq i32 %.unpack55, %.unpack53
  br i1 %cmp.i62, label %land.lhs.true28, label %land.lhs.true22.if.end35_crit_edge

land.lhs.true22.if.end35_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true28:                                  ; preds = %land.lhs.true22
  %gid = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 5
  %17 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack57 = load i32, ptr %gid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack57, i32 %.unpack53)
  %cmp.i63 = icmp eq i32 %.unpack57, %.unpack53
  br i1 %cmp.i63, label %land.lhs.true28.cleanup_crit_edge, label %land.lhs.true28.if.end35_crit_edge

land.lhs.true28.if.end35_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true28.if.end35_crit_edge, %land.lhs.true22.if.end35_crit_edge, %land.lhs.true17.if.end35_crit_edge, %land.lhs.true11.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %do.end.if.end35_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %land.lhs.true28.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %if.end35 ], [ 1, %land.lhs.true28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @current_in_userns(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_set_nowrite(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #16
  %0 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i.not = icmp eq i32 %1, 0
  br i1 %cmp.i.i.not, label %do.body5, label %do.end10, !prof !45

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fuse/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1548, 0\0A.popsection", ""() #16, !srcloc !46
  unreachable

do.end10:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %2 = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 9
  %writectr = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 9, i32 0, i32 2
  %3 = ptrtoint ptr %writectr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %writectr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %do.body19, label %do.end27, !prof !45

do.body19:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fuse/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1551, 0\0A.popsection", ""() #16, !srcloc !47
  unreachable

do.end27:                                         ; preds = %do.end10
  %add = xor i32 %4, -2147483648
  %5 = ptrtoint ptr %writectr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %writectr, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1554) #16
  %6 = ptrtoint ptr %writectr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writectr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %7)
  %cmp38 = icmp eq i32 %7, -2147483648
  br i1 %cmp38, label %do.end27.do.end48_crit_edge, label %if.end40

do.end27.do.end48_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end48

if.end40:                                         ; preds = %do.end27
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %page_waitq = getelementptr inbounds %struct.anon.85, ptr %2, i32 0, i32 3
  %call4159 = call i32 @prepare_to_wait_event(ptr noundef %page_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %9 = ptrtoint ptr %writectr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %writectr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %10)
  %cmp4360 = icmp eq i32 %10, -2147483648
  br i1 %cmp4360, label %if.end40.for.end_crit_edge, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  br label %cleanup

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end40.cleanup_crit_edge
  call void @schedule() #16
  %call41 = call i32 @prepare_to_wait_event(ptr noundef %page_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %11 = ptrtoint ptr %writectr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %writectr, align 8
  %cmp43 = icmp eq i32 %12, -2147483648
  br i1 %cmp43, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end40.for.end_crit_edge
  call void @finish_wait(ptr noundef %page_waitq, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %do.end48

do.end48:                                         ; preds = %for.end, %do.end27.do.end48_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_release_nowrite(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %writectr.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 9, i32 0, i32 2
  %0 = ptrtoint ptr %writectr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writectr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %1)
  %cmp.not.i = icmp eq i32 %1, -2147483648
  br i1 %cmp.not.i, label %__fuse_release_nowrite.exit, label %do.body2.i, !prof !43

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fuse/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1567, 0\0A.popsection", ""() #16, !srcloc !48
  unreachable

__fuse_release_nowrite.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %writectr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %writectr.i, align 8
  tail call void @fuse_flush_writepages(ptr noundef %inode) #16
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_flush_times(ptr nocapture noundef readonly %inode, ptr noundef readonly %ff) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.fuse_args, align 8
  %inarg = alloca %struct.fuse_setattr_in, align 8
  %outarg = alloca %struct.fuse_attr_out, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #16
  %4 = getelementptr inbounds i8, ptr %args, i32 16
  %5 = call ptr @memset(ptr %4, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %inarg) #16
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %outarg) #16
  %6 = call ptr @memset(ptr %inarg, i32 0, i32 88)
  %7 = call ptr @memset(ptr %outarg, i32 0, i32 104)
  %8 = ptrtoint ptr %inarg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %inarg, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %9 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_mtime, align 8
  %mtime = getelementptr inbounds %struct.fuse_setattr_in, ptr %inarg, i32 0, i32 6
  %11 = ptrtoint ptr %mtime to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %mtime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %12 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tv_nsec, align 8
  %mtimensec = getelementptr inbounds %struct.fuse_setattr_in, ptr %inarg, i32 0, i32 9
  %14 = ptrtoint ptr %mtimensec to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mtimensec, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %minor = getelementptr inbounds %struct.fuse_conn, ptr %16, i32 0, i32 28
  %17 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %18)
  %cmp = icmp ugt i32 %18, 22
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %inarg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1056, ptr %inarg, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %20 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_ctime, align 8
  %ctime = getelementptr inbounds %struct.fuse_setattr_in, ptr %inarg, i32 0, i32 7
  %22 = ptrtoint ptr %ctime to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %ctime, align 8
  %tv_nsec5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %23 = ptrtoint ptr %tv_nsec5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tv_nsec5, align 8
  %ctimensec = getelementptr inbounds %struct.fuse_setattr_in, ptr %inarg, i32 0, i32 10
  %25 = ptrtoint ptr %ctimensec to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ctimensec, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool.not = icmp eq ptr %ff, null
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %inarg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %inarg, align 8
  %or8 = or i32 %27, 64
  store i32 %or8, ptr %inarg, align 8
  %fh = getelementptr inbounds %struct.fuse_file, ptr %ff, i32 0, i32 3
  %28 = ptrtoint ptr %fh to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %fh, align 8
  %fh9 = getelementptr inbounds %struct.fuse_setattr_in, ptr %inarg, i32 0, i32 2
  %30 = ptrtoint ptr %fh9 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %fh9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %opcode.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %31 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %opcode.i, align 8
  %nodeid.i.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 1
  %32 = ptrtoint ptr %nodeid.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %nodeid.i.i, align 8
  %34 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %args, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %35 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %in_numargs.i, align 4
  %in_args.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %36 = ptrtoint ptr %in_args.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 88, ptr %in_args.i, align 4
  %value.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %37 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %inarg, ptr %value.i, align 8
  %out_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 3
  %38 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %out_numargs.i, align 2
  %out_args.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6
  %39 = ptrtoint ptr %out_args.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 104, ptr %out_args.i, align 4
  %value7.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6, i32 0, i32 1
  %40 = ptrtoint ptr %value7.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %outarg, ptr %value7.i, align 8
  %call12 = call i32 @fuse_simple_request(ptr noundef %3, ptr noundef nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %outarg) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %inarg) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_do_setattr(ptr noundef %dentry, ptr noundef %attr, ptr noundef readonly %file) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.fuse_args, align 8
  %inarg = alloca %struct.fuse_setattr_in, align 8
  %outarg = alloca %struct.fuse_attr_out, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #16
  %10 = call ptr @memset(ptr %args, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %inarg) #16
  %11 = call ptr @memset(ptr %inarg, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %outarg) #16
  %writeback_cache = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 26
  %12 = ptrtoint ptr %writeback_cache to i32
  call void @__asan_loadN_noabort(i32 %12, i32 7)
  %bf.load = load i56, ptr %writeback_cache, align 1
  %13 = and i56 %bf.load, 562949953421312
  %tobool.not = icmp eq i56 %13, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 8
  %16 = and i16 %15, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %16)
  %cmp = icmp eq i16 %16, -32768
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %17 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ]
  %18 = and i56 %bf.load, 32768
  %tobool11.not = icmp eq i56 %18, 0
  br i1 %tobool11.not, label %if.then, label %land.end.if.end_crit_edge

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %attr, align 8
  %or = or i32 %20, 512
  store i32 %or, ptr %attr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.if.end_crit_edge
  %call12 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %21 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %attr, align 8
  %and17 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end50, label %if.then19

if.then19:                                        ; preds = %if.end15
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 8
  %25 = and i16 %24, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %25)
  %cmp23.not = icmp eq i16 %25, -32768
  br i1 %cmp23.not, label %if.end50.thread, label %do.end, !prof !43

do.end:                                           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1660, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end50:                                         ; preds = %if.end15
  %and52 = and i32 %22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.if.end129_crit_edge, label %do.end76

if.end50.if.end129_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end129

if.end50.thread:                                  ; preds = %if.then19
  %and52379 = and i32 %22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52379)
  %tobool53.not380 = icmp eq i32 %and52379, 0
  br i1 %tobool53.not380, label %if.end50.thread.if.end129_crit_edge, label %if.end50.thread.if.end82_crit_edge

if.end50.thread.if.end82_crit_edge:               ; preds = %if.end50.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

if.end50.thread.if.end129_crit_edge:              ; preds = %if.end50.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end129

do.end76:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1677, i32 noundef 9, ptr noundef null) #16
  br label %if.end82

if.end82:                                         ; preds = %do.end76, %if.end50.thread.if.end82_crit_edge
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %26 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ia_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp91.not = icmp eq i64 %27, 0
  br i1 %cmp91.not, label %if.end82.if.end114_crit_edge, label %do.end108, !prof !43

if.end82.if.end114_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114

do.end108:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1678, i32 noundef 9, ptr noundef null) #16
  br label %if.end114

if.end114:                                        ; preds = %do.end108, %if.end82.if.end114_crit_edge
  %28 = ptrtoint ptr %writeback_cache to i32
  call void @__asan_loadN_noabort(i32 %28, i32 7)
  %bf.load122 = load i56, ptr %writeback_cache, align 1
  %29 = and i56 %bf.load122, 2251799813685248
  %tobool126.not = icmp eq i56 %29, 0
  br i1 %tobool126.not, label %if.end114.if.end129_crit_edge, label %if.then127

if.end114.if.end129_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end129

if.then127:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @i_size_write(ptr noundef %1, i64 noundef 0)
  tail call void @truncate_pagecache(ptr noundef %1, i64 noundef 0) #16
  br label %cleanup

if.end129:                                        ; preds = %if.end114.if.end129_crit_edge, %if.end50.thread.if.end129_crit_edge, %if.end50.if.end129_crit_edge
  %file.addr.0 = phi ptr [ %file, %if.end50.if.end129_crit_edge ], [ null, %if.end114.if.end129_crit_edge ], [ %file, %if.end50.thread.if.end129_crit_edge ]
  br i1 %17, label %land.lhs.true, label %if.end129.if.end140_crit_edge

if.end129.if.end140_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end140

land.lhs.true:                                    ; preds = %if.end129
  %30 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %attr, align 8
  %and133 = and i32 %31, 65799
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %land.lhs.true.if.end140_crit_edge, label %if.then135

land.lhs.true.if.end140_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end140

if.then135:                                       ; preds = %land.lhs.true
  %call136 = tail call i32 @write_inode_now(ptr noundef %1, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %if.then135.cleanup_crit_edge

if.then135.cleanup_crit_edge:                     ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end139:                                        ; preds = %if.then135
  tail call void @fuse_set_nowrite(ptr noundef %1)
  %lock.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #16
  %writectr.i.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 9, i32 0, i32 2
  %32 = ptrtoint ptr %writectr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %writectr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %33)
  %cmp.not.i.i = icmp eq i32 %33, -2147483648
  br i1 %cmp.not.i.i, label %fuse_release_nowrite.exit, label %do.body2.i.i, !prof !43

do.body2.i.i:                                     ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fuse/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1567, 0\0A.popsection", ""() #16, !srcloc !48
  unreachable

fuse_release_nowrite.exit:                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %writectr.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %writectr.i.i, align 8
  tail call void @fuse_flush_writepages(ptr noundef %1) #16
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  br label %if.end140

if.end140:                                        ; preds = %fuse_release_nowrite.exit, %land.lhs.true.if.end140_crit_edge, %if.end129.if.end140_crit_edge
  br i1 %tobool18.not, label %if.end140.if.end153_crit_edge, label %if.then142

if.end140.if.end153_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end153

if.then142:                                       ; preds = %if.end140
  tail call void @fuse_set_nowrite(ptr noundef %1)
  %state = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #16
  br i1 %17, label %land.lhs.true145, label %if.then142.if.end153_crit_edge

if.then142.if.end153_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end153

land.lhs.true145:                                 ; preds = %if.then142
  %ia_size146 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %35 = ptrtoint ptr %ia_size146 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ia_size146, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %37 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %38)
  %cmp147.not = icmp eq i64 %36, %38
  br i1 %cmp147.not, label %land.lhs.true145.if.end153_crit_edge, label %if.then149

land.lhs.true145.if.end153_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end153

if.then149:                                       ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %attr, align 8
  %or151 = or i32 %40, 96
  store i32 %or151, ptr %attr, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.then149, %land.lhs.true145.if.end153_crit_edge, %if.then142.if.end153_crit_edge, %if.end140.if.end153_crit_edge
  %41 = call ptr @memset(ptr %inarg, i32 0, i32 88)
  %42 = call ptr @memset(ptr %outarg, i32 0, i32 104)
  %43 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %attr, align 8
  %and.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end153.if.end.i_crit_edge, label %if.then.i

if.end153.if.end.i_crit_edge:                     ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #18
  %45 = ptrtoint ptr %inarg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %inarg, align 8
  %or.i = or i32 %46, 1
  store i32 %or.i, ptr %inarg, align 8
  %ia_mode.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %47 = ptrtoint ptr %ia_mode.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %ia_mode.i, align 4
  %conv.i = zext i16 %48 to i32
  %mode.i = getelementptr inbounds %struct.fuse_setattr_in, ptr %inarg, i32 0, i32 11
  %49 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv.i, ptr %mode.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end153.if.end.i_crit_edge
  %and1.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %50 = ptrtoint ptr %inarg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %inarg, align 8
  %or5.i = or i32 %51, 2
  store i32 %or5.i, ptr %inarg, align 8
  %user_ns.i = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 7
  %52 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %user_ns.i, align 8
  %ia_uid.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %54 = ptrtoint ptr %ia_uid.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.unpack107.i = load i32, ptr %ia_uid.i, align 8
  %55 = insertvalue [1 x i32] undef, i32 %.unpack107.i, 0
  %call.i = tail call i32 @from_kuid(ptr noundef %53, [1 x i32] %55) #16
  %uid.i = getelementptr inbounds %struct.fuse_setattr_in, ptr %inarg, i32 0, i32 13
  %56 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call.i, ptr %uid.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %and7.i = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end15.i_crit_edge, label %if.then9.i

if.end6.i.if.end15.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %inarg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %inarg, align 8
  %or11.i = or i32 %58, 4
  store i32 %or11.i, ptr %inarg, align 8
  %user_ns12.i = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 7
  %59 = ptrtoint ptr %user_ns12.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %user_ns12.i, align 8
  %ia_gid.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %61 = ptrtoint ptr %ia_gid.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.unpack.i = load i32, ptr %ia_gid.i, align 4
  %62 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call14.i = tail call i32 @from_kgid(ptr noundef %60, [1 x i32] %62) #16
  %gid.i = getelementptr inbounds %struct.fuse_setattr_in, ptr %inarg, i32 0, i32 14
  %63 = ptrtoint ptr %gid.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call14.i, ptr %gid.i, align 8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end15.i_crit_edge
  %and16.i = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end21.i_crit_edge, label %if.then18.i

if.end15.i.if.end21.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  %64 = ptrtoint ptr %inarg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %inarg, align 8
  %or20.i = or i32 %65, 8
  store i32 %or20.i, ptr %inarg, align 8
  %ia_size.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %66 = ptrtoint ptr %ia_size.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %ia_size.i, align 8
  %size.i = getelementptr inbounds %struct.fuse_setattr_in, ptr %inarg, i32 0, i32 3
  %68 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %size.i, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end21.i_crit_edge
  %and22.i = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end34.i_crit_edge, label %if.then24.i

if.end21.i.if.end34.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.i

if.then24.i:                                      ; preds = %if.end21.i
  %69 = ptrtoint ptr %inarg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %inarg, align 8
  %or26.i = or i32 %70, 16
  store i32 %or26.i, ptr %inarg, align 8
  %ia_atime.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5
  %71 = ptrtoint ptr %ia_atime.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %ia_atime.i, align 8
  %atime.i = getelementptr inbounds %struct.fuse_setattr_in, ptr %inarg, i32 0, i32 5
  %73 = ptrtoint ptr %atime.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %atime.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5, i32 1
  %74 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tv_nsec.i, align 8
  %atimensec.i = getelementptr inbounds %struct.fuse_setattr_in, ptr %inarg, i32 0, i32 8
  %76 = ptrtoint ptr %atimensec.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %atimensec.i, align 8
  %and28.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.then24.i.if.end34.i_crit_edge

if.then24.i.if.end34.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.i

if.then30.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #18
  %or32.i = or i32 %70, 144
  %77 = ptrtoint ptr %inarg to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or32.i, ptr %inarg, align 8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then30.i, %if.then24.i.if.end34.i_crit_edge, %if.end21.i.if.end34.i_crit_edge
  %and35.i = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end34.i.if.end54.i_crit_edge, label %land.lhs.true.i

if.end34.i.if.end54.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54.i

land.lhs.true.i:                                  ; preds = %if.end34.i
  %and.i.i = and i32 %44, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  %brmerge.i.i = or i1 %17, %tobool.not.i.i
  br i1 %brmerge.i.i, label %land.lhs.true.i.if.then40.i_crit_edge, label %update_mtime.exit.i

land.lhs.true.i.if.then40.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then40.i

update_mtime.exit.i:                              ; preds = %land.lhs.true.i
  %and6.i.i = and i32 %44, 40960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %or.cond.i.i = or i1 %tobool17.not.i, %tobool7.not.i.i
  br i1 %or.cond.i.i, label %update_mtime.exit.i.if.then40.i_crit_edge, label %update_mtime.exit.i.if.end54.i_crit_edge

update_mtime.exit.i.if.end54.i_crit_edge:         ; preds = %update_mtime.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54.i

update_mtime.exit.i.if.then40.i_crit_edge:        ; preds = %update_mtime.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then40.i

if.then40.i:                                      ; preds = %update_mtime.exit.i.if.then40.i_crit_edge, %land.lhs.true.i.if.then40.i_crit_edge
  %78 = ptrtoint ptr %inarg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %inarg, align 8
  %or42.i = or i32 %79, 32
  store i32 %or42.i, ptr %inarg, align 8
  %ia_mtime.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6
  %80 = ptrtoint ptr %ia_mtime.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %ia_mtime.i, align 8
  %mtime.i = getelementptr inbounds %struct.fuse_setattr_in, ptr %inarg, i32 0, i32 6
  %82 = ptrtoint ptr %mtime.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %mtime.i, align 8
  %tv_nsec45.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6, i32 1
  %83 = ptrtoint ptr %tv_nsec45.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tv_nsec45.i, align 8
  %mtimensec.i = getelementptr inbounds %struct.fuse_setattr_in, ptr %inarg, i32 0, i32 9
  %85 = ptrtoint ptr %mtimensec.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %mtimensec.i, align 4
  br i1 %brmerge.i.i, label %if.then40.i.if.end54.i_crit_edge, label %if.then50.i

if.then40.i.if.end54.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54.i

if.then50.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #18
  %or52.i = or i32 %79, 288
  %86 = ptrtoint ptr %inarg to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %or52.i, ptr %inarg, align 8
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then50.i, %if.then40.i.if.end54.i_crit_edge, %update_mtime.exit.i.if.end54.i_crit_edge, %if.end34.i.if.end54.i_crit_edge
  %and55.i = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp ne i32 %and55.i, 0
  %87 = and i1 %17, %tobool56.not.i
  br i1 %87, label %if.then60.i, label %if.end54.i.iattr_to_fattr.exit_crit_edge

if.end54.i.iattr_to_fattr.exit_crit_edge:         ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %iattr_to_fattr.exit

if.then60.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #18
  %88 = ptrtoint ptr %inarg to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %inarg, align 8
  %or62.i = or i32 %89, 1024
  store i32 %or62.i, ptr %inarg, align 8
  %ia_ctime.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 7
  %90 = ptrtoint ptr %ia_ctime.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %ia_ctime.i, align 8
  %ctime.i = getelementptr inbounds %struct.fuse_setattr_in, ptr %inarg, i32 0, i32 7
  %92 = ptrtoint ptr %ctime.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %ctime.i, align 8
  %tv_nsec65.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 7, i32 1
  %93 = ptrtoint ptr %tv_nsec65.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tv_nsec65.i, align 8
  %ctimensec.i = getelementptr inbounds %struct.fuse_setattr_in, ptr %inarg, i32 0, i32 10
  %95 = ptrtoint ptr %ctimensec.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %ctimensec.i, align 8
  br label %iattr_to_fattr.exit

iattr_to_fattr.exit:                              ; preds = %if.then60.i, %if.end54.i.iattr_to_fattr.exit_crit_edge
  %tobool155.not = icmp eq ptr %file.addr.0, null
  br i1 %tobool155.not, label %iattr_to_fattr.exit.if.end159_crit_edge, label %if.then156

iattr_to_fattr.exit.if.end159_crit_edge:          ; preds = %iattr_to_fattr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end159

if.then156:                                       ; preds = %iattr_to_fattr.exit
  call void @__sanitizer_cov_trace_pc() #18
  %private_data = getelementptr inbounds %struct.file, ptr %file.addr.0, i32 0, i32 16
  %96 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %private_data, align 4
  %98 = ptrtoint ptr %inarg to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %inarg, align 8
  %or157 = or i32 %99, 64
  store i32 %or157, ptr %inarg, align 8
  %fh = getelementptr inbounds %struct.fuse_file, ptr %97, i32 0, i32 3
  %100 = ptrtoint ptr %fh to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %fh, align 8
  %fh158 = getelementptr inbounds %struct.fuse_setattr_in, ptr %inarg, i32 0, i32 2
  %102 = ptrtoint ptr %fh158 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %fh158, align 8
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %iattr_to_fattr.exit.if.end159_crit_edge
  %103 = ptrtoint ptr %writeback_cache to i32
  call void @__asan_loadN_noabort(i32 %103, i32 7)
  %bf.load160 = load i56, ptr %writeback_cache, align 1
  %104 = and i56 %bf.load160, 17592186044416
  %tobool164.not = icmp eq i56 %104, 0
  br i1 %tobool164.not, label %if.end159.if.end178_crit_edge, label %land.lhs.true165

if.end159.if.end178_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end178

land.lhs.true165:                                 ; preds = %if.end159
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %1, align 8
  %107 = and i16 %106, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %107)
  %cmp169 = icmp eq i16 %107, 16384
  br i1 %cmp169, label %land.lhs.true165.if.end178_crit_edge, label %land.lhs.true171

land.lhs.true165.if.end178_crit_edge:             ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end178

land.lhs.true171:                                 ; preds = %land.lhs.true165
  %108 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %attr, align 8
  %and173 = and i32 %109, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %land.lhs.true171.if.end178_crit_edge, label %if.then175

land.lhs.true171.if.end178_crit_edge:             ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end178

if.then175:                                       ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #18
  %110 = ptrtoint ptr %inarg to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %inarg, align 8
  %or177 = or i32 %111, 2048
  store i32 %or177, ptr %inarg, align 8
  br label %if.end178

if.end178:                                        ; preds = %if.then175, %land.lhs.true171.if.end178_crit_edge, %land.lhs.true165.if.end178_crit_edge, %if.end159.if.end178_crit_edge
  %112 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %attr, align 8
  %and180 = and i32 %113, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %if.end178.if.end199_crit_edge, label %if.then182

if.end178.if.end199_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end199

if.then182:                                       ; preds = %if.end178
  %114 = ptrtoint ptr %inarg to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %inarg, align 8
  %or184 = or i32 %115, 512
  store i32 %or184, ptr %inarg, align 8
  %116 = tail call i32 @llvm.read_register.i32(metadata !30) #16
  %and.i369 = and i32 %116, -16384
  %117 = inttoptr i32 %and.i369 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %task, align 8
  %files = getelementptr inbounds %struct.task_struct, ptr %119, i32 0, i32 108
  %120 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %files, align 4
  %call186 = tail call i64 @fuse_lock_owner_id(ptr noundef %7, ptr noundef %121) #16
  %lock_owner = getelementptr inbounds %struct.fuse_setattr_in, ptr %inarg, i32 0, i32 4
  %122 = ptrtoint ptr %lock_owner to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %call186, ptr %lock_owner, align 8
  %123 = ptrtoint ptr %writeback_cache to i32
  call void @__asan_loadN_noabort(i32 %123, i32 7)
  %bf.load188 = load i56, ptr %writeback_cache, align 1
  %124 = and i56 %bf.load188, 17592186044416
  %tobool192.not = icmp eq i56 %124, 0
  br i1 %tobool192.not, label %if.then182.if.end199_crit_edge, label %land.lhs.true193

if.then182.if.end199_crit_edge:                   ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end199

land.lhs.true193:                                 ; preds = %if.then182
  %call194 = tail call zeroext i1 @capable(i32 noundef 4) #16
  br i1 %call194, label %land.lhs.true193.if.end199_crit_edge, label %if.then195

land.lhs.true193.if.end199_crit_edge:             ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end199

if.then195:                                       ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #18
  %125 = ptrtoint ptr %inarg to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %inarg, align 8
  %or197 = or i32 %126, 2048
  store i32 %or197, ptr %inarg, align 8
  br label %if.end199

if.end199:                                        ; preds = %if.then195, %land.lhs.true193.if.end199_crit_edge, %if.then182.if.end199_crit_edge, %if.end178.if.end199_crit_edge
  %opcode.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %127 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 4, ptr %opcode.i, align 8
  %nodeid.i.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 1
  %128 = ptrtoint ptr %nodeid.i.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %nodeid.i.i, align 8
  %130 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %129, ptr %args, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %131 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 1, ptr %in_numargs.i, align 4
  %in_args.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %132 = ptrtoint ptr %in_args.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 88, ptr %in_args.i, align 4
  %value.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %133 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %inarg, ptr %value.i, align 8
  %out_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 3
  %134 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 1, ptr %out_numargs.i, align 2
  %out_args.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6
  %135 = ptrtoint ptr %out_args.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 104, ptr %out_args.i, align 4
  %value7.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6, i32 0, i32 1
  %136 = ptrtoint ptr %value7.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %outarg, ptr %value7.i, align 8
  %call200 = call i32 @fuse_simple_request(ptr noundef %5, ptr noundef nonnull %args) #16
  %137 = zext i32 %call200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call200, label %if.end199.error_crit_edge [
    i32 0, label %if.end207
    i32 -4, label %if.then205
  ]

if.end199.error_crit_edge:                        ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

if.then205:                                       ; preds = %if.end199
  %inval_mask.i.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 5
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %__cmpxchg.exit.i.i.do.body.i.i_crit_edge, %if.then205
  %138 = ptrtoint ptr %inval_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %inval_mask.i.i, align 8
  %or.i.i = or i32 %139, 2047
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %inval_mask.i.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !40
  call void @llvm.prefetch.p0(ptr %inval_mask.i.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body.i.i
  %140 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %inval_mask.i.i, i32 %139, i32 %or.i.i) #16, !srcloc !41
  %asmresult.i.i.i = extractvalue { i32, i32 } %140, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %140, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !42
  %cmp.not.i.i370 = icmp eq i32 %asmresult1.i.i.i, %139
  br i1 %cmp.not.i.i370, label %__cmpxchg.exit.i.i.error_crit_edge, label %__cmpxchg.exit.i.i.do.body.i.i_crit_edge

__cmpxchg.exit.i.i.do.body.i.i_crit_edge:         ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

__cmpxchg.exit.i.i.error_crit_edge:               ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

if.end207:                                        ; preds = %if.end199
  %attr208 = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 3
  %mode.i371 = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 3, i32 9
  %141 = ptrtoint ptr %mode.i371 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %mode.i371, align 4
  %and.i.i372 = and i32 %142, 61440
  %143 = add nsw i32 %and.i.i372, -4096
  %144 = lshr exact i32 %143, 12
  %145 = zext i32 %144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %144, label %fuse_valid_type.exit.i [
    i32 7, label %if.end207.fuse_invalid_attr.exit_crit_edge
    i32 3, label %if.end207.fuse_invalid_attr.exit_crit_edge381
    i32 9, label %if.end207.fuse_invalid_attr.exit_crit_edge382
    i32 1, label %if.end207.fuse_invalid_attr.exit_crit_edge383
    i32 5, label %if.end207.fuse_invalid_attr.exit_crit_edge384
    i32 0, label %if.end207.fuse_invalid_attr.exit_crit_edge385
  ]

if.end207.fuse_invalid_attr.exit_crit_edge385:    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.end207.fuse_invalid_attr.exit_crit_edge384:    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.end207.fuse_invalid_attr.exit_crit_edge383:    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.end207.fuse_invalid_attr.exit_crit_edge382:    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.end207.fuse_invalid_attr.exit_crit_edge381:    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.end207.fuse_invalid_attr.exit_crit_edge:       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

fuse_valid_type.exit.i:                           ; preds = %if.end207
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and.i.i372)
  %cmp16.i.not.i = icmp eq i32 %and.i.i372, 49152
  br i1 %cmp16.i.not.i, label %fuse_valid_type.exit.i.fuse_invalid_attr.exit_crit_edge, label %fuse_valid_type.exit.i.if.then215_crit_edge

fuse_valid_type.exit.i.if.then215_crit_edge:      ; preds = %fuse_valid_type.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then215

fuse_valid_type.exit.i.fuse_invalid_attr.exit_crit_edge: ; preds = %fuse_valid_type.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

fuse_invalid_attr.exit:                           ; preds = %fuse_valid_type.exit.i.fuse_invalid_attr.exit_crit_edge, %if.end207.fuse_invalid_attr.exit_crit_edge, %if.end207.fuse_invalid_attr.exit_crit_edge381, %if.end207.fuse_invalid_attr.exit_crit_edge382, %if.end207.fuse_invalid_attr.exit_crit_edge383, %if.end207.fuse_invalid_attr.exit_crit_edge384, %if.end207.fuse_invalid_attr.exit_crit_edge385
  %size.i373 = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 3, i32 1
  %146 = ptrtoint ptr %size.i373 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %size.i373, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %147)
  %cmp.i = icmp slt i64 %147, 0
  br i1 %cmp.i, label %fuse_invalid_attr.exit.if.then215_crit_edge, label %lor.lhs.false

fuse_invalid_attr.exit.if.then215_crit_edge:      ; preds = %fuse_invalid_attr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then215

lor.lhs.false:                                    ; preds = %fuse_invalid_attr.exit
  %148 = ptrtoint ptr %mode.i371 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %mode.i371, align 4
  %conv212 = trunc i32 %149 to i16
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %1, align 8
  %xor2.i = xor i16 %151, %conv212
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i)
  %tobool.i = icmp ugt i16 %xor2.i, 4095
  br i1 %tobool.i, label %lor.lhs.false.if.then215_crit_edge, label %if.end216

lor.lhs.false.if.then215_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then215

if.then215:                                       ; preds = %lor.lhs.false.if.then215_crit_edge, %fuse_invalid_attr.exit.if.then215_crit_edge, %fuse_valid_type.exit.i.if.then215_crit_edge
  %pprev.i.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 28, i32 1
  %152 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i = icmp eq ptr %153, null
  %i_hash.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 28
  %cmp.i.i.i = icmp eq ptr %153, %i_hash.i.i
  %or.cond.i = select i1 %tobool.not.i.i.not.i.i, i1 true, i1 %cmp.i.i.i
  br i1 %or.cond.i, label %if.then215.fuse_make_bad.exit_crit_edge, label %if.then.i.i

if.then215.fuse_make_bad.exit_crit_edge:          ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_make_bad.exit

if.then.i.i:                                      ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #18
  call void @__remove_inode_hash(ptr noundef %1) #16
  br label %fuse_make_bad.exit

fuse_make_bad.exit:                               ; preds = %if.then.i.i, %if.then215.fuse_make_bad.exit_crit_edge
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 10
  call void @_set_bit(i32 noundef 3, ptr noundef %state.i) #16
  br label %error

if.end216:                                        ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 12
  call void @_raw_spin_lock(ptr noundef %lock) #16
  br i1 %17, label %if.then218, label %if.end216.if.end229_crit_edge

if.end216.if.end229_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end229

if.then218:                                       ; preds = %if.end216
  %154 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %attr, align 8
  %and220 = and i32 %155, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  br i1 %tobool221.not, label %if.then218.if.end223_crit_edge, label %if.then222

if.then218.if.end223_crit_edge:                   ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end223

if.then222:                                       ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #18
  %i_mtime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6
  %156 = call ptr @memcpy(ptr %i_mtime, ptr %ia_mtime, i32 16)
  br label %if.end223

if.end223:                                        ; preds = %if.then222, %if.then218.if.end223_crit_edge
  %157 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %attr, align 8
  %and225 = and i32 %158, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %if.end223.if.end229_crit_edge, label %if.then227

if.end223.if.end229_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end229

if.then227:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #18
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 7
  %159 = call ptr @memcpy(ptr %i_ctime, ptr %ia_ctime, i32 16)
  br label %if.end229

if.end229:                                        ; preds = %if.then227, %if.end223.if.end229_crit_edge, %if.end216.if.end229_crit_edge
  %160 = phi i1 [ %tobool18.not, %if.end223.if.end229_crit_edge ], [ %tobool18.not, %if.then227 ], [ false, %if.end216.if.end229_crit_edge ]
  %call231 = call fastcc i64 @attr_timeout(ptr noundef nonnull %outarg)
  %call232 = call i32 @fuse_get_cache_mask(ptr noundef %1) #16
  call void @fuse_change_attributes_common(ptr noundef %1, ptr noundef %attr208, i64 noundef %call231, i32 noundef %call232) #16
  %i_size233 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %161 = ptrtoint ptr %i_size233 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %i_size233, align 8
  br i1 %160, label %if.end229.if.end240_crit_edge, label %if.then238

if.end229.if.end240_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end240

if.then238:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #18
  %163 = ptrtoint ptr %size.i373 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %size.i373, align 8
  call fastcc void @i_size_write(ptr noundef %1, i64 noundef %164)
  br label %if.end240

if.end240:                                        ; preds = %if.then238, %if.end229.if.end240_crit_edge
  br i1 %tobool18.not, label %lor.lhs.false247.critedge, label %if.then242

if.then242:                                       ; preds = %if.end240
  %writectr.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 9, i32 0, i32 2
  %165 = ptrtoint ptr %writectr.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %writectr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %166)
  %cmp.not.i = icmp eq i32 %166, -2147483648
  br i1 %cmp.not.i, label %__fuse_release_nowrite.exit, label %do.body2.i, !prof !43

do.body2.i:                                       ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fuse/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1567, 0\0A.popsection", ""() #16, !srcloc !48
  unreachable

__fuse_release_nowrite.exit:                      ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #18
  %167 = ptrtoint ptr %writectr.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %writectr.i, align 8
  call void @fuse_flush_writepages(ptr noundef %1) #16
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %land.lhs.true249

lor.lhs.false247.critedge:                        ; preds = %if.end240
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  br i1 %17, label %lor.lhs.false247.critedge.if.end264_crit_edge, label %lor.lhs.false247.critedge.land.lhs.true249_crit_edge

lor.lhs.false247.critedge.land.lhs.true249_crit_edge: ; preds = %lor.lhs.false247.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true249

lor.lhs.false247.critedge.if.end264_crit_edge:    ; preds = %lor.lhs.false247.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end264

land.lhs.true249:                                 ; preds = %lor.lhs.false247.critedge.land.lhs.true249_crit_edge, %__fuse_release_nowrite.exit
  %168 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %1, align 8
  %170 = and i16 %169, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %170)
  %cmp253 = icmp eq i16 %170, -32768
  br i1 %cmp253, label %land.lhs.true255, label %land.lhs.true249.if.end264_crit_edge

land.lhs.true249.if.end264_crit_edge:             ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end264

land.lhs.true255:                                 ; preds = %land.lhs.true249
  %171 = ptrtoint ptr %size.i373 to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %size.i373, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %162, i64 %172)
  %cmp258.not = icmp eq i64 %162, %172
  br i1 %cmp258.not, label %land.lhs.true255.if.end264_crit_edge, label %if.then260

land.lhs.true255.if.end264_crit_edge:             ; preds = %land.lhs.true255
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end264

if.then260:                                       ; preds = %land.lhs.true255
  call void @__sanitizer_cov_trace_pc() #18
  call void @truncate_pagecache(ptr noundef %1, i64 noundef %172) #16
  %call263 = call i32 @invalidate_inode_pages2(ptr noundef %9) #16
  br label %if.end264

if.end264:                                        ; preds = %if.then260, %land.lhs.true255.if.end264_crit_edge, %land.lhs.true249.if.end264_crit_edge, %lor.lhs.false247.critedge.if.end264_crit_edge
  %state265 = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 10
  call void @_clear_bit(i32 noundef 2, ptr noundef %state265) #16
  br label %cleanup

error:                                            ; preds = %fuse_make_bad.exit, %__cmpxchg.exit.i.i.error_crit_edge, %if.end199.error_crit_edge
  %err.0 = phi i32 [ -5, %fuse_make_bad.exit ], [ %call200, %if.end199.error_crit_edge ], [ -4, %__cmpxchg.exit.i.i.error_crit_edge ]
  br i1 %tobool18.not, label %error.if.end271_crit_edge, label %if.then270

error.if.end271_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end271

if.then270:                                       ; preds = %error
  %lock.i374 = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 12
  call void @_raw_spin_lock(ptr noundef %lock.i374) #16
  %writectr.i.i375 = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 9, i32 0, i32 2
  %173 = ptrtoint ptr %writectr.i.i375 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %writectr.i.i375, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %174)
  %cmp.not.i.i376 = icmp eq i32 %174, -2147483648
  br i1 %cmp.not.i.i376, label %fuse_release_nowrite.exit378, label %do.body2.i.i377, !prof !43

do.body2.i.i377:                                  ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fuse/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1567, 0\0A.popsection", ""() #16, !srcloc !48
  unreachable

fuse_release_nowrite.exit378:                     ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #18
  %175 = ptrtoint ptr %writectr.i.i375 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %writectr.i.i375, align 8
  call void @fuse_flush_writepages(ptr noundef %1) #16
  call void @_raw_spin_unlock(ptr noundef %lock.i374) #16
  br label %if.end271

if.end271:                                        ; preds = %fuse_release_nowrite.exit378, %error.if.end271_crit_edge
  %state272 = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 10
  call void @_clear_bit(i32 noundef 2, ptr noundef %state272) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end271, %if.end264, %if.then135.cleanup_crit_edge, %if.then127, %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %err.0, %if.end271 ], [ %call12, %if.end.cleanup_crit_edge ], [ %call136, %if.then135.cleanup_crit_edge ], [ 0, %if.then127 ], [ 0, %if.end264 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %outarg) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %inarg) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #16
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !30) #16
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !50
  %9 = tail call i32 @llvm.read_register.i32(metadata !30) #16
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !51
  %18 = tail call i32 @llvm.read_register.i32(metadata !30) #16
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !30) #16
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !30) #16
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !52
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !53
  %37 = tail call i32 @llvm.read_register.i32(metadata !30) #16
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !43

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !54
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #16
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #16
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !55
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !56
  %48 = tail call i32 @llvm.read_register.i32(metadata !30) #16
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fuse_lock_owner_id(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_change_attributes_common(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @attr_timeout(ptr nocapture noundef readonly %o) unnamed_addr #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %o to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %o, align 8
  %attr_valid_nsec = getelementptr inbounds %struct.fuse_attr_out, ptr %o, i32 0, i32 1
  %2 = ptrtoint ptr %attr_valid_nsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr_valid_nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not.i = icmp eq i64 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  %or.cond.i = and i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.time_to_jiffies.exit_crit_edge, label %if.then.i

entry.time_to_jiffies.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %time_to_jiffies.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #16
  %4 = getelementptr inbounds i8, ptr %ts.i, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %4, align 8
  %6 = ptrtoint ptr %ts.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %1, ptr %ts.i, align 8
  %7 = tail call i32 @llvm.umin.i32(i32 %3, i32 999999999) #16
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %4, align 8
  %call.i = tail call i64 @get_jiffies_64() #16
  %call2.i = call i32 @timespec64_to_jiffies(ptr noundef nonnull %ts.i) #16
  %conv.i = zext i32 %call2.i to i64
  %add.i = add i64 %call.i, %conv.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #16
  br label %time_to_jiffies.exit

time_to_jiffies.exit:                             ; preds = %if.then.i, %entry.time_to_jiffies.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.then.i ], [ 0, %entry.time_to_jiffies.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_get_cache_mask(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @fuse_init_common(ptr nocapture noundef writeonly %inode) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %0 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @fuse_common_inode_operations, ptr %i_op, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_init_dir(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %0 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @fuse_dir_inode_operations, ptr %i_op, align 8
  %1 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @fuse_dir_operations, ptr %1, align 8
  %3 = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 9
  %lock = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 9, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @fuse_init_dir.__key, i16 noundef signext 3) #16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %3, align 8
  %size = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 9, i32 0, i32 1
  %5 = call ptr @memset(ptr %size, i32 0, i32 24)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_init_symlink(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %0 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @fuse_symlink_inode_operations, ptr %i_op, align 8
  %a_ops = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 9
  %1 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @fuse_symlink_aops, ptr %a_ops, align 8
  tail call void @inode_nohighmem(ptr noundef %inode) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timespec64_to_jiffies(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @forget_all_cached_acls(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_change_attributes(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fs_context_for_submount(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_mount(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fs_context(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fuse_do_getattr(ptr noundef %inode, ptr noundef writeonly %stat, ptr noundef readonly %file) unnamed_addr #0 align 64 {
entry:
  %ts.i.i = alloca %struct.timespec64, align 8
  %inarg = alloca %struct.fuse_getattr_in, align 8
  %outarg = alloca %struct.fuse_attr_out, align 8
  %args = alloca %struct.fuse_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inarg) #16
  %0 = getelementptr inbounds %struct.fuse_getattr_in, ptr %inarg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %outarg) #16
  %1 = call ptr @memset(ptr %outarg, i32 255, i32 104)
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #16
  %6 = getelementptr inbounds i8, ptr %args, i32 16
  %7 = call ptr @memset(ptr %6, i32 0, i32 48)
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %attr_version.i = getelementptr inbounds %struct.fuse_conn, ptr %9, i32 0, i32 34
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %attr_version.i, i32 noundef 8) #16
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %attr_version.i) #16
  %10 = call ptr @memset(ptr %inarg, i32 0, i32 16)
  %11 = call ptr @memset(ptr %outarg, i32 0, i32 104)
  %tobool.not = icmp eq ptr %file, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %inode, align 8
  %14 = and i16 %13, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %14)
  %cmp = icmp eq i16 %14, -32768
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private_data, align 4
  %17 = ptrtoint ptr %inarg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %inarg, align 8
  %or = or i32 %18, 1
  store i32 %or, ptr %inarg, align 8
  %fh = getelementptr inbounds %struct.fuse_file, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %fh to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %fh, align 8
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %22 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %opcode, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 1
  %23 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %nodeid.i, align 8
  %25 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %args, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %26 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %in_numargs, align 4
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %27 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %in_args, align 4
  %value = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %inarg, ptr %value, align 8
  %out_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 3
  %29 = ptrtoint ptr %out_numargs to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %out_numargs, align 2
  %out_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6
  %30 = ptrtoint ptr %out_args to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 104, ptr %out_args, align 4
  %value11 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6, i32 0, i32 1
  %31 = ptrtoint ptr %value11 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %outarg, ptr %value11, align 8
  %call12 = call i32 @fuse_simple_request(ptr noundef %5, ptr noundef nonnull %args) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then14:                                        ; preds = %if.end
  %attr = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 3
  %mode.i = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 3, i32 9
  %32 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode.i, align 4
  %and.i.i = and i32 %33, 61440
  %34 = add nsw i32 %and.i.i, -4096
  %35 = lshr exact i32 %34, 12
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %35, label %fuse_valid_type.exit.i [
    i32 7, label %if.then14.fuse_invalid_attr.exit_crit_edge
    i32 3, label %if.then14.fuse_invalid_attr.exit_crit_edge44
    i32 9, label %if.then14.fuse_invalid_attr.exit_crit_edge45
    i32 1, label %if.then14.fuse_invalid_attr.exit_crit_edge46
    i32 5, label %if.then14.fuse_invalid_attr.exit_crit_edge47
    i32 0, label %if.then14.fuse_invalid_attr.exit_crit_edge48
  ]

if.then14.fuse_invalid_attr.exit_crit_edge48:     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.then14.fuse_invalid_attr.exit_crit_edge47:     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.then14.fuse_invalid_attr.exit_crit_edge46:     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.then14.fuse_invalid_attr.exit_crit_edge45:     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.then14.fuse_invalid_attr.exit_crit_edge44:     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

if.then14.fuse_invalid_attr.exit_crit_edge:       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

fuse_valid_type.exit.i:                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and.i.i)
  %cmp16.i.not.i = icmp eq i32 %and.i.i, 49152
  br i1 %cmp16.i.not.i, label %fuse_valid_type.exit.i.fuse_invalid_attr.exit_crit_edge, label %fuse_valid_type.exit.i.if.then21_crit_edge

fuse_valid_type.exit.i.if.then21_crit_edge:       ; preds = %fuse_valid_type.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

fuse_valid_type.exit.i.fuse_invalid_attr.exit_crit_edge: ; preds = %fuse_valid_type.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

fuse_invalid_attr.exit:                           ; preds = %fuse_valid_type.exit.i.fuse_invalid_attr.exit_crit_edge, %if.then14.fuse_invalid_attr.exit_crit_edge, %if.then14.fuse_invalid_attr.exit_crit_edge44, %if.then14.fuse_invalid_attr.exit_crit_edge45, %if.then14.fuse_invalid_attr.exit_crit_edge46, %if.then14.fuse_invalid_attr.exit_crit_edge47, %if.then14.fuse_invalid_attr.exit_crit_edge48
  %size.i = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %cmp.i = icmp slt i64 %38, 0
  br i1 %cmp.i, label %fuse_invalid_attr.exit.if.then21_crit_edge, label %lor.lhs.false

fuse_invalid_attr.exit.if.then21_crit_edge:       ; preds = %fuse_invalid_attr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

lor.lhs.false:                                    ; preds = %fuse_invalid_attr.exit
  %39 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode.i, align 4
  %conv18 = trunc i32 %40 to i16
  %41 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %inode, align 8
  %xor2.i = xor i16 %42, %conv18
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i)
  %tobool.i = icmp ugt i16 %xor2.i, 4095
  br i1 %tobool.i, label %lor.lhs.false.if.then21_crit_edge, label %if.else

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %fuse_invalid_attr.exit.if.then21_crit_edge, %fuse_valid_type.exit.i.if.then21_crit_edge
  %pprev.i.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %43 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i = icmp eq ptr %44, null
  %i_hash.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28
  %cmp.i.i.i = icmp eq ptr %44, %i_hash.i.i
  %or.cond.i = select i1 %tobool.not.i.i.not.i.i, i1 true, i1 %cmp.i.i.i
  br i1 %or.cond.i, label %if.then21.fuse_make_bad.exit_crit_edge, label %if.then.i.i

if.then21.fuse_make_bad.exit_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_make_bad.exit

if.then.i.i:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  call void @__remove_inode_hash(ptr noundef %inode) #16
  br label %fuse_make_bad.exit

fuse_make_bad.exit:                               ; preds = %if.then.i.i, %if.then21.fuse_make_bad.exit_crit_edge
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 10
  call void @_set_bit(i32 noundef 3, ptr noundef %state.i) #16
  br label %if.end29

if.else:                                          ; preds = %lor.lhs.false
  %45 = ptrtoint ptr %outarg to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %outarg, align 8
  %attr_valid_nsec.i = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 1
  %47 = ptrtoint ptr %attr_valid_nsec.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %attr_valid_nsec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %tobool.not.i.i = icmp eq i64 %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool1.not.i.i = icmp eq i32 %48, 0
  %or.cond.i.i = and i1 %tobool.not.i.i, %tobool1.not.i.i
  br i1 %or.cond.i.i, label %if.else.attr_timeout.exit_crit_edge, label %if.then.i.i41

if.else.attr_timeout.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %attr_timeout.exit

if.then.i.i41:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i.i) #16
  %49 = getelementptr inbounds i8, ptr %ts.i.i, i32 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 -1, ptr %49, align 8
  %51 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %46, ptr %ts.i.i, align 8
  %52 = call i32 @llvm.umin.i32(i32 %48, i32 999999999) #16
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %49, align 8
  %call.i.i40 = call i64 @get_jiffies_64() #16
  %call2.i.i = call i32 @timespec64_to_jiffies(ptr noundef nonnull %ts.i.i) #16
  %conv.i.i = zext i32 %call2.i.i to i64
  %add.i.i = add i64 %call.i.i40, %conv.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i.i) #16
  br label %attr_timeout.exit

attr_timeout.exit:                                ; preds = %if.then.i.i41, %if.else.attr_timeout.exit_crit_edge
  %retval.0.i.i = phi i64 [ %add.i.i, %if.then.i.i41 ], [ 0, %if.else.attr_timeout.exit_crit_edge ]
  call void @fuse_change_attributes(ptr noundef %inode, ptr noundef %attr, i64 noundef %retval.0.i.i, i64 noundef %call.i.i) #16
  %tobool24.not = icmp eq ptr %stat, null
  br i1 %tobool24.not, label %attr_timeout.exit.if.end29_crit_edge, label %if.then25

attr_timeout.exit.if.end29_crit_edge:             ; preds = %attr_timeout.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then25:                                        ; preds = %attr_timeout.exit
  %54 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 33
  %56 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %s_dev.i = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %s_dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_dev.i, align 8
  %dev.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 7
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %dev.i, align 8
  %63 = ptrtoint ptr %attr to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %attr, align 8
  %ino1.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %65 = ptrtoint ptr %ino1.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %ino1.i, align 8
  %66 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %inode, align 8
  %68 = and i16 %67, -4096
  %69 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mode.i, align 4
  %71 = trunc i32 %70 to i16
  %72 = and i16 %71, 4095
  %conv3.i = or i16 %72, %68
  %mode4.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 1
  %73 = ptrtoint ptr %mode4.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv3.i, ptr %mode4.i, align 4
  %nlink.i = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 3, i32 10
  %74 = ptrtoint ptr %nlink.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nlink.i, align 8
  %nlink5.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 2
  %76 = ptrtoint ptr %nlink5.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %nlink5.i, align 8
  %uid.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 9
  %user_ns.i = getelementptr inbounds %struct.fuse_conn, ptr %59, i32 0, i32 7
  %77 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %user_ns.i, align 8
  %uid6.i = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 3, i32 11
  %79 = ptrtoint ptr %uid6.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %uid6.i, align 4
  %call7.i = call i32 @make_kuid(ptr noundef %78, i32 noundef %80) #16
  %81 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call7.i, ptr %uid.i, align 8
  %gid.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 10
  %82 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %user_ns.i, align 8
  %gid10.i = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 3, i32 12
  %84 = ptrtoint ptr %gid10.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %gid10.i, align 8
  %call11.i = call i32 @make_kgid(ptr noundef %83, i32 noundef %85) #16
  %86 = ptrtoint ptr %gid.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call11.i, ptr %gid.i, align 4
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %87 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %i_rdev.i, align 8
  %rdev.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 8
  %89 = ptrtoint ptr %rdev.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %rdev.i, align 4
  %atime.i = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 3, i32 3
  %90 = ptrtoint ptr %atime.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %atime.i, align 8
  %atime13.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12
  %92 = ptrtoint ptr %atime13.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %atime13.i, align 8
  %atimensec.i = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 3, i32 6
  %93 = ptrtoint ptr %atimensec.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %atimensec.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12, i32 1
  %95 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %tv_nsec.i, align 8
  %mtime.i = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 3, i32 4
  %96 = ptrtoint ptr %mtime.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %mtime.i, align 8
  %mtime15.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13
  %98 = ptrtoint ptr %mtime15.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %mtime15.i, align 8
  %mtimensec.i = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 3, i32 7
  %99 = ptrtoint ptr %mtimensec.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mtimensec.i, align 4
  %tv_nsec18.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13, i32 1
  %101 = ptrtoint ptr %tv_nsec18.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %tv_nsec18.i, align 8
  %ctime.i = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 3, i32 5
  %102 = ptrtoint ptr %ctime.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %ctime.i, align 8
  %ctime19.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14
  %104 = ptrtoint ptr %ctime19.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %103, ptr %ctime19.i, align 8
  %ctimensec.i = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 3, i32 8
  %105 = ptrtoint ptr %ctimensec.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ctimensec.i, align 8
  %tv_nsec22.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14, i32 1
  %107 = ptrtoint ptr %tv_nsec22.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %tv_nsec22.i, align 8
  %108 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %size.i, align 8
  %size23.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %110 = ptrtoint ptr %size23.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %size23.i, align 8
  %blocks.i = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 3, i32 2
  %111 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %blocks.i, align 8
  %blocks24.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 16
  %113 = ptrtoint ptr %blocks24.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %112, ptr %blocks24.i, align 8
  %blksize.i = getelementptr inbounds %struct.fuse_attr_out, ptr %outarg, i32 0, i32 3, i32 14
  %114 = ptrtoint ptr %blksize.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %blksize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp.not.i = icmp eq i32 %115, 0
  br i1 %cmp.not.i, label %if.else.i, label %cond.false33.i

cond.false33.i:                                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  %116 = call i32 @llvm.ctlz.i32(i32 %115, i1 true) #16, !range !57
  %sub.i.i = xor i32 %116, 31
  br label %fuse_fillattr.exit

if.else.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  %117 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv39.i = zext i8 %120 to i32
  br label %fuse_fillattr.exit

fuse_fillattr.exit:                               ; preds = %if.else.i, %cond.false33.i
  %blkbits.0.i = phi i32 [ %conv39.i, %if.else.i ], [ %sub.i.i, %cond.false33.i ]
  %shl.i = shl nuw i32 1, %blkbits.0.i
  %blksize40.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %121 = ptrtoint ptr %blksize40.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %shl.i, ptr %blksize40.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %fuse_fillattr.exit, %attr_timeout.exit.if.end29_crit_edge, %fuse_make_bad.exit, %if.end.if.end29_crit_edge
  %err.0 = phi i32 [ %call12, %if.end.if.end29_crit_edge ], [ -5, %fuse_make_bad.exit ], [ 0, %fuse_fillattr.exit ], [ 0, %attr_timeout.exit.if.end29_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %outarg) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inarg) #16
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_invalidate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_flush_writepages(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__remove_inode_hash(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_permission(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, i32 noundef %mask) #0 align 64 {
entry:
  %args.i = alloca %struct.fuse_args, align 8
  %inarg.i = alloca %struct.fuse_access_in, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 10
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup79_crit_edge

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup79

if.end:                                           ; preds = %entry
  %allow_other.i = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 26
  %9 = ptrtoint ptr %allow_other.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 7)
  %bf.load.i = load i56, ptr %allow_other.i, align 1
  %10 = and i56 %bf.load.i, 16384
  %tobool.not.i = icmp eq i56 %10, 0
  br i1 %tobool.not.i, label %do.end.i, label %fuse_allow_current_process.exit

do.end.i:                                         ; preds = %if.end
  %11 = tail call i32 @llvm.read_register.i32(metadata !30) #16
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %cred2.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred2.i, align 16
  %euid.i = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 8
  %user_id.i = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack.i = load i32, ptr %euid.i, align 4
  %18 = ptrtoint ptr %user_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack48.i = load i32, ptr %user_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack48.i)
  %cmp.i.i = icmp eq i32 %.unpack.i, %.unpack48.i
  br i1 %cmp.i.i, label %land.lhs.true.i, label %do.end.i.cleanup79_crit_edge

do.end.i.cleanup79_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup79

land.lhs.true.i:                                  ; preds = %do.end.i
  %suid.i = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 6
  %19 = ptrtoint ptr %suid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack49.i = load i32, ptr %suid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack49.i, i32 %.unpack.i)
  %cmp.i59.i = icmp eq i32 %.unpack49.i, %.unpack.i
  br i1 %cmp.i59.i, label %land.lhs.true11.i, label %land.lhs.true.i.cleanup79_crit_edge

land.lhs.true.i.cleanup79_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup79

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %uid.i = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 4
  %20 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack51.i = load i32, ptr %uid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack51.i, i32 %.unpack.i)
  %cmp.i60.i = icmp eq i32 %.unpack51.i, %.unpack.i
  br i1 %cmp.i60.i, label %land.lhs.true17.i, label %land.lhs.true11.i.cleanup79_crit_edge

land.lhs.true11.i.cleanup79_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup79

land.lhs.true17.i:                                ; preds = %land.lhs.true11.i
  %egid.i = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 9
  %group_id.i = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 5
  %21 = ptrtoint ptr %egid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack53.i = load i32, ptr %egid.i, align 4
  %22 = ptrtoint ptr %group_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack54.i = load i32, ptr %group_id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack53.i, i32 %.unpack54.i)
  %cmp.i61.i = icmp eq i32 %.unpack53.i, %.unpack54.i
  br i1 %cmp.i61.i, label %land.lhs.true22.i, label %land.lhs.true17.i.cleanup79_crit_edge

land.lhs.true17.i.cleanup79_crit_edge:            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup79

land.lhs.true22.i:                                ; preds = %land.lhs.true17.i
  %sgid.i = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 7
  %23 = ptrtoint ptr %sgid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack55.i = load i32, ptr %sgid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack55.i, i32 %.unpack53.i)
  %cmp.i62.i = icmp eq i32 %.unpack55.i, %.unpack53.i
  br i1 %cmp.i62.i, label %land.lhs.true28.i, label %land.lhs.true22.i.cleanup79_crit_edge

land.lhs.true22.i.cleanup79_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup79

land.lhs.true28.i:                                ; preds = %land.lhs.true22.i
  %gid.i = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 5
  %24 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack57.i = load i32, ptr %gid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack57.i, i32 %.unpack53.i)
  %cmp.i63.i = icmp eq i32 %.unpack57.i, %.unpack53.i
  br i1 %cmp.i63.i, label %land.lhs.true28.i.if.end4_crit_edge, label %land.lhs.true28.i.cleanup79_crit_edge

land.lhs.true28.i.cleanup79_crit_edge:            ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup79

land.lhs.true28.i.if.end4_crit_edge:              ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

fuse_allow_current_process.exit:                  ; preds = %if.end
  %user_ns.i = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 7
  %25 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %user_ns.i, align 8
  %call.i = tail call zeroext i1 @current_in_userns(ptr noundef %26) #16
  br i1 %call.i, label %fuse_allow_current_process.exit.if.end4_crit_edge, label %fuse_allow_current_process.exit.cleanup79_crit_edge

fuse_allow_current_process.exit.cleanup79_crit_edge: ; preds = %fuse_allow_current_process.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup79

fuse_allow_current_process.exit.if.end4_crit_edge: ; preds = %fuse_allow_current_process.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.end4:                                          ; preds = %fuse_allow_current_process.exit.if.end4_crit_edge, %land.lhs.true28.i.if.end4_crit_edge
  %27 = ptrtoint ptr %allow_other.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 7)
  %bf.load = load i56, ptr %allow_other.i, align 1
  %28 = and i56 %bf.load, 32768
  %tobool5.not = icmp eq i56 %28, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end4.if.then9_crit_edge

if.end4.if.then9_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end4
  %and = and i32 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.end24_crit_edge, label %land.lhs.true

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

land.lhs.true:                                    ; preds = %lor.lhs.false
  %29 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %inode, align 8
  %31 = and i16 %30, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %31)
  %cmp = icmp eq i16 %31, -32768
  br i1 %cmp, label %land.lhs.true.if.then9_crit_edge, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

land.lhs.true.if.then9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9

if.then9:                                         ; preds = %land.lhs.true.if.then9_crit_edge, %if.end4.if.then9_crit_edge
  %inval_mask = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 5
  %32 = ptrtoint ptr %inval_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %inval_mask, align 8
  %and11 = and i32 %33, 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %if.then9.if.then17_crit_edge

if.then9.if.then17_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

lor.lhs.false13:                                  ; preds = %if.then9
  %i_time = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 4
  %34 = ptrtoint ptr %i_time to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %i_time, align 8
  %call14 = tail call i64 @get_jiffies_64() #16
  %sub = sub i64 %35, %call14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp15 = icmp slt i64 %sub, 0
  br i1 %cmp15, label %lor.lhs.false13.if.then17_crit_edge, label %lor.lhs.false13.if.end24_crit_edge

lor.lhs.false13.if.end24_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

lor.lhs.false13.if.then17_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false13.if.then17_crit_edge, %if.then9.if.then17_crit_edge
  %and.i = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i111 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i111, label %fuse_perm_getattr.exit, label %if.then17.cleanup79_crit_edge

if.then17.cleanup79_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup79

fuse_perm_getattr.exit:                           ; preds = %if.then17
  tail call void @forget_all_cached_acls(ptr noundef %inode) #16
  %call.i112 = tail call fastcc i32 @fuse_do_getattr(ptr noundef %inode, ptr noundef null, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool19.not = icmp eq i32 %call.i112, 0
  br i1 %tobool19.not, label %fuse_perm_getattr.exit.if.end24_crit_edge, label %fuse_perm_getattr.exit.cleanup79_crit_edge

fuse_perm_getattr.exit.cleanup79_crit_edge:       ; preds = %fuse_perm_getattr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup79

fuse_perm_getattr.exit.if.end24_crit_edge:        ; preds = %fuse_perm_getattr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.end24:                                         ; preds = %fuse_perm_getattr.exit.if.end24_crit_edge, %lor.lhs.false13.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %lor.lhs.false.if.end24_crit_edge
  %refreshed.2.off0 = phi i1 [ false, %land.lhs.true.if.end24_crit_edge ], [ false, %lor.lhs.false.if.end24_crit_edge ], [ true, %fuse_perm_getattr.exit.if.end24_crit_edge ], [ false, %lor.lhs.false13.if.end24_crit_edge ]
  %36 = ptrtoint ptr %allow_other.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 7)
  %bf.load26 = load i56, ptr %allow_other.i, align 1
  %37 = and i56 %bf.load26, 32768
  %tobool30.not = icmp eq i56 %37, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end24
  %call32 = tail call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i32 noundef %mask) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call32)
  %cmp33 = icmp ne i32 %call32, -13
  %brmerge = or i1 %refreshed.2.off0, %cmp33
  br i1 %brmerge, label %if.then31.if.end78_crit_edge, label %if.then37

if.then31.if.end78_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78

if.then37:                                        ; preds = %if.then31
  %and.i114 = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i114)
  %tobool.not.i115 = icmp eq i32 %and.i114, 0
  br i1 %tobool.not.i115, label %fuse_perm_getattr.exit119, label %if.then37.if.end78_crit_edge

if.then37.if.end78_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78

fuse_perm_getattr.exit119:                        ; preds = %if.then37
  tail call void @forget_all_cached_acls(ptr noundef %inode) #16
  %call.i116 = tail call fastcc i32 @fuse_do_getattr(ptr noundef %inode, ptr noundef null, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool39.not = icmp eq i32 %call.i116, 0
  br i1 %tobool39.not, label %if.then40, label %fuse_perm_getattr.exit119.if.end78_crit_edge

fuse_perm_getattr.exit119.if.end78_crit_edge:     ; preds = %fuse_perm_getattr.exit119
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78

if.then40:                                        ; preds = %fuse_perm_getattr.exit119
  call void @__sanitizer_cov_trace_pc() #18
  %call41 = tail call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i32 noundef %mask) #16
  br label %if.end78

if.else:                                          ; preds = %if.end24
  %and44 = and i32 %mask, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else48, label %if.then46

if.then46:                                        ; preds = %if.else
  %38 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 33
  %40 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args.i) #16
  %42 = getelementptr inbounds i8, ptr %args.i, i32 8
  %43 = call ptr @memset(ptr %42, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inarg.i) #16
  %and.i120 = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i120)
  %tobool.not.i121 = icmp eq i32 %and.i120, 0
  br i1 %tobool.not.i121, label %do.end8.i, label %do.body3.i, !prof !43

do.body3.i:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fuse/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1249, 0\0A.popsection", ""() #16, !srcloc !58
  unreachable

do.end8.i:                                        ; preds = %if.then46
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  %no_access.i = getelementptr inbounds %struct.fuse_conn, ptr %45, i32 0, i32 26
  %46 = ptrtoint ptr %no_access.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 7)
  %bf.load.i122 = load i56, ptr %no_access.i, align 1
  %47 = and i56 %bf.load.i122, 4294967296
  %tobool9.not.i = icmp eq i56 %47, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %do.end8.i.fuse_access.exit_crit_edge

do.end8.i.fuse_access.exit_crit_edge:             ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_access.exit

if.end11.i:                                       ; preds = %do.end8.i
  %48 = ptrtoint ptr %inarg.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 0, ptr %inarg.i, align 8
  %and12.i = and i32 %mask, 7
  store i32 %and12.i, ptr %inarg.i, align 8
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 34, ptr %42, align 8
  %nodeid.i.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 1
  %50 = ptrtoint ptr %nodeid.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %nodeid.i.i, align 8
  %52 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %args.i, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 2
  %53 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %in_numargs.i, align 4
  %in_args.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5
  %54 = ptrtoint ptr %in_args.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 8, ptr %in_args.i, align 4
  %value.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 0, i32 1
  %55 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %inarg.i, ptr %value.i, align 8
  %call17.i = call i32 @fuse_simple_request(ptr noundef %41, ptr noundef nonnull %args.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call17.i)
  %cmp.i = icmp eq i32 %call17.i, -38
  br i1 %cmp.i, label %if.then18.i, label %if.end11.i.fuse_access.exit_crit_edge

if.end11.i.fuse_access.exit_crit_edge:            ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_access.exit

if.then18.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  %56 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %41, align 4
  %no_access20.i = getelementptr inbounds %struct.fuse_conn, ptr %57, i32 0, i32 26
  %58 = ptrtoint ptr %no_access20.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 7)
  %bf.load21.i = load i56, ptr %no_access20.i, align 1
  %bf.set.i = or i56 %bf.load21.i, 4294967296
  store i56 %bf.set.i, ptr %no_access20.i, align 1
  br label %fuse_access.exit

fuse_access.exit:                                 ; preds = %if.then18.i, %if.end11.i.fuse_access.exit_crit_edge, %do.end8.i.fuse_access.exit_crit_edge
  %retval.0.i123 = phi i32 [ 0, %do.end8.i.fuse_access.exit_crit_edge ], [ 0, %if.then18.i ], [ %call17.i, %if.end11.i.fuse_access.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inarg.i) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i) #16
  br label %if.end78

if.else48:                                        ; preds = %if.else
  %and49 = and i32 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else48.if.end78_crit_edge, label %land.lhs.true51

if.else48.if.end78_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78

land.lhs.true51:                                  ; preds = %if.else48
  %59 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %inode, align 8
  %61 = and i16 %60, -4023
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %61)
  %62 = icmp eq i16 %61, -32768
  br i1 %62, label %if.then62, label %land.lhs.true51.if.end78_crit_edge

land.lhs.true51.if.end78_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78

if.then62:                                        ; preds = %land.lhs.true51
  br i1 %refreshed.2.off0, label %if.then62.cleanup79_crit_edge, label %if.end65

if.then62.cleanup79_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup79

if.end65:                                         ; preds = %if.then62
  %call66 = tail call fastcc i32 @fuse_perm_getattr(ptr noundef %inode, i32 noundef %mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true68, label %if.end65.if.end78_crit_edge

if.end65.if.end78_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78

land.lhs.true68:                                  ; preds = %if.end65
  %63 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %inode, align 8
  %65 = and i16 %64, 73
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool72.not = icmp eq i16 %65, 0
  br i1 %tobool72.not, label %land.lhs.true68.cleanup79_crit_edge, label %land.lhs.true68.if.end78_crit_edge

land.lhs.true68.if.end78_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78

land.lhs.true68.cleanup79_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup79

if.end78:                                         ; preds = %land.lhs.true68.if.end78_crit_edge, %if.end65.if.end78_crit_edge, %land.lhs.true51.if.end78_crit_edge, %if.else48.if.end78_crit_edge, %fuse_access.exit, %if.then40, %fuse_perm_getattr.exit119.if.end78_crit_edge, %if.then37.if.end78_crit_edge, %if.then31.if.end78_crit_edge
  %err.3 = phi i32 [ %call.i116, %fuse_perm_getattr.exit119.if.end78_crit_edge ], [ %call41, %if.then40 ], [ %call32, %if.then31.if.end78_crit_edge ], [ %retval.0.i123, %fuse_access.exit ], [ %call66, %if.end65.if.end78_crit_edge ], [ 0, %land.lhs.true68.if.end78_crit_edge ], [ 0, %land.lhs.true51.if.end78_crit_edge ], [ 0, %if.else48.if.end78_crit_edge ], [ -10, %if.then37.if.end78_crit_edge ]
  br label %cleanup79

cleanup79:                                        ; preds = %if.end78, %land.lhs.true68.cleanup79_crit_edge, %if.then62.cleanup79_crit_edge, %fuse_perm_getattr.exit.cleanup79_crit_edge, %if.then17.cleanup79_crit_edge, %fuse_allow_current_process.exit.cleanup79_crit_edge, %land.lhs.true28.i.cleanup79_crit_edge, %land.lhs.true22.i.cleanup79_crit_edge, %land.lhs.true17.i.cleanup79_crit_edge, %land.lhs.true11.i.cleanup79_crit_edge, %land.lhs.true.i.cleanup79_crit_edge, %do.end.i.cleanup79_crit_edge, %entry.cleanup79_crit_edge
  %retval.1 = phi i32 [ %err.3, %if.end78 ], [ -5, %entry.cleanup79_crit_edge ], [ -13, %fuse_allow_current_process.exit.cleanup79_crit_edge ], [ -13, %if.then62.cleanup79_crit_edge ], [ -13, %land.lhs.true68.cleanup79_crit_edge ], [ -13, %do.end.i.cleanup79_crit_edge ], [ -13, %land.lhs.true.i.cleanup79_crit_edge ], [ -13, %land.lhs.true11.i.cleanup79_crit_edge ], [ -13, %land.lhs.true17.i.cleanup79_crit_edge ], [ -13, %land.lhs.true22.i.cleanup79_crit_edge ], [ -13, %land.lhs.true28.i.cleanup79_crit_edge ], [ %call.i112, %fuse_perm_getattr.exit.cleanup79_crit_edge ], [ -10, %if.then17.cleanup79_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fuse_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %entry1, ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attr, align 8
  %and = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ia_file = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 8
  %10 = ptrtoint ptr %ia_file to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ia_file, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %11, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  br i1 %tobool.i.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %allow_other.i = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 26
  %15 = ptrtoint ptr %allow_other.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 7)
  %bf.load.i = load i56, ptr %allow_other.i, align 1
  %16 = and i56 %bf.load.i, 16384
  %tobool.not.i = icmp eq i56 %16, 0
  br i1 %tobool.not.i, label %do.end.i, label %fuse_allow_current_process.exit

do.end.i:                                         ; preds = %if.end
  %17 = tail call i32 @llvm.read_register.i32(metadata !30) #16
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %cred2.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 99
  %21 = ptrtoint ptr %cred2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cred2.i, align 16
  %euid.i = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 8
  %user_id.i = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 4
  %23 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack.i = load i32, ptr %euid.i, align 4
  %24 = ptrtoint ptr %user_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack48.i = load i32, ptr %user_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack48.i)
  %cmp.i.i = icmp eq i32 %.unpack.i, %.unpack48.i
  br i1 %cmp.i.i, label %land.lhs.true.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i:                                  ; preds = %do.end.i
  %suid.i = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 6
  %25 = ptrtoint ptr %suid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack49.i = load i32, ptr %suid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack49.i, i32 %.unpack.i)
  %cmp.i59.i = icmp eq i32 %.unpack49.i, %.unpack.i
  br i1 %cmp.i59.i, label %land.lhs.true11.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %uid.i = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 4
  %26 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack51.i = load i32, ptr %uid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack51.i, i32 %.unpack.i)
  %cmp.i60.i = icmp eq i32 %.unpack51.i, %.unpack.i
  br i1 %cmp.i60.i, label %land.lhs.true17.i, label %land.lhs.true11.i.cleanup_crit_edge

land.lhs.true11.i.cleanup_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true17.i:                                ; preds = %land.lhs.true11.i
  %egid.i = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 9
  %group_id.i = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 5
  %27 = ptrtoint ptr %egid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack53.i = load i32, ptr %egid.i, align 4
  %28 = ptrtoint ptr %group_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack54.i = load i32, ptr %group_id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack53.i, i32 %.unpack54.i)
  %cmp.i61.i = icmp eq i32 %.unpack53.i, %.unpack54.i
  br i1 %cmp.i61.i, label %land.lhs.true22.i, label %land.lhs.true17.i.cleanup_crit_edge

land.lhs.true17.i.cleanup_crit_edge:              ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true22.i:                                ; preds = %land.lhs.true17.i
  %sgid.i = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 7
  %29 = ptrtoint ptr %sgid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack55.i = load i32, ptr %sgid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack55.i, i32 %.unpack53.i)
  %cmp.i62.i = icmp eq i32 %.unpack55.i, %.unpack53.i
  br i1 %cmp.i62.i, label %land.lhs.true28.i, label %land.lhs.true22.i.cleanup_crit_edge

land.lhs.true22.i.cleanup_crit_edge:              ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true28.i:                                ; preds = %land.lhs.true22.i
  %gid.i = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 5
  %30 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack57.i = load i32, ptr %gid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack57.i, i32 %.unpack53.i)
  %cmp.i63.i = icmp eq i32 %.unpack57.i, %.unpack53.i
  br i1 %cmp.i63.i, label %land.lhs.true28.i.if.end8_crit_edge, label %land.lhs.true28.i.cleanup_crit_edge

land.lhs.true28.i.cleanup_crit_edge:              ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true28.i.if.end8_crit_edge:              ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

fuse_allow_current_process.exit:                  ; preds = %if.end
  %user_ns.i = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 7
  %31 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %user_ns.i, align 8
  %call.i = tail call zeroext i1 @current_in_userns(ptr noundef %32) #16
  br i1 %call.i, label %fuse_allow_current_process.exit.if.end8_crit_edge, label %fuse_allow_current_process.exit.cleanup_crit_edge

fuse_allow_current_process.exit.cleanup_crit_edge: ; preds = %fuse_allow_current_process.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

fuse_allow_current_process.exit.if.end8_crit_edge: ; preds = %fuse_allow_current_process.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.end8:                                          ; preds = %fuse_allow_current_process.exit.if.end8_crit_edge, %land.lhs.true28.i.if.end8_crit_edge
  %33 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %attr, align 8
  %and10 = and i32 %34, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end49_crit_edge, label %if.then12

if.end8.if.end49_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

if.then12:                                        ; preds = %if.end8
  %and14 = and i32 %34, -6146
  %35 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and14, ptr %attr, align 8
  %36 = ptrtoint ptr %allow_other.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 7)
  %bf.load = load i56, ptr %allow_other.i, align 1
  %37 = and i56 %bf.load, 158329674399744
  %38 = icmp eq i56 %37, 0
  br i1 %38, label %if.then21, label %if.then12.if.end49thread-pre-split_crit_edge

if.then12.if.end49thread-pre-split_crit_edge:     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49thread-pre-split

if.then21:                                        ; preds = %if.then12
  %call22 = tail call fastcc i32 @fuse_do_getattr(ptr noundef %1, ptr noundef null, ptr noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end25:                                         ; preds = %if.then21
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %1, align 8
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %41 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %ia_mode, align 4
  %42 = load i16, ptr %1, align 8
  %43 = and i16 %42, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool28.not = icmp eq i16 %43, 0
  br i1 %tobool28.not, label %if.end25.if.end35_crit_edge, label %if.then29

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %44 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %attr, align 8
  %or = or i32 %45, 1
  store i32 %or, ptr %attr, align 8
  %46 = and i16 %40, -2049
  %47 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %ia_mode, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.end25.if.end35_crit_edge
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %1, align 8
  %50 = and i16 %49, 1032
  call void @__sanitizer_cov_trace_const_cmp2(i16 1032, i16 %50)
  %cmp = icmp eq i16 %50, 1032
  br i1 %cmp, label %if.end49.thread, label %if.end35.if.end49thread-pre-split_crit_edge

if.end35.if.end49thread-pre-split_crit_edge:      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49thread-pre-split

if.end49.thread:                                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %51 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %attr, align 8
  %or42 = or i32 %52, 1
  store i32 %or42, ptr %attr, align 8
  %53 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %ia_mode, align 4
  %55 = and i16 %54, -1025
  store i16 %55, ptr %ia_mode, align 4
  br label %if.end53

if.end49thread-pre-split:                         ; preds = %if.end35.if.end49thread-pre-split_crit_edge, %if.then12.if.end49thread-pre-split_crit_edge
  %56 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr = load i32, ptr %attr, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.end49thread-pre-split, %if.end8.if.end49_crit_edge
  %57 = phi i32 [ %.pr, %if.end49thread-pre-split ], [ %34, %if.end8.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool51.not = icmp eq i32 %57, 0
  br i1 %tobool51.not, label %if.end49.cleanup_crit_edge, label %if.end49.if.end53_crit_edge

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end53:                                         ; preds = %if.end49.if.end53_crit_edge, %if.end49.thread
  %call54 = tail call i32 @fuse_do_setattr(ptr noundef %entry1, ptr noundef %attr, ptr noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then56:                                        ; preds = %if.end53
  %58 = ptrtoint ptr %allow_other.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 7)
  %bf.load57 = load i56, ptr %allow_other.i, align 1
  %59 = and i56 %bf.load57, 65536
  %tobool61.not = icmp eq i56 %59, 0
  br i1 %tobool61.not, label %if.then56.if.end63_crit_edge, label %if.then62

if.then56.if.end63_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

if.then62:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @forget_all_cached_acls(ptr noundef %1) #16
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.then56.if.end63_crit_edge
  %60 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %entry1, align 8
  %62 = and i32 %61, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %62)
  %63 = icmp eq i32 %62, 2097152
  br i1 %63, label %land.lhs.true66, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true66:                                  ; preds = %if.end63
  %64 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %attr, align 8
  %and68 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %land.lhs.true66.cleanup_crit_edge, label %if.then70

land.lhs.true66.cleanup_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then70:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @fuse_invalidate_entry_cache(ptr noundef %entry1)
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %land.lhs.true66.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %fuse_allow_current_process.exit.cleanup_crit_edge, %land.lhs.true28.i.cleanup_crit_edge, %land.lhs.true22.i.cleanup_crit_edge, %land.lhs.true17.i.cleanup_crit_edge, %land.lhs.true11.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %cond.end.cleanup_crit_edge ], [ -13, %fuse_allow_current_process.exit.cleanup_crit_edge ], [ %call22, %if.then21.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge ], [ 0, %land.lhs.true66.cleanup_crit_edge ], [ 0, %if.then70 ], [ %call54, %if.end53.cleanup_crit_edge ], [ -13, %do.end.i.cleanup_crit_edge ], [ -13, %land.lhs.true.i.cleanup_crit_edge ], [ -13, %land.lhs.true11.i.cleanup_crit_edge ], [ -13, %land.lhs.true17.i.cleanup_crit_edge ], [ -13, %land.lhs.true22.i.cleanup_crit_edge ], [ -13, %land.lhs.true28.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_getattr(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %allow_other.i = getelementptr inbounds %struct.fuse_conn, ptr %9, i32 0, i32 26
  %13 = ptrtoint ptr %allow_other.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 7)
  %bf.load.i = load i56, ptr %allow_other.i, align 1
  %14 = and i56 %bf.load.i, 16384
  %tobool.not.i = icmp eq i56 %14, 0
  br i1 %tobool.not.i, label %do.end.i, label %fuse_allow_current_process.exit

do.end.i:                                         ; preds = %if.end
  %15 = tail call i32 @llvm.read_register.i32(metadata !30) #16
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %cred2.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 99
  %19 = ptrtoint ptr %cred2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cred2.i, align 16
  %euid.i = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 8
  %user_id.i = getelementptr inbounds %struct.fuse_conn, ptr %9, i32 0, i32 4
  %21 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack.i = load i32, ptr %euid.i, align 4
  %22 = ptrtoint ptr %user_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack48.i = load i32, ptr %user_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack48.i)
  %cmp.i.i = icmp eq i32 %.unpack.i, %.unpack48.i
  br i1 %cmp.i.i, label %land.lhs.true.i, label %do.end.i.if.then4_crit_edge

do.end.i.if.then4_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

land.lhs.true.i:                                  ; preds = %do.end.i
  %suid.i = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 6
  %23 = ptrtoint ptr %suid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack49.i = load i32, ptr %suid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack49.i, i32 %.unpack.i)
  %cmp.i59.i = icmp eq i32 %.unpack49.i, %.unpack.i
  br i1 %cmp.i59.i, label %land.lhs.true11.i, label %land.lhs.true.i.if.then4_crit_edge

land.lhs.true.i.if.then4_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %uid.i = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 4
  %24 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack51.i = load i32, ptr %uid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack51.i, i32 %.unpack.i)
  %cmp.i60.i = icmp eq i32 %.unpack51.i, %.unpack.i
  br i1 %cmp.i60.i, label %land.lhs.true17.i, label %land.lhs.true11.i.if.then4_crit_edge

land.lhs.true11.i.if.then4_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

land.lhs.true17.i:                                ; preds = %land.lhs.true11.i
  %egid.i = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 9
  %group_id.i = getelementptr inbounds %struct.fuse_conn, ptr %9, i32 0, i32 5
  %25 = ptrtoint ptr %egid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack53.i = load i32, ptr %egid.i, align 4
  %26 = ptrtoint ptr %group_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack54.i = load i32, ptr %group_id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack53.i, i32 %.unpack54.i)
  %cmp.i61.i = icmp eq i32 %.unpack53.i, %.unpack54.i
  br i1 %cmp.i61.i, label %land.lhs.true22.i, label %land.lhs.true17.i.if.then4_crit_edge

land.lhs.true17.i.if.then4_crit_edge:             ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

land.lhs.true22.i:                                ; preds = %land.lhs.true17.i
  %sgid.i = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 7
  %27 = ptrtoint ptr %sgid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack55.i = load i32, ptr %sgid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack55.i, i32 %.unpack53.i)
  %cmp.i62.i = icmp eq i32 %.unpack55.i, %.unpack53.i
  br i1 %cmp.i62.i, label %land.lhs.true28.i, label %land.lhs.true22.i.if.then4_crit_edge

land.lhs.true22.i.if.then4_crit_edge:             ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

land.lhs.true28.i:                                ; preds = %land.lhs.true22.i
  %gid.i = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 5
  %28 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack57.i = load i32, ptr %gid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack57.i, i32 %.unpack53.i)
  %cmp.i63.i = icmp eq i32 %.unpack57.i, %.unpack53.i
  br i1 %cmp.i63.i, label %land.lhs.true28.i.if.end8_crit_edge, label %land.lhs.true28.i.if.then4_crit_edge

land.lhs.true28.i.if.then4_crit_edge:             ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

land.lhs.true28.i.if.end8_crit_edge:              ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

fuse_allow_current_process.exit:                  ; preds = %if.end
  %user_ns.i = getelementptr inbounds %struct.fuse_conn, ptr %9, i32 0, i32 7
  %29 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %user_ns.i, align 8
  %call.i = tail call zeroext i1 @current_in_userns(ptr noundef %30) #16
  br i1 %call.i, label %fuse_allow_current_process.exit.if.end8_crit_edge, label %fuse_allow_current_process.exit.if.then4_crit_edge

fuse_allow_current_process.exit.if.then4_crit_edge: ; preds = %fuse_allow_current_process.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

fuse_allow_current_process.exit.if.end8_crit_edge: ; preds = %fuse_allow_current_process.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then4:                                         ; preds = %fuse_allow_current_process.exit.if.then4_crit_edge, %land.lhs.true28.i.if.then4_crit_edge, %land.lhs.true22.i.if.then4_crit_edge, %land.lhs.true17.i.if.then4_crit_edge, %land.lhs.true11.i.if.then4_crit_edge, %land.lhs.true.i.if.then4_crit_edge, %do.end.i.if.then4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %request_mask)
  %tobool5.not = icmp eq i32 %request_mask, 0
  br i1 %tobool5.not, label %if.then6, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %stat, align 8
  %32 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb.i, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 7
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %dev, align 8
  br label %cleanup

if.end8:                                          ; preds = %fuse_allow_current_process.exit.if.end8_crit_edge, %land.lhs.true28.i.if.end8_crit_edge
  %inval_mask1.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 5
  %37 = ptrtoint ptr %inval_mask1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %inval_mask1.i, align 8
  %call2.i = tail call i32 @fuse_get_cache_mask(ptr noundef %3) #16
  %and.i = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i17 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i17, label %if.else.i, label %if.end8.if.then16.i_crit_edge

if.end8.if.then16.i_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16.i

if.else.i:                                        ; preds = %if.end8
  %and3.i = and i32 %flags, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else6.i, label %if.else.i.if.else18.i_crit_edge

if.else.i.if.else18.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else18.i

if.else6.i:                                       ; preds = %if.else.i
  %and7.i = and i32 %38, %request_mask
  %neg.i = xor i32 %call2.i, -1
  %and8.i = and i32 %and7.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else11.i, label %if.else6.i.if.then16.i_crit_edge

if.else6.i.if.then16.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16.i

if.else11.i:                                      ; preds = %if.else6.i
  %i_time.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 4
  %39 = ptrtoint ptr %i_time.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %i_time.i, align 8
  %call12.i = tail call i64 @get_jiffies_64() #16
  %sub.i = sub i64 %40, %call12.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %extract.t.i = icmp slt i64 %sub.i, 0
  br i1 %extract.t.i, label %if.else11.i.if.then16.i_crit_edge, label %if.else11.i.if.else18.i_crit_edge

if.else11.i.if.else18.i_crit_edge:                ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else18.i

if.else11.i.if.then16.i_crit_edge:                ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16.i

if.then16.i:                                      ; preds = %if.else11.i.if.then16.i_crit_edge, %if.else6.i.if.then16.i_crit_edge, %if.end8.if.then16.i_crit_edge
  tail call void @forget_all_cached_acls(ptr noundef %3) #16
  %call17.i = tail call fastcc i32 @fuse_do_getattr(ptr noundef %3, ptr noundef %stat, ptr noundef null) #16
  br label %cleanup

if.else18.i:                                      ; preds = %if.else11.i.if.else18.i_crit_edge, %if.else.i.if.else18.i_crit_edge
  %tobool19.not.i = icmp eq ptr %stat, null
  br i1 %tobool19.not.i, label %if.else18.i.cleanup_crit_edge, label %if.then20.i

if.else18.i.cleanup_crit_edge:                    ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then20.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef nonnull %stat) #16
  %orig_i_mode.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 6
  %41 = ptrtoint ptr %orig_i_mode.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %orig_i_mode.i, align 4
  %mode.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 1
  %43 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %mode.i, align 4
  %orig_ino.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 7
  %44 = ptrtoint ptr %orig_ino.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %orig_ino.i, align 8
  %ino.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %46 = ptrtoint ptr %ino.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %ino.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then20.i, %if.else18.i.cleanup_crit_edge, %if.then16.i, %if.then6, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ -5, %entry.cleanup_crit_edge ], [ -13, %if.then4.cleanup_crit_edge ], [ %call17.i, %if.then16.i ], [ 0, %if.then20.i ], [ 0, %if.else18.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_listxattr(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_fileattr_get(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fuse_perm_getattr(ptr noundef %inode, i32 noundef %mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @forget_all_cached_acls(ptr noundef %inode) #16
  %call = tail call fastcc i32 @fuse_do_getattr(ptr noundef %inode, ptr noundef null, ptr noundef null)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -10, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fuse_lookup(ptr noundef %dir, ptr noundef %entry1, i32 noundef %flags) #0 align 64 {
entry:
  %outarg = alloca %struct.fuse_entry_out, align 8
  %inode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %outarg) #16
  %0 = call ptr @memset(ptr %outarg, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inode) #16
  %1 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %inode, align 4, !annotation !59
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %dir, i32 0, i32 10
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call zeroext i1 @fuse_lock_inode(ptr noundef %dir) #16
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %dir, i32 0, i32 1
  %7 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %nodeid.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4
  %call5 = call i32 @fuse_lookup_name(ptr noundef %6, i64 noundef %8, ptr noundef %d_name, ptr noundef nonnull %outarg, ptr noundef nonnull %inode)
  call void @fuse_unlock_inode(ptr noundef %dir, i1 noundef zeroext %call3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call5)
  %cmp = icmp eq i32 %call5, -2
  %spec.select = select i1 %cmp, i32 0, i32 %call5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool8.not = icmp eq i32 %spec.select, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.out_err_crit_edge

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_err

if.end10:                                         ; preds = %if.end
  %9 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %inode, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %if.end10.if.end15_crit_edge, label %land.lhs.true

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end10
  %nodeid.i49 = getelementptr inbounds %struct.fuse_inode, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %nodeid.i49 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %nodeid.i49, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %12)
  %cmp13 = icmp eq i64 %12, 1
  br i1 %cmp13, label %out_iput, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end10.if.end15_crit_edge
  %call16 = call ptr @d_splice_alias(ptr noundef %10, ptr noundef %entry1) #16
  %13 = ptrtoint ptr %call16 to i32
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end15.out_err_crit_edge, label %if.end20

if.end15.out_err_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_err

if.end20:                                         ; preds = %if.end15
  %tobool21.not = icmp eq ptr %call16, null
  %entry1.call16 = select i1 %tobool21.not, ptr %entry1, ptr %call16
  br i1 %cmp, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  call void @fuse_change_entry_timeout(ptr noundef %entry1.call16, ptr noundef nonnull %outarg)
  br label %if.end24

if.else:                                          ; preds = %if.end20
  %d_sb.i.i = getelementptr inbounds %struct.dentry, ptr %entry1.call16, i32 0, i32 9
  %14 = ptrtoint ptr %d_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_sb.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %delete_stale.i.i = getelementptr inbounds %struct.fuse_conn, ptr %19, i32 0, i32 26
  %20 = ptrtoint ptr %delete_stale.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 7)
  %bf.load.i.i = load i56, ptr %delete_stale.i.i, align 1
  %21 = and i56 %bf.load.i.i, 2048
  %tobool1.not.i.i = icmp eq i56 %21, 0
  %22 = ptrtoint ptr %entry1.call16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %entry1.call16, align 8
  %and.i.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %land.lhs.true5.critedge.i.i

land.lhs.true.i.i:                                ; preds = %if.else
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.fuse_invalidate_entry_cache.exit_crit_edge, label %if.then10.i.i

land.lhs.true.i.i.fuse_invalidate_entry_cache.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalidate_entry_cache.exit

land.lhs.true5.critedge.i.i:                      ; preds = %if.else
  br i1 %tobool3.not.i.i, label %if.else.i.i, label %land.lhs.true5.critedge.i.i.fuse_invalidate_entry_cache.exit_crit_edge

land.lhs.true5.critedge.i.i.fuse_invalidate_entry_cache.exit_crit_edge: ; preds = %land.lhs.true5.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalidate_entry_cache.exit

if.then10.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %entry1.call16, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i.i) #16
  %24 = ptrtoint ptr %entry1.call16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entry1.call16, align 8
  %and12.i.i = and i32 %25, -9
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %land.lhs.true5.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref27.i.i = getelementptr inbounds %struct.dentry, ptr %entry1.call16, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref27.i.i) #16
  %26 = ptrtoint ptr %entry1.call16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %entry1.call16, align 8
  %or.i.i = or i32 %27, 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then10.i.i
  %d_lockref28.i.i = phi ptr [ %d_lockref.i.i, %if.then10.i.i ], [ %d_lockref27.i.i, %if.else.i.i ]
  %storemerge.i.i = phi i32 [ %and12.i.i, %if.then10.i.i ], [ %or.i.i, %if.else.i.i ]
  %28 = ptrtoint ptr %entry1.call16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge.i.i, ptr %entry1.call16, align 8
  call void @_raw_spin_unlock(ptr noundef %d_lockref28.i.i) #16
  br label %fuse_invalidate_entry_cache.exit

fuse_invalidate_entry_cache.exit:                 ; preds = %if.end.i.i, %land.lhs.true5.critedge.i.i.fuse_invalidate_entry_cache.exit_crit_edge, %land.lhs.true.i.i.fuse_invalidate_entry_cache.exit_crit_edge
  %d_fsdata.i.i.i = getelementptr inbounds %struct.dentry, ptr %entry1.call16, i32 0, i32 11
  %29 = ptrtoint ptr %d_fsdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_fsdata.i.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %30, align 8
  br label %if.end24

if.end24:                                         ; preds = %fuse_invalidate_entry_cache.exit, %if.then23
  br i1 %tobool11.not, label %if.end24.cleanup_crit_edge, label %if.then26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #16
  br label %cleanup

out_iput:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  call void @iput(ptr noundef nonnull %10) #16
  br label %out_err

out_err:                                          ; preds = %out_iput, %if.end15.out_err_crit_edge, %if.end.out_err_crit_edge
  %err.1 = phi i32 [ %spec.select, %if.end.out_err_crit_edge ], [ -5, %out_iput ], [ %13, %if.end15.out_err_crit_edge ]
  %32 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.then26, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %32, %out_err ], [ %call16, %if.then26 ], [ %call16, %if.end24.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inode) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %outarg) #16
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %entry1, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  %inarg.i = alloca %struct.fuse_mknod_in, align 4
  %args.i = alloca %struct.fuse_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inarg.i) #16
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args.i) #16
  %4 = call ptr @memset(ptr %args.i, i32 0, i32 64)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %dont_mask.i = getelementptr inbounds %struct.fuse_conn, ptr %6, i32 0, i32 26
  %7 = ptrtoint ptr %dont_mask.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 7)
  %bf.load.i = load i56, ptr %dont_mask.i, align 1
  %8 = and i56 %bf.load.i, 67108864
  %tobool.not.i = icmp eq i56 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.fuse_mknod.exit_crit_edge

entry.fuse_mknod.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_mknod.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call2.i = tail call i32 @current_umask() #16
  %9 = trunc i32 %call2.i to i16
  %10 = xor i16 %9, -1
  %conv3.i = and i16 %10, %mode
  br label %fuse_mknod.exit

fuse_mknod.exit:                                  ; preds = %if.then.i, %entry.fuse_mknod.exit_crit_edge
  %mode.addr.0.i = phi i16 [ %mode, %entry.fuse_mknod.exit_crit_edge ], [ %conv3.i, %if.then.i ]
  %11 = getelementptr inbounds %struct.fuse_mknod_in, ptr %inarg.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.fuse_mknod_in, ptr %inarg.i, i32 0, i32 1
  %13 = getelementptr inbounds i8, ptr %inarg.i, i32 12
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %13, align 4
  %conv4.i = zext i16 %mode.addr.0.i to i32
  %15 = ptrtoint ptr %inarg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv4.i, ptr %inarg.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %12, align 4
  %call8.i = tail call i32 @current_umask() #16
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call8.i, ptr %11, align 4
  %opcode.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 1
  %18 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %opcode.i, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 2
  %19 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2, ptr %in_numargs.i, align 4
  %in_args.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5
  %20 = ptrtoint ptr %in_args.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16, ptr %in_args.i, align 4
  %value.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 0, i32 1
  %21 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %inarg.i, ptr %value.i, align 8
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4
  %22 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %d_name.i, align 8
  %add.i = add i32 %23, 1
  %arrayidx12.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.i, ptr %arrayidx12.i, align 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name.i, align 8
  %value17.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 1, i32 1
  %27 = ptrtoint ptr %value17.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %value17.i, align 8
  %call18.i = call fastcc i32 @create_new_entry(ptr noundef %3, ptr noundef nonnull %args.i, ptr noundef %dir, ptr noundef %entry1, i16 noundef zeroext %mode.addr.0.i) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inarg.i) #16
  ret i32 %call18.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_link(ptr nocapture noundef readonly %entry1, ptr noundef %newdir, ptr noundef %newent) #0 align 64 {
entry:
  %inarg = alloca %struct.fuse_link_in, align 8
  %args = alloca %struct.fuse_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inarg) #16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #16
  %6 = call ptr @memset(ptr %args, i32 0, i32 64)
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %nodeid.i, align 8
  %9 = ptrtoint ptr %inarg to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %inarg, align 8
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %10 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 13, ptr %opcode, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %11 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %in_numargs, align 4
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %12 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %in_args, align 4
  %value = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %inarg, ptr %value, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %newent, i32 0, i32 4
  %14 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %d_name, align 8
  %add = add i32 %15, 1
  %arrayidx7 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %arrayidx7, align 4
  %name = getelementptr inbounds %struct.dentry, ptr %newent, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 8
  %value12 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 1, i32 1
  %19 = ptrtoint ptr %value12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %value12, align 8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 8
  %call13 = call fastcc i32 @create_new_entry(ptr noundef %5, ptr noundef nonnull %args, ptr noundef %newdir, ptr noundef %newent, i16 noundef zeroext %21)
  %22 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call13, label %entry.if.end15_crit_edge [
    i32 0, label %if.then
    i32 -4, label %if.then14
  ]

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @fuse_update_ctime_in_cache(ptr noundef %1)
  br label %if.end15

if.then14:                                        ; preds = %entry
  %inval_mask.i.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 5
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %__cmpxchg.exit.i.i.do.body.i.i_crit_edge, %if.then14
  %23 = ptrtoint ptr %inval_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %inval_mask.i.i, align 8
  %or.i.i = or i32 %24, 2047
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %inval_mask.i.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !40
  call void @llvm.prefetch.p0(ptr %inval_mask.i.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body.i.i
  %25 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %inval_mask.i.i, i32 %24, i32 %or.i.i) #16, !srcloc !41
  %asmresult.i.i.i = extractvalue { i32, i32 } %25, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %25, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !42
  %cmp.not.i.i = icmp eq i32 %asmresult1.i.i.i, %24
  br i1 %cmp.not.i.i, label %__cmpxchg.exit.i.i.if.end15_crit_edge, label %__cmpxchg.exit.i.i.do.body.i.i_crit_edge

__cmpxchg.exit.i.i.do.body.i.i_crit_edge:         ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

__cmpxchg.exit.i.i.if.end15_crit_edge:            ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.end15:                                         ; preds = %__cmpxchg.exit.i.i.if.end15_crit_edge, %if.then, %entry.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inarg) #16
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_unlink(ptr noundef %dir, ptr noundef %entry1) #0 align 64 {
entry:
  %args = alloca %struct.fuse_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #16
  %4 = getelementptr inbounds i8, ptr %args, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 56)
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %dir, i32 0, i32 10
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %9 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10, ptr %opcode, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %dir, i32 0, i32 1
  %10 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %nodeid.i, align 8
  %12 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %args, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %13 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %in_numargs, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4
  %14 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %d_name, align 8
  %add = add i32 %15, 1
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %16 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %in_args, align 4
  %name = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 8
  %value = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %value, align 8
  %call7 = call i32 @fuse_simple_request(ptr noundef %3, ptr noundef nonnull %args) #16
  %20 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %call7, label %if.end.cleanup_crit_edge [
    i32 0, label %if.then8
    i32 -4, label %if.then9
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @fuse_dir_changed(ptr noundef %dir)
  call fastcc void @fuse_entry_unlinked(ptr noundef %entry1)
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @d_invalidate(ptr noundef %entry1) #16
  %d_sb.i.i.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 9
  %21 = ptrtoint ptr %d_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i.i.i.i, align 16
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %delete_stale.i.i.i = getelementptr inbounds %struct.fuse_conn, ptr %26, i32 0, i32 26
  %27 = ptrtoint ptr %delete_stale.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 7)
  %bf.load.i.i.i = load i56, ptr %delete_stale.i.i.i, align 1
  %28 = and i56 %bf.load.i.i.i, 2048
  %tobool1.not.i.i.i = icmp eq i56 %28, 0
  %29 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %entry1, align 8
  %and.i.i.i = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i, label %land.lhs.true5.critedge.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then9
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.fuse_invalidate_entry.exit_crit_edge, label %if.then10.i.i.i

land.lhs.true.i.i.i.fuse_invalidate_entry.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalidate_entry.exit

land.lhs.true5.critedge.i.i.i:                    ; preds = %if.then9
  br i1 %tobool3.not.i.i.i, label %if.else.i.i.i, label %land.lhs.true5.critedge.i.i.i.fuse_invalidate_entry.exit_crit_edge

land.lhs.true5.critedge.i.i.i.fuse_invalidate_entry.exit_crit_edge: ; preds = %land.lhs.true5.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalidate_entry.exit

if.then10.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #16
  %31 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %entry1, align 8
  %and12.i.i.i = and i32 %32, -9
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true5.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref27.i.i.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref27.i.i.i) #16
  %33 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %entry1, align 8
  %or.i.i.i = or i32 %34, 8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then10.i.i.i
  %d_lockref28.i.i.i = phi ptr [ %d_lockref.i.i.i, %if.then10.i.i.i ], [ %d_lockref27.i.i.i, %if.else.i.i.i ]
  %storemerge.i.i.i = phi i32 [ %and12.i.i.i, %if.then10.i.i.i ], [ %or.i.i.i, %if.else.i.i.i ]
  %35 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge.i.i.i, ptr %entry1, align 8
  call void @_raw_spin_unlock(ptr noundef %d_lockref28.i.i.i) #16
  br label %fuse_invalidate_entry.exit

fuse_invalidate_entry.exit:                       ; preds = %if.end.i.i.i, %land.lhs.true5.critedge.i.i.i.fuse_invalidate_entry.exit_crit_edge, %land.lhs.true.i.i.i.fuse_invalidate_entry.exit_crit_edge
  %d_fsdata.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 11
  %36 = ptrtoint ptr %d_fsdata.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d_fsdata.i.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %37, align 8
  br label %cleanup

cleanup:                                          ; preds = %fuse_invalidate_entry.exit, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ -4, %fuse_invalidate_entry.exit ], [ 0, %if.then8 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %entry1, ptr noundef %link) #0 align 64 {
entry:
  %args = alloca %struct.fuse_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %call2 = tail call i32 @strlen(ptr noundef %link) #21
  %add = add i32 %call2, 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #16
  %4 = call ptr @memset(ptr %args, i32 0, i32 64)
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6, ptr %opcode, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %6 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2, ptr %in_numargs, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4
  %7 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_name, align 8
  %add4 = add i32 %8, 1
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %9 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add4, ptr %in_args, align 4
  %name = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 8
  %value = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %value, align 8
  %arrayidx9 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %arrayidx9, align 4
  %value13 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 1, i32 1
  %14 = ptrtoint ptr %value13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %link, ptr %value13, align 8
  %call14 = call fastcc i32 @create_new_entry(ptr noundef %3, ptr noundef nonnull %args, ptr noundef %dir, ptr noundef %entry1, i16 noundef zeroext -24576)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %entry1, i16 noundef zeroext %mode) #0 align 64 {
entry:
  %inarg = alloca %struct.fuse_mkdir_in, align 8
  %args = alloca %struct.fuse_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inarg) #16
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #16
  %4 = call ptr @memset(ptr %args, i32 0, i32 64)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %dont_mask = getelementptr inbounds %struct.fuse_conn, ptr %6, i32 0, i32 26
  %7 = ptrtoint ptr %dont_mask to i32
  call void @__asan_loadN_noabort(i32 %7, i32 7)
  %bf.load = load i56, ptr %dont_mask, align 1
  %8 = and i56 %bf.load, 67108864
  %tobool.not = icmp eq i56 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call2 = tail call i32 @current_umask() #16
  %9 = trunc i32 %call2 to i16
  %10 = xor i16 %9, -1
  %conv3 = and i16 %10, %mode
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mode.addr.0 = phi i16 [ %mode, %entry.if.end_crit_edge ], [ %conv3, %if.then ]
  %11 = getelementptr inbounds %struct.fuse_mkdir_in, ptr %inarg, i32 0, i32 1
  %conv4 = zext i16 %mode.addr.0 to i32
  %12 = ptrtoint ptr %inarg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv4, ptr %inarg, align 8
  %call6 = tail call i32 @current_umask() #16
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call6, ptr %11, align 4
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %14 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 9, ptr %opcode, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %15 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %in_numargs, align 4
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %16 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %in_args, align 4
  %value = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %inarg, ptr %value, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4
  %18 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %d_name, align 8
  %add = add i32 %19, 1
  %arrayidx10 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %arrayidx10, align 4
  %name = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 8
  %value15 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 1, i32 1
  %23 = ptrtoint ptr %value15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %value15, align 8
  %call16 = call fastcc i32 @create_new_entry(ptr noundef %3, ptr noundef nonnull %args, ptr noundef %dir, ptr noundef %entry1, i16 noundef zeroext 16384)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inarg) #16
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_rmdir(ptr noundef %dir, ptr noundef %entry1) #0 align 64 {
entry:
  %args = alloca %struct.fuse_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #16
  %4 = getelementptr inbounds i8, ptr %args, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 56)
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %dir, i32 0, i32 10
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %9 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 11, ptr %opcode, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %dir, i32 0, i32 1
  %10 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %nodeid.i, align 8
  %12 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %args, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %13 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %in_numargs, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4
  %14 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %d_name, align 8
  %add = add i32 %15, 1
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %16 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %in_args, align 4
  %name = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 8
  %value = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %value, align 8
  %call7 = call i32 @fuse_simple_request(ptr noundef %3, ptr noundef nonnull %args) #16
  %20 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %call7, label %if.end.cleanup_crit_edge [
    i32 0, label %if.then8
    i32 -4, label %if.then9
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @fuse_dir_changed(ptr noundef %dir)
  call fastcc void @fuse_entry_unlinked(ptr noundef %entry1)
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @d_invalidate(ptr noundef %entry1) #16
  %d_sb.i.i.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 9
  %21 = ptrtoint ptr %d_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i.i.i.i, align 16
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %delete_stale.i.i.i = getelementptr inbounds %struct.fuse_conn, ptr %26, i32 0, i32 26
  %27 = ptrtoint ptr %delete_stale.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 7)
  %bf.load.i.i.i = load i56, ptr %delete_stale.i.i.i, align 1
  %28 = and i56 %bf.load.i.i.i, 2048
  %tobool1.not.i.i.i = icmp eq i56 %28, 0
  %29 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %entry1, align 8
  %and.i.i.i = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i, label %land.lhs.true5.critedge.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then9
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.fuse_invalidate_entry.exit_crit_edge, label %if.then10.i.i.i

land.lhs.true.i.i.i.fuse_invalidate_entry.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalidate_entry.exit

land.lhs.true5.critedge.i.i.i:                    ; preds = %if.then9
  br i1 %tobool3.not.i.i.i, label %if.else.i.i.i, label %land.lhs.true5.critedge.i.i.i.fuse_invalidate_entry.exit_crit_edge

land.lhs.true5.critedge.i.i.i.fuse_invalidate_entry.exit_crit_edge: ; preds = %land.lhs.true5.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalidate_entry.exit

if.then10.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #16
  %31 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %entry1, align 8
  %and12.i.i.i = and i32 %32, -9
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true5.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref27.i.i.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref27.i.i.i) #16
  %33 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %entry1, align 8
  %or.i.i.i = or i32 %34, 8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then10.i.i.i
  %d_lockref28.i.i.i = phi ptr [ %d_lockref.i.i.i, %if.then10.i.i.i ], [ %d_lockref27.i.i.i, %if.else.i.i.i ]
  %storemerge.i.i.i = phi i32 [ %and12.i.i.i, %if.then10.i.i.i ], [ %or.i.i.i, %if.else.i.i.i ]
  %35 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge.i.i.i, ptr %entry1, align 8
  call void @_raw_spin_unlock(ptr noundef %d_lockref28.i.i.i) #16
  br label %fuse_invalidate_entry.exit

fuse_invalidate_entry.exit:                       ; preds = %if.end.i.i.i, %land.lhs.true5.critedge.i.i.i.fuse_invalidate_entry.exit_crit_edge, %land.lhs.true.i.i.i.fuse_invalidate_entry.exit_crit_edge
  %d_fsdata.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 11
  %36 = ptrtoint ptr %d_fsdata.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d_fsdata.i.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %37, align 8
  br label %cleanup

cleanup:                                          ; preds = %fuse_invalidate_entry.exit, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ -4, %fuse_invalidate_entry.exit ], [ 0, %if.then8 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %entry1, i16 noundef zeroext %mode, i32 noundef %rdev) #0 align 64 {
entry:
  %inarg = alloca %struct.fuse_mknod_in, align 4
  %args = alloca %struct.fuse_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inarg) #16
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #16
  %4 = call ptr @memset(ptr %args, i32 0, i32 64)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %dont_mask = getelementptr inbounds %struct.fuse_conn, ptr %6, i32 0, i32 26
  %7 = ptrtoint ptr %dont_mask to i32
  call void @__asan_loadN_noabort(i32 %7, i32 7)
  %bf.load = load i56, ptr %dont_mask, align 1
  %8 = and i56 %bf.load, 67108864
  %tobool.not = icmp eq i56 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call2 = tail call i32 @current_umask() #16
  %9 = trunc i32 %call2 to i16
  %10 = xor i16 %9, -1
  %conv3 = and i16 %10, %mode
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mode.addr.0 = phi i16 [ %mode, %entry.if.end_crit_edge ], [ %conv3, %if.then ]
  %11 = getelementptr inbounds %struct.fuse_mknod_in, ptr %inarg, i32 0, i32 2
  %12 = getelementptr inbounds %struct.fuse_mknod_in, ptr %inarg, i32 0, i32 1
  %13 = getelementptr inbounds i8, ptr %inarg, i32 12
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %13, align 4
  %conv4 = zext i16 %mode.addr.0 to i32
  %15 = ptrtoint ptr %inarg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv4, ptr %inarg, align 4
  %and1.i = and i32 %rdev, 255
  %16 = lshr i32 %rdev, 12
  %shl.i = and i32 %16, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %rdev, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or4.i, ptr %12, align 4
  %call8 = tail call i32 @current_umask() #16
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call8, ptr %11, align 4
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %19 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %opcode, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %20 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %in_numargs, align 4
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %21 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %in_args, align 4
  %value = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %inarg, ptr %value, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4
  %23 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %d_name, align 8
  %add = add i32 %24, 1
  %arrayidx12 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %arrayidx12, align 4
  %name = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 8
  %value17 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 1, i32 1
  %28 = ptrtoint ptr %value17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %value17, align 8
  %call18 = call fastcc i32 @create_new_entry(ptr noundef %3, ptr noundef nonnull %args, ptr noundef %dir, ptr noundef %entry1, i16 noundef zeroext %mode.addr.0)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inarg) #16
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_rename2(ptr nocapture noundef readnone %mnt_userns, ptr noundef %olddir, ptr noundef %oldent, ptr noundef %newdir, ptr noundef %newent, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %olddir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %olddir, i32 0, i32 10
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 8
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool4.not = icmp eq i32 %flags, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  %no_rename2 = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 26
  %9 = ptrtoint ptr %no_rename2 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 7)
  %bf.load = load i56, ptr %no_rename2, align 1
  %10 = and i56 %bf.load, 8388608
  %tobool6.not = icmp eq i56 %10, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then5
  %minor = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 28
  %11 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %12)
  %cmp = icmp ult i32 %12, 23
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %call9 = tail call fastcc i32 @fuse_rename_common(ptr noundef %olddir, ptr noundef %oldent, ptr noundef %newdir, ptr noundef %newent, i32 noundef %flags, i32 noundef 45, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call9)
  %cmp10 = icmp eq i32 %call9, -38
  br i1 %cmp10, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %no_rename2 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 7)
  %bf.load13 = load i56, ptr %no_rename2, align 1
  %bf.set = or i56 %bf.load13, 8388608
  store i56 %bf.set, ptr %no_rename2, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %call16 = tail call fastcc i32 @fuse_rename_common(ptr noundef %olddir, ptr noundef %oldent, ptr noundef %newdir, ptr noundef %newent, i32 noundef 0, i32 noundef 12, i32 noundef 8)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then5.cleanup_crit_edge ], [ -22, %if.then11 ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call16, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_atomic_open(ptr noundef %dir, ptr noundef %entry1, ptr noundef %file, i32 noundef %flags, i16 noundef zeroext %mode) #0 align 64 {
entry:
  %inarg.i56 = alloca %struct.fuse_mknod_in, align 4
  %args.i57 = alloca %struct.fuse_args, align 8
  %args.i = alloca %struct.fuse_args, align 8
  %inarg.i = alloca %struct.fuse_create_in, align 4
  %outopen.i = alloca %struct.fuse_open_out, align 8
  %outentry.i = alloca %struct.fuse_entry_out, align 8
  %security_ctx.i = alloca ptr, align 4
  %security_ctxlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %dir, i32 0, i32 10
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %entry1, align 8
  %and.i = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then4

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then4:                                         ; preds = %if.end
  %call5 = tail call ptr @fuse_lookup(ptr noundef %dir, ptr noundef %entry1, i32 noundef 0)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  %tobool10.not = icmp eq ptr %call5, null
  %spec.select = select i1 %tobool10.not, ptr %entry1, ptr %call5
  br label %if.end13

if.end13:                                         ; preds = %if.end9, %if.end.if.end13_crit_edge
  %entry.addr.0 = phi ptr [ %entry1, %if.end.if.end13_crit_edge ], [ %spec.select, %if.end9 ]
  %res.0 = phi ptr [ null, %if.end.if.end13_crit_edge ], [ %call5, %if.end9 ]
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end13.no_open_crit_edge, label %lor.lhs.false

if.end13.no_open_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %no_open

lor.lhs.false:                                    ; preds = %if.end13
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %entry.addr.0, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i, align 8
  %cmp.i55.not = icmp eq ptr %13, null
  br i1 %cmp.i55.not, label %if.end17, label %lor.lhs.false.no_open_crit_edge

lor.lhs.false.no_open_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %no_open

if.end17:                                         ; preds = %lor.lhs.false
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %14 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f_mode, align 8
  %or = or i32 %15, 1048576
  store i32 %or, ptr %f_mode, align 8
  %no_create = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 26
  %16 = ptrtoint ptr %no_create to i32
  call void @__asan_loadN_noabort(i32 %16, i32 7)
  %bf.load = load i56, ptr %no_create, align 1
  %17 = and i56 %bf.load, 2147483648
  %tobool18.not = icmp eq i56 %17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end17.mknod_crit_edge

if.end17.mknod_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %mknod

if.end20:                                         ; preds = %if.end17
  %18 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args.i) #16
  %22 = call ptr @memset(ptr %args.i, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inarg.i) #16
  %23 = getelementptr inbounds %struct.fuse_create_in, ptr %inarg.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.fuse_create_in, ptr %inarg.i, i32 0, i32 2
  %25 = getelementptr inbounds %struct.fuse_create_in, ptr %inarg.i, i32 0, i32 3
  %26 = call ptr @memset(ptr %inarg.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %outopen.i) #16
  %27 = getelementptr inbounds %struct.fuse_open_out, ptr %outopen.i, i32 0, i32 1
  %28 = call ptr @memset(ptr %outopen.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %outentry.i) #16
  %29 = call ptr @memset(ptr %outentry.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %security_ctx.i) #16
  %30 = ptrtoint ptr %security_ctx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %security_ctx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %security_ctxlen.i) #16
  %31 = ptrtoint ptr %security_ctxlen.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %security_ctxlen.i, align 4, !annotation !59
  %32 = and i16 %mode, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %32)
  %cmp.not.i = icmp eq i16 %32, -32768
  br i1 %cmp.not.i, label %do.end9.i, label %do.body4.i, !prof !43

do.body4.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fuse/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 542, 0\0A.popsection", ""() #16, !srcloc !60
  unreachable

do.end9.i:                                        ; preds = %if.end20
  %call10.i = tail call ptr @fuse_alloc_forget() #16
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %do.end9.i.fuse_create_open.exit.thread_crit_edge, label %if.end13.i

do.end9.i.fuse_create_open.exit.thread_crit_edge: ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_create_open.exit.thread

if.end13.i:                                       ; preds = %do.end9.i
  %call14.i = tail call ptr @fuse_file_alloc(ptr noundef %21) #16
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.end13.i.out_put_forget_req.i_crit_edge, label %if.end17.i

if.end13.i.out_put_forget_req.i_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_forget_req.i

if.end17.i:                                       ; preds = %if.end13.i
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %21, align 4
  %dont_mask.i = getelementptr inbounds %struct.fuse_conn, ptr %34, i32 0, i32 26
  %35 = ptrtoint ptr %dont_mask.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 7)
  %bf.load.i = load i56, ptr %dont_mask.i, align 1
  %36 = and i56 %bf.load.i, 67108864
  %tobool18.not.i = icmp eq i56 %36, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end17.i.if.end24.i_crit_edge

if.end17.i.if.end24.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24.i

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  %call20.i = tail call i32 @current_umask() #16
  %37 = trunc i32 %call20.i to i16
  %38 = xor i16 %37, -1
  %conv23.i = and i16 %38, %mode
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then19.i, %if.end17.i.if.end24.i_crit_edge
  %mode.addr.0.i = phi i16 [ %mode, %if.end17.i.if.end24.i_crit_edge ], [ %conv23.i, %if.then19.i ]
  %and25.i = and i32 %flags, -257
  %39 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %25, align 4
  %40 = call ptr @memset(ptr %outentry.i, i32 0, i32 128)
  %41 = ptrtoint ptr %inarg.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and25.i, ptr %inarg.i, align 4
  %conv27.i = zext i16 %mode.addr.0.i to i32
  %42 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv27.i, ptr %23, align 4
  %call29.i = tail call i32 @current_umask() #16
  %43 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call29.i, ptr %24, align 4
  %44 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %21, align 4
  %handle_killpriv_v2.i = getelementptr inbounds %struct.fuse_conn, ptr %45, i32 0, i32 26
  %46 = ptrtoint ptr %handle_killpriv_v2.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 7)
  %bf.load31.i = load i56, ptr %handle_killpriv_v2.i, align 1
  %47 = and i56 %bf.load31.i, 17592186044416
  %tobool35.not.i = icmp ne i56 %47, 0
  %48 = and i32 %flags, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %48)
  %49 = icmp eq i32 %48, 512
  %50 = and i1 %49, %tobool35.not.i
  br i1 %50, label %land.lhs.true41.i, label %if.end24.i.if.end44.i_crit_edge

if.end24.i.if.end44.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44.i

land.lhs.true41.i:                                ; preds = %if.end24.i
  %call42.i = tail call zeroext i1 @capable(i32 noundef 4) #16
  br i1 %call42.i, label %land.lhs.true41.i.if.end44.i_crit_edge, label %if.then43.i

land.lhs.true41.i.if.end44.i_crit_edge:           ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44.i

if.then43.i:                                      ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #18
  %51 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %25, align 4
  %or.i = or i32 %52, 1
  store i32 %or.i, ptr %25, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then43.i, %land.lhs.true41.i.if.end44.i_crit_edge, %if.end24.i.if.end44.i_crit_edge
  %opcode.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 1
  %53 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 35, ptr %opcode.i, align 8
  %nodeid.i.i = getelementptr inbounds %struct.fuse_inode, ptr %dir, i32 0, i32 1
  %54 = ptrtoint ptr %nodeid.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %nodeid.i.i, align 8
  %56 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %args.i, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 2
  %57 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 2, ptr %in_numargs.i, align 4
  %in_args.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5
  %58 = ptrtoint ptr %in_args.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 16, ptr %in_args.i, align 4
  %value.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 0, i32 1
  %59 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %inarg.i, ptr %value.i, align 8
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %entry.addr.0, i32 0, i32 4
  %60 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %d_name.i, align 8
  %add.i = add i32 %61, 1
  %arrayidx49.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 1
  %62 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i, ptr %arrayidx49.i, align 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %entry.addr.0, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name.i, align 8
  %value54.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 1, i32 1
  %65 = ptrtoint ptr %value54.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %value54.i, align 8
  %out_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 3
  %66 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 2, ptr %out_numargs.i, align 2
  %out_args.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6
  %67 = ptrtoint ptr %out_args.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 128, ptr %out_args.i, align 4
  %value59.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6, i32 0, i32 1
  %68 = ptrtoint ptr %value59.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %outentry.i, ptr %value59.i, align 8
  %arrayidx61.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6, i32 1
  %69 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 16, ptr %arrayidx61.i, align 4
  %value65.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6, i32 1, i32 1
  %70 = ptrtoint ptr %value65.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %outopen.i, ptr %value65.i, align 8
  %71 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %21, align 4
  %init_security.i = getelementptr inbounds %struct.fuse_conn, ptr %72, i32 0, i32 26
  %73 = ptrtoint ptr %init_security.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 7)
  %bf.load67.i = load i56, ptr %init_security.i, align 1
  %74 = and i56 %bf.load67.i, 64
  %tobool71.not.i = icmp eq i56 %74, 0
  br i1 %tobool71.not.i, label %if.end44.i.if.end84.i_crit_edge, label %if.then72.i

if.end44.i.if.end84.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end84.i

if.then72.i:                                      ; preds = %if.end44.i
  %call73.i = call fastcc i32 @get_security_context(ptr noundef %entry.addr.0, i16 noundef zeroext %mode.addr.0.i, ptr noundef nonnull %security_ctx.i, ptr noundef nonnull %security_ctxlen.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.end76.i, label %if.then72.i.out_put_forget_req.i_crit_edge

if.then72.i.out_put_forget_req.i_crit_edge:       ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_forget_req.i

if.end76.i:                                       ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #18
  %75 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 3, ptr %in_numargs.i, align 4
  %76 = ptrtoint ptr %security_ctxlen.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %security_ctxlen.i, align 4
  %arrayidx79.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 2
  %78 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %arrayidx79.i, align 4
  %79 = ptrtoint ptr %security_ctx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %security_ctx.i, align 4
  %value83.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 2, i32 1
  %81 = ptrtoint ptr %value83.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %value83.i, align 8
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.end76.i, %if.end44.i.if.end84.i_crit_edge
  %call85.i = call i32 @fuse_simple_request(ptr noundef %21, ptr noundef nonnull %args.i) #16
  %82 = ptrtoint ptr %security_ctx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %security_ctx.i, align 4
  call void @kfree(ptr noundef %83) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool86.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.not.i, label %if.end88.i, label %if.end84.i.out_free_ff.i_crit_edge

if.end84.i.out_free_ff.i_crit_edge:               ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_ff.i

if.end88.i:                                       ; preds = %if.end84.i
  %attr.i = getelementptr inbounds %struct.fuse_entry_out, ptr %outentry.i, i32 0, i32 6
  %mode89.i = getelementptr inbounds %struct.fuse_entry_out, ptr %outentry.i, i32 0, i32 6, i32 9
  %84 = ptrtoint ptr %mode89.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mode89.i, align 4
  %and90.i = and i32 %85, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %and90.i)
  %cmp91.i = icmp eq i32 %and90.i, 32768
  br i1 %cmp91.i, label %lor.lhs.false.i, label %if.end88.i.out_free_ff.i_crit_edge

if.end88.i.out_free_ff.i_crit_edge:               ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_ff.i

lor.lhs.false.i:                                  ; preds = %if.end88.i
  %86 = ptrtoint ptr %outentry.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %outentry.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %87)
  %88 = icmp ugt i64 %87, 1
  br i1 %88, label %fuse_invalid_attr.exit.i, label %lor.lhs.false.i.out_free_ff.i_crit_edge

lor.lhs.false.i.out_free_ff.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_ff.i

fuse_invalid_attr.exit.i:                         ; preds = %lor.lhs.false.i
  %size.i.i = getelementptr inbounds %struct.fuse_entry_out, ptr %outentry.i, i32 0, i32 6, i32 1
  %89 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %90)
  %cmp.i.i = icmp slt i64 %90, 0
  br i1 %cmp.i.i, label %fuse_invalid_attr.exit.i.out_free_ff.i_crit_edge, label %if.end101.i

fuse_invalid_attr.exit.i.out_free_ff.i_crit_edge: ; preds = %fuse_invalid_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_ff.i

if.end101.i:                                      ; preds = %fuse_invalid_attr.exit.i
  %91 = ptrtoint ptr %outopen.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %outopen.i, align 8
  %fh102.i = getelementptr inbounds %struct.fuse_file, ptr %call14.i, i32 0, i32 3
  %93 = ptrtoint ptr %fh102.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %fh102.i, align 8
  %nodeid104.i = getelementptr inbounds %struct.fuse_file, ptr %call14.i, i32 0, i32 4
  %94 = ptrtoint ptr %nodeid104.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %87, ptr %nodeid104.i, align 8
  %95 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %27, align 8
  %open_flags106.i = getelementptr inbounds %struct.fuse_file, ptr %call14.i, i32 0, i32 6
  %97 = ptrtoint ptr %open_flags106.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %open_flags106.i, align 4
  %98 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i_sb.i, align 4
  %generation.i = getelementptr inbounds %struct.fuse_entry_out, ptr %outentry.i, i32 0, i32 1
  %100 = ptrtoint ptr %generation.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %generation.i, align 8
  %conv108.i = trunc i64 %101 to i32
  %call110.i = call i64 @entry_attr_timeout(ptr noundef nonnull %outentry.i) #16
  %call111.i = call ptr @fuse_iget(ptr noundef %99, i64 noundef %87, i32 noundef %conv108.i, ptr noundef %attr.i, i64 noundef %call110.i, i64 noundef 0) #16
  %tobool112.not.i = icmp eq ptr %call111.i, null
  br i1 %tobool112.not.i, label %if.then113.i, label %if.end117.i

if.then113.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #18
  %and114.i = and i32 %flags, -961
  call void @fuse_sync_release(ptr noundef null, ptr noundef nonnull %call14.i, i32 noundef %and114.i) #16
  %102 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %21, align 4
  %104 = ptrtoint ptr %outentry.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %outentry.i, align 8
  call void @fuse_queue_forget(ptr noundef %103, ptr noundef nonnull %call10.i, i64 noundef %105, i64 noundef 1) #16
  br label %fuse_create_open.exit.thread

if.end117.i:                                      ; preds = %if.end101.i
  call void @kfree(ptr noundef nonnull %call10.i) #16
  call void @d_instantiate(ptr noundef %entry.addr.0, ptr noundef nonnull %call111.i) #16
  call void @fuse_change_entry_timeout(ptr noundef %entry.addr.0, ptr noundef nonnull %outentry.i) #16
  call fastcc void @fuse_dir_changed(ptr noundef %dir) #16
  %call118.i = call i32 @finish_open(ptr noundef %file, ptr noundef %entry.addr.0, ptr noundef nonnull @generic_file_open) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.i)
  %tobool119.not.i = icmp eq i32 %call118.i, 0
  br i1 %tobool119.not.i, label %if.else.i, label %if.then120.i

if.then120.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @fuse_sync_release(ptr noundef nonnull %call111.i, ptr noundef nonnull %call14.i, i32 noundef %and25.i) #16
  br label %fuse_create_open.exit

if.else.i:                                        ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #18
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %106 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call14.i, ptr %private_data.i, align 4
  call void @fuse_finish_open(ptr noundef nonnull %call111.i, ptr noundef %file) #16
  br label %fuse_create_open.exit.thread

out_free_ff.i:                                    ; preds = %fuse_invalid_attr.exit.i.out_free_ff.i_crit_edge, %lor.lhs.false.i.out_free_ff.i_crit_edge, %if.end88.i.out_free_ff.i_crit_edge, %if.end84.i.out_free_ff.i_crit_edge
  %err.0.i = phi i32 [ %call85.i, %if.end84.i.out_free_ff.i_crit_edge ], [ -5, %lor.lhs.false.i.out_free_ff.i_crit_edge ], [ -5, %fuse_invalid_attr.exit.i.out_free_ff.i_crit_edge ], [ -5, %if.end88.i.out_free_ff.i_crit_edge ]
  call void @fuse_file_free(ptr noundef nonnull %call14.i) #16
  br label %out_put_forget_req.i

out_put_forget_req.i:                             ; preds = %out_free_ff.i, %if.then72.i.out_put_forget_req.i_crit_edge, %if.end13.i.out_put_forget_req.i_crit_edge
  %err.1.i = phi i32 [ %call73.i, %if.then72.i.out_put_forget_req.i_crit_edge ], [ %err.0.i, %out_free_ff.i ], [ -12, %if.end13.i.out_put_forget_req.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call10.i) #16
  br label %fuse_create_open.exit

fuse_create_open.exit.thread:                     ; preds = %if.else.i, %if.then113.i, %do.end9.i.fuse_create_open.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %do.end9.i.fuse_create_open.exit.thread_crit_edge ], [ -12, %if.then113.i ], [ 0, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %security_ctxlen.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %security_ctx.i) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %outentry.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outopen.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inarg.i) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i) #16
  br label %out_dput

fuse_create_open.exit:                            ; preds = %out_put_forget_req.i, %if.then120.i
  %retval.0.i = phi i32 [ %call118.i, %if.then120.i ], [ %err.1.i, %out_put_forget_req.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %security_ctxlen.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %security_ctx.i) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %outentry.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outopen.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inarg.i) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, -38
  br i1 %cmp, label %if.then22, label %fuse_create_open.exit.out_dput_crit_edge

fuse_create_open.exit.out_dput_crit_edge:         ; preds = %fuse_create_open.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_dput

if.then22:                                        ; preds = %fuse_create_open.exit
  call void @__sanitizer_cov_trace_pc() #18
  %107 = ptrtoint ptr %no_create to i32
  call void @__asan_loadN_noabort(i32 %107, i32 7)
  %bf.load24 = load i56, ptr %no_create, align 1
  %bf.set = or i56 %bf.load24, 2147483648
  store i56 %bf.set, ptr %no_create, align 1
  br label %mknod

out_dput:                                         ; preds = %fuse_mknod.exit.out_dput_crit_edge, %fuse_create_open.exit.out_dput_crit_edge, %fuse_create_open.exit.thread
  %err.0 = phi i32 [ %call18.i, %fuse_mknod.exit.out_dput_crit_edge ], [ %retval.0.i, %fuse_create_open.exit.out_dput_crit_edge ], [ %retval.0.i.ph, %fuse_create_open.exit.thread ]
  call void @dput(ptr noundef %res.0) #16
  br label %cleanup

mknod:                                            ; preds = %if.then22, %if.end17.mknod_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inarg.i56) #16
  %108 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i59 = getelementptr inbounds %struct.super_block, ptr %109, i32 0, i32 33
  %110 = ptrtoint ptr %s_fs_info.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %s_fs_info.i.i.i59, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args.i57) #16
  %112 = call ptr @memset(ptr %args.i57, i32 0, i32 64)
  %113 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %111, align 4
  %dont_mask.i60 = getelementptr inbounds %struct.fuse_conn, ptr %114, i32 0, i32 26
  %115 = ptrtoint ptr %dont_mask.i60 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 7)
  %bf.load.i61 = load i56, ptr %dont_mask.i60, align 1
  %116 = and i56 %bf.load.i61, 67108864
  %tobool.not.i = icmp eq i56 %116, 0
  br i1 %tobool.not.i, label %if.then.i, label %mknod.fuse_mknod.exit_crit_edge

mknod.fuse_mknod.exit_crit_edge:                  ; preds = %mknod
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_mknod.exit

if.then.i:                                        ; preds = %mknod
  call void @__sanitizer_cov_trace_pc() #18
  %call2.i = call i32 @current_umask() #16
  %117 = trunc i32 %call2.i to i16
  %118 = xor i16 %117, -1
  %conv3.i = and i16 %118, %mode
  br label %fuse_mknod.exit

fuse_mknod.exit:                                  ; preds = %if.then.i, %mknod.fuse_mknod.exit_crit_edge
  %mode.addr.0.i62 = phi i16 [ %mode, %mknod.fuse_mknod.exit_crit_edge ], [ %conv3.i, %if.then.i ]
  %119 = getelementptr inbounds %struct.fuse_mknod_in, ptr %inarg.i56, i32 0, i32 2
  %120 = getelementptr inbounds %struct.fuse_mknod_in, ptr %inarg.i56, i32 0, i32 1
  %121 = getelementptr inbounds i8, ptr %inarg.i56, i32 12
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %121, align 4
  %conv4.i = zext i16 %mode.addr.0.i62 to i32
  %123 = ptrtoint ptr %inarg.i56 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %conv4.i, ptr %inarg.i56, align 4
  %124 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %120, align 4
  %call8.i = call i32 @current_umask() #16
  %125 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %call8.i, ptr %119, align 4
  %opcode.i63 = getelementptr inbounds %struct.fuse_args, ptr %args.i57, i32 0, i32 1
  %126 = ptrtoint ptr %opcode.i63 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 8, ptr %opcode.i63, align 8
  %in_numargs.i64 = getelementptr inbounds %struct.fuse_args, ptr %args.i57, i32 0, i32 2
  %127 = ptrtoint ptr %in_numargs.i64 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 2, ptr %in_numargs.i64, align 4
  %in_args.i65 = getelementptr inbounds %struct.fuse_args, ptr %args.i57, i32 0, i32 5
  %128 = ptrtoint ptr %in_args.i65 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 16, ptr %in_args.i65, align 4
  %value.i66 = getelementptr inbounds %struct.fuse_args, ptr %args.i57, i32 0, i32 5, i32 0, i32 1
  %129 = ptrtoint ptr %value.i66 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %inarg.i56, ptr %value.i66, align 8
  %d_name.i67 = getelementptr inbounds %struct.dentry, ptr %entry.addr.0, i32 0, i32 4
  %130 = ptrtoint ptr %d_name.i67 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %d_name.i67, align 8
  %add.i68 = add i32 %131, 1
  %arrayidx12.i = getelementptr inbounds %struct.fuse_args, ptr %args.i57, i32 0, i32 5, i32 1
  %132 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %add.i68, ptr %arrayidx12.i, align 4
  %name.i69 = getelementptr inbounds %struct.dentry, ptr %entry.addr.0, i32 0, i32 4, i32 1
  %133 = ptrtoint ptr %name.i69 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %name.i69, align 8
  %value17.i = getelementptr inbounds %struct.fuse_args, ptr %args.i57, i32 0, i32 5, i32 1, i32 1
  %135 = ptrtoint ptr %value17.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %134, ptr %value17.i, align 8
  %call18.i = call fastcc i32 @create_new_entry(ptr noundef %111, ptr noundef nonnull %args.i57, ptr noundef %dir, ptr noundef %entry.addr.0, i16 noundef zeroext %mode.addr.0.i62) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i57) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inarg.i56) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool28.not = icmp eq i32 %call18.i, 0
  br i1 %tobool28.not, label %fuse_mknod.exit.no_open_crit_edge, label %fuse_mknod.exit.out_dput_crit_edge

fuse_mknod.exit.out_dput_crit_edge:               ; preds = %fuse_mknod.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_dput

fuse_mknod.exit.no_open_crit_edge:                ; preds = %fuse_mknod.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %no_open

no_open:                                          ; preds = %fuse_mknod.exit.no_open_crit_edge, %lor.lhs.false.no_open_crit_edge, %if.end13.no_open_crit_edge
  %call31 = call i32 @finish_no_open(ptr noundef %file, ptr noundef %res.0) #16
  br label %cleanup

cleanup:                                          ; preds = %no_open, %out_dput, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then7 ], [ %call31, %no_open ], [ %err.0, %out_dput ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fuse_lock_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_unlock_inode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_new_entry(ptr noundef %fm, ptr noundef %args, ptr noundef %dir, ptr noundef %entry1, i16 noundef zeroext %mode) unnamed_addr #0 align 64 {
entry:
  %outarg = alloca %struct.fuse_entry_out, align 8
  %security_ctx = alloca ptr, align 4
  %security_ctxlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %outarg) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %security_ctx) #16
  %0 = ptrtoint ptr %security_ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %security_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %security_ctxlen) #16
  %1 = ptrtoint ptr %security_ctxlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %security_ctxlen, align 4, !annotation !59
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %dir, i32 0, i32 10
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @fuse_alloc_forget() #16
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = call ptr @memset(ptr %outarg, i32 0, i32 128)
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %dir, i32 0, i32 1
  %6 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %nodeid.i, align 8
  %8 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %args, align 8
  %out_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 3
  %9 = ptrtoint ptr %out_numargs to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %out_numargs, align 2
  %out_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6
  %10 = ptrtoint ptr %out_args to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %out_args, align 4
  %value = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6, i32 0, i32 1
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %outarg, ptr %value, align 4
  %12 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fm, align 4
  %init_security = getelementptr inbounds %struct.fuse_conn, ptr %13, i32 0, i32 26
  %14 = ptrtoint ptr %init_security to i32
  call void @__asan_loadN_noabort(i32 %14, i32 7)
  %bf.load = load i56, ptr %init_security, align 1
  %15 = and i56 %bf.load, 64
  %tobool8.not = icmp eq i56 %15, 0
  br i1 %tobool8.not, label %if.end4.if.end32_crit_edge, label %land.lhs.true

if.end4.if.end32_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end4
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %16 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %opcode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %17)
  %cmp.not = icmp eq i32 %17, 13
  br i1 %cmp.not, label %land.lhs.true.if.end32_crit_edge, label %if.then9

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.then9:                                         ; preds = %land.lhs.true
  %call10 = call fastcc i32 @get_security_context(ptr noundef %entry1, i16 noundef zeroext %mode, ptr noundef nonnull %security_ctx, ptr noundef nonnull %security_ctxlen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body, label %if.then9.out_put_forget_req_crit_edge

if.then9.out_put_forget_req_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_forget_req

do.body:                                          ; preds = %if.then9
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %18 = ptrtoint ptr %in_numargs to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %in_numargs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %19)
  %cmp14.not = icmp eq i16 %19, 2
  br i1 %cmp14.not, label %do.end25, label %do.body19, !prof !43

do.body19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fuse/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 719, 0\0A.popsection", ""() #16, !srcloc !61
  unreachable

do.end25:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 3, ptr %in_numargs, align 4
  %21 = ptrtoint ptr %security_ctxlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %security_ctxlen, align 4
  %arrayidx27 = getelementptr %struct.fuse_args, ptr %args, i32 0, i32 5, i32 2
  %23 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx27, align 4
  %24 = ptrtoint ptr %security_ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %security_ctx, align 4
  %value31 = getelementptr %struct.fuse_args, ptr %args, i32 0, i32 5, i32 2, i32 1
  %26 = ptrtoint ptr %value31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %value31, align 4
  br label %if.end32

if.end32:                                         ; preds = %do.end25, %land.lhs.true.if.end32_crit_edge, %if.end4.if.end32_crit_edge
  %call33 = call i32 @fuse_simple_request(ptr noundef %fm, ptr noundef %args) #16
  %27 = ptrtoint ptr %security_ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %security_ctx, align 4
  call void @kfree(ptr noundef %28) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.out_put_forget_req_crit_edge

if.end32.out_put_forget_req_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_forget_req

if.end36:                                         ; preds = %if.end32
  %29 = ptrtoint ptr %outarg to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %outarg, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %30)
  %31 = icmp ugt i64 %30, 1
  br i1 %31, label %lor.lhs.false, label %if.end36.out_put_forget_req_crit_edge

if.end36.out_put_forget_req_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_forget_req

lor.lhs.false:                                    ; preds = %if.end36
  %attr = getelementptr inbounds %struct.fuse_entry_out, ptr %outarg, i32 0, i32 6
  %mode.i = getelementptr inbounds %struct.fuse_entry_out, ptr %outarg, i32 0, i32 6, i32 9
  %32 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode.i, align 4
  %and.i.i = and i32 %33, 61440
  %34 = add nsw i32 %and.i.i, -4096
  %35 = lshr exact i32 %34, 12
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %35, label %fuse_valid_type.exit.i [
    i32 7, label %lor.lhs.false.fuse_invalid_attr.exit_crit_edge
    i32 3, label %lor.lhs.false.fuse_invalid_attr.exit_crit_edge103
    i32 9, label %lor.lhs.false.fuse_invalid_attr.exit_crit_edge104
    i32 1, label %lor.lhs.false.fuse_invalid_attr.exit_crit_edge105
    i32 5, label %lor.lhs.false.fuse_invalid_attr.exit_crit_edge106
    i32 0, label %lor.lhs.false.fuse_invalid_attr.exit_crit_edge107
  ]

lor.lhs.false.fuse_invalid_attr.exit_crit_edge107: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

lor.lhs.false.fuse_invalid_attr.exit_crit_edge106: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

lor.lhs.false.fuse_invalid_attr.exit_crit_edge105: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

lor.lhs.false.fuse_invalid_attr.exit_crit_edge104: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

lor.lhs.false.fuse_invalid_attr.exit_crit_edge103: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

lor.lhs.false.fuse_invalid_attr.exit_crit_edge:   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

fuse_valid_type.exit.i:                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and.i.i)
  %cmp16.i.not.i = icmp eq i32 %and.i.i, 49152
  br i1 %cmp16.i.not.i, label %fuse_valid_type.exit.i.fuse_invalid_attr.exit_crit_edge, label %fuse_valid_type.exit.i.out_put_forget_req_crit_edge

fuse_valid_type.exit.i.out_put_forget_req_crit_edge: ; preds = %fuse_valid_type.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_forget_req

fuse_valid_type.exit.i.fuse_invalid_attr.exit_crit_edge: ; preds = %fuse_valid_type.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalid_attr.exit

fuse_invalid_attr.exit:                           ; preds = %fuse_valid_type.exit.i.fuse_invalid_attr.exit_crit_edge, %lor.lhs.false.fuse_invalid_attr.exit_crit_edge, %lor.lhs.false.fuse_invalid_attr.exit_crit_edge103, %lor.lhs.false.fuse_invalid_attr.exit_crit_edge104, %lor.lhs.false.fuse_invalid_attr.exit_crit_edge105, %lor.lhs.false.fuse_invalid_attr.exit_crit_edge106, %lor.lhs.false.fuse_invalid_attr.exit_crit_edge107
  %size.i = getelementptr inbounds %struct.fuse_entry_out, ptr %outarg, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %cmp.i = icmp slt i64 %38, 0
  br i1 %cmp.i, label %fuse_invalid_attr.exit.out_put_forget_req_crit_edge, label %if.end43

fuse_invalid_attr.exit.out_put_forget_req_crit_edge: ; preds = %fuse_invalid_attr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_forget_req

if.end43:                                         ; preds = %fuse_invalid_attr.exit
  %39 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode.i, align 4
  %conv46 = zext i16 %mode to i32
  %xor = xor i32 %40, %conv46
  %and = and i32 %xor, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool47.not = icmp eq i32 %and, 0
  br i1 %tobool47.not, label %if.end49, label %if.end43.out_put_forget_req_crit_edge

if.end43.out_put_forget_req_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_forget_req

if.end49:                                         ; preds = %if.end43
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %41 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb, align 4
  %generation = getelementptr inbounds %struct.fuse_entry_out, ptr %outarg, i32 0, i32 1
  %43 = ptrtoint ptr %generation to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %generation, align 8
  %conv51 = trunc i64 %44 to i32
  %call53 = call i64 @entry_attr_timeout(ptr noundef nonnull %outarg)
  %call54 = call ptr @fuse_iget(ptr noundef %42, i64 noundef %30, i32 noundef %conv51, ptr noundef %attr, i64 noundef %call53, i64 noundef 0) #16
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  %45 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fm, align 4
  %47 = ptrtoint ptr %outarg to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %outarg, align 8
  call void @fuse_queue_forget(ptr noundef %46, ptr noundef nonnull %call2, i64 noundef %48, i64 noundef 1) #16
  br label %cleanup

if.end59:                                         ; preds = %if.end49
  call void @kfree(ptr noundef nonnull %call2) #16
  call void @d_drop(ptr noundef %entry1) #16
  %call60 = call ptr @d_splice_alias(ptr noundef nonnull %call54, ptr noundef %entry1) #16
  %cmp.i102 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i102, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  %49 = ptrtoint ptr %call60 to i32
  br label %cleanup

if.end64:                                         ; preds = %if.end59
  %tobool65.not = icmp eq ptr %call60, null
  br i1 %tobool65.not, label %if.else, label %if.then66

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  call void @fuse_change_entry_timeout(ptr noundef nonnull %call60, ptr noundef nonnull %outarg)
  call void @dput(ptr noundef nonnull %call60) #16
  br label %if.end67

if.else:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  call void @fuse_change_entry_timeout(ptr noundef %entry1, ptr noundef nonnull %outarg)
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then66
  call fastcc void @fuse_dir_changed(ptr noundef %dir)
  br label %cleanup

out_put_forget_req:                               ; preds = %if.end43.out_put_forget_req_crit_edge, %fuse_invalid_attr.exit.out_put_forget_req_crit_edge, %fuse_valid_type.exit.i.out_put_forget_req_crit_edge, %if.end36.out_put_forget_req_crit_edge, %if.end32.out_put_forget_req_crit_edge, %if.then9.out_put_forget_req_crit_edge
  %err.0 = phi i32 [ %call10, %if.then9.out_put_forget_req_crit_edge ], [ %call33, %if.end32.out_put_forget_req_crit_edge ], [ -5, %if.end36.out_put_forget_req_crit_edge ], [ -5, %fuse_invalid_attr.exit.out_put_forget_req_crit_edge ], [ -5, %if.end43.out_put_forget_req_crit_edge ], [ -5, %fuse_valid_type.exit.i.out_put_forget_req_crit_edge ]
  call void @kfree(ptr noundef nonnull %call2) #16
  br label %cleanup

cleanup:                                          ; preds = %out_put_forget_req, %if.end67, %if.then62, %if.then56, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_put_forget_req ], [ %49, %if.then62 ], [ 0, %if.end67 ], [ -12, %if.then56 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %security_ctxlen) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %security_ctx) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %outarg) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_security_context(ptr noundef %entry1, i16 noundef zeroext %mode, ptr nocapture noundef writeonly %security_ctx, ptr nocapture noundef writeonly %security_ctxlen) unnamed_addr #0 align 64 {
entry:
  %ctx = alloca ptr, align 4
  %ctxlen = alloca i32, align 4
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctx) #16
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctxlen) #16
  %1 = ptrtoint ptr %ctxlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ctxlen, align 4, !annotation !59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #16
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !59
  %conv = zext i16 %mode to i32
  %d_name = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4
  %call = call i32 @security_dentry_init_security(ptr noundef %entry1, i32 noundef %conv, ptr noundef %d_name, ptr noundef nonnull %name, ptr noundef nonnull %ctx, ptr noundef nonnull %ctxlen) #16
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call, label %entry.out_err_crit_edge [
    i32 0, label %if.end4
    i32 -95, label %if.end4.thread
  ]

entry.out_err_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_err

if.end4.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %ctxlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ctxlen, align 4
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ctx, align 4
  br label %if.end8.i.i

if.end4:                                          ; preds = %entry
  %6 = ptrtoint ptr %ctxlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %ctxlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool5.not = icmp eq i32 %.pr, 0
  br i1 %tobool5.not, label %if.end4.if.end8.i.i_crit_edge, label %if.then6

if.end4.if.end8.i.i_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i

if.then6:                                         ; preds = %if.end4
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %call7 = call i32 @strlen(ptr noundef %8) #21
  %add = add i32 %call7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp8 = icmp ugt i32 %add, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp10 = icmp slt i32 %.pr, 0
  %spec.select = select i1 %cmp8, i1 true, i1 %cmp10
  br i1 %spec.select, label %do.end, label %if.end35.critedge, !prof !45

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 487, i32 noundef 9, ptr noundef null) #16
  br label %out_err

if.end35.critedge:                                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  %add37 = add nuw i32 %.pr, 24
  %9 = add i32 %add37, %call7
  %add39 = and i32 %9, -8
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end35.critedge, %if.end4.if.end8.i.i_crit_edge, %if.end4.thread
  %tobool5.not71 = phi i1 [ false, %if.end35.critedge ], [ true, %if.end4.if.end8.i.i_crit_edge ], [ true, %if.end4.thread ]
  %total_len.0 = phi i32 [ %add39, %if.end35.critedge ], [ 8, %if.end4.if.end8.i.i_crit_edge ], [ 8, %if.end4.thread ]
  %nr_ctx.0 = phi i32 [ 1, %if.end35.critedge ], [ 0, %if.end4.if.end8.i.i_crit_edge ], [ 0, %if.end4.thread ]
  %namelen.0 = phi i32 [ %add, %if.end35.critedge ], [ -1, %if.end4.if.end8.i.i_crit_edge ], [ -1, %if.end4.thread ]
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %total_len.0, i32 noundef 3520) #22
  %tobool42.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool42.not, label %if.end8.i.i.out_err_crit_edge, label %if.end44

if.end8.i.i.out_err_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_err

if.end44:                                         ; preds = %if.end8.i.i
  %nr_secctx = getelementptr inbounds %struct.fuse_secctx_header, ptr %call9.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %nr_secctx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %nr_ctx.0, ptr %nr_secctx, align 4
  %11 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %total_len.0, ptr %call9.i.i, align 128
  br i1 %tobool5.not71, label %if.end44.if.end51_crit_edge, label %if.then46

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 8
  %12 = ptrtoint ptr %ctxlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctxlen, align 4
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %add.ptr, align 8
  %add.ptr48 = getelementptr i8, ptr %call9.i.i, i32 16
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  %call49 = call ptr @strcpy(ptr noundef %add.ptr48, ptr noundef %16) #21
  %add.ptr50 = getelementptr i8, ptr %add.ptr48, i32 %namelen.0
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %19 = call ptr @memcpy(ptr %add.ptr50, ptr %18, i32 %13)
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.end44.if.end51_crit_edge
  %20 = ptrtoint ptr %security_ctxlen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %total_len.0, ptr %security_ctxlen, align 4
  %21 = ptrtoint ptr %security_ctx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i.i, ptr %security_ctx, align 4
  br label %out_err

out_err:                                          ; preds = %if.end51, %if.end8.i.i.out_err_crit_edge, %do.end, %entry.out_err_crit_edge
  %err.0 = phi i32 [ 0, %if.end51 ], [ -12, %if.end8.i.i.out_err_crit_edge ], [ %call, %entry.out_err_crit_edge ], [ -5, %do.end ]
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 4
  call void @kfree(ptr noundef %23) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctxlen) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctx) #16
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_dentry_init_security(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fuse_entry_unlinked(ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %lock = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %attr_version = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 34
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %attr_version, i32 noundef 8) #16
  %call.i2.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %attr_version) #16
  %attr_version5 = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %attr_version5 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i2.i, ptr %attr_version5, align 8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %1, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %11)
  %cmp = icmp eq i16 %11, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @clear_nlink(ptr noundef %1) #16
  br label %if.end10

if.else:                                          ; preds = %entry
  %12 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp7.not = icmp eq i32 %14, 0
  br i1 %cmp7.not, label %if.else.if.end10_crit_edge, label %if.then9

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @drop_nlink(ptr noundef %1) #16
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.else.if.end10_crit_edge, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  %d_sb.i.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 9
  %15 = ptrtoint ptr %d_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_sb.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %delete_stale.i.i = getelementptr inbounds %struct.fuse_conn, ptr %20, i32 0, i32 26
  %21 = ptrtoint ptr %delete_stale.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 7)
  %bf.load.i.i = load i56, ptr %delete_stale.i.i, align 1
  %22 = and i56 %bf.load.i.i, 2048
  %tobool1.not.i.i = icmp eq i56 %22, 0
  %23 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %entry1, align 8
  %and.i.i = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %land.lhs.true5.critedge.i.i

land.lhs.true.i.i:                                ; preds = %if.end10
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.fuse_invalidate_entry_cache.exit_crit_edge, label %if.then10.i.i

land.lhs.true.i.i.fuse_invalidate_entry_cache.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalidate_entry_cache.exit

land.lhs.true5.critedge.i.i:                      ; preds = %if.end10
  br i1 %tobool3.not.i.i, label %if.else.i.i, label %land.lhs.true5.critedge.i.i.fuse_invalidate_entry_cache.exit_crit_edge

land.lhs.true5.critedge.i.i.fuse_invalidate_entry_cache.exit_crit_edge: ; preds = %land.lhs.true5.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalidate_entry_cache.exit

if.then10.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i) #16
  %25 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %entry1, align 8
  %and12.i.i = and i32 %26, -9
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %land.lhs.true5.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref27.i.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref27.i.i) #16
  %27 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %entry1, align 8
  %or.i.i = or i32 %28, 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then10.i.i
  %d_lockref28.i.i = phi ptr [ %d_lockref.i.i, %if.then10.i.i ], [ %d_lockref27.i.i, %if.else.i.i ]
  %storemerge.i.i = phi i32 [ %and12.i.i, %if.then10.i.i ], [ %or.i.i, %if.else.i.i ]
  %29 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %storemerge.i.i, ptr %entry1, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref28.i.i) #16
  br label %fuse_invalidate_entry_cache.exit

fuse_invalidate_entry_cache.exit:                 ; preds = %if.end.i.i, %land.lhs.true5.critedge.i.i.fuse_invalidate_entry_cache.exit_crit_edge, %land.lhs.true.i.i.fuse_invalidate_entry_cache.exit_crit_edge
  %d_fsdata.i.i.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 11
  %30 = ptrtoint ptr %d_fsdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_fsdata.i.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %31, align 8
  %inval_mask.i.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 5
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %__cmpxchg.exit.i.i.do.body.i.i_crit_edge, %fuse_invalidate_entry_cache.exit
  %33 = ptrtoint ptr %inval_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %inval_mask.i.i, align 8
  %or.i.i21 = or i32 %34, 128
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inval_mask.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %inval_mask.i.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body.i.i
  %35 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %inval_mask.i.i, i32 %34, i32 %or.i.i21) #16, !srcloc !41
  %asmresult.i.i.i = extractvalue { i32, i32 } %35, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %35, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !42
  %cmp.not.i.i = icmp eq i32 %asmresult1.i.i.i, %34
  br i1 %cmp.not.i.i, label %fuse_update_ctime.exit, label %__cmpxchg.exit.i.i.do.body.i.i_crit_edge

__cmpxchg.exit.i.i.do.body.i.i_crit_edge:         ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

fuse_update_ctime.exit:                           ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @fuse_update_ctime_in_cache(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fuse_rename_common(ptr noundef %olddir, ptr noundef %oldent, ptr noundef %newdir, ptr noundef %newent, i32 noundef %flags, i32 noundef %opcode, i32 noundef %argsize) unnamed_addr #0 align 64 {
entry:
  %inarg = alloca %struct.fuse_rename2_in, align 8
  %args = alloca %struct.fuse_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inarg) #16
  %0 = getelementptr inbounds %struct.fuse_rename2_in, ptr %inarg, i32 0, i32 1
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %olddir, i32 0, i32 8
  %1 = getelementptr inbounds i8, ptr %inarg, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %1, align 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #16
  %7 = getelementptr inbounds i8, ptr %args, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 56)
  %9 = call ptr @memset(ptr %inarg, i32 0, i32 %argsize)
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %newdir, i32 0, i32 1
  %10 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %nodeid.i, align 8
  %12 = ptrtoint ptr %inarg to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %inarg, align 8
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %flags, ptr %0, align 8
  %opcode4 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %14 = ptrtoint ptr %opcode4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %opcode, ptr %opcode4, align 8
  %nodeid.i64 = getelementptr inbounds %struct.fuse_inode, ptr %olddir, i32 0, i32 1
  %15 = ptrtoint ptr %nodeid.i64 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %nodeid.i64, align 8
  %17 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %args, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %18 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 3, ptr %in_numargs, align 4
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %19 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %argsize, ptr %in_args, align 4
  %value = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %inarg, ptr %value, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %oldent, i32 0, i32 4
  %21 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %d_name, align 8
  %add = add i32 %22, 1
  %arrayidx9 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %arrayidx9, align 4
  %name = getelementptr inbounds %struct.dentry, ptr %oldent, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 8
  %value14 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 1, i32 1
  %26 = ptrtoint ptr %value14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %value14, align 8
  %d_name15 = getelementptr inbounds %struct.dentry, ptr %newent, i32 0, i32 4
  %27 = ptrtoint ptr %d_name15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %d_name15, align 8
  %add17 = add i32 %28, 1
  %arrayidx19 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 2
  %29 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add17, ptr %arrayidx19, align 4
  %name22 = getelementptr inbounds %struct.dentry, ptr %newent, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name22, align 8
  %value25 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 2, i32 1
  %32 = ptrtoint ptr %value25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %value25, align 8
  %call26 = call i32 @fuse_simple_request(ptr noundef %6, ptr noundef nonnull %args) #16
  %33 = zext i32 %call26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call26, label %entry.if.end44_crit_edge [
    i32 0, label %if.then
    i32 -4, label %if.then39
  ]

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.then:                                          ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %oldent, i32 0, i32 5
  %34 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_inode.i, align 8
  %inval_mask.i.i = getelementptr inbounds %struct.fuse_inode, ptr %35, i32 0, i32 5
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %__cmpxchg.exit.i.i.do.body.i.i_crit_edge, %if.then
  %36 = ptrtoint ptr %inval_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %inval_mask.i.i, align 8
  %or.i.i = or i32 %37, 128
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %inval_mask.i.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !40
  call void @llvm.prefetch.p0(ptr %inval_mask.i.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body.i.i
  %38 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %inval_mask.i.i, i32 %37, i32 %or.i.i) #16, !srcloc !41
  %asmresult.i.i.i = extractvalue { i32, i32 } %38, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %38, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !42
  %cmp.not.i.i = icmp eq i32 %asmresult1.i.i.i, %37
  br i1 %cmp.not.i.i, label %fuse_update_ctime.exit, label %__cmpxchg.exit.i.i.do.body.i.i_crit_edge

__cmpxchg.exit.i.i.do.body.i.i_crit_edge:         ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

fuse_update_ctime.exit:                           ; preds = %__cmpxchg.exit.i.i
  call fastcc void @fuse_update_ctime_in_cache(ptr noundef %35) #16
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %fuse_update_ctime.exit.if.end_crit_edge, label %if.then29

fuse_update_ctime.exit.if.end_crit_edge:          ; preds = %fuse_update_ctime.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then29:                                        ; preds = %fuse_update_ctime.exit
  %d_inode.i65 = getelementptr inbounds %struct.dentry, ptr %newent, i32 0, i32 5
  %39 = ptrtoint ptr %d_inode.i65 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d_inode.i65, align 8
  %inval_mask.i.i66 = getelementptr inbounds %struct.fuse_inode, ptr %40, i32 0, i32 5
  br label %do.body.i.i69

do.body.i.i69:                                    ; preds = %__cmpxchg.exit.i.i75.do.body.i.i69_crit_edge, %if.then29
  %41 = ptrtoint ptr %inval_mask.i.i66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %inval_mask.i.i66, align 8
  %or.i.i67 = or i32 %42, 128
  %call.i.i.i68 = call zeroext i1 @__kasan_check_write(ptr noundef %inval_mask.i.i66, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !40
  call void @llvm.prefetch.p0(ptr %inval_mask.i.i66, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i72

do.body.i.i.i72:                                  ; preds = %do.body.i.i.i72.do.body.i.i.i72_crit_edge, %do.body.i.i69
  %43 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %inval_mask.i.i66, i32 %42, i32 %or.i.i67) #16, !srcloc !41
  %asmresult.i.i.i70 = extractvalue { i32, i32 } %43, 0
  %tobool.not.i.i.i71 = icmp eq i32 %asmresult.i.i.i70, 0
  br i1 %tobool.not.i.i.i71, label %__cmpxchg.exit.i.i75, label %do.body.i.i.i72.do.body.i.i.i72_crit_edge

do.body.i.i.i72.do.body.i.i.i72_crit_edge:        ; preds = %do.body.i.i.i72
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i72

__cmpxchg.exit.i.i75:                             ; preds = %do.body.i.i.i72
  %asmresult1.i.i.i73 = extractvalue { i32, i32 } %43, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !42
  %cmp.not.i.i74 = icmp eq i32 %asmresult1.i.i.i73, %42
  br i1 %cmp.not.i.i74, label %fuse_update_ctime.exit76, label %__cmpxchg.exit.i.i75.do.body.i.i69_crit_edge

__cmpxchg.exit.i.i75.do.body.i.i69_crit_edge:     ; preds = %__cmpxchg.exit.i.i75
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i69

fuse_update_ctime.exit76:                         ; preds = %__cmpxchg.exit.i.i75
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @fuse_update_ctime_in_cache(ptr noundef %40) #16
  br label %if.end

if.end:                                           ; preds = %fuse_update_ctime.exit76, %fuse_update_ctime.exit.if.end_crit_edge
  call fastcc void @fuse_dir_changed(ptr noundef %olddir)
  %cmp.not = icmp eq ptr %olddir, %newdir
  br i1 %cmp.not, label %if.end.if.end32_crit_edge, label %if.then31

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @fuse_dir_changed(ptr noundef %newdir)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end.if.end32_crit_edge
  br i1 %tobool28.not, label %land.lhs.true, label %if.end32.if.end44_crit_edge

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end32
  %d_inode.i77 = getelementptr inbounds %struct.dentry, ptr %newent, i32 0, i32 5
  %44 = ptrtoint ptr %d_inode.i77 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_inode.i77, align 8
  %cmp.i.not = icmp eq ptr %45, null
  br i1 %cmp.i.not, label %land.lhs.true.if.end44_crit_edge, label %if.then36

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @fuse_entry_unlinked(ptr noundef %newent)
  br label %if.end44

if.then39:                                        ; preds = %entry
  call void @d_invalidate(ptr noundef %oldent) #16
  %d_sb.i.i.i = getelementptr inbounds %struct.dentry, ptr %oldent, i32 0, i32 9
  %46 = ptrtoint ptr %d_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %d_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 33
  %48 = ptrtoint ptr %s_fs_info.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i.i.i.i.i, align 16
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %delete_stale.i.i.i = getelementptr inbounds %struct.fuse_conn, ptr %51, i32 0, i32 26
  %52 = ptrtoint ptr %delete_stale.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 7)
  %bf.load.i.i.i = load i56, ptr %delete_stale.i.i.i, align 1
  %53 = and i56 %bf.load.i.i.i, 2048
  %tobool1.not.i.i.i = icmp eq i56 %53, 0
  %54 = ptrtoint ptr %oldent to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %oldent, align 8
  %and.i.i.i = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i, label %land.lhs.true5.critedge.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then39
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.fuse_invalidate_entry.exit_crit_edge, label %if.then10.i.i.i

land.lhs.true.i.i.i.fuse_invalidate_entry.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalidate_entry.exit

land.lhs.true5.critedge.i.i.i:                    ; preds = %if.then39
  br i1 %tobool3.not.i.i.i, label %if.else.i.i.i, label %land.lhs.true5.critedge.i.i.i.fuse_invalidate_entry.exit_crit_edge

land.lhs.true5.critedge.i.i.i.fuse_invalidate_entry.exit_crit_edge: ; preds = %land.lhs.true5.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalidate_entry.exit

if.then10.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %oldent, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #16
  %56 = ptrtoint ptr %oldent to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %oldent, align 8
  %and12.i.i.i = and i32 %57, -9
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true5.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref27.i.i.i = getelementptr inbounds %struct.dentry, ptr %oldent, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref27.i.i.i) #16
  %58 = ptrtoint ptr %oldent to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %oldent, align 8
  %or.i.i.i = or i32 %59, 8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then10.i.i.i
  %d_lockref28.i.i.i = phi ptr [ %d_lockref.i.i.i, %if.then10.i.i.i ], [ %d_lockref27.i.i.i, %if.else.i.i.i ]
  %storemerge.i.i.i = phi i32 [ %and12.i.i.i, %if.then10.i.i.i ], [ %or.i.i.i, %if.else.i.i.i ]
  %60 = ptrtoint ptr %oldent to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %storemerge.i.i.i, ptr %oldent, align 8
  call void @_raw_spin_unlock(ptr noundef %d_lockref28.i.i.i) #16
  br label %fuse_invalidate_entry.exit

fuse_invalidate_entry.exit:                       ; preds = %if.end.i.i.i, %land.lhs.true5.critedge.i.i.i.fuse_invalidate_entry.exit_crit_edge, %land.lhs.true.i.i.i.fuse_invalidate_entry.exit_crit_edge
  %d_fsdata.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %oldent, i32 0, i32 11
  %61 = ptrtoint ptr %d_fsdata.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %d_fsdata.i.i.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 0, ptr %62, align 8
  %d_inode.i78 = getelementptr inbounds %struct.dentry, ptr %newent, i32 0, i32 5
  %64 = ptrtoint ptr %d_inode.i78 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %d_inode.i78, align 8
  %cmp.i79.not = icmp eq ptr %65, null
  br i1 %cmp.i79.not, label %fuse_invalidate_entry.exit.if.end44_crit_edge, label %if.then41

fuse_invalidate_entry.exit.if.end44_crit_edge:    ; preds = %fuse_invalidate_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.then41:                                        ; preds = %fuse_invalidate_entry.exit
  call void @d_invalidate(ptr noundef %newent) #16
  %d_sb.i.i.i80 = getelementptr inbounds %struct.dentry, ptr %newent, i32 0, i32 9
  %66 = ptrtoint ptr %d_sb.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %d_sb.i.i.i80, align 4
  %s_fs_info.i.i.i.i.i81 = getelementptr inbounds %struct.super_block, ptr %67, i32 0, i32 33
  %68 = ptrtoint ptr %s_fs_info.i.i.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_fs_info.i.i.i.i.i81, align 16
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %delete_stale.i.i.i82 = getelementptr inbounds %struct.fuse_conn, ptr %71, i32 0, i32 26
  %72 = ptrtoint ptr %delete_stale.i.i.i82 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 7)
  %bf.load.i.i.i83 = load i56, ptr %delete_stale.i.i.i82, align 1
  %73 = and i56 %bf.load.i.i.i83, 2048
  %tobool1.not.i.i.i84 = icmp eq i56 %73, 0
  %74 = ptrtoint ptr %newent to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %newent, align 8
  %and.i.i.i85 = and i32 %75, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i85)
  %tobool3.not.i.i.i86 = icmp eq i32 %and.i.i.i85, 0
  br i1 %tobool1.not.i.i.i84, label %land.lhs.true.i.i.i87, label %land.lhs.true5.critedge.i.i.i88

land.lhs.true.i.i.i87:                            ; preds = %if.then41
  br i1 %tobool3.not.i.i.i86, label %land.lhs.true.i.i.i87.fuse_invalidate_entry.exit99_crit_edge, label %if.then10.i.i.i91

land.lhs.true.i.i.i87.fuse_invalidate_entry.exit99_crit_edge: ; preds = %land.lhs.true.i.i.i87
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalidate_entry.exit99

land.lhs.true5.critedge.i.i.i88:                  ; preds = %if.then41
  br i1 %tobool3.not.i.i.i86, label %if.else.i.i.i94, label %land.lhs.true5.critedge.i.i.i88.fuse_invalidate_entry.exit99_crit_edge

land.lhs.true5.critedge.i.i.i88.fuse_invalidate_entry.exit99_crit_edge: ; preds = %land.lhs.true5.critedge.i.i.i88
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalidate_entry.exit99

if.then10.i.i.i91:                                ; preds = %land.lhs.true.i.i.i87
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref.i.i.i89 = getelementptr inbounds %struct.dentry, ptr %newent, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i89) #16
  %76 = ptrtoint ptr %newent to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %newent, align 8
  %and12.i.i.i90 = and i32 %77, -9
  br label %if.end.i.i.i97

if.else.i.i.i94:                                  ; preds = %land.lhs.true5.critedge.i.i.i88
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref27.i.i.i92 = getelementptr inbounds %struct.dentry, ptr %newent, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref27.i.i.i92) #16
  %78 = ptrtoint ptr %newent to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %newent, align 8
  %or.i.i.i93 = or i32 %79, 8
  br label %if.end.i.i.i97

if.end.i.i.i97:                                   ; preds = %if.else.i.i.i94, %if.then10.i.i.i91
  %d_lockref28.i.i.i95 = phi ptr [ %d_lockref.i.i.i89, %if.then10.i.i.i91 ], [ %d_lockref27.i.i.i92, %if.else.i.i.i94 ]
  %storemerge.i.i.i96 = phi i32 [ %and12.i.i.i90, %if.then10.i.i.i91 ], [ %or.i.i.i93, %if.else.i.i.i94 ]
  %80 = ptrtoint ptr %newent to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %storemerge.i.i.i96, ptr %newent, align 8
  call void @_raw_spin_unlock(ptr noundef %d_lockref28.i.i.i95) #16
  br label %fuse_invalidate_entry.exit99

fuse_invalidate_entry.exit99:                     ; preds = %if.end.i.i.i97, %land.lhs.true5.critedge.i.i.i88.fuse_invalidate_entry.exit99_crit_edge, %land.lhs.true.i.i.i87.fuse_invalidate_entry.exit99_crit_edge
  %d_fsdata.i.i.i.i98 = getelementptr inbounds %struct.dentry, ptr %newent, i32 0, i32 11
  %81 = ptrtoint ptr %d_fsdata.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %d_fsdata.i.i.i.i98, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 0, ptr %82, align 8
  br label %if.end44

if.end44:                                         ; preds = %fuse_invalidate_entry.exit99, %fuse_invalidate_entry.exit.if.end44_crit_edge, %if.then36, %land.lhs.true.if.end44_crit_edge, %if.end32.if.end44_crit_edge, %entry.if.end44_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inarg) #16
  ret i32 %call26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @finish_no_open(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fuse_file_alloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_sync_release(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @finish_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_open(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_finish_open(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_file_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_readdir(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_dir_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %minor = getelementptr inbounds %struct.fuse_conn, ptr %9, i32 0, i32 28
  %10 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %11)
  %cmp = icmp ult i32 %11, 18
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 @fuse_ioctl_common(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg, i32 noundef 16) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_dir_compat_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %minor = getelementptr inbounds %struct.fuse_conn, ptr %9, i32 0, i32 28
  %10 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %11)
  %cmp = icmp ult i32 %11, 18
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 @fuse_ioctl_common(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg, i32 noundef 17) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_dir_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fuse_open_common(ptr noundef %inode, ptr noundef %file, i1 noundef zeroext true) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_dir_release(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fuse_release_common(ptr noundef %file, i1 noundef zeroext true) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_dir_fsync(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %no_fsyncdir = getelementptr inbounds %struct.fuse_conn, ptr %9, i32 0, i32 26
  %13 = ptrtoint ptr %no_fsyncdir to i32
  call void @__asan_loadN_noabort(i32 %13, i32 7)
  %bf.load = load i56, ptr %no_fsyncdir, align 1
  %14 = and i56 %bf.load, 1099511627776
  %tobool.not = icmp eq i56 %14, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #16
  %call4 = tail call i32 @fuse_fsync_common(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync, i32 noundef 30) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call4)
  %cmp = icmp eq i32 %call4, -38
  br i1 %cmp, label %if.then5, label %if.end3.if.end9_crit_edge

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %no_fsyncdir to i32
  call void @__asan_loadN_noabort(i32 %15, i32 7)
  %bf.load7 = load i56, ptr %no_fsyncdir, align 1
  %bf.set = or i56 %bf.load7, 1099511627776
  store i56 %bf.set, ptr %no_fsyncdir, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end3.if.end9_crit_edge
  %err.0 = phi i32 [ 0, %if.then5 ], [ %call4, %if.end3.if.end9_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end9 ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_ioctl_common(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_open_common(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_release_common(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_fsync_common(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fuse_get_link(ptr noundef %dentry, ptr noundef %inode, ptr noundef %callback) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 10
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %cache_symlinks = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 26
  %9 = ptrtoint ptr %cache_symlinks to i32
  call void @__asan_loadN_noabort(i32 %9, i32 7)
  %bf.load = load i56, ptr %cache_symlinks, align 1
  %10 = and i56 %bf.load, 70368744177664
  %tobool.not = icmp eq i56 %10, 0
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call ptr @page_get_link(ptr noundef %dentry, ptr noundef %inode, ptr noundef %callback) #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %dentry, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %tobool9.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call fastcc i32 @fuse_readlink_page(ptr noundef %inode, ptr noundef nonnull %call38.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #16
  %phi.cast = inttoptr i32 %call12 to ptr
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @page_put_link, ptr %callback, align 4
  %arg2.i = getelementptr inbounds %struct.delayed_call, ptr %callback, i32 0, i32 1
  %12 = ptrtoint ptr %arg2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call38.i.i.i, ptr %arg2.i, align 4
  %call16 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.then2 ], [ %call16, %if.end15 ], [ inttoptr (i32 -5 to ptr), %entry.cleanup_crit_edge ], [ %phi.cast, %if.then14 ], [ inttoptr (i32 -12 to ptr), %if.end7.cleanup_crit_edge ], [ inttoptr (i32 -10 to ptr), %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_get_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fuse_readlink_page(ptr noundef %inode, ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  %page.addr = alloca ptr, align 4
  %desc = alloca %struct.fuse_page_desc, align 8
  %ap = alloca %struct.fuse_args_pages, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %page, ptr %page.addr, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc) #16
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 17587891077120, ptr %desc, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %ap) #16
  %6 = getelementptr inbounds i8, ptr %ap, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 72)
  %pages = getelementptr inbounds %struct.fuse_args_pages, ptr %ap, i32 0, i32 1
  %8 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %page.addr, ptr %pages, align 8
  %descs = getelementptr inbounds %struct.fuse_args_pages, ptr %ap, i32 0, i32 2
  %9 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %desc, ptr %descs, align 4
  %num_pages = getelementptr inbounds %struct.fuse_args_pages, ptr %ap, i32 0, i32 3
  %10 = ptrtoint ptr %num_pages to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %num_pages, align 8
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %ap, i32 0, i32 1
  %11 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %opcode, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 1
  %12 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %nodeid.i, align 8
  %14 = ptrtoint ptr %ap to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %ap, align 8
  %out_pages = getelementptr inbounds %struct.fuse_args, ptr %ap, i32 0, i32 4
  %15 = ptrtoint ptr %out_pages to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2816, ptr %out_pages, align 8
  %out_numargs = getelementptr inbounds %struct.fuse_args, ptr %ap, i32 0, i32 3
  %16 = ptrtoint ptr %out_numargs to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %out_numargs, align 2
  %out_args = getelementptr inbounds %struct.fuse_args, ptr %ap, i32 0, i32 6
  %17 = ptrtoint ptr %out_args to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4095, ptr %out_args, align 4
  %call15 = call i32 @fuse_simple_request(ptr noundef %4, ptr noundef nonnull %ap) #16
  %18 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %entry.fuse_invalidate_atime.exit_crit_edge

entry.fuse_invalidate_atime.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalidate_atime.exit

if.then.i:                                        ; preds = %entry
  %inval_mask.i.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 5
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %__cmpxchg.exit.i.i.do.body.i.i_crit_edge, %if.then.i
  %22 = ptrtoint ptr %inval_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %inval_mask.i.i, align 8
  %or.i.i = or i32 %23, 32
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %inval_mask.i.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !40
  call void @llvm.prefetch.p0(ptr %inval_mask.i.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body.i.i
  %24 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %inval_mask.i.i, i32 %23, i32 %or.i.i) #16, !srcloc !41
  %asmresult.i.i.i = extractvalue { i32, i32 } %24, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %24, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !42
  %cmp.not.i.i = icmp eq i32 %asmresult1.i.i.i, %23
  br i1 %cmp.not.i.i, label %__cmpxchg.exit.i.i.fuse_invalidate_atime.exit_crit_edge, label %__cmpxchg.exit.i.i.do.body.i.i_crit_edge

__cmpxchg.exit.i.i.do.body.i.i_crit_edge:         ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

__cmpxchg.exit.i.i.fuse_invalidate_atime.exit_crit_edge: ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fuse_invalidate_atime.exit

fuse_invalidate_atime.exit:                       ; preds = %__cmpxchg.exit.i.i.fuse_invalidate_atime.exit_crit_edge, %entry.fuse_invalidate_atime.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %fuse_invalidate_atime.exit.cleanup_crit_edge, label %if.end

fuse_invalidate_atime.exit.cleanup_crit_edge:     ; preds = %fuse_invalidate_atime.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %fuse_invalidate_atime.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call15)
  %cmp16 = icmp ugt i32 %call15, 4095
  br i1 %cmp16, label %do.end, label %if.end39, !prof !45

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1380, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %page.addr, align 4
  %call40 = call ptr @page_address(ptr noundef %26) #16
  %arrayidx41 = getelementptr i8, ptr %call40, i32 %call15
  %27 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx41, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end, %fuse_invalidate_atime.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end39 ], [ %call15, %fuse_invalidate_atime.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ap) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_put_link(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_symlink_readpage(ptr nocapture noundef readnone %null, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call fastcc i32 @fuse_readlink_page(ptr noundef %3, ptr noundef %page)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !62
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !43

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !63
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #16
  br label %if.end

if.end:                                           ; preds = %SetPageUptodate.exit, %entry.if.end_crit_edge
  tail call void @unlock_page(ptr noundef %page) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nobuiltin }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @fuse_dentry_operations, !1, !"fuse_dentry_operations", i1 false, i1 false}
!1 = !{!"../fs/fuse/dir.c", i32 334, i32 32}
!2 = !{ptr @fuse_root_dentry_operations, !3, !"fuse_root_dentry_operations", i1 false, i1 false}
!3 = !{!"../fs/fuse/dir.c", i32 344, i32 32}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../fs/fuse/dir.c", i32 1230, i32 9}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/fuse/dir.c", i32 1554, i32 2}
!8 = !{ptr @fuse_init_dir.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../fs/fuse/dir.c", i32 1953, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @fuse_common_inode_operations, !15, !"fuse_common_inode_operations", i1 false, i1 false}
!15 = !{!"../fs/fuse/dir.c", i32 1923, i32 38}
!16 = !{ptr @fuse_dir_inode_operations, !17, !"fuse_dir_inode_operations", i1 false, i1 false}
!17 = !{!"../fs/fuse/dir.c", i32 1891, i32 38}
!18 = !{ptr @fuse_dir_operations, !19, !"fuse_dir_operations", i1 false, i1 false}
!19 = !{!"../fs/fuse/dir.c", i32 1912, i32 37}
!20 = !{ptr @fuse_symlink_inode_operations, !21, !"fuse_symlink_inode_operations", i1 false, i1 false}
!21 = !{!"../fs/fuse/dir.c", i32 1934, i32 38}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!24 = !{ptr @fuse_symlink_aops, !25, !"fuse_symlink_aops", i1 false, i1 false}
!25 = !{!"../fs/fuse/dir.c", i32 1972, i32 46}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2154886154}
!41 = !{i64 1267217, i64 1267238, i64 1267261, i64 1267280, i64 1267299}
!42 = !{i64 2154886563}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2154869576}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i64 2154906993, i64 2154907472, i64 2154907030, i64 2154907086, i64 2154907120, i64 2154907144, i64 2154907185, i64 2154907206, i64 2154907234, i64 2154907268}
!47 = !{i64 2154908566, i64 2154909045, i64 2154908603, i64 2154908659, i64 2154908693, i64 2154908717, i64 2154908758, i64 2154908779, i64 2154908807, i64 2154908841}
!48 = !{i64 2154911686, i64 2154912165, i64 2154911723, i64 2154911779, i64 2154911813, i64 2154911837, i64 2154911878, i64 2154911899, i64 2154911927, i64 2154911961}
!49 = !{i64 2152602550}
!50 = !{i64 2150078792}
!51 = !{i64 2150083726}
!52 = !{i64 2150105444}
!53 = !{i64 2150110338}
!54 = !{i64 2150186865}
!55 = !{i64 2150187190}
!56 = !{i64 2152614412}
!57 = !{i32 0, i32 33}
!58 = !{i64 2154900558, i64 2154901037, i64 2154900595, i64 2154900651, i64 2154900685, i64 2154900709, i64 2154900750, i64 2154900771, i64 2154900799, i64 2154900833}
!59 = !{!"auto-init"}
!60 = !{i64 2154892113, i64 2154892591, i64 2154892150, i64 2154892206, i64 2154892240, i64 2154892264, i64 2154892305, i64 2154892326, i64 2154892354, i64 2154892388}
!61 = !{i64 2154893916, i64 2154894394, i64 2154893953, i64 2154894009, i64 2154894043, i64 2154894067, i64 2154894108, i64 2154894129, i64 2154894157, i64 2154894191}
!62 = !{i64 2151417433}
!63 = !{i64 2150666470, i64 2150666961, i64 2150666507, i64 2150666563, i64 2150666597, i64 2150666621, i64 2150666662, i64 2150666683, i64 2150666711, i64 2150666745}
