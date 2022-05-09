; ModuleID = '/llk/IR_all_yes/fs/ubifs/xattr.c_pt.bc'
source_filename = "../fs/ubifs/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_budget_req = type { i24, i16, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.fscrypt_name = type { ptr, %struct.fscrypt_str, i32, i32, %struct.fscrypt_str, i8 }
%struct.fscrypt_str = type { ptr, i32 }
%union.ubifs_key = type { [1 x i64] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.84, i32, i32, i32, [64 x i8] }
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
%struct.ubifs_dent_node = type { %struct.ubifs_ch, [16 x i8], i64, i8, i8, i16, i32, [0 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
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
%struct.xattr = type { ptr, ptr, i32 }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"inode_is_locked(host)\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ubifs/xattr.c\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"inode->i_size == ui->data_len\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ubifs_inode(host)->xattr_size > ui->data_len\00", [51 x i8] zeroinitializer }, align 32
@ubifs_listxattr.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.1, ptr @.str.6, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ubifs_listxattr\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"UBIFS DBG gen (pid %d): ino %lu ('%pd'), buffer size %zd\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot find next direntry, error %d\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"written <= size\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"inode %lu has too many xattrs, doing a non-atomic deletion\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dead directory entry '%s', error %d\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ubifs_inode(xino)->xattr\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot remove xattr, error %d\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"cannot initialize security for inode %lu, error %d\00", [45 x i8] zeroinitializer }, align 32
@ubifs_user_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.26, i32 0, ptr null, ptr @xattr_get, ptr @xattr_set }, [40 x i8] zeroinitializer }, align 32
@ubifs_trusted_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.22, i32 0, ptr null, ptr @xattr_get, ptr @xattr_set }, [40 x i8] zeroinitializer }, align 32
@ubifs_security_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.25, i32 0, ptr null, ptr @xattr_get, ptr @xattr_set }, [40 x i8] zeroinitializer }, align 32
@ubifs_xattr_handlers = dso_local global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @ubifs_user_xattr_handler, ptr @ubifs_trusted_xattr_handler, ptr @ubifs_security_xattr_handler, ptr null], [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"!(hash & ~UBIFS_S_KEY_HASH_MASK)\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ubifs/key.h\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"inode %lu already has too many xattrs (%d), cannot create more\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"cannot add one more xattr name to inode %lu, total names length would become %d, max. is %d\00", [36 x i8] zeroinitializer }, align 32
@empty_aops = external dso_local constant %struct.address_space_operations, align 4
@empty_iops = internal constant %struct.inode_operations zeroinitializer, align 128
@empty_fops = internal constant { %struct.file_operations, [32 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"c\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dead extended attribute entry, error %d\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"corrupt extended attribute entry\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ui->data_len == inode->i_size\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trusted.\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"max_xattrs < c->max_orphans\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ubifs/misc.h\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"user.\00", [26 x i8] zeroinitializer }, align 32
@xattr_get.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.27, ptr @.str.1, ptr @.str.28, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xattr_get\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"UBIFS DBG gen (pid %d): xattr '%s', ino %lu ('%pd'), buf size %zd\0A\00", [61 x i8] zeroinitializer }, align 32
@xattr_set.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.29, ptr @.str.1, ptr @.str.30, i8 0, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xattr_set\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"UBIFS DBG gen (pid %d): xattr '%s', host ino %lu ('%pd'), size %zd\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"inode->i_nlink == 1\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 274, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 360, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 361, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 406, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 449, i32 16 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 453, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 514, i32 16 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 532, i32 17 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 540, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 548, i32 17 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 683, i32 16 }
@___asan_gen_.74 = private unnamed_addr constant [25 x i8] c"ubifs_user_xattr_handler\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 718, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant [28 x i8] c"ubifs_trusted_xattr_handler\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 724, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant [29 x i8] c"ubifs_security_xattr_handler\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 731, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant [21 x i8] c"ubifs_xattr_handlers\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 738, i32 29 }
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"../fs/ubifs/key.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 221, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 92, i32 16 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 104, i32 16 }
@___asan_gen_.98 = private unnamed_addr constant [11 x i8] c"empty_fops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 65, i32 37 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 149, i32 29 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 252, i32 16 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 258, i32 15 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 201, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 389, i32 20 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"../fs/ubifs/misc.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 283, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 658, i32 16 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 719, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 694, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 707, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [20 x i8] c"../fs/ubifs/xattr.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 628, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @ubifs_user_xattr_handler, ptr @ubifs_trusted_xattr_handler, ptr @ubifs_security_xattr_handler, ptr @ubifs_xattr_handlers, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @empty_fops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_user_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_trusted_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_security_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_xattr_handlers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @empty_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_xattr_set(ptr noundef %host, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags, i1 noundef zeroext %check_lock) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca %struct.ubifs_budget_req, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  %nm = alloca %struct.fscrypt_name, align 4
  %key = alloca %union.ubifs_key, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #9
  %4 = call ptr @memset(ptr %nm, i32 0, i32 32)
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1
  %5 = ptrtoint ptr %disk_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %disk_name, align 4
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %call = tail call i32 @strlen(ptr noundef %name) #12
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #9
  br i1 %check_lock, label %do.body, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.body:                                          ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #9
  %7 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i.not = icmp eq i32 %8, 0
  br i1 %cmp.i.i.not, label %if.then7, label %do.body.if.end8_crit_edge, !prof !82

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 274) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body.if.end8_crit_edge, %entry.if.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp = icmp ugt i32 %size, 4096
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %10)
  %cmp13 = icmp ugt i32 %10, 255
  br i1 %cmp13, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3136, i32 noundef 312) #13
  %tobool17.not = icmp eq ptr %call7.i, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %xattr_sem = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 8
  tail call void @down_write(ptr noundef %xattr_sem) #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  %key_hash.i = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 66
  %14 = ptrtoint ptr %key_hash.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %key_hash.i, align 4
  %16 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disk_name, align 4
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %call.i = tail call i32 %15(ptr noundef %17, i32 noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 536870912
  br i1 %tobool.not.i, label %if.end19.xent_key_init.exit_crit_edge, label %if.then.i, !prof !83

if.end19.xent_key_init.exit_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %xent_key_init.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 221) #9
  br label %xent_key_init.exit

xent_key_init.exit:                               ; preds = %if.then.i, %if.end19.xent_key_init.exit_crit_edge
  %20 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %13, ptr %key, align 8
  %or.i = or i32 %call.i, 1610612736
  %arrayidx6.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %arrayidx6.i, align 4
  %call21 = call i32 @ubifs_tnc_lookup_nm(ptr noundef %3, ptr noundef nonnull %key, ptr noundef nonnull %call7.i, ptr noundef nonnull %nm) #9
  %22 = zext i32 %call21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call21, label %xent_key_init.exit.out_free_crit_edge [
    i32 0, label %if.end31
    i32 -2, label %if.end26
  ]

xent_key_init.exit.out_free_crit_edge:            ; preds = %xent_key_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end26:                                         ; preds = %xent_key_init.exit
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.else, label %if.end26.out_free_crit_edge

