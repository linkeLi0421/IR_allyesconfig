; ModuleID = '/llk/IR_all_yes/fs/9p/vfs_inode.c_pt.bc'
source_filename = "../fs/9p/vfs_inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.p9_wstat = type { i16, i16, i32, %struct.p9_qid, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t }
%struct.p9_qid = type { i8, i32, i64 }
%struct.v9fs_inode = type { ptr, %struct.p9_qid, i32, ptr, %struct.mutex, %struct.inode }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.102, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.103, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.104, ptr, %struct.address_space, %struct.list_head, %union.anon.105, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.102 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.103 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.104 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.105 = type { ptr }
%struct.v9fs_session_info = type { i8, i8, i16, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, ptr, %struct.list_head, %struct.rw_semaphore, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.90 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.100, %struct.list_head, %struct.list_head, %union.anon.101 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.100 = type { %struct.list_head }
%union.anon.101 = type { %struct.hlist_node }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.p9_fid = type { ptr, i32, %struct.refcount_struct, i32, %struct.p9_qid, i32, %struct.kuid_t, ptr, %struct.hlist_node, %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.108, %union.anon.109 }
%union.anon.108 = type { ptr, [12 x i8] }
%union.anon.109 = type { ptr, [4 x i8] }
%struct.delayed_call = type { ptr, ptr }

@v9fs_inode_cache = external dso_local local_unnamed_addr global ptr, align 4
@v9fs_alloc_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&v9inode->v_mutex\00", [46 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@v9fs_addr_operations = external dso_local constant %struct.address_space_operations, align 4
@v9fs_file_inode_operations_dotl = external dso_local constant %struct.inode_operations, align 128
@v9fs_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_vfs_setattr, ptr @v9fs_vfs_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@__func__.v9fs_init_inode = private unnamed_addr constant [16 x i8] c"v9fs_init_inode\00", align 1
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"special files without extended mode\0A\00", [59 x i8] zeroinitializer }, align 32
@v9fs_cached_file_operations_dotl = external dso_local constant %struct.file_operations, align 4
@v9fs_mmap_file_operations_dotl = external dso_local constant %struct.file_operations, align 4
@v9fs_file_operations_dotl = external dso_local constant %struct.file_operations, align 4
@v9fs_cached_file_operations = external dso_local constant %struct.file_operations, align 4
@v9fs_mmap_file_operations = external dso_local constant %struct.file_operations, align 4
@v9fs_file_operations = external dso_local constant %struct.file_operations, align 4
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"extended modes used with legacy protocol\0A\00", [54 x i8] zeroinitializer }, align 32
@v9fs_symlink_inode_operations_dotl = external dso_local constant %struct.inode_operations, align 128
@v9fs_symlink_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @v9fs_vfs_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_vfs_setattr, ptr @v9fs_vfs_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@v9fs_dir_inode_operations_dotl = external dso_local constant %struct.inode_operations, align 128
@v9fs_dir_inode_operations_dotu = internal constant %struct.inode_operations { ptr @v9fs_vfs_lookup, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_vfs_create, ptr @v9fs_vfs_link, ptr @v9fs_vfs_unlink, ptr @v9fs_vfs_symlink, ptr @v9fs_vfs_mkdir, ptr @v9fs_vfs_rmdir, ptr @v9fs_vfs_mknod, ptr @v9fs_vfs_rename, ptr @v9fs_vfs_setattr, ptr @v9fs_vfs_getattr, ptr null, ptr null, ptr null, ptr @v9fs_vfs_atomic_open, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@v9fs_dir_inode_operations = internal constant %struct.inode_operations { ptr @v9fs_vfs_lookup, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_vfs_create, ptr null, ptr @v9fs_vfs_unlink, ptr null, ptr @v9fs_vfs_mkdir, ptr @v9fs_vfs_rmdir, ptr @v9fs_vfs_mknod, ptr @v9fs_vfs_rename, ptr @v9fs_vfs_setattr, ptr @v9fs_vfs_getattr, ptr null, ptr null, ptr null, ptr @v9fs_vfs_atomic_open, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@v9fs_dir_operations_dotl = external dso_local constant %struct.file_operations, align 4
@v9fs_dir_operations = external dso_local constant %struct.file_operations, align 4
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BAD mode 0x%hx S_IFMT 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.v9fs_get_inode = private unnamed_addr constant [15 x i8] c"v9fs_get_inode\00", align 1
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"super block: %p mode: %ho\0A\00", [37 x i8] zeroinitializer }, align 32
@v9fs_get_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.v9fs_get_inode, ptr @.str.6, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\0149p: %s (%d): Problem allocating inode\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/9p/vfs_inode.c\00", [46 x i8] zeroinitializer }, align 32
@v9fs_get_inode._entry_ptr = internal global ptr @v9fs_get_inode._entry, section ".printk_index", align 4
@__func__.v9fs_vfs_lookup = private unnamed_addr constant [16 x i8] c"v9fs_vfs_lookup\00", align 1
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dir: %p dentry: (%pd) %p flags: %x\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.v9fs_vfs_rename = private unnamed_addr constant [16 x i8] c"v9fs_vfs_rename\00", align 1
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"old dir and new dir are different\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" HARDLINKCOUNT %u\00", [46 x i8] zeroinitializer }, align 32
@__func__.v9fs_remove = private unnamed_addr constant [12 x i8] c"v9fs_remove\00", align 1
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"inode: %p dentry: %p rmdir: %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fid lookup failed %d\0A\00", [42 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%c %i %i\00", [23 x i8] zeroinitializer }, align 32
@__func__.p9mode2unixmode = private unnamed_addr constant [16 x i8] c"p9mode2unixmode\00", align 1
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"invalid device string, umode will be bogus: %s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unknown special type %c %s\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.v9fs_create = private unnamed_addr constant [12 x i8] c"v9fs_create\00", align 1
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"name %pd\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"p9_client_walk failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"p9_client_fcreate failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"inode creation failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.v9fs_vfs_link = private unnamed_addr constant [14 x i8] c"v9fs_vfs_link\00", align 1
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" %lu,%pd,%pd\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@__func__.v9fs_vfs_mkspecial = private unnamed_addr constant [19 x i8] c"v9fs_vfs_mkspecial\00", align 1
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"not extended\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.v9fs_vfs_symlink = private unnamed_addr constant [17 x i8] c"v9fs_vfs_symlink\00", align 1
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" %lu,%pd,%s\0A\00", [19 x i8] zeroinitializer }, align 32
@__func__.v9fs_vfs_mkdir = private unnamed_addr constant [15 x i8] c"v9fs_vfs_mkdir\00", align 1
@__func__.v9fs_vfs_mknod = private unnamed_addr constant [15 x i8] c"v9fs_vfs_mknod\00", align 1
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" %lu,%pd mode: %x MAJOR: %u MINOR: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"b %u %u\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"c %u %u\00", [24 x i8] zeroinitializer }, align 32
@__func__.v9fs_vfs_setattr = private unnamed_addr constant [17 x i8] c"v9fs_vfs_setattr\00", align 1
@__func__.v9fs_vfs_getattr = private unnamed_addr constant [17 x i8] c"v9fs_vfs_getattr\00", align 1
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dentry: %p\0A\00", [20 x i8] zeroinitializer }, align 32
@__func__.v9fs_vfs_get_link = private unnamed_addr constant [18 x i8] c"v9fs_vfs_get_link\00", align 1
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pd\0A\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 98, i64 99]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 239, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 275, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 308, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 336, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 359, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 363, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 761, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 942, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 985, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1191, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 550, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 558, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 271, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 133, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 135, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 148, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 612, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 627, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 634, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 656, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1346, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1353, i32 16 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1293, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1322, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1382, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1388, i32 17 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1390, i32 17 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1044, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [21 x i8] c"../fs/9p/vfs_inode.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1247, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @v9fs_get_inode._entry, ptr @v9fs_get_inode._entry_ptr, ptr @v9fs_alloc_inode.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_alloc_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_get_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @v9fs_uflags2omode(i32 noundef %uflags, i32 noundef %extended) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %uflags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %switch.selectcmp = icmp eq i32 %and, 1
  %switch.select = zext i1 %switch.selectcmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %switch.selectcmp16 = icmp eq i32 %and, 2
  %switch.select17 = select i1 %switch.selectcmp16, i32 2, i32 %switch.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extended)
  %tobool.not = icmp eq i32 %extended, 0
  %and3 = shl i32 %uflags, 5
  %0 = and i32 %and3, 4096
  %and6 = lshr i32 %uflags, 3
  %1 = and i32 %and6, 128
  %2 = or i32 %1, %0
  %3 = select i1 %tobool.not, i32 0, i32 %2
  %ret.2 = or i32 %switch.select17, %3
  ret i32 %ret.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @v9fs_blank_wstat(ptr nocapture noundef writeonly %wstat) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %type, align 2
  %dev = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 2
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dev, align 4
  %qid = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 3
  %2 = ptrtoint ptr %qid to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %qid, align 8
  %version = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 3, i32 1
  %length = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 7
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %length, align 8
  %name = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 8
  %4 = call ptr @memset(ptr %version, i32 255, i32 24)
  %n_uid = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 13
  %5 = call ptr @memset(ptr %name, i32 0, i32 16)
  %6 = ptrtoint ptr %n_uid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %n_uid, align 4
  %n_gid = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 14
  %7 = ptrtoint ptr %n_gid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %n_gid, align 8
  %n_muid = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 15
  %8 = ptrtoint ptr %n_muid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %n_muid, align 4
  %extension = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 12
  %9 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %extension, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v9fs_alloc_inode(ptr nocapture noundef readnone %sb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v9fs_inode_cache to i32))
  %0 = load ptr, ptr @v9fs_inode_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %call, align 8
  %writeback_fid = getelementptr inbounds %struct.v9fs_inode, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %writeback_fid to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %writeback_fid, align 4
  %cache_validity = getelementptr inbounds %struct.v9fs_inode, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %cache_validity to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cache_validity, align 8
  %v_mutex = getelementptr inbounds %struct.v9fs_inode, ptr %call, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %v_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @v9fs_alloc_inode.__key) #15
  %vfs_inode = getelementptr inbounds %struct.v9fs_inode, ptr %call, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v9fs_free_inode(ptr noundef %inode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v9fs_inode_cache to i32))
  %0 = load ptr, ptr @v9fs_inode_cache, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -128
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_init_inode(ptr nocapture noundef readonly %v9ses, ptr noundef %inode, i16 noundef zeroext %mode, i32 noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef %inode, ptr noundef null, i16 noundef zeroext %mode) #15
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %0 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %i_blocks, align 8
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %1 = ptrtoint ptr %i_rdev to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %rdev, ptr %i_rdev, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #15
  %2 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  %3 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %4 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %5 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @v9fs_addr_operations, ptr %a_ops, align 4
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %8 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %i_private, align 4
  %conv = zext i16 %mode to i32
  %and = and i32 %conv, 61440
  %9 = add nsw i32 %and, -4096
  %10 = lshr exact i32 %9, 12
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %sw.default [
    i32 0, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge136
    i32 1, label %entry.sw.bb_crit_edge137
    i32 11, label %entry.sw.bb_crit_edge138
    i32 7, label %sw.bb8
    i32 9, label %sw.bb45
    i32 3, label %sw.bb59
  ]

entry.sw.bb_crit_edge138:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge137:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge136:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge136, %entry.sw.bb_crit_edge137, %entry.sw.bb_crit_edge138
  %12 = ptrtoint ptr %v9ses to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %v9ses, align 4
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.else, label %sw.bb.if.end6_crit_edge

sw.bb.if.end6_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.else:                                          ; preds = %sw.bb
  %15 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not = icmp eq i8 %15, 0
  br i1 %tobool2.not, label %if.else5, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_init_inode, ptr noundef nonnull @.str.1) #15
  br label %error

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %sw.bb.if.end6_crit_edge
  %v9fs_file_inode_operations.sink = phi ptr [ @v9fs_file_inode_operations_dotl, %sw.bb.if.end6_crit_edge ], [ @v9fs_file_inode_operations, %if.else.if.end6_crit_edge ]
  %i_op4 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %16 = ptrtoint ptr %i_op4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %v9fs_file_inode_operations.sink, ptr %i_op4, align 8
  %17 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %inode, align 8
  %19 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_rdev, align 8
  call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %18, i32 noundef %20) #15
  br label %error

sw.bb8:                                           ; preds = %entry
  %21 = ptrtoint ptr %v9ses to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %v9ses, align 4
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool10.not = icmp eq i8 %23, 0
  %i_op27 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  br i1 %tobool10.not, label %if.else26, label %if.then11

if.then11:                                        ; preds = %sw.bb8
  %24 = ptrtoint ptr %i_op27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @v9fs_file_inode_operations_dotl, ptr %i_op27, align 8
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 4
  %25 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cache, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %26, label %if.else23 [
    i32 2, label %if.then11.if.then17_crit_edge
    i32 3, label %if.then11.if.then17_crit_edge139
    i32 1, label %if.then22
  ]

if.then11.if.then17_crit_edge139:                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then17

if.then11.if.then17_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then17

if.then17:                                        ; preds = %if.then11.if.then17_crit_edge, %if.then11.if.then17_crit_edge139
  %28 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @v9fs_cached_file_operations_dotl, ptr %28, align 8
  br label %error

if.then22:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  %30 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @v9fs_mmap_file_operations_dotl, ptr %30, align 8
  br label %error

if.else23:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  %32 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @v9fs_file_operations_dotl, ptr %32, align 8
  br label %error

if.else26:                                        ; preds = %sw.bb8
  %34 = ptrtoint ptr %i_op27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @v9fs_file_inode_operations, ptr %i_op27, align 8
  %cache28 = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 4
  %35 = ptrtoint ptr %cache28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cache28, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %36, label %if.else41 [
    i32 2, label %if.else26.if.then35_crit_edge
    i32 3, label %if.else26.if.then35_crit_edge140
    i32 1, label %if.then40
  ]

