; ModuleID = '/llk/IR_all_yes/fs/9p/vfs_inode_dotl.c_pt.bc'
source_filename = "../fs/9p/vfs_inode_dotl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.p9_stat_dotl = type { i64, %struct.p9_qid, i32, %struct.kuid_t, %struct.kgid_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.p9_qid = type { i8, i32, i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.102, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.103, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.104, ptr, %struct.address_space, %struct.list_head, %union.anon.105, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.102 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.103 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.104 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.105 = type { ptr }
%struct.p9_iattr_dotl = type { i32, i32, %struct.kuid_t, %struct.kgid_t, i64, i64, i64, i64, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.100, %struct.list_head, %struct.list_head, %union.anon.101 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.100 = type { %struct.list_head }
%union.anon.101 = type { %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
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
%struct.v9fs_session_info = type { i8, i8, i16, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, ptr, %struct.list_head, %struct.rw_semaphore, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.90, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%struct.llist_node = type { ptr }
%union.anon.39 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.90 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.delayed_call = type { ptr, ptr }

@__func__.v9fs_vfs_setattr_dotl = private unnamed_addr constant [22 x i8] c"v9fs_vfs_setattr_dotl\00", align 1
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/9p/vfs_inode_dotl.c\00", [41 x i8] zeroinitializer }, align 32
@v9fs_dir_inode_operations_dotl = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @v9fs_vfs_lookup, ptr null, ptr null, ptr @v9fs_iop_get_acl, ptr null, ptr @v9fs_vfs_create_dotl, ptr @v9fs_vfs_link_dotl, ptr @v9fs_vfs_unlink, ptr @v9fs_vfs_symlink_dotl, ptr @v9fs_vfs_mkdir_dotl, ptr @v9fs_vfs_rmdir, ptr @v9fs_vfs_mknod_dotl, ptr @v9fs_vfs_rename, ptr @v9fs_vfs_setattr_dotl, ptr @v9fs_vfs_getattr_dotl, ptr @v9fs_listxattr, ptr null, ptr null, ptr @v9fs_vfs_atomic_open_dotl, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@v9fs_file_inode_operations_dotl = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr @v9fs_iop_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_vfs_setattr_dotl, ptr @v9fs_vfs_getattr_dotl, ptr @v9fs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@v9fs_symlink_inode_operations_dotl = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr @v9fs_vfs_get_link_dotl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_vfs_setattr_dotl, ptr @v9fs_vfs_getattr_dotl, ptr @v9fs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.v9fs_vfs_link_dotl = private unnamed_addr constant [19 x i8] c"v9fs_vfs_link_dotl\00", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"dir ino: %lu, old_name: %pd, new_name: %pd\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"p9_client_link failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.v9fs_vfs_symlink_dotl = private unnamed_addr constant [22 x i8] c"v9fs_vfs_symlink_dotl\00", align 1
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%lu,%s,%s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fid lookup failed %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"p9_client_symlink failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"p9_client_walk failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"inode creation failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.v9fs_vfs_mkdir_dotl = private unnamed_addr constant [20 x i8] c"v9fs_vfs_mkdir_dotl\00", align 1
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"name %pd\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get acl values in mkdir %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.v9fs_vfs_mknod_dotl = private unnamed_addr constant [20 x i8] c"v9fs_vfs_mknod_dotl\00", align 1
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" %lu,%pd mode: %x MAJOR: %u MINOR: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get acl values in mknod %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.v9fs_vfs_getattr_dotl = private unnamed_addr constant [22 x i8] c"v9fs_vfs_getattr_dotl\00", align 1
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dentry: %p\0A\00", [20 x i8] zeroinitializer }, align 32
@__func__.v9fs_vfs_atomic_open_dotl = private unnamed_addr constant [26 x i8] c"v9fs_vfs_atomic_open_dotl\00", align 1
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"name:%s flags:0x%x mode:0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get acl values in creat %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"p9_client_open_dotl failed in creat %d\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.v9fs_vfs_get_link_dotl = private unnamed_addr constant [23 x i8] c"v9fs_vfs_get_link_dotl\00", align 1
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pd\0A\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 561, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 587, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 271, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 793, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 812, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 715, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 721, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 731, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 741, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 751, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 388, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 409, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 857, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 875, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 474, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 262, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 286, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 293, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [26 x i8] c"../fs/9p/vfs_inode_dotl.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 950, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v9fs_inode_from_fid_dotl(ptr nocapture readnone %v9ses, ptr noundef %fid, ptr noundef %sb, i32 noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @p9_client_getattr_dotl(ptr noundef %fid, i64 noundef 6143) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %qid = getelementptr inbounds %struct.p9_stat_dotl, ptr %call, i32 0, i32 1
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new)
  %tobool.not.i = icmp eq i32 %new, 0
  %v9fs_test_inode_dotl.v9fs_test_new_inode_dotl.i = select i1 %tobool.not.i, ptr @v9fs_test_inode_dotl, ptr @v9fs_test_new_inode_dotl
  %call.i = tail call i32 @v9fs_qid2ino(ptr noundef %qid) #10
  %call2.i = tail call ptr @iget5_locked(ptr noundef %sb, i32 noundef %call.i, ptr noundef nonnull %v9fs_test_inode_dotl.v9fs_test_new_inode_dotl.i, ptr noundef nonnull @v9fs_set_inode_dotl, ptr noundef %call) #10
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.v9fs_qid_iget_dotl.exit_crit_edge, label %if.end6.i

if.end.v9fs_qid_iget_dotl.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %v9fs_qid_iget_dotl.exit

if.end6.i:                                        ; preds = %if.end
  %i_state.i = getelementptr inbounds %struct.inode, ptr %call2.i, i32 0, i32 24
  %2 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_state.i, align 8
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end6.i.v9fs_qid_iget_dotl.exit_crit_edge, label %if.end9.i

if.end6.i.v9fs_qid_iget_dotl.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v9fs_qid_iget_dotl.exit

if.end9.i:                                        ; preds = %if.end6.i
  %i_ino10.i = getelementptr inbounds %struct.inode, ptr %call2.i, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino10.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i, ptr %i_ino10.i, align 8
  %st_mode.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %st_mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %st_mode.i, align 8
  %conv.i = trunc i32 %6 to i16
  %st_rdev.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %st_rdev.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %st_rdev.i, align 8
  %conv11.i = trunc i64 %8 to i32
  %and1.i.i = and i32 %conv11.i, 255
  %shr2.i.i = lshr i32 %conv11.i, 12
  %and3.i.i = and i32 %shr2.i.i, 1048320
  %or.i.i = or i32 %and3.i.i, %and1.i.i
  %9 = shl i32 %conv11.i, 12
  %shl.i.i = and i32 %9, -1048576
  %or4.i.i = or i32 %or.i.i, %shl.i.i
  %call13.i = tail call i32 @v9fs_init_inode(ptr noundef %1, ptr noundef nonnull %call2.i, i16 noundef zeroext %conv.i, i32 noundef %or4.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end9.i.error.i_crit_edge

if.end9.i.error.i_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error.i

if.end16.i:                                       ; preds = %if.end9.i
  tail call void @v9fs_stat2inode_dotl(ptr noundef %call, ptr noundef nonnull %call2.i, i32 noundef 0) #10
  tail call void @v9fs_cache_inode_get_cookie(ptr noundef nonnull %call2.i) #10
  %call17.i = tail call i32 @v9fs_get_acl(ptr noundef nonnull %call2.i, ptr noundef %fid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.error.i_crit_edge

if.end16.i.error.i_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error.i

if.end20.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unlock_new_inode(ptr noundef nonnull %call2.i) #10
  br label %v9fs_qid_iget_dotl.exit

error.i:                                          ; preds = %if.end16.i.error.i_crit_edge, %if.end9.i.error.i_crit_edge
  %retval1.0.i = phi i32 [ %call13.i, %if.end9.i.error.i_crit_edge ], [ %call17.i, %if.end16.i.error.i_crit_edge ]
  tail call void @iget_failed(ptr noundef nonnull %call2.i) #10
  %10 = inttoptr i32 %retval1.0.i to ptr
  br label %v9fs_qid_iget_dotl.exit

v9fs_qid_iget_dotl.exit:                          ; preds = %error.i, %if.end20.i, %if.end6.i.v9fs_qid_iget_dotl.exit_crit_edge, %if.end.v9fs_qid_iget_dotl.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %error.i ], [ %call2.i, %if.end20.i ], [ %call2.i, %if.end6.i.v9fs_qid_iget_dotl.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.v9fs_qid_iget_dotl.exit_crit_edge ]
  tail call void @kfree(ptr noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %v9fs_qid_iget_dotl.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %v9fs_qid_iget_dotl.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p9_client_getattr_dotl(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @v9fs_open_to_dotl_flags(i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 3
  %and.7.i = lshr i32 %flags, 2
  %0 = and i32 %and.7.i, 16384
  %1 = and i32 %and.7.i, 32768
  %and.9.i = shl i32 %flags, 2
  %2 = and i32 %and.9.i, 65536
  %3 = and i32 %and.9.i, 131072
  %4 = and i32 %flags, 802240
  %5 = or i32 %4, %0
  %6 = or i32 %5, %1
  %7 = or i32 %6, %2
  %8 = or i32 %7, %3
  %and.13.i = and i32 %flags, 1052672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.13.i)
  %tobool.not.13.i = icmp eq i32 %and.13.i, 0
  %or.13.i = or i32 %8, 1048576
  %rflags.1.13.i = select i1 %tobool.not.13.i, i32 %8, i32 %or.13.i
  %or1 = or i32 %rflags.1.13.i, %and
  ret i32 %or1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_vfs_setattr_dotl(ptr nocapture readnone %mnt_userns, ptr noundef %dentry, ptr noundef %iattr) #0 align 64 {
entry:
  %p9attr = alloca %struct.p9_iattr_dotl, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %p9attr) #10
  %0 = call ptr @memset(ptr %p9attr, i32 0, i32 56)
  %1 = getelementptr inbounds %struct.p9_iattr_dotl, ptr %p9attr, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 8
  %3 = getelementptr inbounds %struct.p9_iattr_dotl, ptr %p9attr, i32 0, i32 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_setattr_dotl, ptr noundef nonnull @.str) #10
  %call2 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %iattr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iattr, align 8
  %9 = and i32 %8, 511
  %10 = ptrtoint ptr %p9attr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %p9attr, align 8
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 1
  %11 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ia_mode, align 4
  %conv = zext i16 %12 to i32
  %mode = getelementptr inbounds %struct.p9_iattr_dotl, ptr %p9attr, i32 0, i32 1
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %mode, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %and9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end12_crit_edge, label %if.then11

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 2
  %14 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ia_uid, align 8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %1, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end7.if.end12_crit_edge
  %and14 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end17_crit_edge, label %if.then16

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 3
  %17 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ia_gid, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %3, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12.if.end17_crit_edge
  %and19 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end22_crit_edge, label %if.then21

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %ia_size = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 4
  %20 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ia_size, align 8
  %size = getelementptr inbounds %struct.p9_iattr_dotl, ptr %p9attr, i32 0, i32 4
  %22 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %size, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17.if.end22_crit_edge
  %and24 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end29_crit_edge, label %if.then26

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 5
  %23 = ptrtoint ptr %ia_atime to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ia_atime, align 8
  %atime_sec = getelementptr inbounds %struct.p9_iattr_dotl, ptr %p9attr, i32 0, i32 5
  %25 = ptrtoint ptr %atime_sec to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %atime_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tv_nsec, align 8
  %conv28 = sext i32 %27 to i64
  %atime_nsec = getelementptr inbounds %struct.p9_iattr_dotl, ptr %p9attr, i32 0, i32 6
  %28 = ptrtoint ptr %atime_nsec to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv28, ptr %atime_nsec, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end22.if.end29_crit_edge
  %and31 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end38_crit_edge, label %if.then33

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  %29 = ptrtoint ptr %ia_mtime to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ia_mtime, align 8
  %mtime_sec = getelementptr inbounds %struct.p9_iattr_dotl, ptr %p9attr, i32 0, i32 7
  %31 = ptrtoint ptr %mtime_sec to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %mtime_sec, align 8
  %tv_nsec36 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %tv_nsec36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tv_nsec36, align 8
  %conv37 = sext i32 %33 to i64
  %mtime_nsec = getelementptr inbounds %struct.p9_iattr_dotl, ptr %p9attr, i32 0, i32 8
  %34 = ptrtoint ptr %mtime_nsec to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv37, ptr %mtime_nsec, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end29.if.end38_crit_edge
  %and40 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.then68_crit_edge, label %if.then42

if.end38.if.then68_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68

if.then42:                                        ; preds = %if.end38
  %ia_file = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 8
  %35 = ptrtoint ptr %ia_file to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ia_file, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %36, i32 0, i32 16
  %37 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %private_data, align 4
  %tobool43.not = icmp eq ptr %38, null
  br i1 %tobool43.not, label %do.end, label %if.then42.if.end70_crit_edge, !prof !65

if.then42.if.end70_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

do.end:                                           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 587, i32 noundef 9, ptr noundef null) #10
  br label %if.then68

if.then68:                                        ; preds = %do.end, %if.end38.if.then68_crit_edge
  %call69 = tail call ptr @v9fs_fid_lookup(ptr noundef %dentry) #10
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.then42.if.end70_crit_edge
  %tobool67.not171 = phi i1 [ true, %if.then68 ], [ false, %if.then42.if.end70_crit_edge ]
  %fid.1 = phi ptr [ %call69, %if.then68 ], [ %38, %if.then42.if.end70_crit_edge ]
  %cmp.i = icmp ugt ptr %fid.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %fid.1 to i32
  br label %cleanup

if.end74:                                         ; preds = %if.end70
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %6, align 8
  %42 = and i16 %41, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %42)
  %cmp = icmp eq i16 %42, -32768
  br i1 %cmp, label %if.then78, label %if.end74.if.end80_crit_edge

if.end74.if.end80_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %i_mapping = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9
  %43 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %44, i64 noundef 0, i64 noundef 9223372036854775807) #10
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end74.if.end80_crit_edge
  %call81 = call i32 @p9_client_setattr(ptr noundef %fid.1, ptr noundef nonnull %p9attr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.end89

if.then84:                                        ; preds = %if.end80
  br i1 %tobool67.not171, label %if.then86, label %if.then84.cleanup_crit_edge

if.then84.cleanup_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then86:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  %call87 = call i32 @p9_client_clunk(ptr noundef %fid.1) #10
  br label %cleanup

if.end89:                                         ; preds = %if.end80
  %45 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iattr, align 8
  %and91 = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end89.if.end99_crit_edge, label %land.lhs.true

if.end89.if.end99_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

land.lhs.true:                                    ; preds = %if.end89
  %ia_size93 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 4
  %47 = ptrtoint ptr %ia_size93 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %ia_size93, align 8
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %land.lhs.true
  %49 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !66
  %and.i.i.i = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @trace_hardirqs_off() #10
  %50 = call ptr @llvm.returnaddress(i32 0) #10
  %51 = ptrtoint ptr %50 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %51) #10
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %51) #10
  call void @trace_hardirqs_on() #10
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = call ptr @llvm.returnaddress(i32 0) #10
  %53 = ptrtoint ptr %52 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %53) #10
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %53) #10
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %54 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !67
  %and.i.i.i.i = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !65

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %49) #10, !srcloc !68
  %55 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !70
  %57 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %58, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %56, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %58, %do.end.i.while.end.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  %59 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %i_size18.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  %61 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %62, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %60)
  %cmp95.not = icmp eq i64 %48, %60
  br i1 %cmp95.not, label %i_size_read.exit.if.end99_crit_edge, label %if.then97