if.end26.out_free_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.else:                                          ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i) #9
  %23 = getelementptr inbounds i8, ptr %req.i, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %23, align 4
  %add.i = shl nuw nsw i32 %size, 12
  %bf.value.i = add nuw nsw i32 %add.i, 28672
  %bf.shl.i = and i32 %bf.value.i, 33521664
  %bf.set24.i = or i32 %bf.shl.i, 167772416
  %25 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %bf.set24.i, ptr %req.i, align 4
  %data_len.i = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 15
  %26 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i, align 4
  %28 = trunc i32 %27 to i16
  %29 = shl i16 %28, 1
  %bf.value28.i = add i16 %29, 14
  %bf.shl29.i = and i16 %bf.value28.i, -16
  %bf.set31.i = or i16 %bf.shl29.i, 1
  store i16 %bf.set31.i, ptr %23, align 4
  %idx_growth.i = getelementptr inbounds %struct.ubifs_budget_req, ptr %req.i, i32 0, i32 2
  %30 = ptrtoint ptr %idx_growth.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %idx_growth.i, align 4
  %data_growth.i = getelementptr inbounds %struct.ubifs_budget_req, ptr %req.i, i32 0, i32 3
  %31 = ptrtoint ptr %data_growth.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %data_growth.i, align 4
  %dd_growth.i = getelementptr inbounds %struct.ubifs_budget_req, ptr %req.i, i32 0, i32 4
  %32 = ptrtoint ptr %dd_growth.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %dd_growth.i, align 4
  %xattr_cnt.i = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 4
  %33 = ptrtoint ptr %xattr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xattr_cnt.i, align 4
  %leb_size.i.i = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 75
  %35 = ptrtoint ptr %leb_size.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %leb_size.i.i, align 8
  %div.i.i = sdiv i32 %36, 2
  %div1.i.i = udiv i32 %div.i.i, 160
  %max_orphans.i.i = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 113
  %37 = ptrtoint ptr %max_orphans.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_orphans.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i.i, i32 %38)
  %cmp.not.i.i = icmp slt i32 %div1.i.i, %38
  br i1 %cmp.not.i.i, label %if.else.ubifs_xattr_max_cnt.exit.i_crit_edge, label %if.then.i.i, !prof !83

if.else.ubifs_xattr_max_cnt.exit.i_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_xattr_max_cnt.exit.i

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 283) #9
  br label %ubifs_xattr_max_cnt.exit.i

ubifs_xattr_max_cnt.exit.i:                       ; preds = %if.then.i.i, %if.else.ubifs_xattr_max_cnt.exit.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %div1.i.i)
  %cmp.not.i = icmp ult i32 %34, %div1.i.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i73

if.then.i73:                                      ; preds = %ubifs_xattr_max_cnt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_ino, align 8
  %41 = ptrtoint ptr %xattr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %xattr_cnt.i, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %40, i32 noundef %42) #9
  br label %create_xattr.exit

if.end.i:                                         ; preds = %ubifs_xattr_max_cnt.exit.i
  %xattr_names.i = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 5
  %43 = ptrtoint ptr %xattr_names.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %xattr_names.i, align 8
  %45 = ptrtoint ptr %xattr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %xattr_cnt.i, align 4
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  %add35.i = add i32 %44, 1
  %add36.i = add i32 %add35.i, %46
  %add37.i = add i32 %add36.i, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add37.i)
  %cmp38.i = icmp sgt i32 %add37.i, 65536
  br i1 %cmp38.i, label %if.then39.i, label %if.end41.i

if.then39.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %50, i32 noundef %add37.i, i32 noundef 65536) #9
  br label %create_xattr.exit

if.end41.i:                                       ; preds = %if.end.i
  %call42.i = call i32 @ubifs_budget_space(ptr noundef %3, ptr noundef nonnull %req.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool.not.i76 = icmp eq i32 %call42.i, 0
  br i1 %tobool.not.i76, label %if.end44.i, label %if.end41.i.create_xattr.exit_crit_edge

if.end41.i.create_xattr.exit_crit_edge:           ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %create_xattr.exit

if.end44.i:                                       ; preds = %if.end41.i
  %call45.i = call ptr @ubifs_new_inode(ptr noundef %3, ptr noundef %host, i16 noundef zeroext -32257) #9
  %cmp.i.i77 = icmp ugt ptr %call45.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i77, label %if.then47.i, label %if.end49.i

if.then47.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %call45.i to i32
  br label %out_budg.i

if.end49.i:                                       ; preds = %if.end44.i
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call45.i, i32 0, i32 9
  %52 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @empty_aops, ptr %a_ops.i, align 4
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call45.i, i32 0, i32 7
  %55 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @empty_iops, ptr %i_op.i, align 8
  %56 = getelementptr inbounds %struct.inode, ptr %call45.i, i32 0, i32 44
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @empty_fops, ptr %56, align 8
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %call45.i, i32 0, i32 4
  %58 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i_flags.i, align 4
  %or.i78 = or i32 %59, 131
  store i32 %or.i78, ptr %i_flags.i, align 4
  %xattr.i = getelementptr inbounds %struct.ubifs_inode, ptr %call45.i, i32 0, i32 6
  %60 = ptrtoint ptr %xattr.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load51.i = load i8, ptr %xattr.i, align 4
  %bf.set53.i = or i8 %bf.load51.i, 64
  store i8 %bf.set53.i, ptr %xattr.i, align 4
  %flags.i = getelementptr inbounds %struct.ubifs_inode, ptr %call45.i, i32 0, i32 12
  %61 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i, align 8
  %or54.i = or i32 %62, 32
  store i32 %or54.i, ptr %flags.i, align 8
  %call55.i = call ptr @kmemdup(ptr noundef %value, i32 noundef %size, i32 noundef 3136) #9
  %data.i = getelementptr inbounds %struct.ubifs_inode, ptr %call45.i, i32 0, i32 16
  %63 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call55.i, ptr %data.i, align 8
  %tobool57.not.i = icmp eq ptr %call55.i, null
  br i1 %tobool57.not.i, label %if.end49.i.out_free.i_crit_edge, label %if.end59.i

if.end49.i.out_free.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free.i

if.end59.i:                                       ; preds = %if.end49.i
  %conv.i89 = zext i32 %size to i64
  %ui_size.i = getelementptr inbounds %struct.ubifs_inode, ptr %call45.i, i32 0, i32 11
  %64 = ptrtoint ptr %ui_size.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv.i89, ptr %ui_size.i, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %call45.i, i32 0, i32 14
  %65 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv.i89, ptr %i_size.i, align 8
  %data_len60.i = getelementptr inbounds %struct.ubifs_inode, ptr %call45.i, i32 0, i32 15
  %66 = ptrtoint ptr %data_len60.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %size, ptr %data_len60.i, align 4
  %ui_mutex.i = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex.i, i32 noundef 0) #9
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %host) #9
  %67 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #9
  %68 = ptrtoint ptr %xattr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %xattr_cnt.i, align 4
  %add62.i = add i32 %69, 1
  store i32 %add62.i, ptr %xattr_cnt.i, align 4
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len, align 4
  %add67.i = add i32 %71, 64
  %and68.i = and i32 %add67.i, -8
  %xattr_size.i = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 3
  %72 = ptrtoint ptr %xattr_size.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %xattr_size.i, align 8
  %add72.i = add nuw nsw i32 %size, 168
  %and73.i = and i32 %add72.i, -8
  %add69.i = add i32 %73, %and73.i
  %add75.i = add i32 %add69.i, %and68.i
  store i32 %add75.i, ptr %xattr_size.i, align 8
  %74 = ptrtoint ptr %xattr_names.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %xattr_names.i, align 8
  %add79.i = add i32 %75, %71
  store i32 %add79.i, ptr %xattr_names.i, align 8
  %76 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %disk_name, align 4
  %call81.i = call i32 @strcmp(ptr noundef %77, ptr noundef nonnull dereferenceable(2) @.str.18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %cmp82.i = icmp eq i32 %call81.i, 0
  br i1 %cmp82.i, label %if.then84.i, label %if.end59.i.if.end87.i_crit_edge

if.end59.i.if.end87.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87.i

if.then84.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags85.i = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 12
  %78 = ptrtoint ptr %flags85.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags85.i, align 8
  %or86.i = or i32 %79, 64
  store i32 %or86.i, ptr %flags85.i, align 8
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then84.i, %if.end59.i.if.end87.i_crit_edge
  %call88.i = call i32 @ubifs_jnl_update(ptr noundef %3, ptr noundef %host, ptr noundef nonnull %nm, ptr noundef %call45.i, i32 noundef 0, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %tobool89.not.i = icmp eq i32 %call88.i, 0
  br i1 %tobool89.not.i, label %if.end91.i, label %out_cancel.i

if.end91.i:                                       ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_set_inode_flags(ptr noundef %host) #9
  call void @mutex_unlock(ptr noundef %ui_mutex.i) #9
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req.i) #9
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %call45.i, i32 0, i32 11
  %80 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %i_ino.i.i, align 8
  call void @__insert_inode_hash(ptr noundef %call45.i, i32 noundef %81) #9
  call void @iput(ptr noundef %call45.i) #9
  br label %create_xattr.exit

out_cancel.i:                                     ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %xattr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %xattr_cnt.i, align 4
  %sub.i = add i32 %83, -1
  store i32 %sub.i, ptr %xattr_cnt.i, align 4
  %84 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len, align 4
  %add98.i = add i32 %85, 64
  %and99.i = and i32 %add98.i, -8
  %86 = ptrtoint ptr %xattr_size.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %xattr_size.i, align 8
  %88 = add i32 %and73.i, %and99.i
  %sub107.i = sub i32 %87, %88
  store i32 %sub107.i, ptr %xattr_size.i, align 8
  %89 = ptrtoint ptr %xattr_names.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %xattr_names.i, align 8
  %sub111.i = sub i32 %90, %85
  store i32 %sub111.i, ptr %xattr_names.i, align 8
  %flags112.i = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 12
  %91 = ptrtoint ptr %flags112.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags112.i, align 8
  %and113.i = and i32 %92, -65
  store i32 %and113.i, ptr %flags112.i, align 8
  call void @mutex_unlock(ptr noundef %ui_mutex.i) #9
  br label %out_free.i

out_free.i:                                       ; preds = %out_cancel.i, %if.end49.i.out_free.i_crit_edge
  %err.0.i = phi i32 [ %call88.i, %out_cancel.i ], [ -12, %if.end49.i.out_free.i_crit_edge ]
  call void @make_bad_inode(ptr noundef %call45.i) #9
  call void @iput(ptr noundef %call45.i) #9
  br label %out_budg.i

out_budg.i:                                       ; preds = %out_free.i, %if.then47.i
  %err.1.i = phi i32 [ %51, %if.then47.i ], [ %err.0.i, %out_free.i ]
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req.i) #9
  br label %create_xattr.exit