if.else26.if.then35_crit_edge140:                 ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then35

if.else26.if.then35_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then35

if.then35:                                        ; preds = %if.else26.if.then35_crit_edge, %if.else26.if.then35_crit_edge140
  %38 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @v9fs_cached_file_operations, ptr %38, align 8
  br label %error

if.then40:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #17
  %40 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @v9fs_mmap_file_operations, ptr %40, align 8
  br label %error

if.else41:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #17
  %42 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @v9fs_file_operations, ptr %42, align 8
  br label %error

sw.bb45:                                          ; preds = %entry
  %44 = ptrtoint ptr %v9ses to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %v9ses, align 4
  %46 = and i8 %45, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %if.then50, label %if.end51

if.then50:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #17
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_init_inode, ptr noundef nonnull @.str.2) #15
  br label %error

if.end51:                                         ; preds = %sw.bb45
  %48 = and i8 %45, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool53.not = icmp eq i8 %48, 0
  %i_op57 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  br i1 %tobool53.not, label %if.else56, label %if.then54

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %i_op57 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @v9fs_symlink_inode_operations_dotl, ptr %i_op57, align 8
  br label %error

if.else56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %i_op57 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @v9fs_symlink_inode_operations, ptr %i_op57, align 8
  br label %error

sw.bb59:                                          ; preds = %entry
  call void @inc_nlink(ptr noundef %inode) #15
  %51 = ptrtoint ptr %v9ses to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %v9ses, align 4
  %53 = and i8 %52, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool61.not = icmp eq i8 %53, 0
  br i1 %tobool61.not, label %if.else64, label %if.then62

if.then62:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #17
  %i_op63 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %54 = ptrtoint ptr %i_op63 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @v9fs_dir_inode_operations_dotl, ptr %i_op63, align 8
  br label %if.end72

if.else64:                                        ; preds = %sw.bb59
  %55 = and i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool66.not = icmp eq i8 %55, 0
  %i_op70 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  br i1 %tobool66.not, label %if.else69, label %if.then67

if.then67:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %i_op70 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @v9fs_dir_inode_operations_dotu, ptr %i_op70, align 8
  br label %if.end72

if.else69:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #17
  %57 = ptrtoint ptr %i_op70 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @v9fs_dir_inode_operations, ptr %i_op70, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.else69, %if.then67, %if.then62
  %58 = ptrtoint ptr %v9ses to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %v9ses, align 4
  %60 = and i8 %59, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool74.not = icmp eq i8 %60, 0
  %61 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  br i1 %tobool74.not, label %if.else76, label %if.then75

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @v9fs_dir_operations_dotl, ptr %61, align 8
  br label %error

if.else76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @v9fs_dir_operations, ptr %61, align 8
  br label %error

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_init_inode, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %and) #15
  br label %error

error:                                            ; preds = %sw.default, %if.else76, %if.then75, %if.else56, %if.then54, %if.then50, %if.else41, %if.then40, %if.then35, %if.else23, %if.then22, %if.then17, %if.end6, %if.else5
  %err.0 = phi i32 [ -22, %sw.default ], [ 0, %if.then75 ], [ 0, %if.else76 ], [ 0, %if.then54 ], [ 0, %if.else56 ], [ -22, %if.then50 ], [ 0, %if.then17 ], [ 0, %if.then22 ], [ 0, %if.else23 ], [ 0, %if.then35 ], [ 0, %if.then40 ], [ 0, %if.else41 ], [ 0, %if.end6 ], [ -22, %if.else5 ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_p9_debug(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v9fs_get_inode(ptr noundef %sb, i16 noundef zeroext %mode, i32 noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %conv = zext i16 %mode to i32
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_get_inode, ptr noundef nonnull @.str.4, ptr noundef %sb, i32 noundef %conv) #15
  %call = tail call ptr @new_inode(ptr noundef %sb) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = tail call i32 @llvm.read_register.i32(metadata !88) #15
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid.i, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.v9fs_get_inode, i32 noundef %7) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @v9fs_init_inode(ptr noundef %1, ptr noundef nonnull %call, i16 noundef zeroext %mode, i32 noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %call) #15
  %8 = inttoptr i32 %call5 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %8, %if.then7 ], [ inttoptr (i32 -12 to ptr), %do.end ], [ %call, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v9fs_evict_inode(ptr noundef %inode) local_unnamed_addr #3 align 64 {
entry:
  %i_size.i = alloca i64, align 8
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #15
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #15
  %version1 = getelementptr i8, ptr %inode, i32 -116
  %0 = ptrtoint ptr %version1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version1, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %version, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %i_state.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %6 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_state.i, align 8
  %and.i = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.fscache_clear_inode_writeback.exit_crit_edge, label %if.then.i

entry.fscache_clear_inode_writeback.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %fscache_clear_inode_writeback.exit

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i_size.i) #15
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %inode) #15
  %8 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i, ptr %i_size.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.i.fscache_unuse_cookie.exit.i_crit_edge, label %if.then.i.i

if.then.i.fscache_unuse_cookie.exit.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fscache_unuse_cookie.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__fscache_unuse_cookie(ptr noundef nonnull %5, ptr noundef nonnull %version, ptr noundef nonnull %i_size.i) #15
  br label %fscache_unuse_cookie.exit.i

fscache_unuse_cookie.exit.i:                      ; preds = %if.then.i.i, %if.then.i.fscache_unuse_cookie.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_size.i) #15
  br label %fscache_clear_inode_writeback.exit

fscache_clear_inode_writeback.exit:               ; preds = %fscache_unuse_cookie.exit.i, %entry.fscache_clear_inode_writeback.exit_crit_edge
  call void @clear_inode(ptr noundef %inode) #15
  %call4 = call i32 @filemap_fdatawrite(ptr noundef %i_data) #15
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not.i18 = icmp eq ptr %10, null
  br i1 %tobool.not.i18, label %fscache_clear_inode_writeback.exit.fscache_relinquish_cookie.exit_crit_edge, label %if.then.i19

fscache_clear_inode_writeback.exit.fscache_relinquish_cookie.exit_crit_edge: ; preds = %fscache_clear_inode_writeback.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %fscache_relinquish_cookie.exit

if.then.i19:                                      ; preds = %fscache_clear_inode_writeback.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @__fscache_relinquish_cookie(ptr noundef nonnull %10, i1 noundef zeroext false) #15
  br label %fscache_relinquish_cookie.exit

fscache_relinquish_cookie.exit:                   ; preds = %if.then.i19, %fscache_clear_inode_writeback.exit.fscache_relinquish_cookie.exit_crit_edge
  %writeback_fid = getelementptr i8, ptr %inode, i32 -100
  %11 = ptrtoint ptr %writeback_fid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %writeback_fid, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %fscache_relinquish_cookie.exit.if.end_crit_edge, label %if.then

fscache_relinquish_cookie.exit.if.end_crit_edge:  ; preds = %fscache_relinquish_cookie.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %fscache_relinquish_cookie.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = call i32 @p9_client_clunk(ptr noundef nonnull %12) #15
  %13 = ptrtoint ptr %writeback_fid to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %writeback_fid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %fscache_relinquish_cookie.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_clunk(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v9fs_inode_from_fid(ptr nocapture readnone %v9ses, ptr noundef %fid, ptr noundef %sb, i32 noundef %new) local_unnamed_addr #3 align 64 {
entry:
  %rdev.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @p9_client_stat(ptr noundef %fid) #15
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdev.i) #15
  %0 = ptrtoint ptr %rdev.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rdev.i, align 4, !annotation !98
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new)
  %tobool.not.i = icmp eq i32 %new, 0
  %v9fs_test_inode.v9fs_test_new_inode.i = select i1 %tobool.not.i, ptr @v9fs_test_inode, ptr @v9fs_test_new_inode
  %path1.i.i = getelementptr inbounds %struct.p9_wstat, ptr %call, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %path1.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %path1.i.i, align 8
  %add.i.i = add i64 %4, 2
  %shr.i.i = lshr i64 %add.i.i, 32
  %xor.i.i = xor i64 %shr.i.i, %add.i.i
  %conv.i.i = trunc i64 %xor.i.i to i32
  %call2.i = tail call ptr @iget5_locked(ptr noundef %sb, i32 noundef %conv.i.i, ptr noundef nonnull %v9fs_test_inode.v9fs_test_new_inode.i, ptr noundef nonnull @v9fs_set_inode, ptr noundef %call) #15
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.v9fs_qid_iget.exit_crit_edge, label %if.end6.i

if.end.v9fs_qid_iget.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %v9fs_qid_iget.exit

if.end6.i:                                        ; preds = %if.end
  %i_state.i = getelementptr inbounds %struct.inode, ptr %call2.i, i32 0, i32 24
  %5 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_state.i, align 8
  %and.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end6.i.v9fs_qid_iget.exit_crit_edge, label %if.end9.i

if.end6.i.v9fs_qid_iget.exit_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v9fs_qid_iget.exit

if.end9.i:                                        ; preds = %if.end6.i
  %i_ino10.i = getelementptr inbounds %struct.inode, ptr %call2.i, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino10.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.i.i, ptr %i_ino10.i, align 8
  %call11.i = call fastcc zeroext i16 @p9mode2unixmode(ptr noundef %2, ptr noundef %call, ptr noundef nonnull %rdev.i) #15
  %8 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rdev.i, align 4
  %call12.i = tail call i32 @v9fs_init_inode(ptr noundef %2, ptr noundef nonnull %call2.i, i16 noundef zeroext %call11.i, i32 noundef %9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %error.i

if.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @v9fs_stat2inode(ptr noundef %call, ptr noundef nonnull %call2.i, ptr noundef %sb, i32 noundef 0) #15
  tail call void @v9fs_cache_inode_get_cookie(ptr noundef nonnull %call2.i) #15
  tail call void @unlock_new_inode(ptr noundef nonnull %call2.i) #15
  br label %v9fs_qid_iget.exit

error.i:                                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iget_failed(ptr noundef nonnull %call2.i) #15
  %10 = inttoptr i32 %call12.i to ptr
  br label %v9fs_qid_iget.exit

v9fs_qid_iget.exit:                               ; preds = %error.i, %if.end15.i, %if.end6.i.v9fs_qid_iget.exit_crit_edge, %if.end.v9fs_qid_iget.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %error.i ], [ %call2.i, %if.end15.i ], [ %call2.i, %if.end6.i.v9fs_qid_iget.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.v9fs_qid_iget.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdev.i) #15
  tail call void @p9stat_free(ptr noundef %call) #15
  tail call void @kfree(ptr noundef %call) #15
  br label %cleanup

cleanup:                                          ; preds = %v9fs_qid_iget.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %v9fs_qid_iget.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p9_client_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @p9stat_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v9fs_vfs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #3 align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #15
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_lookup, ptr noundef nonnull @.str.7, ptr noundef %dir, ptr noundef %dentry, ptr noundef %dentry, i32 noundef %flags) #15
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %0 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp = icmp ugt i32 %1, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
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
  %call.i = tail call ptr @v9fs_fid_lookup(ptr noundef %7) #15
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %name8 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name8, align 8
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %name, align 4
  %call9 = call ptr @p9_client_walk(ptr noundef %call.i, i16 noundef zeroext 1, ptr noundef nonnull %name, i32 noundef 1) #15
  %call10 = call i32 @p9_client_clunk(ptr noundef %call.i) #15
  %cmp12 = icmp eq ptr %call9, inttoptr (i32 -2 to ptr)
  br i1 %cmp12, label %if.end28.thread, label %if.else

if.end28.thread:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %call2982 = call ptr @d_splice_alias(ptr noundef null, ptr noundef %dentry) #15
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %cmp.i72 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %if.end28, label %if.else17

if.else17:                                        ; preds = %if.else
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cache, align 4
  %13 = and i32 %12, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %switch = icmp eq i32 %13, 2
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %5, align 4
  %18 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %switch, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.else17
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = call ptr @v9fs_inode_from_fid_dotl(ptr noundef %5, ptr noundef %call9, ptr noundef %15, i32 noundef 0) #15
  br label %if.then31

if.else.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i = call ptr @v9fs_inode_from_fid(ptr undef, ptr noundef %call9, ptr noundef %15, i32 noundef 0) #15
  br label %if.then31

if.else23:                                        ; preds = %if.else17
  br i1 %tobool.not.i, label %if.else.i77, label %if.then.i75

if.then.i75:                                      ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i74 = call ptr @v9fs_inode_from_fid_dotl(ptr noundef %5, ptr noundef %call9, ptr noundef %15, i32 noundef 1) #15
  br label %if.then31

if.else.i77:                                      ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i76 = call ptr @v9fs_inode_from_fid(ptr undef, ptr noundef %call9, ptr noundef %15, i32 noundef 1) #15
  br label %if.then31

if.end28:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %call29 = call ptr @d_splice_alias(ptr noundef nonnull %call9, ptr noundef %dentry) #15
  br label %cleanup

if.then31:                                        ; preds = %if.else.i77, %if.then.i75, %if.else.i, %if.then.i
  %inode.0.ph = phi ptr [ %call2.i76, %if.else.i77 ], [ %call1.i74, %if.then.i75 ], [ %call2.i, %if.else.i ], [ %call1.i, %if.then.i ]
  %call2986 = call ptr @d_splice_alias(ptr noundef %inode.0.ph, ptr noundef %dentry) #15
  %tobool.not = icmp eq ptr %call2986, null
  br i1 %tobool.not, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  call void @v9fs_fid_add(ptr noundef %dentry, ptr noundef %call9) #15
  br label %cleanup

if.else33:                                        ; preds = %if.then31
  %cmp.i80 = icmp ugt ptr %call2986, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %if.else36, label %if.then35

if.then35:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #17
  call void @v9fs_fid_add(ptr noundef nonnull %call2986, ptr noundef %call9) #15
  br label %cleanup