i_size_read.exit.if.end99_crit_edge:              ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then97:                                        ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %ia_size93 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %ia_size93, align 8
  call void @truncate_setsize(ptr noundef %6, i64 noundef %64) #10
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %i_size_read.exit.if.end99_crit_edge, %if.end89.if.end99_crit_edge
  %cache_validity.i = getelementptr i8, ptr %6, i32 -104
  %65 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %66, 1
  store i32 %or.i, ptr %cache_validity.i, align 8
  call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %6, ptr noundef %iattr) #10
  call void @__mark_inode_dirty(ptr noundef %6, i32 noundef 7) #10
  %67 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %iattr, align 8
  %and101 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end99.if.end113_crit_edge, label %if.then103

if.end99.if.end113_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then103:                                       ; preds = %if.end99
  %call104 = call i32 @v9fs_acl_chmod(ptr noundef %6, ptr noundef %fid.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.then107, label %if.then103.if.end113_crit_edge

if.then103.if.end113_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then107:                                       ; preds = %if.then103
  br i1 %tobool67.not171, label %if.then109, label %if.then107.cleanup_crit_edge

if.then107.cleanup_crit_edge:                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then109:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #12
  %call110 = call i32 @p9_client_clunk(ptr noundef %fid.1) #10
  br label %cleanup

if.end113:                                        ; preds = %if.then103.if.end113_crit_edge, %if.end99.if.end113_crit_edge
  br i1 %tobool67.not171, label %if.then115, label %if.end113.cleanup_crit_edge

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then115:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %call116 = call i32 @p9_client_clunk(ptr noundef %fid.1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then115, %if.end113.cleanup_crit_edge, %if.then109, %if.then107.cleanup_crit_edge, %if.then86, %if.then84.cleanup_crit_edge, %if.then72, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %39, %if.then72 ], [ %call2, %entry.cleanup_crit_edge ], [ %call81, %if.then86 ], [ %call81, %if.then84.cleanup_crit_edge ], [ %call104, %if.then109 ], [ %call104, %if.then107.cleanup_crit_edge ], [ 0, %if.then115 ], [ 0, %if.end113.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %p9attr) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_p9_debug(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v9fs_fid_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_setattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_clunk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_acl_chmod(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v9fs_stat2inode_dotl(ptr noundef readonly %stat, ptr noundef %inode, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %stat, align 8
  %and = and i64 %1, 2047
  call void @__sanitizer_cov_trace_const_cmp8(i64 2047, i64 %and)
  %cmp = icmp eq i64 %and, 2047
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %st_atime_sec = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 10
  %2 = ptrtoint ptr %st_atime_sec to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %st_atime_sec, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %4 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %i_atime, align 8
  %st_atime_nsec = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 11
  %5 = ptrtoint ptr %st_atime_nsec to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %st_atime_nsec, align 8
  %conv = trunc i64 %6 to i32
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %7 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %tv_nsec, align 8
  %st_mtime_sec = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 12
  %8 = ptrtoint ptr %st_mtime_sec to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %st_mtime_sec, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %10 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %i_mtime, align 8
  %st_mtime_nsec = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 13
  %11 = ptrtoint ptr %st_mtime_nsec to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %st_mtime_nsec, align 8
  %conv3 = trunc i64 %12 to i32
  %tv_nsec5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %13 = ptrtoint ptr %tv_nsec5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv3, ptr %tv_nsec5, align 8
  %st_ctime_sec = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 14
  %14 = ptrtoint ptr %st_ctime_sec to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %st_ctime_sec, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %16 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %i_ctime, align 8
  %st_ctime_nsec = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 15
  %17 = ptrtoint ptr %st_ctime_nsec to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %st_ctime_nsec, align 8
  %conv7 = trunc i64 %18 to i32
  %tv_nsec9 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %19 = ptrtoint ptr %tv_nsec9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv7, ptr %tv_nsec9, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %st_uid = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 3
  %20 = ptrtoint ptr %st_uid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %st_uid, align 4
  %22 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %st_gid = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 4
  %23 = ptrtoint ptr %st_gid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %st_gid, align 8
  %25 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %i_gid, align 8
  %st_nlink = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 5
  %26 = ptrtoint ptr %st_nlink to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %st_nlink, align 8
  %conv10 = trunc i64 %27 to i32
  tail call void @set_nlink(ptr noundef %inode, i32 noundef %conv10) #10
  %st_mode = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 2
  %28 = ptrtoint ptr %st_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %st_mode, align 8
  %30 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %inode, align 8
  %32 = and i16 %31, -4096
  %33 = trunc i32 %29 to i16
  %34 = and i16 %33, 4095
  %conv16 = or i16 %34, %32
  store i16 %conv16, ptr %inode, align 8
  %and18 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool.not = icmp eq i32 %and18, 0
  br i1 %tobool.not, label %if.then19, label %if.then.if.end107.sink.split_crit_edge

if.then.if.end107.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107.sink.split

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %st_size = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 7
  %35 = ptrtoint ptr %st_size to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %st_size, align 8
  tail call fastcc void @v9fs_i_size_write(ptr noundef %inode, i64 noundef %36)
  br label %if.end107.sink.split

if.else:                                          ; preds = %entry
  %and21 = and i64 %1, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %if.else.if.end31_crit_edge, label %if.then23

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %st_atime_sec24 = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 10
  %37 = ptrtoint ptr %st_atime_sec24 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %st_atime_sec24, align 8
  %i_atime25 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %39 = ptrtoint ptr %i_atime25 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %i_atime25, align 8
  %st_atime_nsec27 = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 11
  %40 = ptrtoint ptr %st_atime_nsec27 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %st_atime_nsec27, align 8
  %conv28 = trunc i64 %41 to i32
  %tv_nsec30 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %42 = ptrtoint ptr %tv_nsec30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv28, ptr %tv_nsec30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %if.else.if.end31_crit_edge
  %43 = ptrtoint ptr %stat to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %stat, align 8
  %and33 = and i64 %44, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33)
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end43_crit_edge, label %if.then35

if.end31.if.end43_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %st_mtime_sec36 = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 12
  %45 = ptrtoint ptr %st_mtime_sec36 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %st_mtime_sec36, align 8
  %i_mtime37 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %47 = ptrtoint ptr %i_mtime37 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %i_mtime37, align 8
  %st_mtime_nsec39 = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 13
  %48 = ptrtoint ptr %st_mtime_nsec39 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %st_mtime_nsec39, align 8
  %conv40 = trunc i64 %49 to i32
  %tv_nsec42 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %50 = ptrtoint ptr %tv_nsec42 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv40, ptr %tv_nsec42, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %if.end31.if.end43_crit_edge
  %51 = ptrtoint ptr %stat to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %stat, align 8
  %and45 = and i64 %52, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and45)
  %tobool46.not = icmp eq i64 %and45, 0
  br i1 %tobool46.not, label %if.end43.if.end55_crit_edge, label %if.then47

if.end43.if.end55_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %st_ctime_sec48 = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 14
  %53 = ptrtoint ptr %st_ctime_sec48 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %st_ctime_sec48, align 8
  %i_ctime49 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %55 = ptrtoint ptr %i_ctime49 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %i_ctime49, align 8
  %st_ctime_nsec51 = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 15
  %56 = ptrtoint ptr %st_ctime_nsec51 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %st_ctime_nsec51, align 8
  %conv52 = trunc i64 %57 to i32
  %tv_nsec54 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %58 = ptrtoint ptr %tv_nsec54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv52, ptr %tv_nsec54, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then47, %if.end43.if.end55_crit_edge
  %59 = ptrtoint ptr %stat to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %stat, align 8
  %and57 = and i64 %60, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and57)
  %tobool58.not = icmp eq i64 %and57, 0
  br i1 %tobool58.not, label %if.end55.if.end62_crit_edge, label %if.then59

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %i_uid60 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %st_uid61 = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 3
  %61 = ptrtoint ptr %st_uid61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %st_uid61, align 4
  %63 = ptrtoint ptr %i_uid60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %i_uid60, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end55.if.end62_crit_edge
  %64 = ptrtoint ptr %stat to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %stat, align 8
  %and64 = and i64 %65, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and64)
  %tobool65.not = icmp eq i64 %and64, 0
  br i1 %tobool65.not, label %if.end62.if.end69_crit_edge, label %if.then66