create_xattr.exit:                                ; preds = %out_budg.i, %if.end91.i, %if.end41.i.create_xattr.exit_crit_edge, %if.then39.i, %if.then.i73
  %retval.0.i = phi i32 [ -28, %if.then.i73 ], [ -28, %if.then39.i ], [ %err.1.i, %out_budg.i ], [ 0, %if.end91.i ], [ %call42.i, %if.end41.i.create_xattr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #9
  br label %out_free

if.end31:                                         ; preds = %xent_key_init.exit
  %and32 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.out_free_crit_edge

if.end31.out_free_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end35:                                         ; preds = %if.end31
  %inum = getelementptr inbounds %struct.ubifs_dent_node, ptr %call7.i, i32 0, i32 2
  %93 = ptrtoint ptr %inum to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %inum, align 8
  %95 = call i64 @llvm.bswap.i64(i64 %94)
  %conv = trunc i64 %95 to i32
  %96 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %3, align 8
  %call.i79 = call ptr @ubifs_iget(ptr noundef %97, i32 noundef %conv) #9
  %cmp.i.i80 = icmp ugt ptr %call.i79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i80, label %iget_xattr.exit.thread90, label %if.end.i84

iget_xattr.exit.thread90:                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %call.i79 to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef %98) #9
  br label %if.then38

if.end.i84:                                       ; preds = %if.end35
  %xattr.i82 = getelementptr inbounds %struct.ubifs_inode, ptr %call.i79, i32 0, i32 6
  %99 = ptrtoint ptr %xattr.i82 to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load.i = load i8, ptr %xattr.i82, align 4
  %100 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i83 = icmp eq i8 %100, 0
  br i1 %tobool.not.i83, label %iget_xattr.exit.thread, label %if.end40

iget_xattr.exit.thread:                           ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %3, ptr noundef nonnull @.str.20) #9
  call void @iput(ptr noundef %call.i79) #9
  br label %if.then38

if.then38:                                        ; preds = %iget_xattr.exit.thread, %iget_xattr.exit.thread90
  %retval.0.i8588 = phi ptr [ inttoptr (i32 -22 to ptr), %iget_xattr.exit.thread ], [ %call.i79, %iget_xattr.exit.thread90 ]
  %101 = ptrtoint ptr %retval.0.i8588 to i32
  br label %out_free

if.end40:                                         ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = call fastcc i32 @change_xattr(ptr noundef %3, ptr noundef %host, ptr noundef %call.i79, ptr noundef %value, i32 noundef %size)
  call void @iput(ptr noundef %call.i79) #9
  br label %out_free

out_free:                                         ; preds = %if.end40, %if.then38, %if.end31.out_free_crit_edge, %create_xattr.exit, %if.end26.out_free_crit_edge, %xent_key_init.exit.out_free_crit_edge
  %err.0 = phi i32 [ %retval.0.i, %create_xattr.exit ], [ %101, %if.then38 ], [ %call41, %if.end40 ], [ %call21, %xent_key_init.exit.out_free_crit_edge ], [ -61, %if.end26.out_free_crit_edge ], [ -17, %if.end31.out_free_crit_edge ]
  call void @up_write(ptr noundef %xattr_sem) #9
  call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_free ], [ -34, %if.end8.cleanup_crit_edge ], [ -36, %if.end10.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_lookup_nm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @change_xattr(ptr noundef %c, ptr noundef %host, ptr noundef %inode, ptr noundef %value, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.ubifs_budget_req, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #9
  %0 = getelementptr inbounds i8, ptr %req, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 512, ptr %req, align 4
  %dirtied_ino_d = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 1
  %add = add i32 %size, 7
  %and = and i32 %add, 32760
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 15
  %3 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len, align 4
  %add26 = add i32 %4, 7
  %and27 = and i32 %add26, 32760
  %add28 = add nuw nsw i32 %and27, %and
  %5 = trunc i32 %add28 to i16
  %bf.shl = shl i16 %5, 1
  %bf.set31 = or i16 %bf.shl, 1
  %6 = ptrtoint ptr %dirtied_ino_d to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %bf.set31, ptr %dirtied_ino_d, align 4
  %idx_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %idx_growth to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %idx_growth, align 4
  %data_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %data_growth to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %data_growth, align 4
  %dd_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 4
  %9 = ptrtoint ptr %dd_growth to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %dd_growth, align 4
  %data_len32 = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 15
  %10 = ptrtoint ptr %data_len32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len32, align 4
  %conv = sext i32 %11 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %12 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv)
  %cmp.not = icmp eq i64 %13, %conv
  br i1 %cmp.not, label %entry.do.end_crit_edge, label %if.then, !prof !83

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 201) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call36 = call i32 @ubifs_budget_space(ptr noundef %c, ptr noundef nonnull %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %do.end
  %call40 = call ptr @kmemdup(ptr noundef %value, i32 noundef %size, i32 noundef 3136) #9
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.end39.cleanup.sink.split_crit_edge, label %if.end43

if.end39.cleanup.sink.split_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end43:                                         ; preds = %if.end39
  %data = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 16
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 8
  call void @kfree(ptr noundef %15) #9
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call40, ptr %data, align 8
  %conv45 = sext i32 %size to i64
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 11
  %17 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv45, ptr %ui_size, align 8
  %18 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv45, ptr %i_size, align 8
  %19 = ptrtoint ptr %data_len32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len32, align 4
  store i32 %size, ptr %data_len32, align 4
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex, i32 noundef 0) #9
  %i_ctime = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %host) #9
  %21 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %add51 = add i32 %20, 168
  %and52 = and i32 %add51, -8
  %xattr_size = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 3
  %22 = ptrtoint ptr %xattr_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xattr_size, align 8
  %add55 = add i32 %size, 168
  %and56 = and i32 %add55, -8
  %sub = sub i32 %and56, %and52
  %add58 = add i32 %sub, %23
  store i32 %add58, ptr %xattr_size, align 8
  %call59 = call i32 @ubifs_jnl_change_xattr(ptr noundef %c, ptr noundef %inode, ptr noundef %host) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %out_cancel