if.else36:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #17
  %call37 = call i32 @p9_client_clunk(ptr noundef %call9) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else36, %if.then35, %if.then32, %if.end28, %if.end28.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then32 ], [ %call2986, %if.else36 ], [ %call2986, %if.then35 ], [ %call29, %if.end28 ], [ inttoptr (i32 -36 to ptr), %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call2982, %if.end28.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #15
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p9_client_walk(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_fid_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_vfs_unlink(ptr noundef %i, ptr noundef %d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @v9fs_remove(ptr noundef %i, ptr noundef %d, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @v9fs_remove(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_remove, ptr noundef nonnull @.str.11, ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #15
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %6 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_parent.i, align 8
  %call.i = tail call ptr @v9fs_fid_lookup(ptr noundef %7) #15
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %call.i to i32
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_remove, ptr noundef nonnull @.str.12, i32 noundef %8) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 4
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end10.thread, label %if.end10

if.end10.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call1165 = tail call i32 @p9_client_clunk(ptr noundef %call.i) #15
  br label %if.then12

if.end10:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 8
  %and.i52 = and i32 %flags, 512
  %call9 = tail call i32 @p9_client_unlinkat(ptr noundef %call.i, ptr noundef %13, i32 noundef %and.i52) #15
  %call11 = tail call i32 @p9_client_clunk(ptr noundef %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call9)
  %cmp = icmp eq i32 %call9, -95
  br i1 %cmp, label %if.end10.if.then12_crit_edge, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.end10.thread
  %call.i53 = tail call ptr @v9fs_fid_lookup(ptr noundef %dentry) #15
  %tobool.not.i = icmp eq ptr %call.i53, null
  br i1 %tobool.not.i, label %if.then12.if.end17_crit_edge, label %lor.lhs.false.i

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

lor.lhs.false.i:                                  ; preds = %if.then12
  %cmp.i.i = icmp ugt ptr %call.i53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %lor.lhs.false.i.v9fs_fid_clone.exit_crit_edge, label %clone_fid.exit.i

lor.lhs.false.i.v9fs_fid_clone.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v9fs_fid_clone.exit

clone_fid.exit.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i.i = tail call ptr @p9_client_walk(ptr noundef nonnull %call.i53, i16 noundef zeroext 0, ptr noundef null, i32 noundef 1) #15
  %call3.i = tail call i32 @p9_client_clunk(ptr noundef nonnull %call.i53) #15
  br label %v9fs_fid_clone.exit

v9fs_fid_clone.exit:                              ; preds = %clone_fid.exit.i, %lor.lhs.false.i.v9fs_fid_clone.exit_crit_edge
  %retval.0.i = phi ptr [ %call1.i.i, %clone_fid.exit.i ], [ %call.i53, %lor.lhs.false.i.v9fs_fid_clone.exit_crit_edge ]
  %cmp.i54 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %if.then15, label %v9fs_fid_clone.exit.if.end17_crit_edge

v9fs_fid_clone.exit.if.end17_crit_edge:           ; preds = %v9fs_fid_clone.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then15:                                        ; preds = %v9fs_fid_clone.exit
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end17:                                         ; preds = %v9fs_fid_clone.exit.if.end17_crit_edge, %if.then12.if.end17_crit_edge
  %retval.0.i69 = phi ptr [ %retval.0.i, %v9fs_fid_clone.exit.if.end17_crit_edge ], [ null, %if.then12.if.end17_crit_edge ]
  %call18 = tail call i32 @p9_client_remove(ptr noundef %retval.0.i69) #15
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.end10.if.end19_crit_edge
  %retval1.1 = phi i32 [ %call18, %if.end17 ], [ %call9, %if.end10.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.1)
  %tobool20.not = icmp eq i32 %retval1.1, 0
  br i1 %tobool20.not, label %if.then21, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  %and = and i32 %flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then21
  tail call void @clear_nlink(ptr noundef %5) #15
  %15 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %dir, align 8
  %17 = and i16 %16, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %17)
  %cmp.i55 = icmp eq i16 %17, 16384
  br i1 %cmp.i55, label %lor.lhs.false.i56, label %if.then23.if.end24.sink.split_crit_edge

if.then23.if.end24.sink.split_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.sink.split

lor.lhs.false.i56:                                ; preds = %if.then23
  %18 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp2.i = icmp ugt i32 %20, 2
  br i1 %cmp2.i, label %lor.lhs.false.i56.if.end24.sink.split_crit_edge, label %lor.lhs.false.i56.if.end24_crit_edge

lor.lhs.false.i56.if.end24_crit_edge:             ; preds = %lor.lhs.false.i56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

lor.lhs.false.i56.if.end24.sink.split_crit_edge:  ; preds = %lor.lhs.false.i56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.sink.split

if.else:                                          ; preds = %if.then21
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %5, align 8
  %23 = and i16 %22, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %23)
  %cmp.i57 = icmp eq i16 %23, 16384
  br i1 %cmp.i57, label %lor.lhs.false.i59, label %if.else.if.end24.sink.split_crit_edge

if.else.if.end24.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.sink.split

lor.lhs.false.i59:                                ; preds = %if.else
  %24 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 12
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp2.i58 = icmp ugt i32 %26, 2
  br i1 %cmp2.i58, label %lor.lhs.false.i59.if.end24.sink.split_crit_edge, label %lor.lhs.false.i59.if.end24_crit_edge

lor.lhs.false.i59.if.end24_crit_edge:             ; preds = %lor.lhs.false.i59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

lor.lhs.false.i59.if.end24.sink.split_crit_edge:  ; preds = %lor.lhs.false.i59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %lor.lhs.false.i59.if.end24.sink.split_crit_edge, %if.else.if.end24.sink.split_crit_edge, %lor.lhs.false.i56.if.end24.sink.split_crit_edge, %if.then23.if.end24.sink.split_crit_edge
  %.sink = phi ptr [ %dir, %lor.lhs.false.i56.if.end24.sink.split_crit_edge ], [ %dir, %if.then23.if.end24.sink.split_crit_edge ], [ %5, %lor.lhs.false.i59.if.end24.sink.split_crit_edge ], [ %5, %if.else.if.end24.sink.split_crit_edge ]
  tail call void @drop_nlink(ptr noundef %.sink) #15
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %lor.lhs.false.i59.if.end24_crit_edge, %lor.lhs.false.i56.if.end24_crit_edge
  %cache_validity.i = getelementptr i8, ptr %5, i32 -104
  %27 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %28, 1
  store i32 %or.i, ptr %cache_validity.i, align 8
  %cache_validity.i62 = getelementptr i8, ptr %dir, i32 -104
  %29 = ptrtoint ptr %cache_validity.i62 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cache_validity.i62, align 8
  %or.i63 = or i32 %30, 1
  store i32 %or.i63, ptr %cache_validity.i62, align 8
  %d_op = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 8
  %31 = ptrtoint ptr %d_op to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_op, align 8
  %d_release = getelementptr inbounds %struct.dentry_operations, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %d_release to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_release, align 8
  tail call void %34(ptr noundef %dentry) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end19.cleanup_crit_edge, %if.then15, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ %14, %if.then15 ], [ 0, %if.end24 ], [ %retval1.1, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_vfs_rmdir(ptr noundef %i, ptr noundef %d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @v9fs_remove(ptr noundef %i, ptr noundef %d, i32 noundef 512)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_vfs_rename(ptr nocapture readnone %mnt_userns, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #3 align 64 {
entry:
  %wstat = alloca %struct.p9_wstat, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %wstat) #15
  %0 = call ptr @memset(ptr %wstat, i32 255, i32 80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_rename, ptr noundef nonnull @.str.8) #15
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i123 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i123 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i123, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %call4 = tail call ptr @v9fs_fid_lookup(ptr noundef %old_dentry) #15
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 3
  %10 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_parent.i, align 8
  %call.i = tail call ptr @v9fs_fid_lookup(ptr noundef %11) #15
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end8.if.end15_crit_edge, label %clone_fid.exit.thread

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

clone_fid.exit.thread:                            ; preds = %if.end8
  %call1.i = tail call ptr @p9_client_walk(ptr noundef %call.i, i16 noundef zeroext 0, ptr noundef null, i32 noundef 1) #15
  %tobool11.not145 = icmp eq ptr %call.i, null
  br i1 %tobool11.not145, label %clone_fid.exit.thread.if.end15_crit_edge, label %if.then13

clone_fid.exit.thread.if.end15_crit_edge:         ; preds = %clone_fid.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then13:                                        ; preds = %clone_fid.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call i32 @p9_client_clunk(ptr noundef nonnull %call.i) #15
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %clone_fid.exit.thread.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %cond.i147 = phi ptr [ %call1.i, %clone_fid.exit.thread.if.end15_crit_edge ], [ %call1.i, %if.then13 ], [ %call.i, %if.end8.if.end15_crit_edge ]
  %cmp.i125 = icmp ugt ptr %cond.i147, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %cond.i147 to i32
  br label %done

if.end19:                                         ; preds = %if.end15
  %d_parent.i126 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 3
  %13 = ptrtoint ptr %d_parent.i126 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_parent.i126, align 8
  %call.i127 = tail call ptr @v9fs_fid_lookup(ptr noundef %14) #15
  %cmp.i.i128 = icmp ugt ptr %call.i127, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i128, label %if.end19.clone_fid.exit132_crit_edge, label %cond.false.i130

if.end19.clone_fid.exit132_crit_edge:             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %clone_fid.exit132

cond.false.i130:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i129 = tail call ptr @p9_client_walk(ptr noundef %call.i127, i16 noundef zeroext 0, ptr noundef null, i32 noundef 1) #15
  br label %clone_fid.exit132

clone_fid.exit132:                                ; preds = %cond.false.i130, %if.end19.clone_fid.exit132_crit_edge
  %cond.i131 = phi ptr [ %call1.i129, %cond.false.i130 ], [ %call.i127, %if.end19.clone_fid.exit132_crit_edge ]
  %call22 = tail call i32 @p9_client_clunk(ptr noundef %call.i127) #15
  %cmp.i133 = icmp ugt ptr %cond.i131, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %if.then24, label %if.end26

if.then24:                                        ; preds = %clone_fid.exit132
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %cond.i131 to i32
  br label %clunk_olddir

if.end26:                                         ; preds = %clone_fid.exit132
  %rename_sem = getelementptr inbounds %struct.v9fs_session_info, ptr %8, i32 0, i32 15
  tail call void @down_write(ptr noundef %rename_sem) #15
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %8, align 4
  %18 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool28.not = icmp eq i8 %18, 0
  br i1 %tobool28.not, label %if.end26.if.end41_crit_edge, label %if.then29

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then29:                                        ; preds = %if.end26
  %name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 8
  %name31 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %name31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name31, align 8
  %call32 = tail call i32 @p9_client_renameat(ptr noundef %cond.i147, ptr noundef %20, ptr noundef %cond.i131, ptr noundef %22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call32)
  %cmp = icmp eq i32 %call32, -95
  br i1 %cmp, label %if.end37, label %if.then29.clunk_newdir_crit_edge

if.then29.clunk_newdir_crit_edge:                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %clunk_newdir

if.end37:                                         ; preds = %if.then29
  %23 = ptrtoint ptr %name31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name31, align 8
  %call36 = tail call i32 @p9_client_rename(ptr noundef %call4, ptr noundef %cond.i131, ptr noundef %24) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call36)
  %cmp38.not = icmp eq i32 %call36, -95
  br i1 %cmp38.not, label %if.end37.if.end41_crit_edge, label %if.end37.clunk_newdir_crit_edge

if.end37.clunk_newdir_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %clunk_newdir

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.end41:                                         ; preds = %if.end37.if.end41_crit_edge, %if.end26.if.end41_crit_edge
  %25 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_parent.i, align 8
  %27 = ptrtoint ptr %d_parent.i126 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_parent.i126, align 8
  %cmp43.not = icmp eq ptr %26, %28
  br i1 %cmp43.not, label %if.end45, label %clunk_newdir.thread

clunk_newdir.thread:                              ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_vfs_rename, ptr noundef nonnull @.str.9) #15
  br label %if.end69

if.end45:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %type.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 1
  %29 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %type.i, align 2
  %dev.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 2
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %dev.i, align 4
  %qid.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 3
  %31 = ptrtoint ptr %qid.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %qid.i, align 8
  %version.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 3, i32 1
  %length.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 7
  %32 = ptrtoint ptr %length.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -1, ptr %length.i, align 8
  %name.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 8
  %33 = call ptr @memset(ptr %version.i, i32 255, i32 24)
  %n_uid.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 13
  %34 = call ptr @memset(ptr %name.i, i32 0, i32 16)
  %35 = ptrtoint ptr %n_uid.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %n_uid.i, align 4
  %n_gid.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 14
  %36 = ptrtoint ptr %n_gid.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %n_gid.i, align 8
  %n_muid.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 15
  %37 = ptrtoint ptr %n_muid.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %n_muid.i, align 4
  %extension.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 12
  %38 = ptrtoint ptr %extension.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %extension.i, align 8
  %uname = getelementptr inbounds %struct.v9fs_session_info, ptr %8, i32 0, i32 7
  %39 = ptrtoint ptr %uname to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %uname, align 4
  %muid = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 11
  %41 = ptrtoint ptr %muid to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %muid, align 4
  %name47 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %name47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name47, align 8
  %44 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %name.i, align 8
  %call49 = call i32 @p9_client_wstat(ptr noundef %call4, ptr noundef nonnull %wstat) #15
  br label %clunk_newdir

clunk_newdir:                                     ; preds = %if.end45, %if.end37.clunk_newdir_crit_edge, %if.then29.clunk_newdir_crit_edge
  %retval1.1 = phi i32 [ %call36, %if.end37.clunk_newdir_crit_edge ], [ %call49, %if.end45 ], [ %call32, %if.then29.clunk_newdir_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.1)
  %tobool50.not = icmp eq i32 %retval1.1, 0
  br i1 %tobool50.not, label %if.then51, label %clunk_newdir.if.end69_crit_edge

clunk_newdir.if.end69_crit_edge:                  ; preds = %clunk_newdir
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then51:                                        ; preds = %clunk_newdir
  %tobool52.not = icmp eq ptr %4, null
  br i1 %tobool52.not, label %if.end58.thread, label %if.then53

if.then53:                                        ; preds = %if.then51
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %4, align 8
  %47 = and i16 %46, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %47)
  %cmp54 = icmp eq i16 %47, 16384
  br i1 %cmp54, label %if.then56, label %v9fs_dec_count.exit

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #17
  call void @clear_nlink(ptr noundef nonnull %4) #15
  br label %if.end58