if.end62.if.end69_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %i_gid67 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %st_gid68 = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 4
  %66 = ptrtoint ptr %st_gid68 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %st_gid68, align 8
  %68 = ptrtoint ptr %i_gid67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %i_gid67, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end62.if.end69_crit_edge
  %69 = ptrtoint ptr %stat to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %stat, align 8
  %and71 = and i64 %70, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and71)
  %tobool72.not = icmp eq i64 %and71, 0
  br i1 %tobool72.not, label %if.end69.if.end76_crit_edge, label %if.then73

if.end69.if.end76_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %st_nlink74 = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 5
  %71 = ptrtoint ptr %st_nlink74 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %st_nlink74, align 8
  %conv75 = trunc i64 %72 to i32
  tail call void @set_nlink(ptr noundef %inode, i32 noundef %conv75) #10
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end69.if.end76_crit_edge
  %73 = ptrtoint ptr %stat to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %stat, align 8
  %and78 = and i64 %74, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and78)
  %tobool79.not = icmp eq i64 %and78, 0
  br i1 %tobool79.not, label %if.end76.if.end91_crit_edge, label %if.then80

if.end76.if.end91_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %st_mode81 = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 2
  %75 = ptrtoint ptr %st_mode81 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %st_mode81, align 8
  %77 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %inode, align 8
  %79 = and i16 %78, -4096
  %80 = trunc i32 %76 to i16
  %81 = and i16 %80, 4095
  %conv89 = or i16 %81, %79
  store i16 %conv89, ptr %inode, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.then80, %if.end76.if.end91_crit_edge
  %and92 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %land.lhs.true, label %if.end91.if.end99_crit_edge

if.end91.if.end99_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

land.lhs.true:                                    ; preds = %if.end91
  %82 = ptrtoint ptr %stat to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %stat, align 8
  %and95 = and i64 %83, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and95)
  %tobool96.not = icmp eq i64 %and95, 0
  br i1 %tobool96.not, label %land.lhs.true.if.end99_crit_edge, label %if.then97

land.lhs.true.if.end99_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then97:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %st_size98 = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 7
  %84 = ptrtoint ptr %st_size98 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %st_size98, align 8
  tail call fastcc void @v9fs_i_size_write(ptr noundef %inode, i64 noundef %85)
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %land.lhs.true.if.end99_crit_edge, %if.end91.if.end99_crit_edge
  %86 = ptrtoint ptr %stat to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %stat, align 8
  %and101 = and i64 %87, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and101)
  %tobool102.not = icmp eq i64 %and101, 0
  br i1 %tobool102.not, label %if.end99.if.end107_crit_edge, label %if.end99.if.end107.sink.split_crit_edge

if.end99.if.end107.sink.split_crit_edge:          ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107.sink.split

if.end99.if.end107_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

if.end107.sink.split:                             ; preds = %if.end99.if.end107.sink.split_crit_edge, %if.then19, %if.then.if.end107.sink.split_crit_edge
  %st_blocks104 = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 9
  %88 = ptrtoint ptr %st_blocks104 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %st_blocks104, align 8
  %i_blocks105 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %90 = ptrtoint ptr %i_blocks105 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %i_blocks105, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.end107.sink.split, %if.end99.if.end107_crit_edge
  %91 = ptrtoint ptr %stat to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %stat, align 8
  %and109 = and i64 %92, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and109)
  %tobool110.not = icmp eq i64 %and109, 0
  br i1 %tobool110.not, label %if.end107.if.end113_crit_edge, label %if.then111

if.end107.if.end113_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  %st_gen = getelementptr inbounds %struct.p9_stat_dotl, ptr %stat, i32 0, i32 18
  %93 = ptrtoint ptr %st_gen to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %st_gen, align 8
  %conv112 = trunc i64 %94 to i32
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %95 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv112, ptr %i_generation, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.end107.if.end113_crit_edge
  %cache_validity = getelementptr i8, ptr %inode, i32 -104
  %96 = ptrtoint ptr %cache_validity to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cache_validity, align 8
  %and114 = and i32 %97, -2
  store i32 %and114, ptr %cache_validity, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @v9fs_i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %entry.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