if.end62:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %ui_mutex) #9
  br label %cleanup.sink.split

out_cancel:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %xattr_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xattr_size, align 8
  %sub69 = sub i32 %and52, %and56
  %add75 = add i32 %sub69, %25
  store i32 %add75, ptr %xattr_size, align 8
  call void @mutex_unlock(ptr noundef %ui_mutex) #9
  call void @make_bad_inode(ptr noundef %inode) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_cancel, %if.end62, %if.end39.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end62 ], [ %call59, %out_cancel ], [ -12, %if.end39.cleanup.sink.split_crit_edge ]
  call void @ubifs_release_budget(ptr noundef %c, ptr noundef nonnull %req) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_xattr_get(ptr noundef %host, ptr noundef %name, ptr noundef writeonly %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %nm = alloca %struct.fscrypt_name, align 4
  %key = alloca %union.ubifs_key, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #9
  %4 = call ptr @memset(ptr %nm, i32 0, i32 32)
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1
  %5 = ptrtoint ptr %disk_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %disk_name, align 4
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %call = tail call i32 @strlen(ptr noundef %name) #12
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call)
  %cmp = icmp ugt i32 %call, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3136, i32 noundef 312) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %xattr_sem = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 8
  tail call void @down_read(ptr noundef %xattr_sem) #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %key_hash.i = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 66
  %10 = ptrtoint ptr %key_hash.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %key_hash.i, align 4
  %12 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disk_name, align 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %call.i = tail call i32 %11(ptr noundef %13, i32 noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 536870912
  br i1 %tobool.not.i, label %if.end6.xent_key_init.exit_crit_edge, label %if.then.i, !prof !83

if.end6.xent_key_init.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %xent_key_init.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 221) #9
  br label %xent_key_init.exit

xent_key_init.exit:                               ; preds = %if.then.i, %if.end6.xent_key_init.exit_crit_edge
  %16 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %9, ptr %key, align 8
  %or.i = or i32 %call.i, 1610612736
  %arrayidx6.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i, ptr %arrayidx6.i, align 4
  %call8 = call i32 @ubifs_tnc_lookup_nm(ptr noundef %3, ptr noundef nonnull %key, ptr noundef nonnull %call7.i, ptr noundef nonnull %nm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %xent_key_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call8)
  %cmp11 = icmp eq i32 %call8, -2
  %spec.store.select = select i1 %cmp11, i32 -61, i32 %call8
  br label %out_cleanup

if.end14:                                         ; preds = %xent_key_init.exit
  %inum = getelementptr inbounds %struct.ubifs_dent_node, ptr %call7.i, i32 0, i32 2
  %18 = ptrtoint ptr %inum to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %inum, align 8
  %20 = call i64 @llvm.bswap.i64(i64 %19)
  %conv = trunc i64 %20 to i32
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 8
  %call.i88 = call ptr @ubifs_iget(ptr noundef %22, i32 noundef %conv) #9
  %cmp.i.i = icmp ugt ptr %call.i88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %iget_xattr.exit.thread94, label %if.end.i

iget_xattr.exit.thread94:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %call.i88 to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef %23) #9
  br label %if.then17

if.end.i:                                         ; preds = %if.end14
  %xattr.i = getelementptr inbounds %struct.ubifs_inode, ptr %call.i88, i32 0, i32 6
  %24 = ptrtoint ptr %xattr.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %xattr.i, align 4
  %25 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i90 = icmp eq i8 %25, 0
  br i1 %tobool.not.i90, label %iget_xattr.exit.thread, label %if.end19

iget_xattr.exit.thread:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %3, ptr noundef nonnull @.str.20) #9
  call void @iput(ptr noundef %call.i88) #9
  br label %if.then17

if.then17:                                        ; preds = %iget_xattr.exit.thread, %iget_xattr.exit.thread94
  %retval.0.i93 = phi ptr [ inttoptr (i32 -22 to ptr), %iget_xattr.exit.thread ], [ %call.i88, %iget_xattr.exit.thread94 ]
  %26 = ptrtoint ptr %retval.0.i93 to i32
  br label %out_cleanup

if.end19:                                         ; preds = %if.end.i
  %i_size = getelementptr inbounds %struct.inode, ptr %call.i88, i32 0, i32 14
  %27 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_size, align 8
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %call.i88, i32 0, i32 15
  %29 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len, align 4
  %conv21 = sext i32 %30 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %conv21)
  %cmp22.not = icmp eq i64 %28, %conv21
  br i1 %cmp22.not, label %if.end19.do.body29_crit_edge, label %if.then27, !prof !83

if.end19.do.body29_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 360) #9
  br label %do.body29

do.body29:                                        ; preds = %if.then27, %if.end19.do.body29_crit_edge
  %xattr_size = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 3
  %31 = ptrtoint ptr %xattr_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xattr_size, align 8
  %33 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp32.not = icmp ugt i32 %32, %34
  br i1 %cmp32.not, label %do.body29.do.end45_crit_edge, label %if.then42, !prof !83

do.body29.do.end45_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

if.then42:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 361) #9
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %do.body29.do.end45_crit_edge
  %tobool46.not = icmp eq ptr %buf, null
  br i1 %tobool46.not, label %do.end45.if.end54_crit_edge, label %if.then47

do.end45.if.end54_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then47:                                        ; preds = %do.end45
  %35 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %size)
  %cmp49 = icmp ugt i32 %36, %size
  br i1 %cmp49, label %if.then47.out_iput_crit_edge, label %if.end52

if.then47.out_iput_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_iput

if.end52:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.ubifs_inode, ptr %call.i88, i32 0, i32 16
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 8
  %39 = call ptr @memcpy(ptr %buf, ptr %38, i32 %36)
  br label %if.end54

if.end54:                                         ; preds = %if.end52, %do.end45.if.end54_crit_edge
  %40 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_len, align 4
  br label %out_iput

out_iput:                                         ; preds = %if.end54, %if.then47.out_iput_crit_edge
  %err.0 = phi i32 [ %41, %if.end54 ], [ -34, %if.then47.out_iput_crit_edge ]
  call void @iput(ptr noundef %call.i88) #9
  br label %out_cleanup