v9fs_dec_count.exit:                              ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #17
  call void @drop_nlink(ptr noundef nonnull %4) #15
  br label %if.end58

if.end58:                                         ; preds = %v9fs_dec_count.exit, %if.then56
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %2, align 8
  %50 = and i16 %49, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %50)
  %cmp62 = icmp eq i16 %50, 16384
  br i1 %cmp62, label %if.end58.if.end67_crit_edge, label %if.end58.if.end68_crit_edge

if.end58.if.end68_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68

if.end58.if.end67_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

if.end58.thread:                                  ; preds = %if.then51
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %2, align 8
  %53 = and i16 %52, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %53)
  %cmp62160 = icmp eq i16 %53, 16384
  br i1 %cmp62160, label %if.then66, label %if.end58.thread.if.end68_crit_edge

if.end58.thread.if.end68_crit_edge:               ; preds = %if.end58.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68

if.then66:                                        ; preds = %if.end58.thread
  call void @__sanitizer_cov_trace_pc() #17
  call void @inc_nlink(ptr noundef %new_dir) #15
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end58.if.end67_crit_edge
  %54 = ptrtoint ptr %old_dir to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %old_dir, align 8
  %56 = and i16 %55, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %56)
  %cmp.i135 = icmp eq i16 %56, 16384
  br i1 %cmp.i135, label %lor.lhs.false.i137, label %if.end67.if.then.i138_crit_edge

if.end67.if.then.i138_crit_edge:                  ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i138

lor.lhs.false.i137:                               ; preds = %if.end67
  %57 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 12
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp2.i136 = icmp ugt i32 %59, 2
  br i1 %cmp2.i136, label %lor.lhs.false.i137.if.then.i138_crit_edge, label %lor.lhs.false.i137.if.end68_crit_edge

lor.lhs.false.i137.if.end68_crit_edge:            ; preds = %lor.lhs.false.i137
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68

lor.lhs.false.i137.if.then.i138_crit_edge:        ; preds = %lor.lhs.false.i137
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i138

if.then.i138:                                     ; preds = %lor.lhs.false.i137.if.then.i138_crit_edge, %if.end67.if.then.i138_crit_edge
  call void @drop_nlink(ptr noundef %old_dir) #15
  br label %if.end68

if.end68:                                         ; preds = %if.then.i138, %lor.lhs.false.i137.if.end68_crit_edge, %if.end58.thread.if.end68_crit_edge, %if.end58.if.end68_crit_edge
  %cache_validity.i = getelementptr i8, ptr %2, i32 -104
  %60 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %61, 1
  store i32 %or.i, ptr %cache_validity.i, align 8
  %cache_validity.i140 = getelementptr i8, ptr %old_dir, i32 -104
  %62 = ptrtoint ptr %cache_validity.i140 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cache_validity.i140, align 8
  %or.i141 = or i32 %63, 1
  store i32 %or.i141, ptr %cache_validity.i140, align 8
  %cache_validity.i142 = getelementptr i8, ptr %new_dir, i32 -104
  %64 = ptrtoint ptr %cache_validity.i142 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cache_validity.i142, align 8
  %or.i143 = or i32 %65, 1
  store i32 %or.i143, ptr %cache_validity.i142, align 8
  call void @d_move(ptr noundef %old_dentry, ptr noundef %new_dentry) #15
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %clunk_newdir.if.end69_crit_edge, %clunk_newdir.thread
  %retval1.1159 = phi i32 [ -18, %clunk_newdir.thread ], [ 0, %if.end68 ], [ %retval1.1, %clunk_newdir.if.end69_crit_edge ]
  call void @up_write(ptr noundef %rename_sem) #15
  %call71 = call i32 @p9_client_clunk(ptr noundef %cond.i131) #15
  br label %clunk_olddir

clunk_olddir:                                     ; preds = %if.end69, %if.then24
  %retval1.2 = phi i32 [ %15, %if.then24 ], [ %retval1.1159, %if.end69 ]
  %call72 = call i32 @p9_client_clunk(ptr noundef %cond.i147) #15
  br label %done

done:                                             ; preds = %clunk_olddir, %if.then17
  %retval1.3 = phi i32 [ %12, %if.then17 ], [ %retval1.2, %clunk_olddir ]
  %call73 = call i32 @p9_client_clunk(ptr noundef %call4) #15
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then6 ], [ %retval1.3, %done ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %wstat) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v9fs_fid_lookup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_renameat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_rename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_wstat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_move(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v9fs_stat2inode(ptr nocapture noundef readonly %stat, ptr noundef %inode, ptr nocapture noundef readonly %sb, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  %i_nlink = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  tail call void @set_nlink(ptr noundef %inode, i32 noundef 1) #15
  %atime = getelementptr inbounds %struct.p9_wstat, ptr %stat, i32 0, i32 5
  %2 = ptrtoint ptr %atime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %atime, align 4
  %conv = zext i32 %3 to i64
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %4 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %i_atime, align 8
  %mtime = getelementptr inbounds %struct.p9_wstat, ptr %stat, i32 0, i32 6
  %5 = ptrtoint ptr %mtime to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mtime, align 8
  %conv1 = zext i32 %6 to i64
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %7 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv1, ptr %i_mtime, align 8
  %8 = load i32, ptr %mtime, align 8
  %conv4 = zext i32 %8 to i64
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %9 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv4, ptr %i_ctime, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %dfltuid = getelementptr inbounds %struct.v9fs_session_info, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %dfltuid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dfltuid, align 4
  %12 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %dfltgid = getelementptr inbounds %struct.v9fs_session_info, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %dfltgid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dfltgid, align 4
  %15 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %i_gid, align 8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %1, align 4
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %n_uid = getelementptr inbounds %struct.p9_wstat, ptr %stat, i32 0, i32 13
  %19 = ptrtoint ptr %n_uid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_uid, align 4
  %21 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %i_uid, align 4
  %n_gid = getelementptr inbounds %struct.p9_wstat, ptr %stat, i32 0, i32 14
  %22 = ptrtoint ptr %n_gid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_gid, align 8
  %24 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %i_gid, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %25 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %inode, align 8
  %27 = and i16 %26, -4096
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %27, label %if.end.if.end26_crit_edge [
    i16 -32768, label %if.end.if.then16_crit_edge
    i16 16384, label %if.end.if.then16_crit_edge71
  ]

if.end.if.then16_crit_edge71:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then16:                                        ; preds = %if.end.if.then16_crit_edge, %if.end.if.then16_crit_edge71
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 4
  %31 = and i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool18.not = icmp eq i8 %31, 0
  br i1 %tobool18.not, label %if.then16.if.end26_crit_edge, label %if.then19

if.then16.if.end26_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then19:                                        ; preds = %if.then16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_nlink) #15
  %32 = ptrtoint ptr %i_nlink to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %i_nlink, align 4, !annotation !98
  %extension = getelementptr inbounds %struct.p9_wstat, ptr %stat, i32 0, i32 12
  %33 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %extension, align 8
  %call20 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %34, ptr noundef nonnull @.str.10, ptr noundef nonnull %i_nlink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 1
  br i1 %cmp21, label %if.then23, label %if.then19.if.end24_crit_edge

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %i_nlink to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_nlink, align 4
  call void @set_nlink(ptr noundef %inode, i32 noundef %36) #15
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then19.if.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nlink) #15
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.then16.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %mode1.i = getelementptr inbounds %struct.p9_wstat, ptr %stat, i32 0, i32 4
  %37 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode1.i, align 8
  %and.i70 = and i32 %38, 4095
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %1, align 4
  %41 = and i8 %40, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i, label %if.end26.p9mode2perm.exit_crit_edge, label %if.then.i

if.end26.p9mode2perm.exit_crit_edge:              ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %p9mode2perm.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %and2.i = lshr i32 %38, 8
  %42 = and i32 %and2.i, 2048
  %43 = or i32 %42, %and.i70
  %44 = and i32 %and2.i, 1024
  %45 = or i32 %43, %44
  %and9.i = lshr i32 %38, 7
  %46 = and i32 %and9.i, 512
  %47 = or i32 %45, %46
  br label %p9mode2perm.exit

p9mode2perm.exit:                                 ; preds = %if.then.i, %if.end26.p9mode2perm.exit_crit_edge
  %res.2.i = phi i32 [ %and.i70, %if.end26.p9mode2perm.exit_crit_edge ], [ %47, %if.then.i ]
  %48 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %inode, align 8
  %50 = and i16 %49, -4096
  %51 = trunc i32 %res.2.i to i16
  %conv33 = or i16 %50, %51
  store i16 %conv33, ptr %inode, align 8
  %and35 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.then37, label %p9mode2perm.exit.if.end38_crit_edge

p9mode2perm.exit.if.end38_crit_edge:              ; preds = %p9mode2perm.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then37:                                        ; preds = %p9mode2perm.exit
  %length = getelementptr inbounds %struct.p9_wstat, ptr %stat, i32 0, i32 7
  %52 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %length, align 8
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock.i) #15
  %54 = call i32 @llvm.read_register.i32(metadata !88) #15
  %and.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %57, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %58 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i.i, label %if.then37.v9fs_i_size_write.exit_crit_edge, label %land.lhs.true.i.i.i

if.then37.v9fs_i_size_write.exit_crit_edge:       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #17
  br label %v9fs_i_size_write.exit

land.lhs.true.i.i.i:                              ; preds = %if.then37
  %59 = call i32 @llvm.read_register.i32(metadata !88) #15
  %and.i.i.i.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %62, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !100
  %63 = call i32 @llvm.read_register.i32(metadata !88) #15
  %and.i.i.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i28.i.i = add i32 %68, ptrtoint (ptr @lockdep_recursion to i32)
  %69 = inttoptr i32 %add.i28.i.i to ptr
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %69, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !101
  %72 = call i32 @llvm.read_register.i32(metadata !88) #15
  %and.i.i.i7.i.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %75, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool20.not.i.i.i = icmp eq i32 %71, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.v9fs_i_size_write.exit_crit_edge

land.lhs.true.i.i.i.v9fs_i_size_write.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v9fs_i_size_write.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %76 = call i32 @llvm.read_register.i32(metadata !88) #15
  %and.i.i.i29.i.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i29.i.i to ptr
  %preempt_count.i.i30.i.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.i.i.i = icmp eq i32 %79, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.v9fs_i_size_write.exit_crit_edge

land.rhs.i.i.i.v9fs_i_size_write.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v9fs_i_size_write.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %80 = call i32 @llvm.read_register.i32(metadata !88) #15
  %and.i.i.i9.i.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %83, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !102
  %84 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %87, ptrtoint (ptr @hardirqs_enabled to i32)
  %88 = inttoptr i32 %add47.i.i.i to ptr
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %88, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !103
  %91 = call i32 @llvm.read_register.i32(metadata !88) #15
  %and.i.i.i12.i.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %94, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool54.not.i.i.i = icmp eq i32 %90, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.v9fs_i_size_write.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.v9fs_i_size_write.exit_crit_edge: ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v9fs_i_size_write.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.v9fs_i_size_write.exit_crit_edge, label %if.then.i.i.i, !prof !104

land.rhs58.i.i.i.v9fs_i_size_write.exit_crit_edge: ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v9fs_i_size_write.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %v9fs_i_size_write.exit

v9fs_i_size_write.exit:                           ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.v9fs_i_size_write.exit_crit_edge, %land.rhs22.i.i.i.v9fs_i_size_write.exit_crit_edge, %land.rhs.i.i.i.v9fs_i_size_write.exit_crit_edge, %land.lhs.true.i.i.i.v9fs_i_size_write.exit_crit_edge, %if.then37.v9fs_i_size_write.exit_crit_edge
  %i_size_seqcount.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %95 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i.i = add i32 %96, 1
  store i32 %inc.i.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !105
  %dep_map.i.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %97 = call ptr @llvm.returnaddress(i32 0) #15
  %98 = ptrtoint ptr %97 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %98) #15
  %i_size8.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %99 = ptrtoint ptr %i_size8.i.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %53, ptr %i_size8.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %98) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !106
  %100 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i = add i32 %101, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !107
  %102 = call i32 @llvm.read_register.i32(metadata !88) #15
  %and.i.i.i26.i.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i26.i.i to ptr
  %preempt_count.i.i27.i.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i27.i.i, align 4
  %sub.i.i.i = add i32 %105, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i27.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #15
  br label %if.end38

if.end38:                                         ; preds = %v9fs_i_size_write.exit, %p9mode2perm.exit.if.end38_crit_edge
  %length39 = getelementptr inbounds %struct.p9_wstat, ptr %stat, i32 0, i32 7
  %106 = ptrtoint ptr %length39 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %length39, align 8
  %sub = add i64 %107, 511
  %shr = lshr i64 %sub, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %108 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %shr, ptr %i_blocks, align 8
  %cache_validity = getelementptr i8, ptr %inode, i32 -104
  %109 = ptrtoint ptr %cache_validity to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cache_validity, align 8
  %and40 = and i32 %110, -2
  store i32 %and40, ptr %cache_validity, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @v9fs_qid2ino(ptr nocapture noundef readonly %qid) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %path1 = getelementptr inbounds %struct.p9_qid, ptr %qid, i32 0, i32 2
  %0 = ptrtoint ptr %path1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %path1, align 8
  %add = add i64 %1, 2
  %shr = lshr i64 %add, 32
  %xor = xor i64 %shr, %add
  %conv = trunc i64 %xor to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_refresh_inode(ptr noundef %fid, ptr noundef %inode) local_unnamed_addr #3 align 64 {