entry.i_size_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  %18 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i7.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i29.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i9.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %29, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  %30 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !77
  %37 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i12.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %40, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !78

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %entry.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !79
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #10
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #10
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %44) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !80
  %46 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %47, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  %48 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i26.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_refresh_inode_dotl(ptr noundef %fid, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @p9_client_getattr_dotl(ptr noundef %fid, i64 noundef 16383) #10
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.p9_stat_dotl, ptr %call1, i32 0, i32 2
  %5 = ptrtoint ptr %st_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %st_mode, align 8
  %conv = trunc i32 %6 to i16
  %7 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %inode, align 8
  %xor2.i = xor i16 %8, %conv
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i)
  %tobool.i = icmp ugt i16 %xor2.i, 4095
  br i1 %tobool.i, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cache, align 4
  %11 = and i32 %10, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %12 = icmp eq i32 %11, 2
  %13 = zext i1 %12 to i32
  tail call void @v9fs_stat2inode_dotl(ptr noundef %call1, ptr noundef %inode, i32 noundef %13)
  br label %out

out:                                              ; preds = %if.end6, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v9fs_vfs_lookup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v9fs_iop_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vfs_create_dotl(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %omode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v9fs_vfs_mknod_dotl(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %omode, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vfs_link_dotl(ptr noundef %old_dentry, ptr nocapture noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_link_dotl, ptr noundef nonnull @.str.3, i32 noundef %1, ptr noundef %old_dentry, ptr noundef %dentry) #10
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %6 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_parent.i, align 8
  %call.i = tail call ptr @v9fs_fid_lookup(ptr noundef %7) #10
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call.i to i32
  br label %cleanup30

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @v9fs_fid_lookup(ptr noundef %old_dentry) #10
  %cmp.i58 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @p9_client_clunk(ptr noundef %call.i) #10
  %9 = ptrtoint ptr %call4 to i32
  br label %cleanup30

if.end9:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 8
  %call10 = tail call i32 @p9_client_link(ptr noundef %call.i, ptr noundef %call4, ptr noundef %11) #10
  %call11 = tail call i32 @p9_client_clunk(ptr noundef %call.i) #10
  %call12 = tail call i32 @p9_client_clunk(ptr noundef %call4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_link_dotl, ptr noundef nonnull @.str.4, i32 noundef %call10) #10
  br label %cleanup30

if.end14:                                         ; preds = %if.end9
  %cache_validity.i = getelementptr i8, ptr %dir, i32 -104
  %12 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %13, 1
  store i32 %or.i, ptr %cache_validity.i, align 8
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cache, align 4
  %16 = and i32 %15, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %switch = icmp eq i32 %16, 2
  br i1 %switch, label %if.then18, label %if.end14.if.end27_crit_edge

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then18:                                        ; preds = %if.end14
  %call19 = tail call ptr @v9fs_fid_lookup(ptr noundef %old_dentry) #10
  %cmp.i59 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %cleanup.thread, label %if.end23

cleanup.thread:                                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %call19 to i32
  br label %cleanup30

if.end23:                                         ; preds = %if.then18
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %18 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i, align 16
  %call1.i = tail call ptr @p9_client_getattr_dotl(ptr noundef %call19, i64 noundef 16383) #10
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end23.cleanup_crit_edge, label %if.end.i

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end23
  %st_mode.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %call1.i, i32 0, i32 2
  %24 = ptrtoint ptr %st_mode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %st_mode.i, align 8
  %conv.i = trunc i32 %25 to i16
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %19, align 8
  %xor2.i.i = xor i16 %27, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i.i)
  %tobool.i.i = icmp ugt i16 %xor2.i.i, 4095
  br i1 %tobool.i.i, label %if.end.i.out.i_crit_edge, label %if.end6.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %cache.i = getelementptr inbounds %struct.v9fs_session_info, ptr %23, i32 0, i32 4
  %28 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cache.i, align 4
  %30 = and i32 %29, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i32
  tail call void @v9fs_stat2inode_dotl(ptr noundef %call1.i, ptr noundef %19, i32 noundef %32) #10
  br label %out.i

out.i:                                            ; preds = %if.end6.i, %if.end.i.out.i_crit_edge
  tail call void @kfree(ptr noundef %call1.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out.i, %if.end23.cleanup_crit_edge
  %call26 = tail call i32 @p9_client_clunk(ptr noundef %call19) #10
  br label %if.end27

if.end27:                                         ; preds = %cleanup, %if.end14.if.end27_crit_edge
  %d_inode.i60 = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %33 = ptrtoint ptr %d_inode.i60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i60, align 8
  tail call void @ihold(ptr noundef %34) #10
  %35 = ptrtoint ptr %d_inode.i60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_inode.i60, align 8
  tail call void @d_instantiate(ptr noundef %dentry, ptr noundef %36) #10
  br label %cleanup30

cleanup30:                                        ; preds = %if.end27, %cleanup.thread, %if.then13, %if.then6, %if.then
  %retval.1 = phi i32 [ %8, %if.then ], [ %9, %if.then6 ], [ %call10, %if.then13 ], [ %call10, %if.end27 ], [ %17, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_vfs_unlink(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vfs_symlink_dotl(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) #0 align 64 {
entry:
  %name = alloca ptr, align 4
  %qid = alloca %struct.p9_qid, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %qid) #10
  %0 = call ptr @memset(ptr %qid, i32 255, i32 16)
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name1, align 8
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %name, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_symlink_dotl, ptr noundef nonnull @.str.5, i32 noundef %5, ptr noundef %2, ptr noundef %symname) #10
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %10 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_parent.i, align 8
  %call.i = tail call ptr @v9fs_fid_lookup(ptr noundef %11) #10
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call.i to i32
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_symlink_dotl, ptr noundef nonnull @.str.6, i32 noundef %12) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i74 = icmp eq ptr %dir, null
  br i1 %cmp.i74, label %do.body2.i, label %do.end5.i, !prof !65

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/9p/vfs_inode_dotl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 48, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

do.end5.i:                                        ; preds = %if.end
  %13 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dir, align 8
  %15 = and i16 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool6.not.i = icmp eq i16 %15, 0
  br i1 %tobool6.not.i, label %do.end10.i, label %if.then7.i

if.then7.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 3
  br label %v9fs_get_fsgid_for_create.exit

do.end10.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 99
  %20 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cred.i, align 16
  %fsgid.i = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 11
  br label %v9fs_get_fsgid_for_create.exit

v9fs_get_fsgid_for_create.exit:                   ; preds = %do.end10.i, %if.then7.i
  %retval.sroa.0.0.in.i = phi ptr [ %i_gid.i, %if.then7.i ], [ %fsgid.i, %do.end10.i ]
  %22 = ptrtoint ptr %retval.sroa.0.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %retval.sroa.0.0.i = load i32, ptr %retval.sroa.0.0.in.i, align 4
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i, 0
  %call7 = call i32 @p9_client_symlink(ptr noundef %call.i, ptr noundef %24, ptr noundef %symname, [1 x i32] %.fca.0.insert, ptr noundef nonnull %qid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %v9fs_get_fsgid_for_create.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_symlink_dotl, ptr noundef nonnull @.str.7, i32 noundef %call7) #10
  br label %if.end33

if.end9:                                          ; preds = %v9fs_get_fsgid_for_create.exit
  %cache_validity.i = getelementptr i8, ptr %dir, i32 -104
  %25 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %26, 1
  store i32 %or.i, ptr %cache_validity.i, align 8
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %9, i32 0, i32 4
  %27 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cache, align 4
  %29 = and i32 %28, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %switch = icmp eq i32 %29, 2
  br i1 %switch, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end9
  %call14 = call ptr @p9_client_walk(ptr noundef %call.i, i16 noundef zeroext 1, ptr noundef nonnull %name, i32 noundef 1) #10
  %cmp.i75 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %call14 to i32
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_symlink_dotl, ptr noundef nonnull @.str.8, i32 noundef %30) #10
  br label %if.end33

if.end18:                                         ; preds = %if.then13
  %31 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb.i, align 4
  %33 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %9, align 4
  %35 = and i8 %34, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = call ptr @v9fs_inode_from_fid_dotl(ptr undef, ptr noundef %call14, ptr noundef %32, i32 noundef 1) #10
  br label %v9fs_get_new_inode_from_fid.exit

if.else.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = call ptr @v9fs_inode_from_fid(ptr noundef %9, ptr noundef %call14, ptr noundef %32, i32 noundef 1) #10
  br label %v9fs_get_new_inode_from_fid.exit

v9fs_get_new_inode_from_fid.exit:                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %cmp.i76 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %error, label %if.end23

if.end23:                                         ; preds = %v9fs_get_new_inode_from_fid.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @v9fs_fid_add(ptr noundef %dentry, ptr noundef %call14) #10
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %retval.0.i) #10
  br label %if.end33

if.else:                                          ; preds = %if.end9
  %36 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb.i, align 4
  %call25 = call ptr @v9fs_get_inode(ptr noundef %37, i16 noundef zeroext -24576, i32 noundef 0) #10
  %cmp.i77 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %call25 to i32
  br label %if.end33

if.end29:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %call25) #10
  br label %if.end33

error:                                            ; preds = %v9fs_get_new_inode_from_fid.exit
  %39 = ptrtoint ptr %retval.0.i to i32
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_symlink_dotl, ptr noundef nonnull @.str.9, i32 noundef %39) #10
  %tobool.not = icmp eq ptr %call14, null
  br i1 %tobool.not, label %error.if.end33_crit_edge, label %if.then31