out_cleanup:                                      ; preds = %out_iput, %if.then17, %if.then10
  %err.1 = phi i32 [ %spec.store.select, %if.then10 ], [ %26, %if.then17 ], [ %err.0, %out_iput ]
  call void @up_read(ptr noundef %xattr_sem) #9
  call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_cleanup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out_cleanup ], [ -36, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_listxattr(ptr noundef %dentry, ptr noundef writeonly %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %union.ubifs_key, align 8
  %nm = alloca %struct.fscrypt_name, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #9
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #9
  %6 = call ptr @memset(ptr %nm, i32 0, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_listxattr.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_listxattr, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = tail call i32 @llvm.read_register.i32(metadata !72) #9
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
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_listxattr.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.6, i32 noundef %12, i32 noundef %14, ptr noundef %dentry, i32 noundef %size) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %xattr_sem = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 8
  tail call void @down_read(ptr noundef %xattr_sem) #9
  %xattr_names = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %xattr_names to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xattr_names, align 8
  %xattr_cnt = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %xattr_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xattr_cnt, align 4
  %add = add i32 %18, %16
  %tobool6.not = icmp eq ptr %buffer, null
  br i1 %tobool6.not, label %do.end.out_err_crit_edge, label %if.end8

do.end.out_err_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size)
  %cmp = icmp ugt i32 %add, %size
  br i1 %cmp, label %if.end8.out_err_crit_edge, label %if.end10

if.end8.out_err_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.end10:                                         ; preds = %if.end8
  %i_ino11 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %i_ino11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino11, align 8
  %21 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %key, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1610612736, ptr %arrayidx1.i, align 4
  %call1298 = call ptr @ubifs_tnc_next_ent(ptr noundef %5, ptr noundef nonnull %key, ptr noundef nonnull %nm) #9
  %cmp.i99 = icmp ugt ptr %call1298, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %if.end10.if.then14_crit_edge, label %if.end16.lr.ph

if.end10.if.then14_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.end16.lr.ph:                                   ; preds = %if.end10
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1
  %len19 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  br label %if.end16

if.then14:                                        ; preds = %if.end33.if.then14_crit_edge, %if.end10.if.then14_crit_edge
  %pxent.0.lcssa = phi ptr [ null, %if.end10.if.then14_crit_edge ], [ %call12103, %if.end33.if.then14_crit_edge ]
  %written.0.lcssa = phi i32 [ 0, %if.end10.if.then14_crit_edge ], [ %written.1, %if.end33.if.then14_crit_edge ]
  %call12.lcssa = phi ptr [ %call1298, %if.end10.if.then14_crit_edge ], [ %call12, %if.end33.if.then14_crit_edge ]
  call void @kfree(ptr noundef %pxent.0.lcssa) #9
  call void @up_read(ptr noundef %xattr_sem) #9
  %cmp36.not = icmp eq ptr %call12.lcssa, inttoptr (i32 -2 to ptr)
  br i1 %cmp36.not, label %do.body40, label %if.then38

if.end16:                                         ; preds = %if.end33.if.end16_crit_edge, %if.end16.lr.ph
  %call12103 = phi ptr [ %call1298, %if.end16.lr.ph ], [ %call12, %if.end33.if.end16_crit_edge ]
  %written.0101 = phi i32 [ 0, %if.end16.lr.ph ], [ %written.1, %if.end33.if.end16_crit_edge ]
  %pxent.0100 = phi ptr [ null, %if.end16.lr.ph ], [ %call12103, %if.end33.if.end16_crit_edge ]
  %name = getelementptr inbounds %struct.ubifs_dent_node, ptr %call12103, i32 0, i32 7
  %23 = ptrtoint ptr %disk_name to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %name, ptr %disk_name, align 4
  %nlen = getelementptr inbounds %struct.ubifs_dent_node, ptr %call12103, i32 0, i32 5
  %24 = ptrtoint ptr %nlen to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %nlen, align 1
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %conv = zext i16 %26 to i32
  %27 = ptrtoint ptr %len19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %len19, align 4
  %call.i = call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(2) @.str.18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i94 = icmp eq i32 %call.i, 0
  br i1 %cmp.i94, label %if.end16.if.end33_crit_edge, label %if.end.i

if.end16.if.end33_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end.i:                                         ; preds = %if.end16
  %call1.i = call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(9) @.str.22, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end.i.if.then23_crit_edge

if.end.i.if.then23_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

land.lhs.true.i:                                  ; preds = %if.end.i
  %call3.i = call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call3.i, label %land.lhs.true.i.if.then23_crit_edge, label %land.lhs.true.i.if.end33_crit_edge

land.lhs.true.i.if.end33_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.lhs.true.i.if.then23_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.then23:                                        ; preds = %land.lhs.true.i.if.then23_crit_edge, %if.end.i.if.then23_crit_edge
  %add.ptr = getelementptr i8, ptr %buffer, i32 %written.0101
  %28 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %disk_name, align 4
  %30 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len19, align 4
  %add28 = add i32 %31, 1
  %32 = call ptr @memcpy(ptr %add.ptr, ptr %29, i32 %add28)
  %add32 = add i32 %add28, %written.0101
  br label %if.end33

if.end33:                                         ; preds = %if.then23, %land.lhs.true.i.if.end33_crit_edge, %if.end16.if.end33_crit_edge
  %written.1 = phi i32 [ %add32, %if.then23 ], [ %written.0101, %if.end16.if.end33_crit_edge ], [ %written.0101, %land.lhs.true.i.if.end33_crit_edge ]
  call void @kfree(ptr noundef %pxent.0100) #9
  %key34 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call12103, i32 0, i32 1
  %33 = ptrtoint ptr %key34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %key34, align 8
  %35 = call i32 @llvm.bswap.i32(i32 %34) #9
  %36 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %key, align 8
  %arrayidx2.i = getelementptr %struct.ubifs_dent_node, ptr %call12103, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx2.i, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38) #9
  %40 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx1.i, align 4
  %call12 = call ptr @ubifs_tnc_next_ent(ptr noundef %5, ptr noundef nonnull %key, ptr noundef nonnull %nm) #9
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end33.if.then14_crit_edge, label %if.end33.if.end16_crit_edge

if.end33.if.end16_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end33.if.then14_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.then38:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %call12.lcssa to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %41) #9
  br label %cleanup

do.body40:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_cmp4(i32 %written.0.lcssa, i32 %size)
  %cmp41.not = icmp ugt i32 %written.0.lcssa, %size
  br i1 %cmp41.not, label %if.then51, label %do.body40.cleanup_crit_edge, !prof !82

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then51:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 453) #9
  br label %cleanup

out_err:                                          ; preds = %if.end8.out_err_crit_edge, %do.end.out_err_crit_edge
  %err.0 = phi i32 [ %add, %do.end.out_err_crit_edge ], [ -34, %if.end8.out_err_crit_edge ]
  tail call void @up_read(ptr noundef %xattr_sem) #9
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.then51, %do.body40.cleanup_crit_edge, %if.then38
  %retval.0 = phi i32 [ %err.0, %out_err ], [ %41, %if.then38 ], [ %written.0.lcssa, %if.then51 ], [ %written.0.lcssa, %do.body40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_next_ent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_purge_xattrs(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %union.ubifs_key, align 8
  %nm = alloca %struct.fscrypt_name, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #9
  %i_sb = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #9
  %4 = call ptr @memset(ptr %nm, i32 0, i32 32)
  %xattr_cnt = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 4
  %5 = ptrtoint ptr %xattr_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xattr_cnt, align 4
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 75
  %7 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %leb_size.i, align 8
  %div.i = sdiv i32 %8, 2
  %div1.i = udiv i32 %div.i, 160
  %max_orphans.i = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 113
  %9 = ptrtoint ptr %max_orphans.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_orphans.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %10)
  %cmp.not.i = icmp slt i32 %div1.i, %10
  br i1 %cmp.not.i, label %entry.ubifs_xattr_max_cnt.exit_crit_edge, label %if.then.i, !prof !83

entry.ubifs_xattr_max_cnt.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_xattr_max_cnt.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 283) #9
  br label %ubifs_xattr_max_cnt.exit

ubifs_xattr_max_cnt.exit:                         ; preds = %if.then.i, %entry.ubifs_xattr_max_cnt.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %div1.i)
  %cmp.not = icmp ugt i32 %6, %div1.i
  br i1 %cmp.not, label %if.end, label %ubifs_xattr_max_cnt.exit.cleanup_crit_edge