entry:
  %rdev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdev) #15
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @p9_client_stat(ptr noundef %fid) #15
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call fastcc zeroext i16 @p9mode2unixmode(ptr noundef %3, ptr noundef %call1, ptr noundef nonnull %rdev)
  %5 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %inode, align 8
  %xor2.i = xor i16 %6, %call4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i)
  %tobool.i = icmp ugt i16 %xor2.i, 4095
  br i1 %tobool.i, label %if.end.out_crit_edge, label %if.end8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cache, align 4
  %9 = and i32 %8, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %10 = icmp eq i32 %9, 2
  %11 = zext i1 %10 to i32
  %12 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i, align 4
  tail call void @v9fs_stat2inode(ptr noundef %call1, ptr noundef %inode, ptr noundef %13, i32 noundef %11)
  br label %out

out:                                              ; preds = %if.end8, %if.end.out_crit_edge
  tail call void @p9stat_free(ptr noundef %call1) #15
  tail call void @kfree(ptr noundef %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdev) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @p9mode2unixmode(ptr nocapture noundef readonly %v9ses, ptr nocapture noundef readonly %stat, ptr nocapture noundef writeonly %rdev) unnamed_addr #3 align 64 {
entry:
  %type = alloca i8, align 1
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.p9_wstat, ptr %stat, i32 0, i32 4
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode1, align 8
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rdev, align 4
  %3 = load i32, ptr %mode1, align 8
  %and.i = and i32 %3, 4095
  %4 = ptrtoint ptr %v9ses to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %v9ses, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %entry.p9mode2perm.exit_crit_edge, label %if.then.i

entry.p9mode2perm.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %p9mode2perm.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %and2.i = lshr i32 %3, 8
  %7 = and i32 %and2.i, 2048
  %8 = or i32 %7, %and.i
  %9 = and i32 %and2.i, 1024
  %10 = or i32 %8, %9
  %and9.i = lshr i32 %3, 7
  %11 = and i32 %and9.i, 512
  %12 = or i32 %10, %11
  br label %p9mode2perm.exit

p9mode2perm.exit:                                 ; preds = %if.then.i, %entry.p9mode2perm.exit_crit_edge
  %res.2.i = phi i32 [ %and.i, %entry.p9mode2perm.exit_crit_edge ], [ %12, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %p9mode2perm.exit
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i32 %res.2.i, 16384
  br label %cleanup66

if.else:                                          ; preds = %p9mode2perm.exit
  %and2 = and i32 %1, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool.not.i
  br i1 %or.cond, label %if.else7, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %or6 = or i32 %res.2.i, 40960
  br label %cleanup66

if.else7:                                         ; preds = %if.else
  %and8 = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or.cond99 = select i1 %tobool9.not, i1 true, i1 %tobool.not.i
  br i1 %or.cond99, label %if.else7.if.else18_crit_edge, label %land.lhs.true13

if.else7.if.else18_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else18

land.lhs.true13:                                  ; preds = %if.else7
  %nodev = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 1
  %13 = ptrtoint ptr %nodev to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nodev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp14 = icmp eq i8 %14, 0
  br i1 %cmp14, label %if.then16, label %land.lhs.true13.if.else18_crit_edge

land.lhs.true13.if.else18_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else18

if.then16:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #17
  %or17 = or i32 %res.2.i, 49152
  br label %cleanup66

if.else18:                                        ; preds = %land.lhs.true13.if.else18_crit_edge, %if.else7.if.else18_crit_edge
  %and19 = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %or.cond100 = select i1 %tobool20.not, i1 true, i1 %tobool.not.i
  br i1 %or.cond100, label %if.else18.if.else31_crit_edge, label %land.lhs.true24

if.else18.if.else31_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else31

land.lhs.true24:                                  ; preds = %if.else18
  %nodev25 = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 1
  %15 = ptrtoint ptr %nodev25 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nodev25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp27 = icmp eq i8 %16, 0
  br i1 %cmp27, label %if.then29, label %land.lhs.true24.if.else31_crit_edge

land.lhs.true24.if.else31_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else31

if.then29:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #17
  %or30 = or i32 %res.2.i, 4096
  br label %cleanup66

if.else31:                                        ; preds = %land.lhs.true24.if.else31_crit_edge, %if.else18.if.else31_crit_edge
  %and32 = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %or.cond101 = select i1 %tobool33.not, i1 true, i1 %tobool.not.i
  br i1 %or.cond101, label %if.else31.if.else58_crit_edge, label %land.lhs.true37

if.else31.if.else58_crit_edge:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else58

land.lhs.true37:                                  ; preds = %if.else31
  %nodev38 = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 1
  %17 = ptrtoint ptr %nodev38 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nodev38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp40 = icmp eq i8 %18, 0
  br i1 %cmp40, label %if.then42, label %land.lhs.true37.if.else58_crit_edge

land.lhs.true37.if.else58_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else58

if.then42:                                        ; preds = %land.lhs.true37
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type) #15
  %19 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %type, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %major) #15
  %20 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %major, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minor) #15
  %21 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %minor, align 4
  %extension = getelementptr inbounds %struct.p9_wstat, ptr %stat, i32 0, i32 12
  %22 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %extension, align 8
  %call43 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %23, ptr noundef nonnull @.str.14, ptr noundef nonnull %type, ptr noundef nonnull %major, ptr noundef nonnull %minor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 3
  br i1 %cmp44.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then42
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %25, label %sw.default [
    i8 99, label %sw.bb
    i8 98, label %sw.bb51
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %or50 = or i32 %res.2.i, 8192
  br label %cleanup.thread

sw.bb51:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %or52 = or i32 %res.2.i, 24576
  br label %cleanup.thread

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv49 = zext i8 %25 to i32
  %27 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %extension, align 8
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.p9mode2unixmode, ptr noundef nonnull @.str.16, i32 noundef %conv49, ptr noundef %28) #15
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %sw.default, %sw.bb51, %sw.bb
  %res.0 = phi i32 [ %res.2.i, %sw.default ], [ %or52, %sw.bb51 ], [ %or50, %sw.bb ]
  %29 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %major, align 4
  %shl = shl i32 %30, 20
  %31 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %minor, align 4
  %or55 = or i32 %shl, %32
  %33 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or55, ptr %rdev, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %major) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type) #15
  br label %cleanup66

cleanup:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %extension, align 8
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.p9mode2unixmode, ptr noundef nonnull @.str.15, ptr noundef %35) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %major) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type) #15
  br label %cleanup66

if.else58:                                        ; preds = %land.lhs.true37.if.else58_crit_edge, %if.else31.if.else58_crit_edge
  %or59 = or i32 %res.2.i, 32768
  br label %cleanup66

cleanup66:                                        ; preds = %if.else58, %cleanup, %cleanup.thread, %if.then29, %if.then16, %if.then5, %if.then
  %retval.1.in = phi i32 [ %res.2.i, %cleanup ], [ %or, %if.then ], [ %or6, %if.then5 ], [ %or17, %if.then16 ], [ %or30, %if.then29 ], [ %or59, %if.else58 ], [ %res.0, %cleanup.thread ]
  %retval.1 = trunc i32 %retval.1.in to i16
  ret i16 %retval.1
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !108
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  %1 = tail call ptr @llvm.returnaddress(i32 0) #15
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #15
  tail call void @trace_hardirqs_on() #15
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %3 = tail call ptr @llvm.returnaddress(i32 0) #15
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #15
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !109
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !110

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #15, !srcloc !111
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !112
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !113
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !114
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !115
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_unuse_cookie(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_relinquish_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @v9fs_test_new_inode(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_test_inode(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  %rdev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdev) #15
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = call fastcc zeroext i16 @p9mode2unixmode(ptr noundef %3, ptr noundef %data, ptr noundef nonnull %rdev)
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %xor2.i = xor i16 %5, %call2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i)
  %tobool.i = icmp ugt i16 %xor2.i, 4095
  br i1 %tobool.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %version = getelementptr i8, ptr %inode, i32 -116
  %version6 = getelementptr inbounds %struct.p9_wstat, ptr %data, i32 0, i32 3, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %version, ptr noundef dereferenceable(4) %version6, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %qid5 = getelementptr inbounds %struct.p9_wstat, ptr %data, i32 0, i32 3
  %qid = getelementptr i8, ptr %inode, i32 -120
  %6 = ptrtoint ptr %qid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %qid, align 8
  %8 = ptrtoint ptr %qid5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %qid5, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp.not = icmp eq i8 %7, %9
  br i1 %cmp.not, label %if.end17, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %path = getelementptr i8, ptr %inode, i32 -112
  %10 = ptrtoint ptr %path to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %path, align 8
  %path20 = getelementptr inbounds %struct.p9_wstat, ptr %data, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %path20 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %path20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp21.not = icmp eq i64 %11, %13
  %. = zext i1 %cmp21.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ %., %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdev) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @v9fs_set_inode(ptr nocapture noundef writeonly %inode, ptr nocapture noundef readonly %data) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %qid = getelementptr i8, ptr %inode, i32 -120
  %qid1 = getelementptr inbounds %struct.p9_wstat, ptr %data, i32 0, i32 3
  %0 = call ptr @memcpy(ptr %qid, ptr %qid1, i32 16)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_cache_inode_get_cookie(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v9fs_inode_from_fid_dotl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_unlinkat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vfs_create(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %conv.i = zext i16 %mode to i32
  %and.i = and i32 %conv.i, 511
  %and2.i = and i32 %conv.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and2.i)
  %cmp.i = icmp eq i32 %and2.i, 16384
  %or.i = or i32 %and.i, -2147483648
  %spec.select.i = select i1 %cmp.i, i32 %or.i, i32 %and.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %entry.unixmode2p9mode.exit_crit_edge, label %if.then4.i

entry.unixmode2p9mode.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %unixmode2p9mode.exit

if.then4.i:                                       ; preds = %entry
  %nodev.i = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %nodev.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nodev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp6.i = icmp eq i8 %8, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.then4.i.if.end37.i_crit_edge

if.then4.i.if.end37.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i

if.then8.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and2.i)
  %cmp11.i = icmp eq i32 %and2.i, 49152
  %or14.i = or i32 %spec.select.i, 1048576
  %spec.select77.i = select i1 %cmp11.i, i32 %or14.i, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and2.i)
  %cmp18.i = icmp eq i32 %and2.i, 4096
  %or21.i = or i32 %spec.select77.i, 2097152
  %res.2.i = select i1 %cmp18.i, i32 %or21.i, i32 %spec.select77.i
  %or28.i = or i32 %res.2.i, 8388608
  %9 = and i32 %conv.i, 45056
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %9)
  %10 = icmp eq i32 %9, 8192
  %spec.select79.i = select i1 %10, i32 %or28.i, i32 %res.2.i
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then8.i, %if.then4.i.if.end37.i_crit_edge
  %res.4.i = phi i32 [ %spec.select.i, %if.then4.i.if.end37.i_crit_edge ], [ %spec.select79.i, %if.then8.i ]
  %and39.i = shl nuw nsw i32 %conv.i, 8
  %and53.i = shl nuw nsw i32 %conv.i, 7
  %11 = and i32 %and53.i, 65536
  %12 = and i32 %and39.i, 786432
  %13 = or i32 %12, %11
  %14 = or i32 %13, %res.4.i
  br label %unixmode2p9mode.exit

unixmode2p9mode.exit:                             ; preds = %if.end37.i, %entry.unixmode2p9mode.exit_crit_edge
  %res.7.i = phi i32 [ %spec.select.i, %entry.unixmode2p9mode.exit_crit_edge ], [ %14, %if.end37.i ]
  %call2 = tail call fastcc ptr @v9fs_create(ptr noundef %3, ptr noundef %dir, ptr noundef %dentry, ptr noundef null, i32 noundef %res.7.i, i8 noundef zeroext 2)
  %cmp.i13 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i13, label %if.then, label %if.end

if.then:                                          ; preds = %unixmode2p9mode.exit
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %unixmode2p9mode.exit
  call void @__sanitizer_cov_trace_pc() #17
  %cache_validity.i = getelementptr i8, ptr %dir, i32 -104
  %16 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cache_validity.i, align 8
  %or.i14 = or i32 %17, 1
  store i32 %or.i14, ptr %cache_validity.i, align 8
  %call5 = tail call i32 @p9_client_clunk(ptr noundef %call2) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vfs_link(ptr noundef %old_dentry, ptr nocapture noundef %dir, ptr noundef %dentry) #3 align 64 {
entry:
  %name = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %name) #15
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %0 = call ptr @memset(ptr %name, i32 255, i32 13)
  %1 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_ino, align 8
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_link, ptr noundef nonnull @.str.21, i32 noundef %2, ptr noundef %dentry, ptr noundef %old_dentry) #15
  %call.i = tail call ptr @v9fs_fid_lookup(ptr noundef %old_dentry) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %lor.lhs.false.i.v9fs_fid_clone.exit_crit_edge, label %clone_fid.exit.i

lor.lhs.false.i.v9fs_fid_clone.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v9fs_fid_clone.exit

clone_fid.exit.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i.i = tail call ptr @p9_client_walk(ptr noundef nonnull %call.i, i16 noundef zeroext 0, ptr noundef null, i32 noundef 1) #15
  %call3.i = tail call i32 @p9_client_clunk(ptr noundef nonnull %call.i) #15
  br label %v9fs_fid_clone.exit