error.if.end33_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then31:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = call i32 @p9_client_clunk(ptr noundef nonnull %call14) #10
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %error.if.end33_crit_edge, %if.end29, %if.then27, %if.end23, %if.then16, %if.then8
  %err.081 = phi i32 [ %39, %if.then31 ], [ %39, %error.if.end33_crit_edge ], [ %call7, %if.end29 ], [ %38, %if.then27 ], [ 0, %if.end23 ], [ %30, %if.then16 ], [ %call7, %if.then8 ]
  %call34 = call i32 @p9_client_clunk(ptr noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then
  %retval.0 = phi i32 [ %12, %if.then ], [ %err.081, %if.end33 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %qid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vfs_mkdir_dotl(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %omode) #0 align 64 {
entry:
  %name = alloca ptr, align 4
  %mode = alloca i16, align 2
  %qid = alloca %struct.p9_qid, align 8
  %dacl = alloca ptr, align 4
  %pacl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #10
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !83
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode) #10
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %mode, align 2, !annotation !83
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %qid) #10
  %2 = call ptr @memset(ptr %qid, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dacl) #10
  %3 = ptrtoint ptr %dacl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %dacl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pacl) #10
  %4 = ptrtoint ptr %pacl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pacl, align 4
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_mkdir_dotl, ptr noundef nonnull @.str.10, ptr noundef %dentry) #10
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %9 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dir, align 8
  %11 = and i16 %10, 1024
  %12 = or i16 %11, %omode
  %spec.select = or i16 %12, 16384
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %13 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_parent.i, align 8
  %call.i = tail call ptr @v9fs_fid_lookup(ptr noundef %14) #10
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %call.i to i32
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_mkdir_dotl, ptr noundef nonnull @.str.6, i32 noundef %15) #10
  br label %if.end51

if.end10:                                         ; preds = %entry
  %cmp.i93 = icmp eq ptr %dir, null
  br i1 %cmp.i93, label %do.body2.i, label %do.end5.i, !prof !65

do.body2.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/9p/vfs_inode_dotl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 48, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

do.end5.i:                                        ; preds = %if.end10
  %16 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dir, align 8
  %18 = and i16 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool6.not.i = icmp eq i16 %18, 0
  br i1 %tobool6.not.i, label %do.end10.i, label %if.then7.i

if.then7.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 3
  br label %v9fs_get_fsgid_for_create.exit

do.end10.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 99
  %23 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cred.i, align 16
  %fsgid.i = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 11
  br label %v9fs_get_fsgid_for_create.exit

v9fs_get_fsgid_for_create.exit:                   ; preds = %do.end10.i, %if.then7.i
  %retval.sroa.0.0.in.i = phi ptr [ %i_gid.i, %if.then7.i ], [ %fsgid.i, %do.end10.i ]
  %25 = ptrtoint ptr %retval.sroa.0.0.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %retval.sroa.0.0.i = load i32, ptr %retval.sroa.0.0.in.i, align 4
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %spec.select, ptr %mode, align 2
  %call12 = call i32 @v9fs_acl_mode(ptr noundef nonnull %dir, ptr noundef nonnull %mode, ptr noundef nonnull %dacl, ptr noundef nonnull %pacl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %v9fs_get_fsgid_for_create.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_mkdir_dotl, ptr noundef nonnull @.str.11, i32 noundef %call12) #10
  br label %if.end51

if.end15:                                         ; preds = %v9fs_get_fsgid_for_create.exit
  %name16 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %name16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name16, align 8
  %29 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %name, align 4
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mode, align 2
  %conv17 = zext i16 %31 to i32
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i, 0
  %call19 = call i32 @p9_client_mkdir_dotl(ptr noundef %call.i, ptr noundef %28, i32 noundef %conv17, [1 x i32] %.fca.0.insert, ptr noundef nonnull %qid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.end15.if.end51_crit_edge, label %if.end22

if.end15.if.end51_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.end22:                                         ; preds = %if.end15
  %call23 = call ptr @p9_client_walk(ptr noundef %call.i, i16 noundef zeroext 1, ptr noundef nonnull %name, i32 noundef 1) #10
  %cmp.i94 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %call23 to i32
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_mkdir_dotl, ptr noundef nonnull @.str.8, i32 noundef %32) #10
  br label %if.end51

if.end27:                                         ; preds = %if.end22
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %8, i32 0, i32 4
  %33 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cache, align 4
  %35 = and i32 %34, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %switch = icmp eq i32 %35, 2
  %36 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb.i, align 4
  br i1 %switch, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end27
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %8, align 4
  %40 = and i8 %39, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = call ptr @v9fs_inode_from_fid_dotl(ptr undef, ptr noundef %call23, ptr noundef %37, i32 noundef 1) #10
  br label %v9fs_get_new_inode_from_fid.exit

if.else.i:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = call ptr @v9fs_inode_from_fid(ptr noundef %8, ptr noundef %call23, ptr noundef %37, i32 noundef 1) #10
  br label %v9fs_get_new_inode_from_fid.exit

v9fs_get_new_inode_from_fid.exit:                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %cmp.i95 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.then36, label %if.end38

if.then36:                                        ; preds = %v9fs_get_new_inode_from_fid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %retval.0.i to i32
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_mkdir_dotl, ptr noundef nonnull @.str.9, i32 noundef %41) #10
  br label %error

if.end38:                                         ; preds = %v9fs_get_new_inode_from_fid.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @v9fs_fid_add(ptr noundef %dentry, ptr noundef %call23) #10
  %42 = ptrtoint ptr %dacl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dacl, align 4
  %44 = ptrtoint ptr %pacl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pacl, align 4
  %call39 = call i32 @v9fs_set_create_acl(ptr noundef %retval.0.i, ptr noundef %call23, ptr noundef %43, ptr noundef %45) #10
  br label %if.end47

if.else:                                          ; preds = %if.end27
  %46 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %mode, align 2
  %call41 = call ptr @v9fs_get_inode(ptr noundef %37, i16 noundef zeroext %47, i32 noundef 0) #10
  %cmp.i96 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %call41 to i32
  br label %error

if.end45:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %dacl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dacl, align 4
  %51 = ptrtoint ptr %pacl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pacl, align 4
  %call46 = call i32 @v9fs_set_create_acl(ptr noundef %call41, ptr noundef %call23, ptr noundef %50, ptr noundef %52) #10
  br label %if.end47

if.end47:                                         ; preds = %if.end45, %if.end38
  %call41.sink = phi ptr [ %call41, %if.end45 ], [ %retval.0.i, %if.end38 ]
  %err.0 = phi i32 [ %call19, %if.end45 ], [ 0, %if.end38 ]
  %fid.0 = phi ptr [ %call23, %if.end45 ], [ null, %if.end38 ]
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %call41.sink) #10
  call void @inc_nlink(ptr noundef nonnull %dir) #10
  %cache_validity.i = getelementptr i8, ptr %dir, i32 -104
  %53 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %54, 1
  store i32 %or.i, ptr %cache_validity.i, align 8
  br label %error

error:                                            ; preds = %if.end47, %if.then43, %if.then36
  %err.1 = phi i32 [ %41, %if.then36 ], [ %err.0, %if.end47 ], [ %48, %if.then43 ]
  %fid.1 = phi ptr [ %call23, %if.then36 ], [ %fid.0, %if.end47 ], [ %call23, %if.then43 ]
  %tobool48.not = icmp eq ptr %fid.1, null
  br i1 %tobool48.not, label %error.if.end51_crit_edge, label %if.then49

error.if.end51_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then49:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = call i32 @p9_client_clunk(ptr noundef nonnull %fid.1) #10
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %error.if.end51_crit_edge, %if.then25, %if.end15.if.end51_crit_edge, %if.then14, %if.then8
  %dfid.0102 = phi ptr [ %call.i, %if.then49 ], [ %call.i, %error.if.end51_crit_edge ], [ %call.i, %if.then25 ], [ %call.i, %if.end15.if.end51_crit_edge ], [ %call.i, %if.then14 ], [ null, %if.then8 ]
  %err.1101 = phi i32 [ %err.1, %if.then49 ], [ %err.1, %error.if.end51_crit_edge ], [ %32, %if.then25 ], [ %call19, %if.end15.if.end51_crit_edge ], [ %call12, %if.then14 ], [ %15, %if.then8 ]
  %55 = ptrtoint ptr %dacl to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dacl, align 4
  %57 = ptrtoint ptr %pacl to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pacl, align 4
  call void @v9fs_put_acl(ptr noundef %56, ptr noundef %58) #10
  %call52 = call i32 @p9_client_clunk(ptr noundef %dfid.0102) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pacl) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dacl) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %qid) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #10
  ret i32 %err.1101
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_vfs_rmdir(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vfs_mknod_dotl(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %omode, i32 noundef %rdev) #0 align 64 {
entry:
  %name = alloca ptr, align 4
  %mode = alloca i16, align 2
  %qid = alloca %struct.p9_qid, align 8
  %dacl = alloca ptr, align 4
  %pacl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #10
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !83
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode) #10
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %mode, align 2, !annotation !83
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %qid) #10
  %2 = call ptr @memset(ptr %qid, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dacl) #10
  %3 = ptrtoint ptr %dacl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %dacl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pacl) #10
  %4 = ptrtoint ptr %pacl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pacl, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  %conv = zext i16 %omode to i32
  %shr = lshr i32 %rdev, 20
  %and = and i32 %rdev, 1048575
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_mknod_dotl, ptr noundef nonnull @.str.12, i32 noundef %6, ptr noundef %dentry, i32 noundef %conv, i32 noundef %shr, i32 noundef %and) #10
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %11 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_parent.i, align 8
  %call.i = tail call ptr @v9fs_fid_lookup(ptr noundef %12) #10
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call.i to i32
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_mknod_dotl, ptr noundef nonnull @.str.6, i32 noundef %13) #10
  br label %if.end43