ubifs_xattr_max_cnt.exit.cleanup_crit_edge:       ; preds = %ubifs_xattr_max_cnt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %ubifs_xattr_max_cnt.exit
  %i_ino = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %12) #9
  %xattr_sem = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 8
  tail call void @down_write(ptr noundef %xattr_sem) #9
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  %15 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %key, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1610612736, ptr %arrayidx1.i, align 4
  %call494 = call ptr @ubifs_tnc_next_ent(ptr noundef %3, ptr noundef nonnull %key, ptr noundef nonnull %nm) #9
  %cmp.i95 = icmp ugt ptr %call494, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.end.if.then6_crit_edge, label %if.end8.lr.ph

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.end8.lr.ph:                                    ; preds = %if.end
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  br label %if.end8

if.then6:                                         ; preds = %if.end28.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %pxent.0.lcssa = phi ptr [ null, %if.end.if.then6_crit_edge ], [ %call497, %if.end28.if.then6_crit_edge ]
  %call4.lcssa = phi ptr [ %call494, %if.end.if.then6_crit_edge ], [ %call4, %if.end28.if.then6_crit_edge ]
  call void @kfree(ptr noundef %pxent.0.lcssa) #9
  call void @up_write(ptr noundef %xattr_sem) #9
  %cmp32.not = icmp eq ptr %call4.lcssa, inttoptr (i32 -2 to ptr)
  br i1 %cmp32.not, label %if.then6.cleanup_crit_edge, label %if.then34

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end28.if.end8_crit_edge, %if.end8.lr.ph
  %call497 = phi ptr [ %call494, %if.end8.lr.ph ], [ %call4, %if.end28.if.end8_crit_edge ]
  %pxent.096 = phi ptr [ null, %if.end8.lr.ph ], [ %call497, %if.end28.if.end8_crit_edge ]
  %name = getelementptr inbounds %struct.ubifs_dent_node, ptr %call497, i32 0, i32 7
  %17 = ptrtoint ptr %disk_name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %name, ptr %disk_name, align 4
  %nlen = getelementptr inbounds %struct.ubifs_dent_node, ptr %call497, i32 0, i32 5
  %18 = ptrtoint ptr %nlen to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %nlen, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %conv = zext i16 %20 to i32
  %21 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %len, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 8
  %inum = getelementptr inbounds %struct.ubifs_dent_node, ptr %call497, i32 0, i32 2
  %24 = ptrtoint ptr %inum to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %inum, align 1
  %26 = call i64 @llvm.bswap.i64(i64 %25)
  %conv11 = trunc i64 %26 to i32
  %call12 = call ptr @ubifs_iget(ptr noundef %23, i32 noundef %conv11) #9
  %cmp.i87 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %if.then14, label %do.body

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call12 to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %27) #9
  call void @ubifs_ro_mode(ptr noundef %3, i32 noundef %27) #9
  call void @kfree(ptr noundef %pxent.096) #9
  call void @kfree(ptr noundef %call497) #9
  br label %out_err

do.body:                                          ; preds = %if.end8
  %xattr = getelementptr inbounds %struct.ubifs_inode, ptr %call12, i32 0, i32 6
  %28 = ptrtoint ptr %xattr to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %xattr, align 4
  %29 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp eq i8 %29, 0
  br i1 %tobool.not, label %if.then23, label %do.body.do.end_crit_edge, !prof !82

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 540) #9
  br label %do.end

do.end:                                           ; preds = %if.then23, %do.body.do.end_crit_edge
  call void @clear_nlink(ptr noundef %call12) #9
  %call25 = call fastcc i32 @remove_xattr(ptr noundef %3, ptr noundef %host, ptr noundef %call12, ptr noundef nonnull %nm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef %pxent.096) #9
  call void @kfree(ptr noundef %call497) #9
  call void @iput(ptr noundef %call12) #9
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %call25) #9
  br label %out_err

if.end28:                                         ; preds = %do.end
  call void @iput(ptr noundef %call12) #9
  call void @kfree(ptr noundef %pxent.096) #9
  %key29 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call497, i32 0, i32 1
  %30 = ptrtoint ptr %key29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %key29, align 8
  %32 = call i32 @llvm.bswap.i32(i32 %31) #9
  %33 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %key, align 8
  %arrayidx2.i = getelementptr %struct.ubifs_dent_node, ptr %call497, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx2.i, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35) #9
  %37 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx1.i, align 4
  %call4 = call ptr @ubifs_tnc_next_ent(ptr noundef %3, ptr noundef nonnull %key, ptr noundef nonnull %nm) #9
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end28.if.then6_crit_edge, label %if.end28.if.end8_crit_edge

if.end28.if.end8_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end28.if.then6_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then34:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %call4.lcssa to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %38) #9
  br label %cleanup

out_err:                                          ; preds = %if.then27, %if.then14
  %err.0 = phi i32 [ %27, %if.then14 ], [ %call25, %if.then27 ]
  call void @up_write(ptr noundef %xattr_sem) #9
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.then34, %if.then6.cleanup_crit_edge, %ubifs_xattr_max_cnt.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %38, %if.then34 ], [ %err.0, %out_err ], [ 0, %ubifs_xattr_max_cnt.exit.cleanup_crit_edge ], [ 0, %if.then6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_iget(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @remove_xattr(ptr noundef %c, ptr noundef %host, ptr noundef %inode, ptr noundef %nm) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.ubifs_budget_req, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #9
  %0 = getelementptr inbounds i8, ptr %req, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 67109376, ptr %req, align 4
  %dirtied_ino_d = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 1
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 15
  %3 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len, align 4
  %5 = trunc i32 %4 to i16
  %6 = shl i16 %5, 1
  %bf.value = add i16 %6, 14
  %bf.shl = and i16 %bf.value, -16
  %bf.set28 = or i16 %bf.shl, 1
  %7 = ptrtoint ptr %dirtied_ino_d to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %bf.set28, ptr %dirtied_ino_d, align 4
  %idx_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %idx_growth to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %idx_growth, align 4
  %data_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %data_growth to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %data_growth, align 4
  %dd_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %dd_growth to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dd_growth, align 4
  %data_len29 = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 15
  %11 = ptrtoint ptr %data_len29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len29, align 4
  %conv = sext i32 %12 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %13 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %conv)
  %cmp.not = icmp eq i64 %14, %conv
  br i1 %cmp.not, label %entry.do.end_crit_edge, label %if.then, !prof !83

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 470) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call33 = call i32 @ubifs_budget_space(ptr noundef %c, ptr noundef nonnull %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %do.end
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex, i32 noundef 0) #9
  %i_ctime = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %host) #9
  %15 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %xattr_cnt = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 4
  %16 = ptrtoint ptr %xattr_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xattr_cnt, align 4
  %sub = add i32 %17, -1
  store i32 %sub, ptr %xattr_cnt, align 4
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %add39 = add i32 %19, 64
  %and40 = and i32 %add39, -8
  %xattr_size = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 3
  %20 = ptrtoint ptr %xattr_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xattr_size, align 8
  %sub41 = sub i32 %21, %and40
  store i32 %sub41, ptr %xattr_size, align 8
  %22 = ptrtoint ptr %data_len29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_len29, align 4
  %add45 = add i32 %23, 168
  %and46 = and i32 %add45, -8
  %sub48 = sub i32 %sub41, %and46
  store i32 %sub48, ptr %xattr_size, align 8
  %24 = load i32, ptr %len, align 4
  %xattr_names = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 5
  %25 = ptrtoint ptr %xattr_names to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xattr_names, align 8
  %sub51 = sub i32 %26, %24
  store i32 %sub51, ptr %xattr_names, align 8
  %call52 = call i32 @ubifs_jnl_delete_xattr(ptr noundef %c, ptr noundef %host, ptr noundef %inode, ptr noundef %nm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %out_cancel

if.end55:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %ui_mutex) #9
  call void @ubifs_release_budget(ptr noundef %c, ptr noundef nonnull %req) #9
  br label %cleanup