v9fs_fid_clone.exit:                              ; preds = %clone_fid.exit.i, %lor.lhs.false.i.v9fs_fid_clone.exit_crit_edge
  %retval.0.i = phi ptr [ %call1.i.i, %clone_fid.exit.i ], [ %call.i, %lor.lhs.false.i.v9fs_fid_clone.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %v9fs_fid_clone.exit.if.end_crit_edge

v9fs_fid_clone.exit.if.end_crit_edge:             ; preds = %v9fs_fid_clone.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %v9fs_fid_clone.exit
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %v9fs_fid_clone.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i29 = phi ptr [ %retval.0.i, %v9fs_fid_clone.exit.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ]
  %fid = getelementptr inbounds %struct.p9_fid, ptr %retval.0.i29, i32 0, i32 1
  %4 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fid, align 4
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.22, i32 noundef %5)
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i24 = icmp eq i8 %12, 0
  br i1 %tobool.not.i24, label %v9fs_vfs_mkspecial.exit.thread35, label %if.end.i

v9fs_vfs_mkspecial.exit.thread35:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_vfs_mkspecial, ptr noundef nonnull @.str.23) #15
  br label %if.end10

if.end.i:                                         ; preds = %if.end
  %call2.i = call fastcc ptr @v9fs_create(ptr noundef %9, ptr noundef %dir, ptr noundef %dentry, ptr noundef nonnull %name, i32 noundef 16777216, i8 noundef zeroext 0) #15
  %cmp.i.i25 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i25, label %v9fs_vfs_mkspecial.exit, label %v9fs_vfs_mkspecial.exit.thread

v9fs_vfs_mkspecial.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %cache_validity.i.i = getelementptr i8, ptr %dir, i32 -104
  %13 = ptrtoint ptr %cache_validity.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cache_validity.i.i, align 8
  %or.i.i = or i32 %14, 1
  store i32 %or.i.i, ptr %cache_validity.i.i, align 8
  %call7.i = call i32 @p9_client_clunk(ptr noundef %call2.i) #15
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %call9 = call i32 @v9fs_refresh_inode(ptr noundef %retval.0.i29, ptr noundef %16)
  %17 = ptrtoint ptr %cache_validity.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cache_validity.i.i, align 8
  %or.i = or i32 %18, 1
  store i32 %or.i, ptr %cache_validity.i.i, align 8
  br label %if.end10

v9fs_vfs_mkspecial.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %call2.i to i32
  br label %if.end10

if.end10:                                         ; preds = %v9fs_vfs_mkspecial.exit, %v9fs_vfs_mkspecial.exit.thread, %v9fs_vfs_mkspecial.exit.thread35
  %retval.0.i2633 = phi i32 [ 0, %v9fs_vfs_mkspecial.exit.thread ], [ %19, %v9fs_vfs_mkspecial.exit ], [ -1, %v9fs_vfs_mkspecial.exit.thread35 ]
  %call11 = call i32 @p9_client_clunk(ptr noundef %retval.0.i29) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %retval.0.i2633, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %name) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vfs_symlink(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef %dir, ptr noundef %dentry, ptr noundef %symname) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_symlink, ptr noundef nonnull @.str.24, i32 noundef %1, ptr noundef %dentry, ptr noundef %symname) #15
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_vfs_mkspecial, ptr noundef nonnull @.str.23) #15
  br label %v9fs_vfs_mkspecial.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call fastcc ptr @v9fs_create(ptr noundef %5, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname, i32 noundef 33554432, i8 noundef zeroext 0) #15
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %call2.i to i32
  br label %v9fs_vfs_mkspecial.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %cache_validity.i.i = getelementptr i8, ptr %dir, i32 -104
  %10 = ptrtoint ptr %cache_validity.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cache_validity.i.i, align 8
  %or.i.i = or i32 %11, 1
  store i32 %or.i.i, ptr %cache_validity.i.i, align 8
  %call7.i = tail call i32 @p9_client_clunk(ptr noundef %call2.i) #15
  br label %v9fs_vfs_mkspecial.exit

v9fs_vfs_mkspecial.exit:                          ; preds = %if.end6.i, %if.then4.i, %if.then.i
  %retval.0.i = phi i32 [ %9, %if.then4.i ], [ 0, %if.end6.i ], [ -1, %if.then.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vfs_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_mkdir, ptr noundef nonnull @.str.17, ptr noundef %dentry) #15
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = or i16 %mode, 16384
  %conv.i = zext i16 %4 to i32
  %and.i = and i32 %conv.i, 511
  %and2.i = and i32 %conv.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and2.i)
  %cmp.i = icmp eq i32 %and2.i, 16384
  %or.i = or i32 %and.i, -2147483648
  %spec.select.i = select i1 %cmp.i, i32 %or.i, i32 %and.i
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %3, align 4
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.unixmode2p9mode.exit_crit_edge, label %if.then4.i

entry.unixmode2p9mode.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %unixmode2p9mode.exit

if.then4.i:                                       ; preds = %entry
  %nodev.i = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %nodev.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nodev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp6.i = icmp eq i8 %9, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.then4.i.if.end37.i_crit_edge

if.then4.i.if.end37.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i

if.then8.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and2.i)
  %cmp11.i = icmp eq i32 %and2.i, 49152
  %or14.i = or i32 %spec.select.i, 1048576
  %spec.select77.i = select i1 %cmp11.i, i32 %or14.i, i32 %spec.select.i
  %or28.i = or i32 %spec.select77.i, 8388608
  %10 = and i32 %conv.i, 45056
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %10)
  %11 = icmp eq i32 %10, 8192
  %spec.select79.i = select i1 %11, i32 %or28.i, i32 %spec.select77.i
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then8.i, %if.then4.i.if.end37.i_crit_edge
  %res.4.i = phi i32 [ %spec.select.i, %if.then4.i.if.end37.i_crit_edge ], [ %spec.select79.i, %if.then8.i ]
  %and39.i = shl nuw nsw i32 %conv.i, 8
  %and53.i = shl nuw nsw i32 %conv.i, 7
  %12 = and i32 %and53.i, 65536
  %13 = and i32 %and39.i, 786432
  %14 = or i32 %13, %12
  %15 = or i32 %14, %res.4.i
  br label %unixmode2p9mode.exit

unixmode2p9mode.exit:                             ; preds = %if.end37.i, %entry.unixmode2p9mode.exit_crit_edge
  %res.7.i = phi i32 [ %spec.select.i, %entry.unixmode2p9mode.exit_crit_edge ], [ %15, %if.end37.i ]
  %call3 = tail call fastcc ptr @v9fs_create(ptr noundef %3, ptr noundef %dir, ptr noundef %dentry, ptr noundef null, i32 noundef %res.7.i, i8 noundef zeroext 0)
  %cmp.i17 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %unixmode2p9mode.exit
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %call3 to i32
  br label %if.end8

if.end:                                           ; preds = %unixmode2p9mode.exit
  tail call void @inc_nlink(ptr noundef %dir) #15
  %cache_validity.i = getelementptr i8, ptr %dir, i32 -104
  %17 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cache_validity.i, align 8
  %or.i18 = or i32 %18, 1
  store i32 %or.i18, ptr %cache_validity.i, align 8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = tail call i32 @p9_client_clunk(ptr noundef nonnull %call3) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge, %if.end.thread
  %err.022 = phi i32 [ %16, %if.end.thread ], [ 0, %if.then6 ], [ 0, %if.end.if.end8_crit_edge ]
  ret i32 %err.022
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vfs_mknod(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #3 align 64 {
entry:
  %name = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %name) #15
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %4 = call ptr @memset(ptr %name, i32 255, i32 24)
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  %conv = zext i16 %mode to i32
  %shr = lshr i32 %rdev, 20
  %and = and i32 %rdev, 1048575
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_mknod, ptr noundef nonnull @.str.25, i32 noundef %6, ptr noundef %dentry, i32 noundef %conv, i32 noundef %shr, i32 noundef %and) #15
  %and3 = and i32 %conv, 61440
  %trunc = trunc i32 %and3 to i16
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %trunc, label %if.else17 [
    i16 24576, label %if.then
    i16 8192, label %if.then12
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.26, i32 noundef %shr, i32 noundef %and)
  br label %if.end19

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.27, i32 noundef %shr, i32 noundef %and)
  br label %if.end19

if.else17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %name, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then12, %if.then
  %and.i = and i32 %conv, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and3)
  %cmp.i = icmp eq i32 %and3, 16384
  %or.i = or i32 %and.i, -2147483648
  %spec.select.i = select i1 %cmp.i, i32 %or.i, i32 %and.i
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 4
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end19.unixmode2p9mode.exit_crit_edge, label %if.then4.i

if.end19.unixmode2p9mode.exit_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %unixmode2p9mode.exit

if.then4.i:                                       ; preds = %if.end19
  %nodev.i = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %nodev.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nodev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp6.i = icmp eq i8 %13, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.then4.i.if.end37.i_crit_edge

if.then4.i.if.end37.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i

if.then8.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and3)
  %cmp11.i = icmp eq i32 %and3, 49152
  %or14.i = or i32 %spec.select.i, 1048576
  %spec.select77.i = select i1 %cmp11.i, i32 %or14.i, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and3)
  %cmp18.i = icmp eq i32 %and3, 4096
  %or21.i = or i32 %spec.select77.i, 2097152
  %res.2.i = select i1 %cmp18.i, i32 %or21.i, i32 %spec.select77.i
  %or28.i = or i32 %res.2.i, 8388608
  %14 = and i32 %conv, 45056
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %14)
  %15 = icmp eq i32 %14, 8192
  %spec.select79.i = select i1 %15, i32 %or28.i, i32 %res.2.i
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then8.i, %if.then4.i.if.end37.i_crit_edge
  %res.4.i = phi i32 [ %spec.select.i, %if.then4.i.if.end37.i_crit_edge ], [ %spec.select79.i, %if.then8.i ]
  %and39.i = shl nuw nsw i32 %conv, 8
  %and53.i = shl nuw nsw i32 %conv, 7
  %16 = and i32 %and53.i, 65536
  %17 = and i32 %and39.i, 786432
  %18 = or i32 %17, %16
  %19 = or i32 %18, %res.4.i
  br label %unixmode2p9mode.exit

unixmode2p9mode.exit:                             ; preds = %if.end37.i, %if.end19.unixmode2p9mode.exit_crit_edge
  %res.7.i = phi i32 [ %spec.select.i, %if.end19.unixmode2p9mode.exit_crit_edge ], [ %19, %if.end37.i ]
  %20 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i, align 16
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i34 = icmp eq i8 %26, 0
  br i1 %tobool.not.i34, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %unixmode2p9mode.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_vfs_mkspecial, ptr noundef nonnull @.str.23) #15
  br label %v9fs_vfs_mkspecial.exit

if.end.i:                                         ; preds = %unixmode2p9mode.exit
  %call2.i = call fastcc ptr @v9fs_create(ptr noundef %23, ptr noundef %dir, ptr noundef %dentry, ptr noundef nonnull %name, i32 noundef %res.7.i, i8 noundef zeroext 0) #15
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i35, label %if.end6.i

if.then4.i35:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %call2.i to i32
  br label %v9fs_vfs_mkspecial.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %cache_validity.i.i = getelementptr i8, ptr %dir, i32 -104
  %28 = ptrtoint ptr %cache_validity.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cache_validity.i.i, align 8
  %or.i.i = or i32 %29, 1
  store i32 %or.i.i, ptr %cache_validity.i.i, align 8
  %call7.i = call i32 @p9_client_clunk(ptr noundef %call2.i) #15
  br label %v9fs_vfs_mkspecial.exit

v9fs_vfs_mkspecial.exit:                          ; preds = %if.end6.i, %if.then4.i35, %if.then.i
  %retval.0.i = phi i32 [ %27, %if.then4.i35 ], [ 0, %if.end6.i ], [ -1, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %name) #15
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vfs_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %iattr) #3 align 64 {
entry:
  %wstat = alloca %struct.p9_wstat, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %wstat) #15
  %2 = call ptr @memset(ptr %wstat, i32 255, i32 40)
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_setattr, ptr noundef nonnull @.str.8) #15
  %call3 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %iattr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %3 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %7 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iattr, align 8
  %and = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.then32_crit_edge, label %if.then6

if.end.if.then32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then32

if.then6:                                         ; preds = %if.end
  %ia_file = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 8
  %9 = ptrtoint ptr %ia_file to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ia_file, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %do.end, label %if.then6.if.end34_crit_edge, !prof !110

if.then6.if.end34_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1094, i32 noundef 9, ptr noundef null) #15
  br label %if.then32

if.then32:                                        ; preds = %do.end, %if.end.if.then32_crit_edge
  %call33 = tail call ptr @v9fs_fid_lookup(ptr noundef %dentry) #15
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then6.if.end34_crit_edge
  %tobool31.not152 = phi i1 [ true, %if.then32 ], [ false, %if.then6.if.end34_crit_edge ]
  %fid.1 = phi ptr [ %call33, %if.then32 ], [ %12, %if.then6.if.end34_crit_edge ]
  %cmp.i = icmp ugt ptr %fid.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %fid.1 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %type.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 1
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %type.i, align 2
  %dev.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 2
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %dev.i, align 4
  %qid.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 3
  %16 = ptrtoint ptr %qid.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %qid.i, align 8
  %version.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 3, i32 1
  %length.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 7
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %length.i, align 8
  %name.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 8
  %18 = call ptr @memset(ptr %version.i, i32 255, i32 24)
  %n_uid.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 13
  %19 = call ptr @memset(ptr %name.i, i32 0, i32 16)
  %20 = ptrtoint ptr %n_uid.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %n_uid.i, align 4
  %n_gid.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 14
  %21 = ptrtoint ptr %n_gid.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %n_gid.i, align 8
  %n_muid.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 15
  %22 = ptrtoint ptr %n_muid.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %n_muid.i, align 4
  %extension.i = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 12
  %23 = ptrtoint ptr %extension.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %extension.i, align 8
  %24 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iattr, align 8
  %and40 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.end44_crit_edge, label %if.then42

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then42:                                        ; preds = %if.end38
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 1
  %26 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ia_mode, align 4
  %conv.i = zext i16 %27 to i32
  %and.i = and i32 %conv.i, 511
  %and2.i = and i32 %conv.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and2.i)
  %cmp.i145 = icmp eq i32 %and2.i, 16384
  %or.i = or i32 %and.i, -2147483648
  %spec.select.i = select i1 %cmp.i145, i32 %or.i, i32 %and.i
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %6, align 4
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.then42.unixmode2p9mode.exit_crit_edge, label %if.then4.i