if.end:                                           ; preds = %entry
  %cmp.i86 = icmp eq ptr %dir, null
  br i1 %cmp.i86, label %do.body2.i, label %do.end5.i, !prof !65

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/9p/vfs_inode_dotl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 48, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

do.end5.i:                                        ; preds = %if.end
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dir, align 8
  %16 = and i16 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool6.not.i = icmp eq i16 %16, 0
  br i1 %tobool6.not.i, label %do.end10.i, label %if.then7.i

if.then7.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 3
  br label %v9fs_get_fsgid_for_create.exit

do.end10.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 99
  %21 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cred.i, align 16
  %fsgid.i = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 11
  br label %v9fs_get_fsgid_for_create.exit

v9fs_get_fsgid_for_create.exit:                   ; preds = %do.end10.i, %if.then7.i
  %retval.sroa.0.0.in.i = phi ptr [ %i_gid.i, %if.then7.i ], [ %fsgid.i, %do.end10.i ]
  %23 = ptrtoint ptr %retval.sroa.0.0.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %retval.sroa.0.0.i = load i32, ptr %retval.sroa.0.0.in.i, align 4
  %24 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %omode, ptr %mode, align 2
  %call5 = call i32 @v9fs_acl_mode(ptr noundef nonnull %dir, ptr noundef nonnull %mode, ptr noundef nonnull %dacl, ptr noundef nonnull %pacl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %v9fs_get_fsgid_for_create.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_mknod_dotl, ptr noundef nonnull @.str.13, i32 noundef %call5) #10
  br label %if.end43

if.end7:                                          ; preds = %v9fs_get_fsgid_for_create.exit
  %name8 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name8, align 8
  %27 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %name, align 4
  %28 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mode, align 2
  %conv9 = zext i16 %29 to i32
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i, 0
  %call11 = call i32 @p9_client_mknod_dotl(ptr noundef %call.i, ptr noundef %26, i32 noundef %conv9, i32 noundef %rdev, [1 x i32] %.fca.0.insert, ptr noundef nonnull %qid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end7.if.end43_crit_edge, label %if.end14

if.end7.if.end43_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.end14:                                         ; preds = %if.end7
  %cache_validity.i = getelementptr i8, ptr %dir, i32 -104
  %30 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %31, 1
  store i32 %or.i, ptr %cache_validity.i, align 8
  %call15 = call ptr @p9_client_walk(ptr noundef %call.i, i16 noundef zeroext 1, ptr noundef nonnull %name, i32 noundef 1) #10
  %cmp.i87 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %call15 to i32
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_mknod_dotl, ptr noundef nonnull @.str.8, i32 noundef %32) #10
  br label %if.end43

if.end19:                                         ; preds = %if.end14
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %10, i32 0, i32 4
  %33 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cache, align 4
  %35 = and i32 %34, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %switch = icmp eq i32 %35, 2
  %36 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb.i, align 4
  br i1 %switch, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end19
  %38 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %10, align 4
  %40 = and i8 %39, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = call ptr @v9fs_inode_from_fid_dotl(ptr undef, ptr noundef %call15, ptr noundef %37, i32 noundef 1) #10
  br label %v9fs_get_new_inode_from_fid.exit

if.else.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = call ptr @v9fs_inode_from_fid(ptr noundef %10, ptr noundef %call15, ptr noundef %37, i32 noundef 1) #10
  br label %v9fs_get_new_inode_from_fid.exit

v9fs_get_new_inode_from_fid.exit:                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %cmp.i88 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88, label %if.then28, label %if.end30

if.then28:                                        ; preds = %v9fs_get_new_inode_from_fid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %retval.0.i to i32
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_mknod_dotl, ptr noundef nonnull @.str.9, i32 noundef %41) #10
  br label %error

if.end30:                                         ; preds = %v9fs_get_new_inode_from_fid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %dacl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dacl, align 4
  %44 = ptrtoint ptr %pacl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pacl, align 4
  %call31 = call i32 @v9fs_set_create_acl(ptr noundef %retval.0.i, ptr noundef %call15, ptr noundef %43, ptr noundef %45) #10
  call void @v9fs_fid_add(ptr noundef %dentry, ptr noundef %call15) #10
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %retval.0.i) #10
  br label %if.end43

if.else:                                          ; preds = %if.end19
  %46 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %mode, align 2
  %call33 = call ptr @v9fs_get_inode(ptr noundef %37, i16 noundef zeroext %47, i32 noundef %rdev) #10
  %cmp.i89 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %call33 to i32
  br label %error

if.end37:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %dacl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dacl, align 4
  %51 = ptrtoint ptr %pacl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pacl, align 4
  %call38 = call i32 @v9fs_set_create_acl(ptr noundef %call33, ptr noundef %call15, ptr noundef %50, ptr noundef %52) #10
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %call33) #10
  br label %error

error:                                            ; preds = %if.end37, %if.then35, %if.then28
  %err.0 = phi i32 [ %41, %if.then28 ], [ %48, %if.then35 ], [ %call11, %if.end37 ]
  %tobool40.not = icmp eq ptr %call15, null
  br i1 %tobool40.not, label %error.if.end43_crit_edge, label %if.then41

error.if.end43_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then41:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = call i32 @p9_client_clunk(ptr noundef nonnull %call15) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %error.if.end43_crit_edge, %if.end30, %if.then17, %if.end7.if.end43_crit_edge, %if.then6, %if.then
  %err.095 = phi i32 [ %err.0, %if.then41 ], [ %err.0, %error.if.end43_crit_edge ], [ 0, %if.end30 ], [ %32, %if.then17 ], [ %call11, %if.end7.if.end43_crit_edge ], [ %call5, %if.then6 ], [ %13, %if.then ]
  %dfid.094 = phi ptr [ %call.i, %if.then41 ], [ %call.i, %error.if.end43_crit_edge ], [ %call.i, %if.end30 ], [ %call.i, %if.then17 ], [ %call.i, %if.end7.if.end43_crit_edge ], [ %call.i, %if.then6 ], [ null, %if.then ]
  %53 = ptrtoint ptr %dacl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dacl, align 4
  %55 = ptrtoint ptr %pacl to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pacl, align 4
  call void @v9fs_put_acl(ptr noundef %54, ptr noundef %56) #10
  %call44 = call i32 @p9_client_clunk(ptr noundef %dfid.094) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pacl) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dacl) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %qid) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #10
  ret i32 %err.095
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_vfs_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vfs_getattr_dotl(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_getattr_dotl, ptr noundef nonnull @.str.14, ptr noundef %1) #10
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cache, align 4
  %8 = and i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %switch = icmp eq i32 %8, 2
  br i1 %switch, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %10, ptr noundef %stat) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @v9fs_fid_lookup(ptr noundef %1) #10
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @p9_client_getattr_dotl(ptr noundef %call5, i64 noundef 16383) #10
  %call11 = tail call i32 @p9_client_clunk(ptr noundef %call5) #10
  %cmp.i36 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %d_inode.i37 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %d_inode.i37 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i37, align 8
  tail call void @v9fs_stat2inode_dotl(ptr noundef %call10, ptr noundef %14, i32 noundef 0)
  %15 = ptrtoint ptr %d_inode.i37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i37, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %16, ptr noundef %stat) #10
  %st_blksize = getelementptr inbounds %struct.p9_stat_dotl, ptr %call10, i32 0, i32 8
  %17 = ptrtoint ptr %st_blksize to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %st_blksize, align 8
  %conv = trunc i64 %18 to i32
  %blksize = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %19 = ptrtoint ptr %blksize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %blksize, align 4
  tail call void @kfree(ptr noundef %call10) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %11, %if.then7 ], [ %12, %if.then13 ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vfs_atomic_open_dotl(ptr noundef %dir, ptr noundef %dentry, ptr noundef %file, i32 noundef %flags, i16 noundef zeroext %omode) #0 align 64 {
entry:
  %mode = alloca i16, align 2
  %name = alloca ptr, align 4
  %qid = alloca %struct.p9_qid, align 8
  %pacl = alloca ptr, align 4
  %dacl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode) #10
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %mode, align 2, !annotation !83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %qid) #10
  %1 = call ptr @memset(ptr %qid, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pacl) #10
  %2 = ptrtoint ptr %pacl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pacl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dacl) #10
  %3 = ptrtoint ptr %dacl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %dacl, align 4
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dentry, align 8
  %and.i = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @v9fs_vfs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %tobool5.not = icmp eq ptr %call1, null
  %spec.select = select i1 %tobool5.not, ptr %dentry, ptr %call1
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %dentry.addr.0 = phi ptr [ %dentry, %entry.if.end8_crit_edge ], [ %spec.select, %if.end ]
  %res.0 = phi ptr [ null, %entry.if.end8_crit_edge ], [ %call1, %if.end ]
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.if.then11_crit_edge, label %lor.lhs.false