out_cancel:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %xattr_cnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xattr_cnt, align 4
  %add58 = add i32 %28, 1
  store i32 %add58, ptr %xattr_cnt, align 4
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %add63 = add i32 %30, 64
  %and64 = and i32 %add63, -8
  %31 = ptrtoint ptr %xattr_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xattr_size, align 8
  %add66 = add i32 %and64, %32
  store i32 %add66, ptr %xattr_size, align 8
  %33 = ptrtoint ptr %data_len29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len29, align 4
  %add70 = add i32 %34, 168
  %and71 = and i32 %add70, -8
  %add73 = add i32 %and71, %add66
  store i32 %add73, ptr %xattr_size, align 8
  %35 = load i32, ptr %len, align 4
  %36 = ptrtoint ptr %xattr_names to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %xattr_names, align 8
  %add77 = add i32 %37, %35
  store i32 %add77, ptr %xattr_names, align 8
  call void @mutex_unlock(ptr noundef %ui_mutex) #9
  call void @ubifs_release_budget(ptr noundef %c, ptr noundef nonnull %req) #9
  call void @make_bad_inode(ptr noundef %inode) #9
  br label %cleanup

cleanup:                                          ; preds = %out_cancel, %if.end55, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call52, %out_cancel ], [ 0, %if.end55 ], [ %call33, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_evict_xattr_inode(ptr nocapture noundef readonly %c, i32 noundef %xattr_inum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 8
  %call = tail call ptr @ilookup(ptr noundef %1, i32 noundef %xattr_inum) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clear_nlink(ptr noundef nonnull %call) #9
  tail call void @iput(ptr noundef nonnull %call) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_init_security(ptr noundef %dentry, ptr noundef %inode, ptr noundef %qstr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @security_inode_init_security(ptr noundef %inode, ptr noundef %dentry, ptr noundef %qstr, ptr noundef nonnull @init_xattrs, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %dentry, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %5, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_init_security(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_xattrs(ptr noundef %inode, ptr nocapture noundef readonly %xattr_array, ptr nocapture noundef readnone %fs_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xattr_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xattr_array, align 4
  %cmp.not25 = icmp eq ptr %1, null
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.if.end8.i_crit_edge

entry.if.end8.i_crit_edge:                        ; preds = %entry
  br label %if.end8.i

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %if.end
  %incdec.ptr = getelementptr %struct.xattr, ptr %xattr.026, i32 1
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.if.end8.i_crit_edge

for.cond.if.end8.i_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end8.i:                                        ; preds = %for.cond.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %4 = phi ptr [ %3, %for.cond.if.end8.i_crit_edge ], [ %1, %entry.if.end8.i_crit_edge ]
  %xattr.026 = phi ptr [ %incdec.ptr, %for.cond.if.end8.i_crit_edge ], [ %xattr_array, %entry.if.end8.i_crit_edge ]
  %call = tail call i32 @strlen(ptr noundef nonnull %4) #12
  %add3 = add i32 %call, 10
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add3, i32 noundef 3136) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.for.end_crit_edge, label %if.end

if.end8.i.for.end_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %if.end8.i
  %5 = call ptr @memcpy(ptr %call9.i, ptr @.str.25, i32 10)
  %add.ptr = getelementptr i8, ptr %call9.i, i32 9
  %6 = ptrtoint ptr %xattr.026 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xattr.026, align 4
  %call7 = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %7) #12
  %value = getelementptr inbounds %struct.xattr, ptr %xattr.026, i32 0, i32 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %value, align 4
  %value_len = getelementptr inbounds %struct.xattr, ptr %xattr.026, i32 0, i32 2
  %10 = ptrtoint ptr %value_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value_len, align 4
  %call8 = tail call i32 @ubifs_xattr_set(ptr noundef %inode, ptr noundef nonnull %call9.i, ptr noundef %9, i32 noundef %11, i32 noundef 0, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.for.end_crit_edge, label %for.cond

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.end8.i.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %err.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ -12, %if.end8.i.for.end_crit_edge ], [ %call8, %if.end.for.end_crit_edge ], [ %call8, %for.cond.for.end_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_budget_space(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_new_inode(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_set_inode_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_release_budget(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_change_xattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_delete_xattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xattr_get(ptr noundef %handler, ptr noundef %dentry, ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xattr_get.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xattr_get, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xattr_get.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.28, i32 noundef %5, ptr noundef %name, i32 noundef %7, ptr noundef %dentry, i32 noundef %size) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @xattr_full_name(ptr noundef %handler, ptr noundef %name) #9
  %call5 = tail call i32 @ubifs_xattr_get(ptr noundef %inode, ptr noundef %call4, ptr noundef %buffer, i32 noundef %size)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xattr_set(ptr noundef %handler, ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %nm.i = alloca %struct.fscrypt_name, align 4
  %key.i = alloca %union.ubifs_key, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xattr_set.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xattr_set, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xattr_set.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.30, i32 noundef %5, ptr noundef %name, i32 noundef %7, ptr noundef %dentry, i32 noundef %size) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @xattr_full_name(ptr noundef %handler, ptr noundef %name) #9
  %tobool5.not = icmp eq ptr %value, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @ubifs_xattr_set(ptr noundef %inode, ptr noundef %call4, ptr noundef nonnull %value, i32 noundef %size, i32 noundef %flags, i1 noundef zeroext true)
  br label %return

if.else:                                          ; preds = %do.end
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm.i) #9
  %12 = call ptr @memset(ptr %nm.i, i32 0, i32 32)
  %disk_name.i = getelementptr inbounds %struct.fscrypt_name, ptr %nm.i, i32 0, i32 1
  %13 = ptrtoint ptr %disk_name.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call4, ptr %disk_name.i, align 4
  %len.i = getelementptr inbounds %struct.fscrypt_name, ptr %nm.i, i32 0, i32 1, i32 1
  %call.i = tail call i32 @strlen(ptr noundef %call4) #14
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i, ptr %len.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key.i) #9
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i.i, i32 noundef 4) #9
  %15 = ptrtoint ptr %i_rwsem.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %i_rwsem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.not.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.not.i, label %if.then.i, label %if.else.do.end.i_crit_edge, !prof !82

if.else.do.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 604) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.else.do.end.i_crit_edge
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %18)
  %cmp.i = icmp ugt i32 %18, 255
  br i1 %cmp.i, label %do.end.i.ubifs_xattr_remove.exit_crit_edge, label %if.end9.i

do.end.i.ubifs_xattr_remove.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_xattr_remove.exit

if.end9.i:                                        ; preds = %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3136, i32 noundef 312) #13
  %tobool11.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not.i, label %if.end9.i.ubifs_xattr_remove.exit_crit_edge, label %if.end13.i

if.end9.i.ubifs_xattr_remove.exit_crit_edge:      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_xattr_remove.exit

if.end13.i:                                       ; preds = %if.end9.i
  %xattr_sem.i = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 8
  tail call void @down_write(ptr noundef %xattr_sem.i) #9
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %20 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino.i, align 8
  %key_hash.i.i = getelementptr inbounds %struct.ubifs_info, ptr %11, i32 0, i32 66
  %22 = ptrtoint ptr %key_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %key_hash.i.i, align 4
  %24 = ptrtoint ptr %disk_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %disk_name.i, align 4
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i, align 4
  %call.i.i = tail call i32 %23(ptr noundef %25, i32 noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %call.i.i)
  %tobool.not.i.i = icmp ult i32 %call.i.i, 536870912
  br i1 %tobool.not.i.i, label %if.end13.i.xent_key_init.exit.i_crit_edge, label %if.then.i.i, !prof !83

if.end13.i.xent_key_init.exit.i_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xent_key_init.exit.i

if.then.i.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %11, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 221) #9
  br label %xent_key_init.exit.i

xent_key_init.exit.i:                             ; preds = %if.then.i.i, %if.end13.i.xent_key_init.exit.i_crit_edge
  %28 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %21, ptr %key.i, align 8
  %or.i.i = or i32 %call.i.i, 1610612736
  %arrayidx6.i.i = getelementptr inbounds [2 x i32], ptr %key.i, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i.i, ptr %arrayidx6.i.i, align 4
  %call15.i = call i32 @ubifs_tnc_lookup_nm(ptr noundef %11, ptr noundef nonnull %key.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %nm.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end21.i, label %if.then17.i

if.then17.i:                                      ; preds = %xent_key_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call15.i)
  %cmp18.i = icmp eq i32 %call15.i, -2
  %spec.store.select.i = select i1 %cmp18.i, i32 -61, i32 %call15.i
  br label %out_free.i

if.end21.i:                                       ; preds = %xent_key_init.exit.i
  %inum.i = getelementptr inbounds %struct.ubifs_dent_node, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %inum.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %inum.i, align 8
  %32 = call i64 @llvm.bswap.i64(i64 %31) #9
  %conv.i = trunc i64 %32 to i32
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %11, align 8
  %call.i76.i = call ptr @ubifs_iget(ptr noundef %34, i32 noundef %conv.i) #9
  %cmp.i.i77.i = icmp ugt ptr %call.i76.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i77.i, label %iget_xattr.exit.thread83.i, label %if.end.i.i

iget_xattr.exit.thread83.i:                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %call.i76.i to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %11, ptr noundef nonnull @.str.19, i32 noundef %35) #9
  br label %if.then24.i