if.then42.unixmode2p9mode.exit_crit_edge:         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  br label %unixmode2p9mode.exit

if.then4.i:                                       ; preds = %if.then42
  %nodev.i = getelementptr inbounds %struct.v9fs_session_info, ptr %6, i32 0, i32 1
  %31 = ptrtoint ptr %nodev.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %nodev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp6.i = icmp eq i8 %32, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.then4.i.if.end37.i_crit_edge

if.then4.i.if.end37.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i

if.then8.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and2.i)
  %cmp11.i = icmp eq i32 %and2.i, 49152
  %or14.i = or i32 %spec.select.i, 1048576
  %spec.select77.i = select i1 %cmp11.i, i32 %or14.i, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and2.i)
  %cmp18.i = icmp eq i32 %and2.i, 4096
  %or21.i = or i32 %spec.select77.i, 2097152
  %res.2.i = select i1 %cmp18.i, i32 %or21.i, i32 %spec.select77.i
  %or28.i = or i32 %res.2.i, 8388608
  %33 = and i32 %conv.i, 45056
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %33)
  %34 = icmp eq i32 %33, 8192
  %spec.select79.i = select i1 %34, i32 %or28.i, i32 %res.2.i
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then8.i, %if.then4.i.if.end37.i_crit_edge
  %res.4.i = phi i32 [ %spec.select.i, %if.then4.i.if.end37.i_crit_edge ], [ %spec.select79.i, %if.then8.i ]
  %and39.i = shl nuw nsw i32 %conv.i, 8
  %and53.i = shl nuw nsw i32 %conv.i, 7
  %35 = and i32 %and53.i, 65536
  %36 = and i32 %and39.i, 786432
  %37 = or i32 %36, %35
  %38 = or i32 %37, %res.4.i
  br label %unixmode2p9mode.exit

unixmode2p9mode.exit:                             ; preds = %if.end37.i, %if.then42.unixmode2p9mode.exit_crit_edge
  %res.7.i = phi i32 [ %spec.select.i, %if.then42.unixmode2p9mode.exit_crit_edge ], [ %38, %if.end37.i ]
  %mode = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 4
  %39 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %res.7.i, ptr %mode, align 8
  br label %if.end44

if.end44:                                         ; preds = %unixmode2p9mode.exit, %if.end38.if.end44_crit_edge
  %and46 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end44.if.end49_crit_edge, label %if.then48

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  %40 = ptrtoint ptr %ia_mtime to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ia_mtime, align 8
  %conv = trunc i64 %41 to i32
  %mtime = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 6
  %42 = ptrtoint ptr %mtime to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv, ptr %mtime, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end44.if.end49_crit_edge
  %and51 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end49.if.end56_crit_edge, label %if.then53

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 5
  %43 = ptrtoint ptr %ia_atime to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %ia_atime, align 8
  %conv55 = trunc i64 %44 to i32
  %atime = getelementptr inbounds %struct.p9_wstat, ptr %wstat, i32 0, i32 5
  %45 = ptrtoint ptr %atime to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv55, ptr %atime, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end49.if.end56_crit_edge
  %and58 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end56.if.end61_crit_edge, label %if.then60

if.end56.if.end61_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  %ia_size = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 4
  %46 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ia_size, align 8
  %48 = ptrtoint ptr %length.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %length.i, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end56.if.end61_crit_edge
  %49 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %6, align 4
  %51 = and i8 %50, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool63.not = icmp eq i8 %51, 0
  br i1 %tobool63.not, label %if.end61.if.end75_crit_edge, label %if.then64

if.end61.if.end75_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then64:                                        ; preds = %if.end61
  %and66 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.then64.if.end69_crit_edge, label %if.then68

if.then64.if.end69_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then68:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 2
  %52 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ia_uid, align 8
  %54 = ptrtoint ptr %n_uid.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %n_uid.i, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.then64.if.end69_crit_edge
  %and71 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end69.if.end75_crit_edge, label %if.then73

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 3
  %55 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ia_gid, align 4
  %57 = ptrtoint ptr %n_gid.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %n_gid.i, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end69.if.end75_crit_edge, %if.end61.if.end75_crit_edge
  %58 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %59, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and.i.i)
  %cmp.i147 = icmp eq i32 %and.i.i, 4194304
  br i1 %cmp.i147, label %if.then77, label %if.end75.if.end79_crit_edge

if.end75.if.end79_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %60 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %61, i64 noundef 0, i64 noundef 9223372036854775807) #15
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end75.if.end79_crit_edge
  %call80 = call i32 @p9_client_wstat(ptr noundef %fid.1, ptr noundef nonnull %wstat) #15
  br i1 %tobool31.not152, label %if.then82, label %if.end79.if.end84_crit_edge

if.end79.if.end84_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  %call83 = call i32 @p9_client_clunk(ptr noundef %fid.1) #15
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.end79.if.end84_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp = icmp slt i32 %call80, 0
  br i1 %cmp, label %if.end84.cleanup_crit_edge, label %if.end87

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end87:                                         ; preds = %if.end84
  %62 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %iattr, align 8
  %and89 = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end87.if.end99_crit_edge, label %land.lhs.true

if.end87.if.end99_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end99

land.lhs.true:                                    ; preds = %if.end87
  %ia_size91 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 4
  %64 = ptrtoint ptr %ia_size91 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %ia_size91, align 8
  %call92 = call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %65, i64 %call92)
  %cmp93.not = icmp eq i64 %65, %call92
  br i1 %cmp93.not, label %land.lhs.true.if.end99_crit_edge, label %if.then95

land.lhs.true.if.end99_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end99

if.then95:                                        ; preds = %land.lhs.true
  %66 = ptrtoint ptr %ia_size91 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %ia_size91, align 8
  call void @truncate_setsize(ptr noundef %1, i64 noundef %67) #15
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i, align 8
  %70 = ptrtoint ptr %ia_size91 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %ia_size91, align 8
  %tobool.not.i148 = icmp eq ptr %69, null
  br i1 %tobool.not.i148, label %if.then95.if.end99_crit_edge, label %land.lhs.true.i

if.then95.if.end99_crit_edge:                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end99

land.lhs.true.i:                                  ; preds = %if.then95
  %flags.i = getelementptr inbounds %struct.fscache_cookie, ptr %69, i32 0, i32 14
  %72 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %flags.i, align 4
  %74 = and i32 %73, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool1.not.i = icmp eq i32 %74, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.if.end99_crit_edge

land.lhs.true.i.if.end99_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end99

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__fscache_resize_cookie(ptr noundef nonnull %69, i64 noundef %71) #15
  br label %if.end99

if.end99:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end99_crit_edge, %if.then95.if.end99_crit_edge, %land.lhs.true.if.end99_crit_edge, %if.end87.if.end99_crit_edge
  %cache_validity.i = getelementptr i8, ptr %1, i32 -104
  %75 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cache_validity.i, align 8
  %or.i149 = or i32 %76, 1
  store i32 %or.i149, ptr %cache_validity.i, align 8
  call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %iattr) #15
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %if.end84.cleanup_crit_edge, %if.then36, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then36 ], [ 0, %if.end99 ], [ %call3, %entry.cleanup_crit_edge ], [ %call80, %if.end84.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %wstat) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vfs_getattr(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_getattr, ptr noundef nonnull @.str.28, ptr noundef %1) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %10, ptr noundef %stat) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @v9fs_fid_lookup(ptr noundef %1) #15
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @p9_client_stat(ptr noundef %call5) #15
  %call11 = tail call i32 @p9_client_clunk(ptr noundef %call5) #15
  %cmp.i36 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %d_inode.i37 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %d_inode.i37 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i37, align 8
  %15 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_sb.i, align 4
  tail call void @v9fs_stat2inode(ptr noundef %call10, ptr noundef %14, ptr noundef %16, i32 noundef 0)
  %17 = ptrtoint ptr %d_inode.i37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i37, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %18, ptr noundef %stat) #15
  tail call void @p9stat_free(ptr noundef %call10) #15
  tail call void @kfree(ptr noundef %call10) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %11, %if.then7 ], [ %12, %if.then13 ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vfs_atomic_open(ptr noundef %dir, ptr noundef %dentry, ptr noundef %file, i32 noundef %flags, i16 noundef zeroext %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dentry, align 8
  %and.i = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @v9fs_vfs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef 0)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry.addr.0, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i, align 8
  %cmp.i117.not = icmp eq ptr %4, null
  br i1 %cmp.i117.not, label %if.end13, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end8.if.then11_crit_edge
  %call12 = tail call i32 @finish_no_open(ptr noundef %file, ptr noundef %res.0) #15
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %conv.i = zext i16 %mode to i32
  %and.i118 = and i32 %conv.i, 511
  %and2.i = and i32 %conv.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and2.i)
  %cmp.i119 = icmp eq i32 %and2.i, 16384
  %or.i = or i32 %and.i118, -2147483648
  %spec.select.i = select i1 %cmp.i119, i32 %or.i, i32 %and.i118
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end13.unixmode2p9mode.exit_crit_edge, label %if.then4.i

if.end13.unixmode2p9mode.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %unixmode2p9mode.exit

if.then4.i:                                       ; preds = %if.end13
  %nodev.i = getelementptr inbounds %struct.v9fs_session_info, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %nodev.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nodev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp6.i = icmp eq i8 %13, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.then4.i.if.end37.i_crit_edge

if.then4.i.if.end37.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i

if.then8.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and2.i)
  %cmp11.i = icmp eq i32 %and2.i, 49152
  %or14.i = or i32 %spec.select.i, 1048576
  %spec.select77.i = select i1 %cmp11.i, i32 %or14.i, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and2.i)
  %cmp18.i = icmp eq i32 %and2.i, 4096
  %or21.i = or i32 %spec.select77.i, 2097152
  %res.2.i = select i1 %cmp18.i, i32 %or21.i, i32 %spec.select77.i
  %or28.i = or i32 %res.2.i, 8388608
  %14 = and i32 %conv.i, 45056
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %14)
  %15 = icmp eq i32 %14, 8192
  %spec.select79.i = select i1 %15, i32 %or28.i, i32 %res.2.i
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then8.i, %if.then4.i.if.end37.i_crit_edge
  %res.4.i = phi i32 [ %spec.select.i, %if.then4.i.if.end37.i_crit_edge ], [ %spec.select79.i, %if.then8.i ]
  %and39.i = shl nuw nsw i32 %conv.i, 8
  %and53.i = shl nuw nsw i32 %conv.i, 7
  %16 = and i32 %and53.i, 65536
  %17 = and i32 %and39.i, 786432
  %18 = or i32 %17, %16
  %19 = or i32 %18, %res.4.i
  br label %unixmode2p9mode.exit

unixmode2p9mode.exit:                             ; preds = %if.end37.i, %if.end13.unixmode2p9mode.exit_crit_edge
  %res.7.i = phi i32 [ %spec.select.i, %if.end13.unixmode2p9mode.exit_crit_edge ], [ %19, %if.end37.i ]
  %and.i121 = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i121)
  %switch.selectcmp.i = icmp eq i32 %and.i121, 1
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i121)
  %switch.selectcmp16.i = icmp eq i32 %and.i121, 2
  %switch.select17.i = select i1 %switch.selectcmp16.i, i32 2, i32 %switch.select.i
  %and6.i = lshr i32 %flags, 3
  %20 = and i32 %and6.i, 128
  %21 = select i1 %tobool.not.i, i32 0, i32 %20
  %ret.2.i = or i32 %21, %switch.select17.i
  %conv = trunc i32 %ret.2.i to i8
  %call18 = tail call fastcc ptr @v9fs_create(ptr noundef %8, ptr noundef %dir, ptr noundef %dentry.addr.0, ptr noundef null, i32 noundef %res.7.i, i8 noundef zeroext %conv)
  %cmp.i123 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %error.thread, label %if.end22

error.thread:                                     ; preds = %unixmode2p9mode.exit
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %call18 to i32
  br label %out

if.end22:                                         ; preds = %unixmode2p9mode.exit
  %cache_validity.i = getelementptr i8, ptr %dir, i32 -104
  %23 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cache_validity.i, align 8
  %or.i124 = or i32 %24, 1
  store i32 %or.i124, ptr %cache_validity.i, align 8
  %25 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %26, i32 -128
  %v_mutex = getelementptr i8, ptr %26, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %v_mutex, i32 noundef 0) #15
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %8, i32 0, i32 4
  %27 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cache, align 4
  %29 = and i32 %28, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %switch = icmp eq i32 %29, 2
  br i1 %switch, label %land.lhs.true, label %if.end22.if.end43_crit_edge

if.end22.if.end43_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end22
  %writeback_fid = getelementptr i8, ptr %26, i32 -100
  %30 = ptrtoint ptr %writeback_fid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %writeback_fid, align 4
  %tobool30.not = icmp ne ptr %31, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i121)
  %cmp33.not = icmp eq i32 %and.i121, 0
  %or.cond = or i1 %cmp33.not, %tobool30.not
  br i1 %or.cond, label %land.lhs.true.if.end43_crit_edge, label %if.then35

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then35:                                        ; preds = %land.lhs.true
  %call36 = tail call ptr @v9fs_writeback_fid(ptr noundef %dentry.addr.0) #15
  %cmp.i126 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %call36 to i32
  tail call void @mutex_unlock(ptr noundef %v_mutex) #15
  br label %error