if.end8.if.then11_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry.addr.0, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i, align 8
  %cmp.i182.not = icmp eq ptr %8, null
  br i1 %cmp.i182.not, label %if.end13, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end8.if.then11_crit_edge
  %call12 = tail call i32 @finish_no_open(ptr noundef %file, ptr noundef %res.0) #10
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %name15 = getelementptr inbounds %struct.dentry, ptr %dentry.addr.0, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %name15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name15, align 8
  %15 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %name, align 4
  %conv = zext i16 %omode to i32
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_atomic_open_dotl, ptr noundef nonnull @.str.15, ptr noundef %14, i32 noundef %flags, i32 noundef %conv) #10
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry.addr.0, i32 0, i32 3
  %16 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_parent.i, align 8
  %call.i = tail call ptr @v9fs_fid_lookup(ptr noundef %17) #10
  %cmp.i183 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %if.then18, label %clone_fid.exit

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %call.i to i32
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_atomic_open_dotl, ptr noundef nonnull @.str.6, i32 noundef %18) #10
  br label %out

clone_fid.exit:                                   ; preds = %if.end13
  %call1.i = tail call ptr @p9_client_walk(ptr noundef %call.i, i16 noundef zeroext 0, ptr noundef null, i32 noundef 1) #10
  %cmp.i184 = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %if.then23, label %if.end25

if.then23:                                        ; preds = %clone_fid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %call1.i to i32
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_atomic_open_dotl, ptr noundef nonnull @.str.8, i32 noundef %19) #10
  br label %out

if.end25:                                         ; preds = %clone_fid.exit
  %cmp.i185 = icmp eq ptr %dir, null
  br i1 %cmp.i185, label %do.body2.i, label %do.end5.i, !prof !65

do.body2.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/9p/vfs_inode_dotl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 48, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

do.end5.i:                                        ; preds = %if.end25
  %20 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dir, align 8
  %22 = and i16 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool6.not.i = icmp eq i16 %22, 0
  br i1 %tobool6.not.i, label %do.end10.i, label %if.then7.i

if.then7.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 3
  br label %v9fs_get_fsgid_for_create.exit

do.end10.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 99
  %27 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cred.i, align 16
  %fsgid.i = getelementptr inbounds %struct.cred, ptr %28, i32 0, i32 11
  br label %v9fs_get_fsgid_for_create.exit

v9fs_get_fsgid_for_create.exit:                   ; preds = %do.end10.i, %if.then7.i
  %retval.sroa.0.0.in.i = phi ptr [ %i_gid.i, %if.then7.i ], [ %fsgid.i, %do.end10.i ]
  %29 = ptrtoint ptr %retval.sroa.0.0.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %retval.sroa.0.0.i = load i32, ptr %retval.sroa.0.0.in.i, align 4
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %omode, ptr %mode, align 2
  %call27 = call i32 @v9fs_acl_mode(ptr noundef nonnull %dir, ptr noundef nonnull %mode, ptr noundef nonnull %dacl, ptr noundef nonnull %pacl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %v9fs_get_fsgid_for_create.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_atomic_open_dotl, ptr noundef nonnull @.str.16, i32 noundef %call27) #10
  br label %err_clunk_old_fid

if.end30:                                         ; preds = %v9fs_get_fsgid_for_create.exit
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 4
  %call31 = call i32 @v9fs_open_to_dotl_flags(i32 noundef %flags)
  %33 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %mode, align 2
  %conv32 = zext i16 %34 to i32
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i, 0
  %call34 = call i32 @p9_client_create_dotl(ptr noundef %call1.i, ptr noundef %32, i32 noundef %call31, i32 noundef %conv32, [1 x i32] %.fca.0.insert, ptr noundef nonnull %qid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_atomic_open_dotl, ptr noundef nonnull @.str.17, i32 noundef %call34) #10
  br label %err_clunk_old_fid

if.end37:                                         ; preds = %if.end30
  %cache_validity.i = getelementptr i8, ptr %dir, i32 -104
  %35 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %36, 1
  store i32 %or.i, ptr %cache_validity.i, align 8
  %call38 = call ptr @p9_client_walk(ptr noundef %call.i, i16 noundef zeroext 1, ptr noundef nonnull %name, i32 noundef 1) #10
  %call39 = call i32 @p9_client_clunk(ptr noundef %call.i) #10
  %cmp.i186 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %call38 to i32
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_atomic_open_dotl, ptr noundef nonnull @.str.8, i32 noundef %37) #10
  br label %err_clunk_old_fid

if.end43:                                         ; preds = %if.end37
  %38 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb.i, align 4
  %call44 = call fastcc ptr @v9fs_get_new_inode_from_fid(ptr noundef %12, ptr noundef %call38, ptr noundef %39)
  %cmp.i187 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i187, label %error, label %if.end48

if.end48:                                         ; preds = %if.end43
  %40 = ptrtoint ptr %dacl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dacl, align 4
  %42 = ptrtoint ptr %pacl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pacl, align 4
  %call49 = call i32 @v9fs_set_create_acl(ptr noundef %call44, ptr noundef %call38, ptr noundef %41, ptr noundef %43) #10
  call void @v9fs_fid_add(ptr noundef %dentry.addr.0, ptr noundef %call38) #10
  call void @d_instantiate(ptr noundef %dentry.addr.0, ptr noundef %call44) #10
  %add.ptr.i = getelementptr i8, ptr %call44, i32 -128
  %v_mutex = getelementptr i8, ptr %call44, i32 -96
  call void @mutex_lock_nested(ptr noundef %v_mutex, i32 noundef 0) #10
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %12, i32 0, i32 4
  %44 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cache, align 4
  %46 = and i32 %45, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %switch = icmp eq i32 %46, 2
  br i1 %switch, label %land.lhs.true, label %if.end48.if.end70_crit_edge

if.end48.if.end70_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

land.lhs.true:                                    ; preds = %if.end48
  %writeback_fid = getelementptr i8, ptr %call44, i32 -100
  %47 = ptrtoint ptr %writeback_fid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %writeback_fid, align 4
  %tobool57.not = icmp ne ptr %48, null
  %and59 = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %cmp60.not = icmp eq i32 %and59, 0
  %or.cond = or i1 %cmp60.not, %tobool57.not
  br i1 %or.cond, label %land.lhs.true.if.end70_crit_edge, label %if.then62

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then62:                                        ; preds = %land.lhs.true
  %call63 = call ptr @v9fs_writeback_fid(ptr noundef %dentry.addr.0) #10
  %cmp.i188 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i188, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %call63 to i32
  call void @mutex_unlock(ptr noundef %v_mutex) #10
  br label %err_clunk_old_fid

if.end68:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %writeback_fid to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call63, ptr %writeback_fid, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end68, %land.lhs.true.if.end70_crit_edge, %if.end48.if.end70_crit_edge
  call void @mutex_unlock(ptr noundef %v_mutex) #10
  %call72 = call i32 @finish_open(ptr noundef %file, ptr noundef %dentry.addr.0, ptr noundef nonnull @generic_file_open) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end70.err_clunk_old_fid_crit_edge

if.end70.err_clunk_old_fid_crit_edge:             ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clunk_old_fid

if.end75:                                         ; preds = %if.end70
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %51 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call1.i, ptr %private_data, align 4
  %52 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cache, align 4
  %54 = and i32 %53, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %switch181 = icmp eq i32 %54, 2
  br i1 %switch181, label %if.then83, label %if.end75.if.end87_crit_edge

if.end75.if.end87_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then83:                                        ; preds = %if.end75
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not.i = icmp eq ptr %56, null
  br i1 %tobool.not.i, label %if.then83.if.end87_crit_edge, label %if.then.i

if.then83.if.end87_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then.i:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %57 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %f_mode, align 8
  %and85 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86 = icmp ne i32 %and85, 0
  call void @__fscache_use_cookie(ptr noundef nonnull %56, i1 noundef zeroext %tobool86) #10
  br label %if.end87

if.end87:                                         ; preds = %if.then.i, %if.then83.if.end87_crit_edge, %if.end75.if.end87_crit_edge
  call void @v9fs_open_fid_add(ptr noundef %call44, ptr noundef %call1.i) #10
  %f_mode88 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %59 = ptrtoint ptr %f_mode88 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %f_mode88, align 8
  %or = or i32 %60, 1048576
  store i32 %or, ptr %f_mode88, align 8
  br label %out

out:                                              ; preds = %if.then94, %err_clunk_old_fid.out_crit_edge, %if.end87, %if.then23, %if.then18
  %err.0 = phi i32 [ %18, %if.then18 ], [ %19, %if.then23 ], [ %err.2, %if.then94 ], [ %err.2, %err_clunk_old_fid.out_crit_edge ], [ 0, %if.end87 ]
  %61 = ptrtoint ptr %dacl to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dacl, align 4
  %63 = ptrtoint ptr %pacl to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pacl, align 4
  call void @v9fs_put_acl(ptr noundef %62, ptr noundef %64) #10
  call void @dput(ptr noundef %res.0) #10
  br label %cleanup

error:                                            ; preds = %if.end43
  %65 = ptrtoint ptr %call44 to i32
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_atomic_open_dotl, ptr noundef nonnull @.str.9, i32 noundef %65) #10
  %tobool89.not = icmp eq ptr %call38, null
  br i1 %tobool89.not, label %error.err_clunk_old_fid_crit_edge, label %if.then90