if.end.i.i:                                       ; preds = %if.end21.i
  %xattr.i.i = getelementptr inbounds %struct.ubifs_inode, ptr %call.i76.i, i32 0, i32 6
  %36 = ptrtoint ptr %xattr.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i.i = load i8, ptr %xattr.i.i, align 4
  %37 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i79.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i79.i, label %iget_xattr.exit.thread.i, label %do.body27.i

iget_xattr.exit.thread.i:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %11, ptr noundef nonnull @.str.20) #9
  call void @iput(ptr noundef %call.i76.i) #9
  br label %if.then24.i

if.then24.i:                                      ; preds = %iget_xattr.exit.thread.i, %iget_xattr.exit.thread83.i
  %retval.0.i82.i = phi ptr [ inttoptr (i32 -22 to ptr), %iget_xattr.exit.thread.i ], [ %call.i76.i, %iget_xattr.exit.thread83.i ]
  %38 = ptrtoint ptr %retval.0.i82.i to i32
  br label %out_free.i

do.body27.i:                                      ; preds = %if.end.i.i
  %39 = getelementptr inbounds %struct.inode, ptr %call.i76.i, i32 0, i32 12
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp28.not.i = icmp eq i32 %41, 1
  br i1 %cmp28.not.i, label %do.body27.i.do.end41.i_crit_edge, label %if.then38.i, !prof !83

do.body27.i.do.end41.i_crit_edge:                 ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41.i

if.then38.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %11, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 628) #9
  br label %do.end41.i

do.end41.i:                                       ; preds = %if.then38.i, %do.body27.i.do.end41.i_crit_edge
  call void @clear_nlink(ptr noundef %call.i76.i) #9
  %call42.i = call fastcc i32 @remove_xattr(ptr noundef %11, ptr noundef %inode, ptr noundef %call.i76.i, ptr noundef nonnull %nm.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %do.end41.i.if.end45.i_crit_edge, label %if.then44.i

do.end41.i.if.end45.i_crit_edge:                  ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

if.then44.i:                                      ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @set_nlink(ptr noundef %call.i76.i, i32 noundef 1) #9
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then44.i, %do.end41.i.if.end45.i_crit_edge
  call void @iput(ptr noundef %call.i76.i) #9
  br label %out_free.i

out_free.i:                                       ; preds = %if.end45.i, %if.then24.i, %if.then17.i
  %err.0.i = phi i32 [ %spec.store.select.i, %if.then17.i ], [ %38, %if.then24.i ], [ %call42.i, %if.end45.i ]
  call void @up_write(ptr noundef %xattr_sem.i) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %ubifs_xattr_remove.exit

ubifs_xattr_remove.exit:                          ; preds = %out_free.i, %if.end9.i.ubifs_xattr_remove.exit_crit_edge, %do.end.i.ubifs_xattr_remove.exit_crit_edge
  %retval.0.i16 = phi i32 [ %err.0.i, %out_free.i ], [ -36, %do.end.i.ubifs_xattr_remove.exit_crit_edge ], [ -12, %if.end9.i.ubifs_xattr_remove.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm.i) #9
  br label %return

return:                                           ; preds = %ubifs_xattr_remove.exit, %if.then6
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ %retval.0.i16, %ubifs_xattr_remove.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xattr_full_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !60, !61, !62, !64, !65, !66, !68, !70}
!llvm.named.register.sp = !{!72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/xattr.c", i32 274, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ubifs/xattr.c", i32 360, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ubifs/xattr.c", i32 361, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ubifs/xattr.c", i32 406, i32 2}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ubifs_listxattr.__UNIQUE_ID_ddebug276, !8, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ubifs/xattr.c", i32 449, i32 16}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ubifs/xattr.c", i32 453, i32 2}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ubifs/xattr.c", i32 514, i32 16}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ubifs/xattr.c", i32 532, i32 17}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ubifs/xattr.c", i32 540, i32 3}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ubifs/xattr.c", i32 548, i32 17}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ubifs/xattr.c", i32 683, i32 16}
!26 = !{ptr @ubifs_xattr_handlers, !27, !"ubifs_xattr_handlers", i1 false, i1 false}
!27 = !{!"../fs/ubifs/xattr.c", i32 738, i32 29}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ubifs/key.h", i32 221, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ubifs/xattr.c", i32 92, i32 16}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ubifs/xattr.c", i32 104, i32 16}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ubifs/xattr.c", i32 149, i32 29}
!37 = !{ptr @empty_iops, !38, !"empty_iops", i1 false, i1 false}
!38 = !{!"../fs/ubifs/xattr.c", i32 64, i32 38}
!39 = !{ptr @empty_fops, !40, !"empty_fops", i1 false, i1 false}
!40 = !{!"../fs/ubifs/xattr.c", i32 65, i32 37}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ubifs/xattr.c", i32 252, i32 16}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ubifs/xattr.c", i32 258, i32 15}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ubifs/xattr.c", i32 201, i32 2}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ubifs/xattr.c", i32 389, i32 20}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ubifs/misc.h", i32 283, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ubifs/xattr.c", i32 658, i32 16}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ubifs/xattr.c", i32 719, i32 12}
!56 = !{ptr @ubifs_user_xattr_handler, !57, !"ubifs_user_xattr_handler", i1 false, i1 false}
!57 = !{!"../fs/ubifs/xattr.c", i32 718, i32 35}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ubifs/xattr.c", i32 694, i32 2}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @xattr_get.__UNIQUE_ID_ddebug277, !59, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ubifs/xattr.c", i32 707, i32 2}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @xattr_set.__UNIQUE_ID_ddebug278, !63, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ubifs/xattr.c", i32 628, i32 2}
!68 = !{ptr @ubifs_trusted_xattr_handler, !69, !"ubifs_trusted_xattr_handler", i1 false, i1 false}
!69 = !{!"../fs/ubifs/xattr.c", i32 724, i32 35}
!70 = !{ptr @ubifs_security_xattr_handler, !71, !"ubifs_security_xattr_handler", i1 false, i1 false}
!71 = !{!"../fs/ubifs/xattr.c", i32 731, i32 35}
!72 = !{!"sp"}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2149078357, i64 2149078362, i64 2149078375, i64 2149078419, i64 2149078453, i64 2149078474}