if.end41:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %writeback_fid to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call36, ptr %writeback_fid, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %land.lhs.true.if.end43_crit_edge, %if.end22.if.end43_crit_edge
  tail call void @mutex_unlock(ptr noundef %v_mutex) #15
  %call45 = tail call i32 @finish_open(ptr noundef %file, ptr noundef %dentry.addr.0, ptr noundef nonnull @generic_file_open) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.error_crit_edge

if.end43.error_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end48:                                         ; preds = %if.end43
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %34 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call18, ptr %private_data, align 4
  %35 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cache, align 4
  %37 = and i32 %36, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %switch116 = icmp eq i32 %37, 2
  br i1 %switch116, label %if.then56, label %if.end48.if.end60_crit_edge

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

if.then56:                                        ; preds = %if.end48
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not.i127 = icmp eq ptr %39, null
  br i1 %tobool.not.i127, label %if.then56.if.end60_crit_edge, label %if.then.i

if.then56.if.end60_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

if.then.i:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #17
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %40 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %f_mode, align 8
  %and58 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59 = icmp ne i32 %and58, 0
  tail call void @__fscache_use_cookie(ptr noundef nonnull %39, i1 noundef zeroext %tobool59) #15
  br label %if.end60

if.end60:                                         ; preds = %if.then.i, %if.then56.if.end60_crit_edge, %if.end48.if.end60_crit_edge
  tail call void @v9fs_open_fid_add(ptr noundef %26, ptr noundef %call18) #15
  %f_mode61 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %42 = ptrtoint ptr %f_mode61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %f_mode61, align 8
  %or = or i32 %43, 1048576
  store i32 %or, ptr %f_mode61, align 8
  br label %out

out:                                              ; preds = %if.then63, %error.out_crit_edge, %if.end60, %error.thread
  %err.0 = phi i32 [ %err.1, %if.then63 ], [ %err.1, %error.out_crit_edge ], [ 0, %if.end60 ], [ %22, %error.thread ]
  tail call void @dput(ptr noundef %res.0) #15
  br label %cleanup

error:                                            ; preds = %if.end43.error_crit_edge, %if.then38
  %err.1 = phi i32 [ %call45, %if.end43.error_crit_edge ], [ %32, %if.then38 ]
  %tobool62.not = icmp eq ptr %call18, null
  br i1 %tobool62.not, label %error.out_crit_edge, label %if.then63

error.out_crit_edge:                              ; preds = %error
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then63:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #17
  %call64 = tail call i32 @p9_client_clunk(ptr noundef nonnull %call18) #15
  br label %out

cleanup:                                          ; preds = %out, %if.then11, %if.then3
  %retval.0 = phi i32 [ %2, %if.then3 ], [ %call12, %if.then11 ], [ %err.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @v9fs_create(ptr noundef %v9ses, ptr nocapture noundef readonly %dir, ptr noundef %dentry, ptr noundef %extension, i32 noundef %perm, i8 noundef zeroext %mode) unnamed_addr #3 align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #15
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_create, ptr noundef nonnull @.str.17, ptr noundef %dentry) #15
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %name, align 4
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %3 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_parent.i, align 8
  %call.i = tail call ptr @v9fs_fid_lookup(ptr noundef %4) #15
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %clone_fid.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %call.i to i32
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_create, ptr noundef nonnull @.str.12, i32 noundef %5) #15
  br label %cleanup

clone_fid.exit:                                   ; preds = %entry
  %call1.i = tail call ptr @p9_client_walk(ptr noundef %call.i, i16 noundef zeroext 0, ptr noundef null, i32 noundef 1) #15
  %cmp.i79 = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then7, label %if.end11

if.then7:                                         ; preds = %clone_fid.exit
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %call1.i to i32
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_create, ptr noundef nonnull @.str.18, i32 noundef %6) #15
  %call9 = tail call i32 @p9_client_clunk(ptr noundef %call.i) #15
  br label %cleanup

if.end11:                                         ; preds = %clone_fid.exit
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %conv = zext i8 %mode to i32
  %call12 = tail call i32 @p9_client_fcreate(ptr noundef %call1.i, ptr noundef %8, i32 noundef %perm, i32 noundef %conv, ptr noundef %extension) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_create, ptr noundef nonnull @.str.19, i32 noundef %call12) #15
  %call15 = tail call i32 @p9_client_clunk(ptr noundef %call.i) #15
  br label %error

if.end16:                                         ; preds = %if.end11
  %and = and i32 %perm, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then17, label %if.end16.if.end30_crit_edge

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then17:                                        ; preds = %if.end16
  %call18 = call ptr @p9_client_walk(ptr noundef %call.i, i16 noundef zeroext 1, ptr noundef nonnull %name, i32 noundef 1) #15
  %cmp.i80 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %call18 to i32
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_create, ptr noundef nonnull @.str.18, i32 noundef %9) #15
  %call22 = call i32 @p9_client_clunk(ptr noundef %call.i) #15
  br label %error

if.end23:                                         ; preds = %if.then17
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %12 = ptrtoint ptr %v9ses to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %v9ses, align 4
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i81 = call ptr @v9fs_inode_from_fid_dotl(ptr noundef %v9ses, ptr noundef %call18, ptr noundef %11, i32 noundef 1) #15
  br label %v9fs_get_new_inode_from_fid.exit

if.else.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i = call ptr @v9fs_inode_from_fid(ptr undef, ptr noundef %call18, ptr noundef %11, i32 noundef 1) #15
  br label %v9fs_get_new_inode_from_fid.exit

v9fs_get_new_inode_from_fid.exit:                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %call1.i81, %if.then.i ], [ %call2.i, %if.else.i ]
  %cmp.i82 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.then26, label %if.end29

if.then26:                                        ; preds = %v9fs_get_new_inode_from_fid.exit
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %retval.0.i to i32
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_create, ptr noundef nonnull @.str.20, i32 noundef %15) #15
  %call28 = call i32 @p9_client_clunk(ptr noundef %call.i) #15
  br label %error

if.end29:                                         ; preds = %v9fs_get_new_inode_from_fid.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @v9fs_fid_add(ptr noundef %dentry, ptr noundef %call18) #15
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %retval.0.i) #15
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end16.if.end30_crit_edge
  %call31 = call i32 @p9_client_clunk(ptr noundef %call.i) #15
  br label %cleanup

error:                                            ; preds = %if.then26, %if.then20, %if.then14
  %err.0 = phi i32 [ %call12, %if.then14 ], [ %9, %if.then20 ], [ %15, %if.then26 ]
  %fid.0 = phi ptr [ null, %if.then14 ], [ null, %if.then20 ], [ %call18, %if.then26 ]
  %tobool32.not = icmp eq ptr %call1.i, null
  br i1 %tobool32.not, label %error.if.end35_crit_edge, label %if.then33

error.if.end35_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then33:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #17
  %call34 = call i32 @p9_client_clunk(ptr noundef nonnull %call1.i) #15
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %error.if.end35_crit_edge
  %tobool36.not = icmp eq ptr %fid.0, null
  br i1 %tobool36.not, label %if.end35.if.end39_crit_edge, label %if.then37

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  %call38 = call i32 @p9_client_clunk(ptr noundef nonnull %fid.0) #15
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35.if.end39_crit_edge
  %16 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end30, %if.then7, %if.then
  %retval.0 = phi ptr [ %call.i, %if.then ], [ %call1.i, %if.then7 ], [ %16, %if.end39 ], [ %call1.i, %if.end30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #15
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_fcreate(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_resize_cookie(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @finish_no_open(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v9fs_writeback_fid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @finish_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_open(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_open_fid_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_use_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @v9fs_vfs_get_link(ptr noundef %dentry, ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %done) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dentry, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call ptr @v9fs_fid_lookup(ptr noundef nonnull %dentry) #15
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_get_link, ptr noundef nonnull @.str.29, ptr noundef nonnull %dentry) #15
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @p9_client_stat(ptr noundef %call2) #15
  %call13 = tail call i32 @p9_client_clunk(ptr noundef %call2) #15
  %cmp.i46 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %mode = getelementptr inbounds %struct.p9_wstat, ptr %call12, i32 0, i32 4
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 8
  %and = and i32 %8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @p9stat_free(ptr noundef %call12) #15
  tail call void @kfree(ptr noundef %call12) #15
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %extension = getelementptr inbounds %struct.p9_wstat, ptr %call12, i32 0, i32 12
  %9 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %extension, align 8
  store ptr null, ptr %extension, align 8
  %call23 = tail call i32 @strlen(ptr noundef %10) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call23)
  %cmp = icmp ugt i32 %call23, 4095
  br i1 %cmp, label %if.then24, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr i8, ptr %10, i32 4095
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21.if.end25_crit_edge
  tail call void @p9stat_free(ptr noundef %call12) #15
  tail call void @kfree(ptr noundef %call12) #15
  %12 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @kfree_link, ptr %done, align 4
  %arg2.i = getelementptr inbounds %struct.delayed_call, ptr %done, i32 0, i32 1
  %13 = ptrtoint ptr %arg2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %arg2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then19, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %if.end25 ], [ inttoptr (i32 -22 to ptr), %if.then19 ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -9 to ptr), %if.end6.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_link(ptr noundef) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !16, !17, !18, !20, !21, !23, !24, !26, !28, !30, !31, !33, !35, !36, !38, !40, !41, !43, !45, !47, !48, !50, !52, !54, !56, !57, !59, !61, !62, !64, !65, !67, !69, !70, !72, !74, !76, !78, !79, !81, !83, !85, !87}
!llvm.named.register.sp = !{!88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @v9fs_alloc_inode.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/9p/vfs_inode.c", i32 239, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.v9fs_init_inode, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/9p/vfs_inode.c", i32 275, i32 4}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/9p/vfs_inode.c", i32 308, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/9p/vfs_inode.c", i32 336, i32 3}
!10 = !{ptr @__func__.v9fs_get_inode, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/9p/vfs_inode.c", i32 359, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/9p/vfs_inode.c", i32 363, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @v9fs_get_inode._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @v9fs_get_inode._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__func__.v9fs_vfs_lookup, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/9p/vfs_inode.c", i32 761, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__func__.v9fs_vfs_rename, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/9p/vfs_inode.c", i32 942, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/9p/vfs_inode.c", i32 985, i32 3}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/9p/vfs_inode.c", i32 1191, i32 8}
!28 = !{ptr @__func__.v9fs_remove, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/9p/vfs_inode.c", i32 550, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/9p/vfs_inode.c", i32 558, i32 3}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/9p/vfs_inode.c", i32 133, i32 31}
!38 = !{ptr @__func__.p9mode2unixmode, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/9p/vfs_inode.c", i32 135, i32 4}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/9p/vfs_inode.c", i32 148, i32 4}
!43 = !{ptr @v9fs_dir_inode_operations_dotu, !44, !"v9fs_dir_inode_operations_dotu", i1 false, i1 false}
!44 = !{!"../fs/9p/vfs_inode.c", i32 1432, i32 38}
!45 = !{ptr @__func__.v9fs_create, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/9p/vfs_inode.c", i32 612, i32 2}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/9p/vfs_inode.c", i32 627, i32 3}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/9p/vfs_inode.c", i32 634, i32 3}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/9p/vfs_inode.c", i32 656, i32 4}
!54 = !{ptr @__func__.v9fs_vfs_link, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/9p/vfs_inode.c", i32 1346, i32 2}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/9p/vfs_inode.c", i32 1353, i32 16}
!59 = !{ptr @__func__.v9fs_vfs_mkspecial, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/9p/vfs_inode.c", i32 1293, i32 3}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @__func__.v9fs_vfs_symlink, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/9p/vfs_inode.c", i32 1322, i32 2}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @__func__.v9fs_vfs_mkdir, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/9p/vfs_inode.c", i32 725, i32 2}
!67 = !{ptr @__func__.v9fs_vfs_mknod, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/9p/vfs_inode.c", i32 1382, i32 2}
!69 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/9p/vfs_inode.c", i32 1388, i32 17}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/9p/vfs_inode.c", i32 1390, i32 17}
!74 = !{ptr @__func__.v9fs_vfs_setattr, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/9p/vfs_inode.c", i32 1085, i32 2}
!76 = !{ptr @__func__.v9fs_vfs_getattr, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/9p/vfs_inode.c", i32 1044, i32 2}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @v9fs_dir_inode_operations, !80, !"v9fs_dir_inode_operations", i1 false, i1 false}
!80 = !{!"../fs/9p/vfs_inode.c", i32 1447, i32 38}
!81 = !{ptr @v9fs_file_inode_operations, !82, !"v9fs_file_inode_operations", i1 false, i1 false}
!82 = !{!"../fs/9p/vfs_inode.c", i32 1460, i32 38}
!83 = !{ptr @v9fs_symlink_inode_operations, !84, !"v9fs_symlink_inode_operations", i1 false, i1 false}
!84 = !{!"../fs/9p/vfs_inode.c", i32 1465, i32 38}
!85 = !{ptr @__func__.v9fs_vfs_get_link, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/9p/vfs_inode.c", i32 1247, i32 2}
!87 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!88 = !{!"sp"}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"auto-init"}
!99 = !{i64 2152738241}
!100 = !{i64 2149897259}
!101 = !{i64 2149902191}
!102 = !{i64 2149923903}
!103 = !{i64 2149928795}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{i64 2150005252}
!106 = !{i64 2150005577}
!107 = !{i64 2152750103}
!108 = !{i64 776801, i64 776862}
!109 = !{i64 779533}
!110 = !{!"branch_weights", i32 1, i32 2000}
!111 = !{i64 779818}
!112 = !{i64 2152736310}
!113 = !{i64 2152736152}
!114 = !{i64 2152736480}
!115 = !{i64 2150004927}