error.err_clunk_old_fid_crit_edge:                ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clunk_old_fid

if.then90:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  %call91 = call i32 @p9_client_clunk(ptr noundef nonnull %call38) #10
  br label %err_clunk_old_fid

err_clunk_old_fid:                                ; preds = %if.then90, %error.err_clunk_old_fid_crit_edge, %if.end70.err_clunk_old_fid_crit_edge, %if.then65, %if.then41, %if.then36, %if.then29
  %err.2 = phi i32 [ %65, %if.then90 ], [ %65, %error.err_clunk_old_fid_crit_edge ], [ %call72, %if.end70.err_clunk_old_fid_crit_edge ], [ %49, %if.then65 ], [ %37, %if.then41 ], [ %call34, %if.then36 ], [ %call27, %if.then29 ]
  %tobool93.not = icmp eq ptr %call1.i, null
  br i1 %tobool93.not, label %err_clunk_old_fid.out_crit_edge, label %if.then94

err_clunk_old_fid.out_crit_edge:                  ; preds = %err_clunk_old_fid
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then94:                                        ; preds = %err_clunk_old_fid
  call void @__sanitizer_cov_trace_pc() #12
  %call95 = call i32 @p9_client_clunk(ptr noundef nonnull %call1.i) #10
  br label %out

cleanup:                                          ; preds = %out, %if.then11, %if.then3
  %retval.0 = phi i32 [ %6, %if.then3 ], [ %call12, %if.then11 ], [ %err.0, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dacl) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pacl) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %qid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @v9fs_vfs_get_link_dotl(ptr noundef %dentry, ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %done) #0 align 64 {
entry:
  %target = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %target) #10
  %0 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %target, align 4, !annotation !83
  %tobool.not = icmp eq ptr %dentry, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_get_link_dotl, ptr noundef nonnull @.str.18, ptr noundef nonnull %dentry) #10
  %call2 = tail call ptr @v9fs_fid_lookup(ptr noundef nonnull %dentry) #10
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @p9_client_readlink(ptr noundef %call2, ptr noundef nonnull %target) #10
  %call8 = call i32 @p9_client_clunk(ptr noundef %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool9.not = icmp eq i32 %call7, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %1 = inttoptr i32 %call7 to ptr
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %target, align 4
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @kfree_link, ptr %done, align 4
  %arg2.i = getelementptr inbounds %struct.delayed_call, ptr %done, i32 0, i32 1
  %5 = ptrtoint ptr %arg2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %arg2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.then10 ], [ %3, %if.end12 ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %target) #10
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @v9fs_test_new_inode_dotl(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @v9fs_test_inode_dotl(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %st_mode = getelementptr inbounds %struct.p9_stat_dotl, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %st_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %st_mode, align 8
  %conv = trunc i32 %1 to i16
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %xor2.i = xor i16 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i)
  %tobool.i = icmp ugt i16 %xor2.i, 4095
  br i1 %tobool.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %4 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_generation, align 8
  %conv2 = zext i32 %5 to i64
  %st_gen = getelementptr inbounds %struct.p9_stat_dotl, ptr %data, i32 0, i32 18
  %6 = ptrtoint ptr %st_gen to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %st_gen, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv2)
  %cmp.not = icmp eq i64 %7, %conv2
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %version = getelementptr i8, ptr %inode, i32 -116
  %version7 = getelementptr inbounds %struct.p9_stat_dotl, ptr %data, i32 0, i32 1, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %version, ptr noundef dereferenceable(4) %version7, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %qid6 = getelementptr inbounds %struct.p9_stat_dotl, ptr %data, i32 0, i32 1
  %qid = getelementptr i8, ptr %inode, i32 -120
  %8 = ptrtoint ptr %qid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %qid, align 8
  %10 = ptrtoint ptr %qid6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %qid6, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp16.not = icmp eq i8 %9, %11
  br i1 %cmp16.not, label %if.end19, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %path = getelementptr i8, ptr %inode, i32 -112
  %12 = ptrtoint ptr %path to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %path, align 8
  %path22 = getelementptr inbounds %struct.p9_stat_dotl, ptr %data, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %path22 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %path22, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %15)
  %cmp23.not = icmp eq i64 %13, %15
  %. = zext i1 %cmp23.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ %., %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_qid2ino(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @v9fs_set_inode_dotl(ptr nocapture noundef writeonly %inode, ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qid = getelementptr i8, ptr %inode, i32 -120
  %qid1 = getelementptr inbounds %struct.p9_stat_dotl, ptr %data, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %qid, ptr %qid1, i32 16)
  %st_gen = getelementptr inbounds %struct.p9_stat_dotl, ptr %data, i32 0, i32 18
  %1 = ptrtoint ptr %st_gen to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %st_gen, align 8
  %conv = trunc i64 %2 to i32
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %3 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %i_generation, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_init_inode(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_cache_inode_get_cookie(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_get_acl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_symlink(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p9_client_walk(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @v9fs_get_new_inode_from_fid(ptr noundef %v9ses, ptr noundef %fid, ptr noundef %sb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %v9ses to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %v9ses, align 4
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call ptr @v9fs_inode_from_fid_dotl(ptr undef, ptr noundef %fid, ptr noundef %sb, i32 noundef 1)
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call ptr @v9fs_inode_from_fid(ptr noundef %v9ses, ptr noundef %fid, ptr noundef %sb, i32 noundef 1) #10
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi ptr [ %call1, %if.then ], [ %call2, %if.else ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_fid_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v9fs_get_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v9fs_inode_from_fid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_acl_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_mkdir_dotl(ptr noundef, ptr noundef, i32 noundef, [1 x i32], ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_set_create_acl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_put_acl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_mknod_dotl(ptr noundef, ptr noundef, i32 noundef, i32 noundef, [1 x i32], ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @finish_no_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_create_dotl(ptr noundef, ptr noundef, i32 noundef, i32 noundef, [1 x i32], ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v9fs_writeback_fid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @finish_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_open_fid_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_use_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_readlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_link(ptr noundef) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !47, !48, !50, !52, !54}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__func__.v9fs_vfs_setattr_dotl, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/9p/vfs_inode_dotl.c", i32 561, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/9p/vfs_inode_dotl.c", i32 587, i32 3}
!5 = !{ptr @v9fs_dir_inode_operations_dotl, !6, !"v9fs_dir_inode_operations_dotl", i1 false, i1 false}
!6 = !{!"../fs/9p/vfs_inode_dotl.c", i32 991, i32 31}
!7 = !{ptr @v9fs_file_inode_operations_dotl, !8, !"v9fs_file_inode_operations_dotl", i1 false, i1 false}
!8 = !{!"../fs/9p/vfs_inode_dotl.c", i32 1008, i32 31}
!9 = !{ptr @v9fs_symlink_inode_operations_dotl, !10, !"v9fs_symlink_inode_operations_dotl", i1 false, i1 false}
!10 = !{!"../fs/9p/vfs_inode_dotl.c", i32 1015, i32 31}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__func__.v9fs_vfs_link_dotl, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/9p/vfs_inode_dotl.c", i32 793, i32 2}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/9p/vfs_inode_dotl.c", i32 812, i32 3}
!19 = !{ptr @__func__.v9fs_vfs_symlink_dotl, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/9p/vfs_inode_dotl.c", i32 715, i32 2}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/9p/vfs_inode_dotl.c", i32 721, i32 3}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/9p/vfs_inode_dotl.c", i32 731, i32 3}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/9p/vfs_inode_dotl.c", i32 741, i32 4}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/9p/vfs_inode_dotl.c", i32 751, i32 4}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../fs/9p/vfs_inode_dotl.c", i32 54, i32 9}
!32 = !{ptr @__func__.v9fs_vfs_mkdir_dotl, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/9p/vfs_inode_dotl.c", i32 388, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/9p/vfs_inode_dotl.c", i32 409, i32 3}
!37 = !{ptr @__func__.v9fs_vfs_mknod_dotl, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/9p/vfs_inode_dotl.c", i32 857, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/9p/vfs_inode_dotl.c", i32 875, i32 3}
!42 = !{ptr @__func__.v9fs_vfs_getattr_dotl, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/9p/vfs_inode_dotl.c", i32 474, i32 2}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @__func__.v9fs_vfs_atomic_open_dotl, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/9p/vfs_inode_dotl.c", i32 262, i32 2}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/9p/vfs_inode_dotl.c", i32 286, i32 3}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/9p/vfs_inode_dotl.c", i32 293, i32 3}
!52 = !{ptr @__func__.v9fs_vfs_get_link_dotl, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/9p/vfs_inode_dotl.c", i32 950, i32 2}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i64 767650, i64 767711}
!67 = !{i64 770382}
!68 = !{i64 770667}
!69 = !{i64 2152727074}
!70 = !{i64 2152726916}
!71 = !{i64 2152727244}
!72 = !{i64 2149995776}
!73 = !{i64 2152729005}
!74 = !{i64 2149888108}
!75 = !{i64 2149893040}
!76 = !{i64 2149914752}
!77 = !{i64 2149919644}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 2149996101}
!80 = !{i64 2149996426}
!81 = !{i64 2152740867}
!82 = !{i64 2155523296, i64 2155523782, i64 2155523333, i64 2155523389, i64 2155523423, i64 2155523447, i64 2155523488, i64 2155523509, i64 2155523537, i64 2155523571}
!83 = !{!"auto-init"}
