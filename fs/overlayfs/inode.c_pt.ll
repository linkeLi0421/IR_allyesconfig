; ModuleID = '/llk/IR_all_yes/fs/overlayfs/inode.c_pt.bc'
source_filename = "../fs/overlayfs/inode.c"
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%union.anon.71 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.68 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.path = type { ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ovl_fs = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.ovl_config, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32 }
%struct.ovl_config = type { ptr, ptr, ptr, i8, i8, i8, ptr, i8, i8, i8, i32, i8, i8, i8 }
%struct.ovl_layer = type { ptr, ptr, ptr, i32, i32 }
%struct.ovl_sb = type { ptr, i32, i8, i8 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.ovl_inode_params = type { ptr, ptr, ptr, i8, i32, ptr, ptr }
%struct.ovl_path = type { ptr, ptr }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/overlayfs/inode.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"user.overlay.\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"trusted.overlay.\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"U%+i\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"L%+i\00", [27 x i8] zeroinitializer }, align 32
@ovl_get_nlink._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ovl_get_nlink = private unnamed_addr constant [14 x i8] c"ovl_get_nlink\00", align 1
@ovl_get_nlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.ovl_get_nlink, ptr @.str, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014overlayfs: failed to get index nlink (%pd2, err=%i)\0A\00", [41 x i8] zeroinitializer }, align 32
@ovl_get_nlink._entry_ptr = internal global ptr @ovl_get_nlink._entry, section ".printk_index", align 4
@ovl_get_inode._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_get_inode = private unnamed_addr constant [14 x i8] c"ovl_get_inode\00", align 1
@ovl_get_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.ovl_get_inode, ptr @.str, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014overlayfs: failed to get inode (%i)\0A\00", [57 x i8] zeroinitializer }, align 32
@ovl_get_inode._entry_ptr = internal global ptr @ovl_get_inode._entry, section ".printk_index", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@ovl_map_dev_ino._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_map_dev_ino = private unnamed_addr constant [16 x i8] c"ovl_map_dev_ino\00", align 1
@ovl_map_dev_ino._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.ovl_map_dev_ino, ptr @.str, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014overlayfs: inode number too big (%pd2, ino=%llu, xinobits=%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@ovl_map_dev_ino._entry_ptr = internal global ptr @ovl_map_dev_ino._entry, section ".printk_index", align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trusted.\00", [23 x i8] zeroinitializer }, align 32
@ovl_do_setxattr.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"overlay\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ovl_do_setxattr\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/overlayfs/overlayfs.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"setxattr(%pd2, \22%s\22, \22%*pE\22, %zu, 0) = %i\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"overlayfs: setxattr(%pd2, \22%s\22, \22%*pE\22, %zu, 0) = %i\0A\00", [42 x i8] zeroinitializer }, align 32
@ovl_xattr_table = external dso_local local_unnamed_addr constant [0 x [2 x ptr]], align 4
@ovl_do_getxattr.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.16, ptr @.str.13, ptr @.str.17, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ovl_do_getxattr\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"getxattr(%pd2, \22%s\22, \22%*pE\22, %zu, 0) = %i\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"overlayfs: getxattr(%pd2, \22%s\22, \22%*pE\22, %zu, 0) = %i\0A\00", [42 x i8] zeroinitializer }, align 32
@ovl_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr @ovl_permission, ptr @ovl_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ovl_setattr, ptr @ovl_getattr, ptr @ovl_listxattr, ptr @ovl_fiemap, ptr @ovl_update_time, ptr null, ptr null, ptr null, ptr @ovl_fileattr_set, ptr @ovl_fileattr_get, [36 x i8] undef }, align 128
@ovl_file_operations = external dso_local constant %struct.file_operations, align 4
@ovl_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @noop_direct_IO, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ovl_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ovl_dir_operations = external dso_local constant %struct.file_operations, align 4
@ovl_symlink_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @ovl_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ovl_setattr, ptr @ovl_getattr, ptr @ovl_listxattr, ptr null, ptr @ovl_update_time, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@ovl_special_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr @ovl_permission, ptr @ovl_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ovl_setattr, ptr @ovl_getattr, ptr @ovl_listxattr, ptr null, ptr @ovl_update_time, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@ovl_lockdep_annotate_inode_mutex_key.ovl_i_mutex_key = internal global { [2 x %struct.lock_class_key], [16 x i8] } zeroinitializer, align 32
@ovl_lockdep_annotate_inode_mutex_key.ovl_i_mutex_dir_key = internal global { [2 x %struct.lock_class_key], [16 x i8] } zeroinitializer, align 32
@ovl_lockdep_annotate_inode_mutex_key.ovl_i_lock_key = internal global { [2 x %struct.lock_class_key], [16 x i8] } zeroinitializer, align 32
@ovl_lockdep_annotate_inode_mutex_key.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&ovl_i_mutex_dir_key[depth]\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&ovl_i_mutex_key[depth]\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&ovl_i_lock_key[depth]\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 4096, i64 8192, i64 24576, i64 49152]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 76, i64 85]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 43, i64 45]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 288, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 334, i32 24 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 337, i32 24 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 880, i32 64 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 885, i32 64 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 923, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1193, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 271, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 124, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 409, i32 17 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 204, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [28 x i8] c"../fs/overlayfs/overlayfs.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 193, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [9 x i8] c"ovl_aops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 665, i32 46 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"ovl_i_mutex_key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 711, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"ovl_i_mutex_dir_key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 712, i32 31 }
@___asan_gen_.109 = private unnamed_addr constant [15 x i8] c"ovl_i_lock_key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 713, i32 31 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 721, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 723, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [24 x i8] c"../fs/overlayfs/inode.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 725, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @ovl_get_inode._entry, ptr @ovl_get_inode._entry_ptr, ptr @ovl_get_nlink._entry, ptr @ovl_get_nlink._entry_ptr, ptr @ovl_map_dev_ino._entry, ptr @ovl_map_dev_ino._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ovl_get_nlink._rs, ptr @.str.5, ptr @.str.6, ptr @ovl_get_inode._rs, ptr @.str.7, ptr @.str.8, ptr @ovl_map_dev_ino._rs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @ovl_aops, ptr @ovl_lockdep_annotate_inode_mutex_key.ovl_i_mutex_key, ptr @ovl_lockdep_annotate_inode_mutex_key.ovl_i_mutex_dir_key, ptr @ovl_lockdep_annotate_inode_mutex_key.ovl_i_lock_key, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_nlink._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_nlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_inode._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_map_dev_ino._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_map_dev_ino._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lockdep_annotate_inode_mutex_key.ovl_i_mutex_key to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lockdep_annotate_inode_mutex_key.ovl_i_mutex_dir_key to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lockdep_annotate_inode_mutex_key.ovl_i_lock_key to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_setattr(ptr nocapture readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup49_crit_edge

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup49

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ovl_want_write(ptr noundef %dentry) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup49_crit_edge

if.end.cleanup49_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup49

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = tail call i32 @ovl_copy_up(ptr noundef %dentry) #14
  br label %if.end12

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = tail call i32 @ovl_copy_up_with_data(ptr noundef %dentry) #14
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %err.0 = phi i32 [ %call11, %if.else ], [ %call10, %if.then9 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool13.not = icmp eq i32 %err.0, 0
  br i1 %tobool13.not, label %if.then14, label %if.end12.out_drop_write_crit_edge

if.end12.out_drop_write_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_drop_write

if.then14:                                        ; preds = %if.end12
  %call15 = tail call ptr @ovl_dentry_upper(ptr noundef %dentry) #14
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  %and17 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then14.if.end25_crit_edge, label %if.then19

if.then14.if.end25_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then19:                                        ; preds = %if.then14
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call15, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 42
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i, i32 noundef 4) #14
  %6 = ptrtoint ptr %i_writecount.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_writecount.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.then19
  %c.0.i.i.i = phi i32 [ %7, %if.then19 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp slt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.out_drop_write_crit_edge, label %do.cond3.i.i.i, !prof !80

do.body1.i.i.i.out_drop_write_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_drop_write

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %add.i.i.i = add nuw i32 %c.0.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %i_writecount.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i, ptr %i_writecount.i, i32 %c.0.i.i.i, i32 %add.i.i.i, ptr elementtype(i32) %i_writecount.i) #14, !srcloc !82
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !83
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.if.end25_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !84

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i.if.end25_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.end25:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.if.end25_crit_edge, %if.then14.if.end25_crit_edge
  %winode.0 = phi ptr [ null, %if.then14.if.end25_crit_edge ], [ %5, %arch_atomic_cmpxchg.exit.i.i.i.i.if.end25_crit_edge ]
  %9 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attr, align 8
  %and27 = and i32 %10, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end32_crit_edge, label %if.then29

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %and31 = and i32 %10, -2
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and31, ptr %attr, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end25.if.end32_crit_edge
  %12 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %attr, align 8
  %and36 = and i32 %13, -40961
  store i32 %and36, ptr %attr, align 8
  %d_inode = getelementptr inbounds %struct.dentry, ptr %call15, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #14
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %16 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_sb, align 4
  %call37 = tail call ptr @ovl_override_creds(ptr noundef %17) #14
  %call38 = tail call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %call15, ptr noundef %attr, ptr noundef null) #14
  tail call void @revert_creds(ptr noundef %call37) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end32.if.end43_crit_edge

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode, align 8
  %d_inode42 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %20 = ptrtoint ptr %d_inode42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode42, align 8
  tail call fastcc void @ovl_copyattr(ptr noundef %19, ptr noundef %21)
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end32.if.end43_crit_edge
  %22 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i79 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i79) #14
  %tobool45.not = icmp eq ptr %winode.0, null
  br i1 %tobool45.not, label %if.end43.out_drop_write_crit_edge, label %if.then46

if.end43.out_drop_write_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_drop_write

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %i_writecount.i80 = getelementptr inbounds %struct.inode, ptr %winode.0, i32 0, i32 42
  %call.i.i.i81 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i80, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %i_writecount.i80, i32 1, i32 3, i32 1) #14
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i80, ptr %i_writecount.i80, i32 1, ptr elementtype(i32) %i_writecount.i80) #14, !srcloc !85
  br label %out_drop_write

out_drop_write:                                   ; preds = %if.then46, %if.end43.out_drop_write_crit_edge, %do.body1.i.i.i.out_drop_write_crit_edge, %if.end12.out_drop_write_crit_edge
  %err.2 = phi i32 [ %err.0, %if.end12.out_drop_write_crit_edge ], [ %call38, %if.then46 ], [ %call38, %if.end43.out_drop_write_crit_edge ], [ -26, %do.body1.i.i.i.out_drop_write_crit_edge ]
  tail call void @ovl_drop_write(ptr noundef %dentry) #14
  br label %cleanup49

cleanup49:                                        ; preds = %out_drop_write, %if.end.cleanup49_crit_edge, %entry.cleanup49_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup49_crit_edge ], [ %call1, %if.end.cleanup49_crit_edge ], [ %err.2, %out_drop_write ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_want_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_copy_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_copy_up_with_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_dentry_upper(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_override_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ovl_copyattr(ptr noundef %from, ptr noundef %to) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %i_uid = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 2
  %i_uid1 = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 2
  %0 = ptrtoint ptr %i_uid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_uid1, align 4
  %2 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 3
  %i_gid2 = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 3
  %3 = ptrtoint ptr %i_gid2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_gid2, align 8
  %5 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %i_gid, align 8
  %6 = ptrtoint ptr %from to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %from, align 8
  %8 = ptrtoint ptr %to to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %to, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 15
  %i_atime4 = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 15
  %9 = call ptr @memcpy(ptr %i_atime, ptr %i_atime4, i32 16)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 16
  %i_mtime5 = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 16
  %10 = call ptr @memcpy(ptr %i_mtime, ptr %i_mtime5, i32 16)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 17
  %i_ctime6 = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 17
  %11 = call ptr @memcpy(ptr %i_ctime, ptr %i_ctime6, i32 16)
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !86
  %and.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  %13 = tail call ptr @llvm.returnaddress(i32 0) #14
  %14 = ptrtoint ptr %13 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %14) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %14) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %15 = tail call ptr @llvm.returnaddress(i32 0) #14
  %16 = ptrtoint ptr %15 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %16) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %16) #14
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !87
  %and.i.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !80

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #14, !srcloc !88
  %18 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !89
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !90
  %20 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %21, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %19, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %21, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !91
  %22 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !92
  %24 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %25, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !70) #14
  %and.i.i.i.i19 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i19 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %30 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i20 = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i20, label %i_size_read.exit.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

i_size_read.exit.i_size_write.exit_crit_edge:     ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %i_size_read.exit
  %31 = tail call i32 @llvm.read_register.i32(metadata !70) #14
  %and.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !94
  %35 = tail call i32 @llvm.read_register.i32(metadata !70) #14
  %and.i.i.i21 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i21 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %40, ptrtoint (ptr @lockdep_recursion to i32)
  %41 = inttoptr i32 %add.i28.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !95
  %44 = tail call i32 @llvm.read_register.i32(metadata !70) #14
  %and.i.i.i7.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool20.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %48 = tail call i32 @llvm.read_register.i32(metadata !70) #14
  %and.i.i.i29.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i.i = icmp eq i32 %51, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %52 = tail call i32 @llvm.read_register.i32(metadata !70) #14
  %and.i.i.i9.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %55, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !96
  %56 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %59, ptrtoint (ptr @hardirqs_enabled to i32)
  %60 = inttoptr i32 %add47.i.i to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !97
  %63 = tail call i32 @llvm.read_register.i32(metadata !70) #14
  %and.i.i.i12.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %66, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool54.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i22, !prof !84

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i_size_write.exit

if.then.i.i22:                                    ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i22, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %i_size_read.exit.i_size_write.exit_crit_edge
  %i_size_seqcount.i23 = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 23
  %67 = ptrtoint ptr %i_size_seqcount.i23 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %i_size_seqcount.i23, align 4
  %inc.i.i.i.i = add i32 %68, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i23, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !98
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 23, i32 1
  %69 = tail call ptr @llvm.returnaddress(i32 0) #14
  %70 = ptrtoint ptr %69 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %70) #14
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 14
  %71 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %23, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %70) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !99
  %72 = ptrtoint ptr %i_size_seqcount.i23 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_size_seqcount.i23, align 4
  %inc.i.i.i = add i32 %73, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i23, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  %74 = tail call i32 @llvm.read_register.i32(metadata !70) #14
  %and.i.i.i26.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %77, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_drop_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_getattr(ptr nocapture readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %flags) #0 align 64 {
entry:
  %realpath = alloca %struct.path, align 4
  %lowerstat = alloca %struct.kstat, align 8
  %lowerdatastat = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %realpath) #14
  %2 = ptrtoint ptr %realpath to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %realpath, align 4, !annotation !101
  %3 = getelementptr inbounds %struct.path, ptr %realpath, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !101
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 8
  %9 = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %9)
  %cmp = icmp eq i16 %9, 16384
  %call3 = tail call zeroext i1 @ovl_is_metacopy_dentry(ptr noundef %1) #14
  %call5 = call i32 @ovl_path_real(ptr noundef %1, ptr noundef nonnull %realpath) #14
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_sb, align 4
  %call6 = call ptr @ovl_override_creds(ptr noundef %11) #14
  %call7 = call i32 @vfs_getattr(ptr noundef nonnull %realpath, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  call void @generic_fill_statx_attr(ptr noundef %6, ptr noundef %stat) #14
  br i1 %cmp, label %lor.lhs.false, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end
  %12 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i, align 16
  %xino_mode.i = getelementptr inbounds %struct.ovl_fs, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %xino_mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xino_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i = icmp sgt i32 %17, -1
  br i1 %cmp.i, label %lor.lhs.false.if.then12_crit_edge, label %lor.lhs.false.if.end69_crit_edge

lor.lhs.false.if.end69_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %and13 = and i32 %call5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then12
  %call16 = call ptr @ovl_layer_lower(ptr noundef %1) #14
  %fsid17 = getelementptr inbounds %struct.ovl_layer, ptr %call16, i32 0, i32 4
  %18 = ptrtoint ptr %fsid17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fsid17, align 4
  br i1 %call3, label %if.then15.if.then56_crit_edge, label %if.then15.if.end69_crit_edge

if.then15.if.end69_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then15.if.then56_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

if.else:                                          ; preds = %if.then12
  %and18 = and i32 %call5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end54, label %if.then20

if.then20:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %lowerstat) #14
  %20 = call ptr @memset(ptr %lowerstat, i32 255, i32 144)
  %or = select i1 %cmp, i32 1280, i32 1284
  call void @ovl_path_lower(ptr noundef %1, ptr noundef nonnull %realpath) #14
  %call22 = call i32 @vfs_getattr(ptr noundef nonnull %realpath, ptr noundef nonnull %lowerstat, i32 noundef %or, i32 noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %cleanup

if.end25:                                         ; preds = %if.then20
  %21 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i, align 8
  %flags.i = getelementptr i8, ptr %22, i32 -8
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i, align 4
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not = icmp eq i32 %25, 0
  br i1 %tobool.i.not, label %lor.lhs.false29, label %if.end25.if.then37_crit_edge

if.end25.if.then37_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then37

lor.lhs.false29:                                  ; preds = %if.end25
  %26 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_sb, align 4
  %call31 = call zeroext i1 @ovl_verify_lower(ptr noundef %27) #14
  br i1 %call31, label %lor.lhs.false29.if.end41_crit_edge, label %land.lhs.true

lor.lhs.false29.if.end41_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

land.lhs.true:                                    ; preds = %lor.lhs.false29
  br i1 %cmp, label %land.lhs.true.if.then37_crit_edge, label %lor.lhs.false34

land.lhs.true.if.then37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then37

lor.lhs.false34:                                  ; preds = %land.lhs.true
  %nlink = getelementptr inbounds %struct.kstat, ptr %lowerstat, i32 0, i32 2
  %28 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nlink, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp35 = icmp eq i32 %29, 1
  br i1 %cmp35, label %lor.lhs.false34.if.then37_crit_edge, label %lor.lhs.false34.if.end41_crit_edge

lor.lhs.false34.if.end41_crit_edge:               ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

lor.lhs.false34.if.then37_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false34.if.then37_crit_edge, %land.lhs.true.if.then37_crit_edge, %if.end25.if.then37_crit_edge
  %call38 = call ptr @ovl_layer_lower(ptr noundef %1) #14
  %fsid39 = getelementptr inbounds %struct.ovl_layer, ptr %call38, i32 0, i32 4
  %30 = ptrtoint ptr %fsid39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fsid39, align 4
  %ino = getelementptr inbounds %struct.kstat, ptr %lowerstat, i32 0, i32 6
  %32 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %ino, align 8
  %ino40 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %34 = ptrtoint ptr %ino40 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %ino40, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %lor.lhs.false34.if.end41_crit_edge, %lor.lhs.false29.if.end41_crit_edge
  %fsid.0 = phi i32 [ %31, %if.then37 ], [ 0, %lor.lhs.false29.if.end41_crit_edge ], [ 0, %lor.lhs.false34.if.end41_crit_edge ]
  br i1 %call3, label %land.lhs.true44, label %if.end41.cleanup.thread.thread_crit_edge

if.end41.cleanup.thread.thread_crit_edge:         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.thread

land.lhs.true44:                                  ; preds = %if.end41
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %call46 = call ptr @ovl_dentry_lowerdata(ptr noundef %1) #14
  %cmp47 = icmp eq ptr %36, %call46
  br i1 %cmp47, label %if.then49, label %cleanup.thread

if.then49:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #16
  %blocks = getelementptr inbounds %struct.kstat, ptr %lowerstat, i32 0, i32 16
  %37 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %blocks, align 8
  %blocks50 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 16
  %39 = ptrtoint ptr %blocks50 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %blocks50, align 8
  br label %cleanup.thread.thread

cleanup.thread.thread:                            ; preds = %if.then49, %if.end41.cleanup.thread.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %lowerstat) #14
  br label %if.end69

cleanup.thread:                                   ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %lowerstat) #14
  br label %if.then56

cleanup:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %lowerstat) #14
  br label %out

if.end54:                                         ; preds = %if.else
  br i1 %call3, label %if.end54.if.then56_crit_edge, label %if.end54.if.end69_crit_edge

if.end54.if.end69_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end54.if.then56_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

if.then56:                                        ; preds = %if.end54.if.then56_crit_edge, %cleanup.thread, %if.then15.if.then56_crit_edge
  %fsid.2146 = phi i32 [ %19, %if.then15.if.then56_crit_edge ], [ 0, %if.end54.if.then56_crit_edge ], [ %fsid.0, %cleanup.thread ]
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %lowerdatastat) #14
  %40 = call ptr @memset(ptr %lowerdatastat, i32 255, i32 144)
  call void @ovl_path_lowerdata(ptr noundef %1, ptr noundef nonnull %realpath) #14
  %call58 = call i32 @vfs_getattr(ptr noundef nonnull %realpath, ptr noundef nonnull %lowerdatastat, i32 noundef 1024, i32 noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %cleanup64.thread, label %cleanup64

cleanup64.thread:                                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  %blocks62 = getelementptr inbounds %struct.kstat, ptr %lowerdatastat, i32 0, i32 16
  %41 = ptrtoint ptr %blocks62 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %blocks62, align 8
  %blocks63 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 16
  %43 = ptrtoint ptr %blocks63 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %blocks63, align 8
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %lowerdatastat) #14
  br label %if.end69

cleanup64:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %lowerdatastat) #14
  br label %out

if.end69:                                         ; preds = %cleanup64.thread, %if.end54.if.end69_crit_edge, %cleanup.thread.thread, %if.then15.if.end69_crit_edge, %lor.lhs.false.if.end69_crit_edge
  %fsid.3 = phi i32 [ 0, %if.end54.if.end69_crit_edge ], [ 0, %lor.lhs.false.if.end69_crit_edge ], [ %19, %if.then15.if.end69_crit_edge ], [ %fsid.2146, %cleanup64.thread ], [ %fsid.0, %cleanup.thread.thread ]
  %44 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 33
  %46 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %xino_mode.i.i = getelementptr inbounds %struct.ovl_fs, ptr %47, i32 0, i32 18
  %48 = ptrtoint ptr %xino_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xino_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i.i = icmp eq i32 %49, 0
  %50 = call i32 @llvm.smax.i32(i32 %49, i32 0) #14
  %sub.i = sub nsw i32 64, %50
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %s_dev.i = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 1
  %51 = ptrtoint ptr %s_dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_dev.i, align 8
  %dev.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 7
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %dev.i, align 8
  br label %ovl_map_dev_ino.exit

if.else.i:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %tobool4.not.i = icmp slt i32 %49, 1
  br i1 %tobool4.not.i, label %if.else.i.if.end28.i_crit_edge, label %if.then5.i

if.else.i.if.end28.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i

if.then5.i:                                       ; preds = %if.else.i
  %ino.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %54 = ptrtoint ptr %ino.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %ino.i, align 8
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %55, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr.i)
  %tobool6.not.i = icmp eq i64 %shr.i, 0
  br i1 %tobool6.not.i, label %if.then10.i, label %if.else16.i, !prof !84

if.then10.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = sext i32 %fsid.3 to i64
  %add.i = sub nsw i32 65, %50
  %sh_prom11.i = zext i32 %add.i to i64
  %shl.i = shl i64 %conv.i, %sh_prom11.i
  %or.i = or i64 %55, %shl.i
  %56 = ptrtoint ptr %ino.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %or.i, ptr %ino.i, align 8
  %57 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %d_sb, align 4
  %s_dev14.i = getelementptr inbounds %struct.super_block, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %s_dev14.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_dev14.i, align 8
  %dev15.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 7
  %61 = ptrtoint ptr %dev15.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %dev15.i, align 8
  br label %ovl_map_dev_ino.exit

if.else16.i:                                      ; preds = %if.then5.i
  %xino.i.i = getelementptr inbounds %struct.ovl_fs, ptr %47, i32 0, i32 8, i32 10
  %62 = ptrtoint ptr %xino.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %xino.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp.i66.i = icmp eq i32 %63, 2
  br i1 %cmp.i66.i, label %if.then19.i, label %if.else16.i.if.end28.i_crit_edge

if.else16.i.if.end28.i_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i

if.then19.i:                                      ; preds = %if.else16.i
  %call20.i = call i32 @___ratelimit(ptr noundef nonnull @ovl_map_dev_ino._rs, ptr noundef nonnull @__func__.ovl_map_dev_ino) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.then19.i.if.end28.i_crit_edge, label %do.end.i

if.then19.i.if.end28.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i

do.end.i:                                         ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %ino.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %ino.i, align 8
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %1, i64 noundef %65, i32 noundef %50) #17
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end.i, %if.then19.i.if.end28.i_crit_edge, %if.else16.i.if.end28.i_crit_edge, %if.else.i.if.end28.i_crit_edge
  %66 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %d_inode.i, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %67, align 8
  %70 = and i16 %69, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %70)
  %cmp.i137 = icmp eq i16 %70, 16384
  %71 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %d_sb, align 4
  br i1 %cmp.i137, label %if.then31.i, label %if.else38.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  %s_dev33.i = getelementptr inbounds %struct.super_block, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %s_dev33.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %s_dev33.i, align 8
  %dev34.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 7
  %75 = ptrtoint ptr %dev34.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %dev34.i, align 8
  %76 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %d_inode.i, align 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %77, i32 0, i32 11
  %78 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %i_ino.i, align 8
  %conv36.i = zext i32 %79 to i64
  %ino37.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %80 = ptrtoint ptr %ino37.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %conv36.i, ptr %ino37.i, align 8
  br label %ovl_map_dev_ino.exit

if.else38.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  %s_fs_info.i.i138 = getelementptr inbounds %struct.super_block, ptr %72, i32 0, i32 33
  %81 = ptrtoint ptr %s_fs_info.i.i138 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s_fs_info.i.i138, align 16
  %fs.i = getelementptr inbounds %struct.ovl_fs, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fs.i, align 4
  %pseudo_dev.i = getelementptr %struct.ovl_sb, ptr %84, i32 %fsid.3, i32 1
  %85 = ptrtoint ptr %pseudo_dev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pseudo_dev.i, align 4
  %dev41.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 7
  %87 = ptrtoint ptr %dev41.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %dev41.i, align 8
  br label %ovl_map_dev_ino.exit

ovl_map_dev_ino.exit:                             ; preds = %if.else38.i, %if.then31.i, %if.then10.i, %if.then.i
  %cmp.not = xor i1 %cmp, true
  %and73 = and i32 %call5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool74.not
  br i1 %or.cond, label %ovl_map_dev_ino.exit.if.end77_crit_edge, label %if.then75

ovl_map_dev_ino.exit.if.end77_crit_edge:          ; preds = %ovl_map_dev_ino.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end77

if.then75:                                        ; preds = %ovl_map_dev_ino.exit
  call void @__sanitizer_cov_trace_pc() #16
  %nlink76 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 2
  %88 = ptrtoint ptr %nlink76 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %nlink76, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %ovl_map_dev_ino.exit.if.end77_crit_edge
  br i1 %cmp, label %if.end77.out_crit_edge, label %land.lhs.true79

if.end77.out_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

land.lhs.true79:                                  ; preds = %if.end77
  %89 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %d_inode.i, align 8
  %flags.i140 = getelementptr i8, ptr %90, i32 -8
  %91 = ptrtoint ptr %flags.i140 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %flags.i140, align 4
  %93 = and i32 %92, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.i141.not = icmp eq i32 %93, 0
  br i1 %tobool.i141.not, label %land.lhs.true79.out_crit_edge, label %if.then83

land.lhs.true79.out_crit_edge:                    ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then83:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #16
  %94 = getelementptr inbounds %struct.inode, ptr %90, i32 0, i32 12
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  %nlink84 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 2
  %97 = ptrtoint ptr %nlink84 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %nlink84, align 8
  br label %out

out:                                              ; preds = %if.then83, %land.lhs.true79.out_crit_edge, %if.end77.out_crit_edge, %cleanup64, %cleanup, %entry.out_crit_edge
  %err.2 = phi i32 [ %call7, %entry.out_crit_edge ], [ %call22, %cleanup ], [ %call58, %cleanup64 ], [ 0, %if.end77.out_crit_edge ], [ 0, %if.then83 ], [ 0, %land.lhs.true79.out_crit_edge ]
  call void @revert_creds(ptr noundef %call6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %realpath) #14
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_is_metacopy_dentry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_path_real(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fill_statx_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_layer_lower(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_path_lower(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_verify_lower(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_dentry_lowerdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_path_lowerdata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_permission(ptr nocapture readnone %mnt_userns, ptr noundef %inode, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ovl_inode_upper(ptr noundef %inode) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

cond.end:                                         ; preds = %entry
  %call1 = tail call ptr @ovl_inode_lower(ptr noundef %inode) #14
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then, label %cond.end.if.end25_crit_edge

cond.end.if.end25_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then:                                          ; preds = %cond.end
  %and = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.end, label %if.then.cleanup_crit_edge, !prof !80

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 288, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end25:                                         ; preds = %cond.end.if.end25_crit_edge, %entry.if.end25_crit_edge
  %cond80 = phi ptr [ %call1, %cond.end.if.end25_crit_edge ], [ %call, %entry.if.end25_crit_edge ]
  %call26 = tail call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i32 noundef %mask) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call30 = tail call ptr @ovl_override_creds(ptr noundef %1) #14
  br i1 %tobool.not, label %land.lhs.true, label %if.end29.if.end56_crit_edge

if.end29.if.end56_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end29
  %2 = ptrtoint ptr %cond80 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cond80, align 8
  %4 = and i16 %3, -4096
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %4, label %land.lhs.true51 [
    i16 8192, label %land.lhs.true.if.end56_crit_edge
    i16 24576, label %land.lhs.true.if.end56_crit_edge82
    i16 4096, label %land.lhs.true.if.end56_crit_edge83
    i16 -16384, label %land.lhs.true.if.end56_crit_edge84
  ]

land.lhs.true.if.end56_crit_edge84:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

land.lhs.true.if.end56_crit_edge83:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

land.lhs.true.if.end56_crit_edge82:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

land.lhs.true51:                                  ; preds = %land.lhs.true
  %and52 = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %land.lhs.true51.if.end56_crit_edge, label %if.then54

land.lhs.true51.if.end56_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then54:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #16
  %and55 = and i32 %mask, -15
  %or = or i32 %and55, 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %land.lhs.true51.if.end56_crit_edge, %land.lhs.true.if.end56_crit_edge, %land.lhs.true.if.end56_crit_edge82, %land.lhs.true.if.end56_crit_edge83, %land.lhs.true.if.end56_crit_edge84, %if.end29.if.end56_crit_edge
  %mask.addr.0 = phi i32 [ %mask, %if.end29.if.end56_crit_edge ], [ %mask, %land.lhs.true.if.end56_crit_edge ], [ %or, %if.then54 ], [ %mask, %land.lhs.true51.if.end56_crit_edge ], [ %mask, %land.lhs.true.if.end56_crit_edge82 ], [ %mask, %land.lhs.true.if.end56_crit_edge83 ], [ %mask, %land.lhs.true.if.end56_crit_edge84 ]
  %call57 = tail call i32 @inode_permission(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %cond80, i32 noundef %mask.addr.0) #14
  tail call void @revert_creds(ptr noundef %call30) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end25.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call57, %if.end56 ], [ -10, %do.end ], [ -10, %if.then.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_inode_upper(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_inode_lower(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ovl_is_private_xattr(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %name) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %userxattr = getelementptr inbounds %struct.ovl_fs, ptr %1, i32 0, i32 8, i32 12
  %2 = ptrtoint ptr %userxattr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %userxattr, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(14) @.str.1, i32 noundef 13)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(17) @.str.2, i32 noundef 16)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0.in = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in)
  %retval.0 = icmp eq i32 %retval.0.in, 0
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_xattr_set(ptr noundef %dentry, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ovl_i_dentry_upper(ptr noundef %inode) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call ptr @ovl_dentry_lower(ptr noundef %dentry) #14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %call1, %cond.false ], [ %call, %entry.cond.end_crit_edge ]
  %call2 = tail call i32 @ovl_want_write(ptr noundef %dentry) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %cond.end.out_crit_edge

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %cond.end
  %tobool4.not = icmp eq ptr %value, null
  %0 = select i1 %tobool4.not, i1 %tobool.not, i1 false
  br i1 %0, label %if.then6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %1 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_sb, align 4
  %call7 = tail call ptr @ovl_override_creds(ptr noundef %2) #14
  %call8 = tail call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %cond, ptr noundef %name, ptr noundef null, i32 noundef 0) #14
  tail call void @revert_creds(ptr noundef %call7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.then6.out_drop_write_crit_edge, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then6.out_drop_write_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_drop_write

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  br i1 %tobool.not, label %if.then13, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then13:                                        ; preds = %if.end11
  %call14 = tail call i32 @ovl_copy_up(ptr noundef %dentry) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then13.out_drop_write_crit_edge

if.then13.out_drop_write_crit_edge:               ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_drop_write

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %call18 = tail call ptr @ovl_dentry_upper(ptr noundef %dentry) #14
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.end11.if.end19_crit_edge
  %realdentry.0 = phi ptr [ %cond, %if.end11.if.end19_crit_edge ], [ %call18, %if.end17 ]
  %d_sb20 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %3 = ptrtoint ptr %d_sb20 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_sb20, align 4
  %call21 = tail call ptr @ovl_override_creds(ptr noundef %4) #14
  br i1 %tobool4.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %call24 = tail call i32 @vfs_setxattr(ptr noundef nonnull @init_user_ns, ptr noundef %realdentry.0, ptr noundef %name, ptr noundef nonnull %value, i32 noundef %size, i32 noundef %flags) #14
  br label %if.end48

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %cmp25.not = icmp eq i32 %flags, 2
  br i1 %cmp25.not, label %if.else.if.end40_crit_edge, label %do.end, !prof !84

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 374, i32 noundef 9, ptr noundef null) #14
  br label %if.end40

if.end40:                                         ; preds = %do.end, %if.else.if.end40_crit_edge
  %call47 = tail call i32 @vfs_removexattr(ptr noundef nonnull @init_user_ns, ptr noundef %realdentry.0, ptr noundef %name) #14
  br label %if.end48

if.end48:                                         ; preds = %if.end40, %if.then23
  %err.0 = phi i32 [ %call24, %if.then23 ], [ %call47, %if.end40 ]
  tail call void @revert_creds(ptr noundef %call21) #14
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %realdentry.0, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  tail call fastcc void @ovl_copyattr(ptr noundef %6, ptr noundef %inode)
  br label %out_drop_write

out_drop_write:                                   ; preds = %if.end48, %if.then13.out_drop_write_crit_edge, %if.then6.out_drop_write_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end48 ], [ %call14, %if.then13.out_drop_write_crit_edge ], [ %call8, %if.then6.out_drop_write_crit_edge ]
  tail call void @ovl_drop_write(ptr noundef %dentry) #14
  br label %out

out:                                              ; preds = %out_drop_write, %cond.end.out_crit_edge
  %err.2 = phi i32 [ %call2, %cond.end.out_crit_edge ], [ %err.1, %out_drop_write ]
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_i_dentry_upper(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_dentry_lower(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_setxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_removexattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_xattr_get(ptr noundef %dentry, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ovl_i_dentry_upper(ptr noundef %inode) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call ptr @ovl_dentry_lower(ptr noundef %dentry) #14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %call1, %cond.false ], [ %call, %entry.cond.end_crit_edge ]
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %call2 = tail call ptr @ovl_override_creds(ptr noundef %1) #14
  %call3 = tail call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %cond, ptr noundef %name, ptr noundef %value, i32 noundef %size) #14
  tail call void @revert_creds(ptr noundef %call2) #14
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_listxattr(ptr noundef %dentry, ptr noundef %list, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ovl_dentry_real(ptr noundef %dentry) #14
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %call1 = tail call ptr @ovl_override_creds(ptr noundef %1) #14
  %call2 = tail call i32 @vfs_listxattr(ptr noundef %call, ptr noundef %list, i32 noundef %size) #14
  tail call void @revert_creds(ptr noundef %call1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp slt i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp3 = icmp eq i32 %size, 0
  %or.cond = or i1 %cmp3, %cmp
  br i1 %or.cond, label %entry.cleanup36_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %res.073 = phi i32 [ %res.2, %cleanup.for.body_crit_edge ], [ %call2, %entry.for.body_crit_edge ]
  %s.071 = phi ptr [ %s.2, %cleanup.for.body_crit_edge ], [ %list, %entry.for.body_crit_edge ]
  %len.070 = phi i32 [ %sub, %cleanup.for.body_crit_edge ], [ %call2, %entry.for.body_crit_edge ]
  %call4 = tail call i32 @strnlen(ptr noundef %s.071, i32 noundef %len.070) #18
  %add = add i32 %call4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %len.070, i32 %add)
  %cmp5 = icmp ult i32 %len.070, %add
  br i1 %cmp5, label %cleanup.thread, label %if.end29, !prof !80

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 435, i32 noundef 9, ptr noundef null) #14
  br label %cleanup36

if.end29:                                         ; preds = %for.body
  %sub = sub i32 %len.070, %add
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %userxattr.i.i = getelementptr inbounds %struct.ovl_fs, ptr %5, i32 0, i32 8, i32 12
  %6 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %userxattr.i.i, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = tail call i32 @strncmp(ptr noundef %s.071, ptr noundef nonnull dereferenceable(14) @.str.1, i32 noundef 13) #14
  br label %ovl_is_private_xattr.exit.i

if.else.i.i:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i.i = tail call i32 @strncmp(ptr noundef %s.071, ptr noundef nonnull dereferenceable(17) @.str.2, i32 noundef 16) #14
  br label %ovl_is_private_xattr.exit.i

ovl_is_private_xattr.exit.i:                      ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.in.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.i.i)
  %retval.0.i.i = icmp eq i32 %retval.0.in.i.i, 0
  br i1 %retval.0.i.i, label %ovl_is_private_xattr.exit.i.if.then32_crit_edge, label %if.end.i

ovl_is_private_xattr.exit.i.if.then32_crit_edge:  ; preds = %ovl_is_private_xattr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then32

if.end.i:                                         ; preds = %ovl_is_private_xattr.exit.i
  %call1.i = tail call i32 @strncmp(ptr noundef %s.071, ptr noundef nonnull dereferenceable(9) @.str.10, i32 noundef 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.not.i, label %ovl_can_list.exit, label %if.end.i.if.else_crit_edge

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

ovl_can_list.exit:                                ; preds = %if.end.i
  %call4.i = tail call zeroext i1 @ns_capable_noaudit(ptr noundef nonnull @init_user_ns, i32 noundef 21) #14
  br i1 %call4.i, label %ovl_can_list.exit.if.else_crit_edge, label %ovl_can_list.exit.if.then32_crit_edge

ovl_can_list.exit.if.then32_crit_edge:            ; preds = %ovl_can_list.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then32

ovl_can_list.exit.if.else_crit_edge:              ; preds = %ovl_can_list.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then32:                                        ; preds = %ovl_can_list.exit.if.then32_crit_edge, %ovl_is_private_xattr.exit.i.if.then32_crit_edge
  %sub33 = sub i32 %res.073, %add
  %add.ptr = getelementptr i8, ptr %s.071, i32 %add
  %8 = call ptr @memmove(ptr %s.071, ptr %add.ptr, i32 %sub)
  br label %cleanup

if.else:                                          ; preds = %ovl_can_list.exit.if.else_crit_edge, %if.end.i.if.else_crit_edge
  %add.ptr34 = getelementptr i8, ptr %s.071, i32 %add
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then32
  %s.2 = phi ptr [ %add.ptr34, %if.else ], [ %s.071, %if.then32 ]
  %res.2 = phi i32 [ %res.073, %if.else ], [ %sub33, %if.then32 ]
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %cleanup.cleanup36_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup.cleanup36_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36

cleanup36:                                        ; preds = %cleanup.cleanup36_crit_edge, %cleanup.thread, %entry.cleanup36_crit_edge
  %retval.2 = phi i32 [ %call2, %entry.cleanup36_crit_edge ], [ -5, %cleanup.thread ], [ %res.2, %cleanup.cleanup36_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_dentry_real(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_listxattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_get_acl(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ovl_inode_real(ptr noundef %inode) #14
  %i_sb = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags, align 4
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %rcu, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call ptr @get_cached_acl_rcu(ptr noundef %call, i32 noundef %type) #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb5, align 4
  %call6 = tail call ptr @ovl_override_creds(ptr noundef %5) #14
  %call7 = tail call ptr @get_acl(ptr noundef %call, i32 noundef %type) #14
  tail call void @revert_creds(ptr noundef %call6) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.then2 ], [ %call7, %if.end4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_inode_real(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cached_acl_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_acl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_update_time(ptr noundef %inode, ptr nocapture readnone %ts, i32 noundef %flags) #0 align 64 {
entry:
  %upperpath = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %upperpath) #14
  %4 = getelementptr inbounds %struct.path, ptr %upperpath, i32 0, i32 1
  %layers.i = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %layers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %layers.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %upperpath to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %upperpath, align 4
  %__upperdentry.i = getelementptr i8, ptr %inode, i32 784
  %10 = ptrtoint ptr %__upperdentry.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %__upperdentry.i, align 8
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %4, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @touch_atime(ptr noundef nonnull %upperpath) #14
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %i_atime8 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 15
  %17 = call ptr @memcpy(ptr %i_atime, ptr %i_atime8, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %upperpath) #14
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_real_fileattr_set(ptr noundef %realpath, ptr noundef %fa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !70) #14
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %call1.i = tail call ptr @dentry_open(ptr noundef %realpath, i32 noundef 0, ptr noundef %5) #14
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %call1.i to i32
  br label %ovl_security_fileattr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fsx_valid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 6
  %7 = ptrtoint ptr %fsx_valid.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %fsx_valid.i, align 4
  %8 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %bf.cast.not.i = icmp eq i8 %8, 0
  %cond.i = select i1 %bf.cast.not.i, i32 1074030082, i32 1075599392
  %call12.i = tail call i32 @security_file_ioctl(ptr noundef %call1.i, i32 noundef %cond.i, i32 noundef 0) #14
  tail call void @fput(ptr noundef %call1.i) #14
  br label %ovl_security_fileattr.exit

ovl_security_fileattr.exit:                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %6, %if.then.i ], [ %call12.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end, label %ovl_security_fileattr.exit.cleanup_crit_edge

ovl_security_fileattr.exit.cleanup_crit_edge:     ; preds = %ovl_security_fileattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %ovl_security_fileattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dentry = getelementptr inbounds %struct.path, ptr %realpath, i32 0, i32 1
  %9 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry, align 4
  %call1 = tail call i32 @vfs_fileattr_set(ptr noundef nonnull @init_user_ns, ptr noundef %10, ptr noundef %fa) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ovl_security_fileattr.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %retval.0.i, %ovl_security_fileattr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fileattr_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_fileattr_set(ptr nocapture readnone %mnt_userns, ptr noundef %dentry, ptr noundef %fa) #0 align 64 {
entry:
  %upperpath = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %upperpath) #14
  %2 = ptrtoint ptr %upperpath to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %upperpath, align 4, !annotation !101
  %3 = getelementptr inbounds %struct.path, ptr %upperpath, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !101
  %call1 = tail call i32 @ovl_want_write(ptr noundef %dentry) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ovl_copy_up(ptr noundef %dentry) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @ovl_path_real(ptr noundef %dentry, ptr noundef nonnull %upperpath) #14
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %call6 = call ptr @ovl_override_creds(ptr noundef %6) #14
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call8 = call i32 @ovl_set_protattr(ptr noundef %1, ptr noundef %8, ptr noundef %fa) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.then4.if.end12_crit_edge

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then10:                                        ; preds = %if.then4
  %9 = call i32 @llvm.read_register.i32(metadata !70) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 99
  %13 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cred.i.i, align 16
  %call1.i.i = call ptr @dentry_open(ptr noundef nonnull %upperpath, i32 noundef 0, ptr noundef %14) #14
  %cmp.i.i.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %call1.i.i to i32
  br label %ovl_security_fileattr.exit.i

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  %fsx_valid.i.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 6
  %16 = ptrtoint ptr %fsx_valid.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i.i = load i8, ptr %fsx_valid.i.i, align 4
  %17 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %bf.cast.not.i.i = icmp eq i8 %17, 0
  %cond.i.i = select i1 %bf.cast.not.i.i, i32 1074030082, i32 1075599392
  %call12.i.i = call i32 @security_file_ioctl(ptr noundef %call1.i.i, i32 noundef %cond.i.i, i32 noundef 0) #14
  call void @fput(ptr noundef %call1.i.i) #14
  br label %ovl_security_fileattr.exit.i

ovl_security_fileattr.exit.i:                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %15, %if.then.i.i ], [ %call12.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ovl_security_fileattr.exit.i.if.end12_crit_edge

ovl_security_fileattr.exit.i.if.end12_crit_edge:  ; preds = %ovl_security_fileattr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end.i:                                         ; preds = %ovl_security_fileattr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %call1.i = call i32 @vfs_fileattr_set(ptr noundef nonnull @init_user_ns, ptr noundef %19, ptr noundef %fa) #14
  br label %if.end12

if.end12:                                         ; preds = %if.end.i, %ovl_security_fileattr.exit.i.if.end12_crit_edge, %if.then4.if.end12_crit_edge
  %err.0 = phi i32 [ %call8, %if.then4.if.end12_crit_edge ], [ %call1.i, %if.end.i ], [ %retval.0.i.i, %ovl_security_fileattr.exit.i.if.end12_crit_edge ]
  call void @revert_creds(ptr noundef %call6) #14
  %call13 = call ptr @ovl_inode_real(ptr noundef %1) #14
  %i_flags = getelementptr inbounds %struct.inode, ptr %call13, i32 0, i32 4
  %20 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_flags, align 4
  %and = and i32 %21, 15
  %i_flags14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %i_flags14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_flags14, align 4
  %and15 = and i32 %23, 12
  %or = or i32 %and15, %and
  call void @inode_set_flags(ptr noundef %1, i32 noundef %or, i32 noundef 15) #14
  %call16 = call ptr @ovl_inode_real(ptr noundef %1) #14
  call fastcc void @ovl_copyattr(ptr noundef %call16, ptr noundef %1)
  br label %if.end17

if.end17:                                         ; preds = %if.end12, %if.end.if.end17_crit_edge
  %err.1 = phi i32 [ %call2, %if.end.if.end17_crit_edge ], [ %err.0, %if.end12 ]
  call void @ovl_drop_write(ptr noundef %dentry) #14
  br label %out

out:                                              ; preds = %if.end17, %entry.out_crit_edge
  %err.2 = phi i32 [ %call1, %entry.out_crit_edge ], [ %err.1, %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %upperpath) #14
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_set_protattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_real_fileattr_get(ptr noundef %realpath, ptr noundef %fa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !70) #14
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %call1.i = tail call ptr @dentry_open(ptr noundef %realpath, i32 noundef 0, ptr noundef %5) #14
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %call1.i to i32
  br label %ovl_security_fileattr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fsx_valid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 6
  %7 = ptrtoint ptr %fsx_valid.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %fsx_valid.i, align 4
  %8 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %bf.cast.not.i = icmp eq i8 %8, 0
  %cond10.i = select i1 %bf.cast.not.i, i32 -2147195391, i32 -2145626081
  %call12.i = tail call i32 @security_file_ioctl(ptr noundef %call1.i, i32 noundef %cond10.i, i32 noundef 0) #14
  tail call void @fput(ptr noundef %call1.i) #14
  br label %ovl_security_fileattr.exit

ovl_security_fileattr.exit:                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %6, %if.then.i ], [ %call12.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end, label %ovl_security_fileattr.exit.cleanup_crit_edge

ovl_security_fileattr.exit.cleanup_crit_edge:     ; preds = %ovl_security_fileattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %ovl_security_fileattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dentry = getelementptr inbounds %struct.path, ptr %realpath, i32 0, i32 1
  %9 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry, align 4
  %call1 = tail call i32 @vfs_fileattr_get(ptr noundef %10, ptr noundef %fa) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call1)
  %cmp = icmp eq i32 %call1, -515
  %spec.store.select = select i1 %cmp, i32 -25, i32 %call1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ovl_security_fileattr.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end ], [ %retval.0.i, %ovl_security_fileattr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fileattr_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_fileattr_get(ptr noundef %dentry, ptr noundef %fa) #0 align 64 {
entry:
  %realpath = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %realpath) #14
  %2 = ptrtoint ptr %realpath to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %realpath, align 4, !annotation !101
  %3 = getelementptr inbounds %struct.path, ptr %realpath, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !101
  %call1 = call i32 @ovl_path_real(ptr noundef %dentry, ptr noundef nonnull %realpath) #14
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %call2 = call ptr @ovl_override_creds(ptr noundef %6) #14
  %7 = call i32 @llvm.read_register.i32(metadata !70) #14
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred.i.i, align 16
  %call1.i.i = call ptr @dentry_open(ptr noundef nonnull %realpath, i32 noundef 0, ptr noundef %12) #14
  %cmp.i.i.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %call1.i.i to i32
  br label %ovl_security_fileattr.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fsx_valid.i.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 6
  %14 = ptrtoint ptr %fsx_valid.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i.i = load i8, ptr %fsx_valid.i.i, align 4
  %15 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %bf.cast.not.i.i = icmp eq i8 %15, 0
  %cond10.i.i = select i1 %bf.cast.not.i.i, i32 -2147195391, i32 -2145626081
  %call12.i.i = call i32 @security_file_ioctl(ptr noundef %call1.i.i, i32 noundef %cond10.i.i, i32 noundef 0) #14
  call void @fput(ptr noundef %call1.i.i) #14
  br label %ovl_security_fileattr.exit.i

ovl_security_fileattr.exit.i:                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %13, %if.then.i.i ], [ %call12.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ovl_security_fileattr.exit.i.ovl_real_fileattr_get.exit_crit_edge

ovl_security_fileattr.exit.i.ovl_real_fileattr_get.exit_crit_edge: ; preds = %ovl_security_fileattr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_real_fileattr_get.exit

if.end.i:                                         ; preds = %ovl_security_fileattr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %call1.i = call i32 @vfs_fileattr_get(ptr noundef %17, ptr noundef %fa) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, -515
  %spec.store.select.i = select i1 %cmp.i, i32 -25, i32 %call1.i
  br label %ovl_real_fileattr_get.exit

ovl_real_fileattr_get.exit:                       ; preds = %if.end.i, %ovl_security_fileattr.exit.i.ovl_real_fileattr_get.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.store.select.i, %if.end.i ], [ %retval.0.i.i, %ovl_security_fileattr.exit.i.ovl_real_fileattr_get.exit_crit_edge ]
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i7 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i7, label %ovl_real_fileattr_get.exit.if.end.i8_crit_edge, label %if.then.i

ovl_real_fileattr_get.exit.if.end.i8_crit_edge:   ; preds = %ovl_real_fileattr_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i8

if.then.i:                                        ; preds = %ovl_real_fileattr_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fa, align 4
  %or.i = or i32 %21, 32
  store i32 %or.i, ptr %fa, align 4
  %fsx_xflags.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %22 = ptrtoint ptr %fsx_xflags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fsx_xflags.i, align 4
  %or3.i = or i32 %23, 16
  store i32 %or3.i, ptr %fsx_xflags.i, align 4
  br label %if.end.i8

if.end.i8:                                        ; preds = %if.then.i, %ovl_real_fileattr_get.exit.if.end.i8_crit_edge
  %24 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_flags.i, align 4
  %and5.i = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i8.ovl_fileattr_prot_flags.exit_crit_edge, label %if.then7.i

if.end.i8.ovl_fileattr_prot_flags.exit_crit_edge: ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_fileattr_prot_flags.exit

if.then7.i:                                       ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fa, align 4
  %or9.i = or i32 %27, 16
  store i32 %or9.i, ptr %fa, align 4
  %fsx_xflags10.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %28 = ptrtoint ptr %fsx_xflags10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fsx_xflags10.i, align 4
  %or11.i = or i32 %29, 8
  store i32 %or11.i, ptr %fsx_xflags10.i, align 4
  br label %ovl_fileattr_prot_flags.exit

ovl_fileattr_prot_flags.exit:                     ; preds = %if.then7.i, %if.end.i8.ovl_fileattr_prot_flags.exit_crit_edge
  call void @revert_creds(ptr noundef %call2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %realpath) #14
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_inode_init(ptr noundef %inode, ptr nocapture noundef readonly %oip, i32 noundef %ino, i32 noundef %fsid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %upperdentry = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 1
  %0 = ptrtoint ptr %upperdentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %upperdentry, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %__upperdentry = getelementptr i8, ptr %inode, i32 784
  %2 = ptrtoint ptr %__upperdentry to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %__upperdentry, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lowerpath = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 2
  %3 = ptrtoint ptr %lowerpath to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lowerpath, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %dentry = getelementptr inbounds %struct.ovl_path, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dentry, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %land.lhs.true.if.end11_crit_edge, label %if.then5

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i, align 8
  %call9 = tail call ptr @igrab(ptr noundef %8) #14
  %lower = getelementptr i8, ptr %inode, i32 788
  %9 = ptrtoint ptr %lower to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %lower, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %lowerdata = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 6
  %10 = ptrtoint ptr %lowerdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lowerdata, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %if.end11.if.end18_crit_edge, label %if.then13

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %d_inode.i37 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i37, align 8
  %call16 = tail call ptr @igrab(ptr noundef %13) #14
  %add.ptr.i38 = getelementptr i8, ptr %inode, i32 -24
  %14 = ptrtoint ptr %add.ptr.i38 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call16, ptr %add.ptr.i38, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end11.if.end18_crit_edge
  %call19 = tail call ptr @ovl_inode_real(ptr noundef %inode) #14
  tail call fastcc void @ovl_copyattr(ptr noundef %call19, ptr noundef %inode)
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %call19, i32 0, i32 4
  %15 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %16, 15
  tail call void @inode_set_flags(ptr noundef %inode, i32 noundef %and.i, i32 noundef 15) #14
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %xino_mode.i.i.i = getelementptr inbounds %struct.ovl_fs, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %xino_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xino_mode.i.i.i, align 4
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0) #14
  %sub.i = sub nsw i32 64, %23
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %24 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %ino, ptr %i_ino.i, align 8
  %25 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %xino_mode.i.i = getelementptr inbounds %struct.ovl_fs, ptr %26, i32 0, i32 18
  %27 = ptrtoint ptr %xino_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xino_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i = icmp eq i32 %28, 0
  br i1 %cmp.i.i, label %if.end18.ovl_map_ino.exit_crit_edge, label %if.else.i

if.end18.ovl_map_ino.exit_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_map_ino.exit

if.else.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %tobool.not.i = icmp slt i32 %22, 1
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %shr.i = lshr i32 %ino, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool3.not.i = icmp eq i32 %shr.i, 0
  %or.cond.i = select i1 %tobool.not.not.i, i1 %tobool3.not.i, i1 false
  br i1 %or.cond.i, label %if.then7.i, label %if.end9.i, !prof !103

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.i = sub nsw i32 65, %23
  %shl.i = shl i32 %fsid, %add.i
  %or.i = or i32 %shl.i, %ino
  br label %cleanup.sink.split.i

if.end9.i:                                        ; preds = %if.else.i
  %29 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %inode, align 8
  %31 = and i16 %30, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %31)
  %cmp.i = icmp eq i16 %31, 16384
  br i1 %cmp.i, label %if.then11.i, label %if.end9.i.ovl_map_ino.exit_crit_edge

if.end9.i.ovl_map_ino.exit_crit_edge:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_map_ino.exit

if.then11.i:                                      ; preds = %if.end9.i
  %last_ino.i.i = getelementptr inbounds %struct.ovl_fs, ptr %26, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_ino.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %last_ino.i.i, i32 1, i32 3, i32 1) #14
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %last_ino.i.i, ptr %last_ino.i.i, i32 1, ptr elementtype(i32) %last_ino.i.i) #14, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !106
  %33 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %asmresult.i.i.i.i.i.i.i, ptr %i_ino.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then11.i.ovl_next_ino.exit.i_crit_edge, !prof !80

if.then11.i.ovl_next_ino.exit.i_crit_edge:        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_next_ino.exit.i

if.then.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i12.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_ino.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %last_ino.i.i, i32 1, i32 3, i32 1) #14
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %last_ino.i.i, ptr %last_ino.i.i, i32 1, ptr elementtype(i32) %last_ino.i.i) #14, !srcloc !105
  %asmresult.i.i.i.i.i13.i.i = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !106
  %35 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %asmresult.i.i.i.i.i13.i.i, ptr %i_ino.i, align 8
  br label %ovl_next_ino.exit.i

ovl_next_ino.exit.i:                              ; preds = %if.then.i.i, %if.then11.i.ovl_next_ino.exit.i_crit_edge
  br i1 %tobool.not.i, label %ovl_next_ino.exit.i.ovl_map_ino.exit_crit_edge, label %if.then13.i

ovl_next_ino.exit.i.ovl_map_ino.exit_crit_edge:   ; preds = %ovl_next_ino.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_map_ino.exit

if.then13.i:                                      ; preds = %ovl_next_ino.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %shr14.i = lshr i32 -1, %23
  %36 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_ino.i, align 8
  %and16.i = and i32 %37, %shr14.i
  %shl17.i = shl nuw i32 1, %sub.i
  %or19.i = or i32 %and16.i, %shl17.i
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then13.i, %if.then7.i
  %or19.sink.i = phi i32 [ %or19.i, %if.then13.i ], [ %or.i, %if.then7.i ]
  %38 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or19.sink.i, ptr %i_ino.i, align 8
  br label %ovl_map_ino.exit

ovl_map_ino.exit:                                 ; preds = %cleanup.sink.split.i, %ovl_next_ino.exit.i.ovl_map_ino.exit_crit_edge, %if.end9.i.ovl_map_ino.exit_crit_edge, %if.end18.ovl_map_ino.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_set_nlink_upper(ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ovl_dentry_upper(ptr noundef %dentry) #14
  %call1 = tail call fastcc i32 @ovl_set_nlink_common(ptr noundef %dentry, ptr noundef %call, ptr noundef nonnull @.str.3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_set_nlink_common(ptr noundef %dentry, ptr nocapture noundef readonly %realdentry, ptr nocapture noundef readonly %format) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i35 = getelementptr inbounds %struct.dentry, ptr %realdentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i35 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i35, align 8
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %buf) #14
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %5 = call ptr @memset(ptr %buf, i32 255, i32 13)
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %4, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %sub = sub i32 %7, %10
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 13, ptr noundef %format, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call2)
  %cmp = icmp ugt i32 %call2, 12
  br i1 %cmp, label %do.end, label %if.end23, !prof !80

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 871, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %call25 = tail call ptr @ovl_dentry_upper(ptr noundef %dentry) #14
  %userxattr.i.i = getelementptr inbounds %struct.ovl_fs, ptr %14, i32 0, i32 8, i32 12
  %15 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %userxattr.i.i, align 1, !range !102
  %17 = zext i8 %16 to i32
  %arrayidx1.i.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 4, i32 %17
  %18 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx1.i.i, align 4
  %call1.i = call i32 @vfs_setxattr(ptr noundef nonnull @init_user_ns, ptr noundef %call25, ptr noundef %19, ptr noundef nonnull %buf, i32 noundef %call2, i32 noundef 0) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_setxattr.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_set_nlink_common, %cond.end.i)) #14
          to label %cleanup [label %cond.end.i], !srcloc !107

cond.end.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_setxattr.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.15, ptr noundef %call25, ptr noundef %19, i32 noundef %call2, ptr noundef nonnull %buf, i32 noundef %call2, i32 noundef %call1.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cond.end.i, %if.end23, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call1.i, %if.end23 ], [ %call1.i, %cond.end.i ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_set_nlink_lower(ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ovl_dentry_lower(ptr noundef %dentry) #14
  %call1 = tail call fastcc i32 @ovl_set_nlink_common(ptr noundef %dentry, ptr noundef %call, ptr noundef nonnull @.str.4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_get_nlink(ptr nocapture noundef readonly %ofs, ptr noundef readonly %lowerdentry, ptr noundef %upperdentry, i32 noundef %fallback) local_unnamed_addr #0 align 64 {
entry:
  %nlink_diff = alloca i32, align 4
  %buf = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nlink_diff) #14
  %0 = ptrtoint ptr %nlink_diff to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nlink_diff, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %buf) #14
  %1 = getelementptr inbounds [13 x i8], ptr %buf, i32 0, i32 1
  %tobool.not = icmp eq ptr %lowerdentry, null
  %tobool1.not = icmp eq ptr %upperdentry, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %2 = call ptr @memset(ptr %buf, i32 255, i32 13)
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %lowerdentry, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %userxattr.i.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 12
  %8 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %userxattr.i.i, align 1, !range !102
  %10 = zext i8 %9 to i32
  %arrayidx1.i.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 4, i32 %10
  %11 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx1.i.i, align 4
  %call1.i = call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %upperdentry, ptr noundef %12, ptr noundef nonnull %buf, i32 noundef 12) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_getxattr.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_get_nlink, %if.then.i)) #14
          to label %ovl_do_getxattr.exit [label %if.then.i], !srcloc !107

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, 0
  %13 = call i32 @llvm.umin.i32(i32 %call1.i, i32 48) #14
  %14 = select i1 %cmp.i, i32 %13, i32 0
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_getxattr.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.18, ptr noundef nonnull %upperdentry, ptr noundef %12, i32 noundef %14, ptr noundef nonnull %buf, i32 noundef 12, i32 noundef %call1.i) #14
  br label %ovl_do_getxattr.exit

ovl_do_getxattr.exit:                             ; preds = %if.then.i, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp4 = icmp slt i32 %call1.i, 0
  br i1 %cmp4, label %ovl_do_getxattr.exit.fail_crit_edge, label %if.end6

ovl_do_getxattr.exit.fail_crit_edge:              ; preds = %ovl_do_getxattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end6:                                          ; preds = %ovl_do_getxattr.exit
  %arrayidx = getelementptr [13 x i8], ptr %buf, i32 0, i32 %call1.i
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx, align 1
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %17, label %if.end6.fail_crit_edge [
    i8 76, label %if.end6.lor.lhs.false14_crit_edge
    i8 85, label %if.end6.lor.lhs.false14_crit_edge60
  ]

if.end6.lor.lhs.false14_crit_edge60:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false14

if.end6.lor.lhs.false14_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false14

if.end6.fail_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

lor.lhs.false14:                                  ; preds = %if.end6.lor.lhs.false14_crit_edge, %if.end6.lor.lhs.false14_crit_edge60
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %20, label %lor.lhs.false14.fail_crit_edge [
    i8 43, label %lor.lhs.false14.if.end25_crit_edge
    i8 45, label %lor.lhs.false14.if.end25_crit_edge61
  ]

lor.lhs.false14.if.end25_crit_edge61:             ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

lor.lhs.false14.if.end25_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

lor.lhs.false14.fail_crit_edge:                   ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end25:                                         ; preds = %lor.lhs.false14.if.end25_crit_edge, %lor.lhs.false14.if.end25_crit_edge61
  %call26 = call i32 @kstrtoint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %nlink_diff) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end25.fail_crit_edge, label %if.end30

if.end25.fail_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end30:                                         ; preds = %if.end25
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %23)
  %cmp33 = icmp eq i8 %23, 76
  %lowerdentry.upperdentry = select i1 %cmp33, ptr %lowerdentry, ptr %upperdentry
  %d_inode.i59 = getelementptr inbounds %struct.dentry, ptr %lowerdentry.upperdentry, i32 0, i32 5
  %24 = ptrtoint ptr %d_inode.i59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i59, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 12
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = ptrtoint ptr %nlink_diff to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nlink_diff, align 4
  %add = add i32 %30, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp36 = icmp slt i32 %add, 1
  br i1 %cmp36, label %if.end30.fail_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end30.fail_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

fail:                                             ; preds = %if.end30.fail_crit_edge, %if.end25.fail_crit_edge, %lor.lhs.false14.fail_crit_edge, %if.end6.fail_crit_edge, %ovl_do_getxattr.exit.fail_crit_edge
  %err.0 = phi i32 [ %call1.i, %ovl_do_getxattr.exit.fail_crit_edge ], [ %call26, %if.end25.fail_crit_edge ], [ %call26, %if.end30.fail_crit_edge ], [ %call1.i, %if.end6.fail_crit_edge ], [ %call1.i, %lor.lhs.false14.fail_crit_edge ]
  %call40 = call i32 @___ratelimit(ptr noundef nonnull @ovl_get_nlink._rs, ptr noundef nonnull @__func__.ovl_get_nlink) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %fail.cleanup_crit_edge, label %do.end

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %upperdentry, i32 noundef %err.0) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %fail.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %fallback, %lor.lhs.false2.cleanup_crit_edge ], [ %fallback, %entry.cleanup_crit_edge ], [ %add, %if.end30.cleanup_crit_edge ], [ %fallback, %do.end ], [ %fallback, %fail.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buf) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nlink_diff) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_new_inode(ptr noundef %sb, i16 noundef zeroext %mode, i32 noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @new_inode(ptr noundef %sb) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @ovl_fill_inode(ptr noundef nonnull %call, i16 noundef zeroext %mode, i32 noundef %rdev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ovl_fill_inode(ptr noundef %inode, i16 noundef zeroext %mode, i32 noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %mode, ptr %inode, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %1 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_flags, align 4
  %or = or i32 %2, 128
  store i32 %or, ptr %i_flags, align 4
  %i_default_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  %3 = ptrtoint ptr %i_default_acl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -3 to ptr), ptr %i_default_acl, align 4
  %i_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  %4 = ptrtoint ptr %i_acl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -3 to ptr), ptr %i_acl, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %s_stack_depth.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 59
  %7 = ptrtoint ptr %s_stack_depth.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_stack_depth.i, align 4
  %sub.i = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %9 = icmp ugt i32 %sub.i, 1
  br i1 %9, label %land.rhs.i, label %entry.ovl_lockdep_annotate_inode_mutex_key.exit_crit_edge

entry.ovl_lockdep_annotate_inode_mutex_key.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_lockdep_annotate_inode_mutex_key.exit

land.rhs.i:                                       ; preds = %entry
  %.b82.i = load i1, ptr @ovl_lockdep_annotate_inode_mutex_key.__already_done, align 1
  br i1 %.b82.i, label %land.rhs.i.ovl_lockdep_annotate_inode_mutex_key.exit_crit_edge, label %if.then.i, !prof !84

land.rhs.i.ovl_lockdep_annotate_inode_mutex_key.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_lockdep_annotate_inode_mutex_key.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovl_lockdep_annotate_inode_mutex_key.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 717, i32 noundef 9, ptr noundef null) #14
  br label %ovl_lockdep_annotate_inode_mutex_key.exit

ovl_lockdep_annotate_inode_mutex_key.exit:        ; preds = %if.then.i, %land.rhs.i.ovl_lockdep_annotate_inode_mutex_key.exit_crit_edge, %entry.ovl_lockdep_annotate_inode_mutex_key.exit_crit_edge
  %spec.select83.i = phi i32 [ %sub.i, %entry.ovl_lockdep_annotate_inode_mutex_key.exit_crit_edge ], [ 0, %if.then.i ], [ 0, %land.rhs.i.ovl_lockdep_annotate_inode_mutex_key.exit_crit_edge ]
  %10 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %inode, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp39.i = icmp eq i16 %12, 16384
  %dep_map.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25, i32 6
  %ovl_lockdep_annotate_inode_mutex_key.ovl_i_mutex_dir_key.ovl_lockdep_annotate_inode_mutex_key.ovl_i_mutex_key.i = select i1 %cmp39.i, ptr @ovl_lockdep_annotate_inode_mutex_key.ovl_i_mutex_dir_key, ptr @ovl_lockdep_annotate_inode_mutex_key.ovl_i_mutex_key
  %.str.19..str.20.i = select i1 %cmp39.i, ptr @.str.19, ptr @.str.20
  %arrayidx48.i = getelementptr [2 x %struct.lock_class_key], ptr %ovl_lockdep_annotate_inode_mutex_key.ovl_i_mutex_dir_key.ovl_lockdep_annotate_inode_mutex_key.ovl_i_mutex_key.i, i32 0, i32 %spec.select83.i
  %wait_type_inner51.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25, i32 6, i32 4
  %13 = ptrtoint ptr %wait_type_inner51.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %wait_type_inner51.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull %.str.19..str.20.i, ptr noundef %arrayidx48.i, i32 noundef 0, i8 noundef zeroext %14, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %dep_map56.i = getelementptr i8, ptr %inode, i32 856
  %arrayidx57.i = getelementptr [2 x %struct.lock_class_key], ptr @ovl_lockdep_annotate_inode_mutex_key.ovl_i_lock_key, i32 0, i32 %spec.select83.i
  %wait_type_inner61.i = getelementptr i8, ptr %inode, i32 873
  %15 = ptrtoint ptr %wait_type_inner61.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %wait_type_inner61.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map56.i, ptr noundef nonnull @.str.21, ptr noundef %arrayidx57.i, i32 noundef 0, i8 noundef zeroext %16, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %17 = and i16 %mode, -4096
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %17, label %sw.default [
    i16 -32768, label %sw.bb
    i16 16384, label %sw.bb1
    i16 -24576, label %sw.bb3
  ]

sw.bb:                                            ; preds = %ovl_lockdep_annotate_inode_mutex_key.exit
  call void @__sanitizer_cov_trace_pc() #16
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %19 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ovl_file_inode_operations, ptr %i_op, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ovl_file_operations, ptr %20, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %22 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ovl_aops, ptr %a_ops, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %ovl_lockdep_annotate_inode_mutex_key.exit
  call void @__sanitizer_cov_trace_pc() #16
  %i_op2 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %25 = ptrtoint ptr %i_op2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ovl_dir_inode_operations, ptr %i_op2, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ovl_dir_operations, ptr %26, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %ovl_lockdep_annotate_inode_mutex_key.exit
  call void @__sanitizer_cov_trace_pc() #16
  %i_op4 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %28 = ptrtoint ptr %i_op4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ovl_symlink_inode_operations, ptr %i_op4, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %ovl_lockdep_annotate_inode_mutex_key.exit
  call void @__sanitizer_cov_trace_pc() #16
  %i_op5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %29 = ptrtoint ptr %i_op5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ovl_special_inode_operations, ptr %i_op5, align 8
  tail call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %mode, i32 noundef %rdev) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_lookup_inode(ptr noundef %sb, ptr noundef readonly %real, i1 noundef zeroext %is_upper) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %real, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  %call1 = tail call ptr @ilookup5(ptr noundef %sb, i32 noundef %2, ptr noundef nonnull @ovl_inode_test, ptr noundef %1) #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cond7 = select i1 %is_upper, ptr %real, ptr null
  %tobool14.not.i21 = icmp eq ptr %real, null
  %tobool14.not.i = or i1 %tobool14.not.i21, %is_upper
  br i1 %tobool14.not.i, label %if.end.if.end21.i_crit_edge, label %land.lhs.true15.i

if.end.if.end21.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i

land.lhs.true15.i:                                ; preds = %if.end
  %call16.i = tail call ptr @ovl_inode_lower(ptr noundef nonnull %call1) #14
  %3 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i, align 8
  %cmp18.not.i = icmp eq ptr %call16.i, %4
  br i1 %cmp18.not.i, label %land.lhs.true15.i.if.end21.i_crit_edge, label %land.lhs.true15.i.if.then9_crit_edge

land.lhs.true15.i.if.then9_crit_edge:             ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

land.lhs.true15.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i

if.end21.i:                                       ; preds = %land.lhs.true15.i.if.end21.i_crit_edge, %if.end.if.end21.i_crit_edge
  %tobool22.not.i = icmp eq ptr %cond7, null
  br i1 %tobool22.not.i, label %if.end21.i.cleanup_crit_edge, label %land.lhs.true23.i

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true23.i:                                ; preds = %if.end21.i
  %call24.i = tail call ptr @ovl_inode_upper(ptr noundef nonnull %call1) #14
  %d_inode.i38.i = getelementptr inbounds %struct.dentry, ptr %cond7, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i38.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i38.i, align 8
  %cmp26.not.i = icmp eq ptr %call24.i, %6
  br i1 %cmp26.not.i, label %land.lhs.true23.i.cleanup_crit_edge, label %land.lhs.true23.i.if.then9_crit_edge

land.lhs.true23.i.if.then9_crit_edge:             ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

land.lhs.true23.i.cleanup_crit_edge:              ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true23.i.if.then9_crit_edge, %land.lhs.true15.i.if.then9_crit_edge
  tail call void @iput(ptr noundef nonnull %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %land.lhs.true23.i.cleanup_crit_edge, %if.end21.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -116 to ptr), %if.then9 ], [ null, %entry.cleanup_crit_edge ], [ %call1, %if.end21.i.cleanup_crit_edge ], [ %call1, %land.lhs.true23.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup5(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ovl_inode_test(ptr nocapture noundef readonly %inode, ptr noundef readnone %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ovl_lookup_trap_inode(ptr noundef %sb, ptr nocapture noundef readonly %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  %call1 = tail call ptr @ilookup5(ptr noundef %sb, i32 noundef %2, ptr noundef nonnull @ovl_inode_test, ptr noundef %1) #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 4
  %3 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_flags, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.land.end_crit_edge, label %land.lhs.true

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call ptr @ovl_inode_upper(ptr noundef nonnull %call1) #14
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call ptr @ovl_inode_lower(ptr noundef nonnull %call1) #14
  %tobool6.not = icmp eq ptr %call5, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %if.end.land.end_crit_edge
  %5 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %if.end.land.end_crit_edge ], [ %tobool6.not, %land.rhs ]
  tail call void @iput(ptr noundef nonnull %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %land.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %5, %land.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_get_trap_inode(ptr noundef %sb, ptr nocapture noundef readonly %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dir, align 8
  %2 = and i32 %1, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %2)
  %3 = icmp eq i32 %2, 2097152
  br i1 %3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %6 = ptrtoint ptr %5 to i32
  %call3 = tail call ptr @iget5_locked(ptr noundef %sb, i32 noundef %6, ptr noundef nonnull @ovl_inode_test, ptr noundef nonnull @ovl_inode_set, ptr noundef %5) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %i_state = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 24
  %7 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_state, align 8
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @iput(ptr noundef nonnull %call3) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 16384, ptr %call3, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %i_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %i_flags, align 4
  tail call void @unlock_new_inode(ptr noundef nonnull %call3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end10 ], [ inttoptr (i32 -40 to ptr), %if.then8 ], [ inttoptr (i32 -20 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ovl_inode_set(ptr nocapture noundef writeonly %inode, ptr noundef %data) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %i_private, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_get_inode(ptr noundef %sb, ptr nocapture noundef readonly %oip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %upperdentry1 = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 1
  %2 = ptrtoint ptr %upperdentry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %upperdentry1, align 4
  %lowerpath2 = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 2
  %4 = ptrtoint ptr %lowerpath2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lowerpath2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %7, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %cond.end7.thread, label %cond.end7

cond.end7.thread:                                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %index205 = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 3
  br label %cond.end15

cond.end7:                                        ; preds = %cond.end
  %dentry = getelementptr inbounds %struct.ovl_path, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry, align 4
  %index = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 3
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %index, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9 = icmp ne i8 %11, 0
  %tobool.not.i = icmp eq ptr %9, null
  %brmerge25.i = or i1 %tobool.not.i, %tobool9
  br i1 %brmerge25.i, label %ovl_hash_bylower.exit, label %if.end3.i

if.end3.i:                                        ; preds = %cond.end7
  %layers.i.i = getelementptr inbounds %struct.ovl_fs, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %layers.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %layers.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool4.not.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i, label %if.end3.i.cond.true12_crit_edge, label %if.end6.i

if.end3.i.cond.true12_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true12

if.end6.i:                                        ; preds = %if.end3.i
  br i1 %tobool.not, label %lor.lhs.false.i, label %if.end6.i.land.lhs.true.i_crit_edge

if.end6.i.land.lhs.true.i_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %call8.i = tail call ptr @ovl_indexdir(ptr noundef %sb) #14
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.cond.true12_crit_edge

lor.lhs.false.i.cond.true12_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true12

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %if.end6.i.land.lhs.true.i_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %9, align 8
  %18 = and i32 %17, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %18)
  %19 = icmp eq i32 %18, 2097152
  br i1 %19, label %land.lhs.true.i.if.end14.i_crit_edge, label %land.lhs.true11.i

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %20 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i.i, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 12
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i = icmp ugt i32 %24, 1
  br i1 %cmp.i, label %land.lhs.true11.i.cond.end15_crit_edge, label %land.lhs.true11.i.if.end14.i_crit_edge

land.lhs.true11.i.if.end14.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i

land.lhs.true11.i.cond.end15_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end15

if.end14.i:                                       ; preds = %land.lhs.true11.i.if.end14.i_crit_edge, %land.lhs.true.i.if.end14.i_crit_edge
  %s_export_op.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %25 = ptrtoint ptr %s_export_op.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_export_op.i, align 16
  %tobool15.not.i = icmp eq ptr %26, null
  %brmerge.i = or i1 %tobool.not, %tobool15.not.i
  br i1 %brmerge.i, label %if.end14.i.cond.true12_crit_edge, label %if.end14.i.cond.end15_crit_edge

if.end14.i.cond.end15_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end15

if.end14.i.cond.true12_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true12

ovl_hash_bylower.exit:                            ; preds = %cond.end7
  br i1 %tobool.not.i, label %ovl_hash_bylower.exit.cond.end15_crit_edge, label %ovl_hash_bylower.exit.cond.true12_crit_edge

ovl_hash_bylower.exit.cond.true12_crit_edge:      ; preds = %ovl_hash_bylower.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true12

ovl_hash_bylower.exit.cond.end15_crit_edge:       ; preds = %ovl_hash_bylower.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end15

cond.true12:                                      ; preds = %ovl_hash_bylower.exit.cond.true12_crit_edge, %if.end14.i.cond.true12_crit_edge, %lor.lhs.false.i.cond.true12_crit_edge, %if.end3.i.cond.true12_crit_edge
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %fsid13 = getelementptr inbounds %struct.ovl_layer, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %fsid13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fsid13, align 4
  br label %cond.end15

cond.end15:                                       ; preds = %cond.true12, %ovl_hash_bylower.exit.cond.end15_crit_edge, %if.end14.i.cond.end15_crit_edge, %land.lhs.true11.i.cond.end15_crit_edge, %cond.end7.thread
  %retval.0.i227 = phi i1 [ true, %cond.true12 ], [ false, %ovl_hash_bylower.exit.cond.end15_crit_edge ], [ false, %if.end14.i.cond.end15_crit_edge ], [ false, %land.lhs.true11.i.cond.end15_crit_edge ], [ false, %cond.end7.thread ]
  %cond8210226 = phi ptr [ %9, %cond.true12 ], [ null, %ovl_hash_bylower.exit.cond.end15_crit_edge ], [ %9, %if.end14.i.cond.end15_crit_edge ], [ %9, %land.lhs.true11.i.cond.end15_crit_edge ], [ null, %cond.end7.thread ]
  %index214225 = phi ptr [ %index, %cond.true12 ], [ %index, %ovl_hash_bylower.exit.cond.end15_crit_edge ], [ %index, %if.end14.i.cond.end15_crit_edge ], [ %index, %land.lhs.true11.i.cond.end15_crit_edge ], [ %index205, %cond.end7.thread ]
  %tobool.not.i215224 = phi i1 [ %tobool.not.i, %cond.true12 ], [ true, %ovl_hash_bylower.exit.cond.end15_crit_edge ], [ false, %if.end14.i.cond.end15_crit_edge ], [ false, %land.lhs.true11.i.cond.end15_crit_edge ], [ true, %cond.end7.thread ]
  %cond16 = phi i32 [ %30, %cond.true12 ], [ 0, %ovl_hash_bylower.exit.cond.end15_crit_edge ], [ 0, %if.end14.i.cond.end15_crit_edge ], [ 0, %land.lhs.true11.i.cond.end15_crit_edge ], [ 0, %cond.end7.thread ]
  %31 = ptrtoint ptr %oip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %oip, align 4
  %tobool17.not = icmp eq ptr %32, null
  %cond18 = select i1 %tobool17.not, i32 -12, i32 -17
  %tobool19.not = icmp eq ptr %cond, null
  br i1 %tobool19.not, label %if.then, label %cond.end15.if.end_crit_edge

cond.end15.if.end_crit_edge:                      ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #16
  %d_inode.i192 = getelementptr inbounds %struct.dentry, ptr %cond8210226, i32 0, i32 5
  %33 = ptrtoint ptr %d_inode.i192 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i192, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end15.if.end_crit_edge
  %realinode.0 = phi ptr [ %cond, %cond.end15.if.end_crit_edge ], [ %34, %if.then ]
  %35 = ptrtoint ptr %realinode.0 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %realinode.0, align 8
  %37 = and i16 %36, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %37)
  %cmp = icmp eq i16 %37, 16384
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = or i1 %retval.0.i227, %tobool.not.not
  br i1 %brmerge, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end
  %cond8. = select i1 %retval.0.i227, ptr %cond8210226, ptr %3
  %d_inode.i193 = getelementptr inbounds %struct.dentry, ptr %cond8., i32 0, i32 5
  %38 = ptrtoint ptr %d_inode.i193 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d_inode.i193, align 8
  br i1 %cmp, label %if.then26.cond.end38_crit_edge, label %cond.false37

if.then26.cond.end38_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end38

cond.false37:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  %40 = getelementptr inbounds %struct.inode, ptr %realinode.0, i32 0, i32 12
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %if.then26.cond.end38_crit_edge
  %cond39 = phi i32 [ %42, %cond.false37 ], [ 1, %if.then26.cond.end38_crit_edge ]
  %43 = ptrtoint ptr %39 to i32
  br i1 %tobool17.not, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @inode_insert5(ptr noundef nonnull %32, i32 noundef %43, ptr noundef nonnull @ovl_inode_test, ptr noundef nonnull @ovl_inode_set, ptr noundef %39) #14
  br label %ovl_iget5.exit

cond.false.i:                                     ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call ptr @iget5_locked(ptr noundef %sb, i32 noundef %43, ptr noundef nonnull @ovl_inode_test, ptr noundef nonnull @ovl_inode_set, ptr noundef %39) #14
  br label %ovl_iget5.exit

ovl_iget5.exit:                                   ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %call.i, %cond.true.i ], [ %call1.i, %cond.false.i ]
  %tobool42.not = icmp eq ptr %cond.i, null
  br i1 %tobool42.not, label %ovl_iget5.exit.out_err_crit_edge, label %if.end44

ovl_iget5.exit.out_err_crit_edge:                 ; preds = %ovl_iget5.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

if.end44:                                         ; preds = %ovl_iget5.exit
  %i_state = getelementptr inbounds %struct.inode, ptr %cond.i, i32 0, i32 24
  %44 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_state, align 8
  %and45 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then47, label %if.end51

if.then47:                                        ; preds = %if.end44
  %46 = ptrtoint ptr %cond.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cond.i, align 8
  %48 = and i16 %47, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %48)
  %cmp.i195 = icmp eq i16 %48, 16384
  br i1 %cmp.i195, label %if.then.i, label %if.then47.if.end13.i_crit_edge

if.then47.if.end13.i_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then.i:                                        ; preds = %if.then47
  br i1 %tobool.not.i215224, label %land.lhs.true4.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true4.i:                                 ; preds = %if.then.i
  %call.i196 = tail call ptr @ovl_inode_lower(ptr noundef nonnull %cond.i) #14
  %tobool5.not.i = icmp eq ptr %call.i196, null
  br i1 %tobool5.not.i, label %land.lhs.true4.i.if.end.i_crit_edge, label %land.lhs.true4.i.if.then49_crit_edge

land.lhs.true4.i.if.then49_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then49

land.lhs.true4.i.if.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true4.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  br i1 %tobool.not, label %land.lhs.true8.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

land.lhs.true8.i:                                 ; preds = %if.end.i
  %call9.i = tail call ptr @ovl_inode_upper(ptr noundef nonnull %cond.i) #14
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.end13.i_crit_edge, label %land.lhs.true8.i.if.then49_crit_edge

land.lhs.true8.i.if.then49_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then49

land.lhs.true8.i.if.end13.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true8.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge, %if.then47.if.end13.i_crit_edge
  br i1 %tobool.not.i215224, label %if.end13.i.if.end21.i_crit_edge, label %land.lhs.true15.i

if.end13.i.if.end21.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i

land.lhs.true15.i:                                ; preds = %if.end13.i
  %call16.i = tail call ptr @ovl_inode_lower(ptr noundef nonnull %cond.i) #14
  %d_inode.i.i198 = getelementptr inbounds %struct.dentry, ptr %cond8210226, i32 0, i32 5
  %49 = ptrtoint ptr %d_inode.i.i198 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d_inode.i.i198, align 8
  %cmp18.not.i = icmp eq ptr %call16.i, %50
  br i1 %cmp18.not.i, label %land.lhs.true15.i.if.end21.i_crit_edge, label %land.lhs.true15.i.if.then49_crit_edge

land.lhs.true15.i.if.then49_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then49

land.lhs.true15.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i

if.end21.i:                                       ; preds = %land.lhs.true15.i.if.end21.i_crit_edge, %if.end13.i.if.end21.i_crit_edge
  br i1 %tobool.not, label %if.end21.i.cleanup.thread246_crit_edge, label %land.lhs.true23.i

if.end21.i.cleanup.thread246_crit_edge:           ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread246

land.lhs.true23.i:                                ; preds = %if.end21.i
  %call24.i = tail call ptr @ovl_inode_upper(ptr noundef nonnull %cond.i) #14
  %d_inode.i38.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %51 = ptrtoint ptr %d_inode.i38.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %d_inode.i38.i, align 8
  %cmp26.not.i = icmp eq ptr %call24.i, %52
  br i1 %cmp26.not.i, label %land.lhs.true23.i.cleanup.thread246_crit_edge, label %land.lhs.true23.i.if.then49_crit_edge

land.lhs.true23.i.if.then49_crit_edge:            ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then49

land.lhs.true23.i.cleanup.thread246_crit_edge:    ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread246

if.then49:                                        ; preds = %land.lhs.true23.i.if.then49_crit_edge, %land.lhs.true15.i.if.then49_crit_edge, %land.lhs.true8.i.if.then49_crit_edge, %land.lhs.true4.i.if.then49_crit_edge
  tail call void @iput(ptr noundef nonnull %cond.i) #14
  br label %out_err

cleanup.thread246:                                ; preds = %land.lhs.true23.i.cleanup.thread246_crit_edge, %if.end21.i.cleanup.thread246_crit_edge
  tail call void @dput(ptr noundef %3) #14
  %redirect = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 5
  %53 = ptrtoint ptr %redirect to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %redirect, align 4
  tail call void @kfree(ptr noundef %54) #14
  br label %cleanup114

if.end51:                                         ; preds = %if.end44
  br i1 %cmp, label %if.end51.cleanup_crit_edge, label %if.then53

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  %call54 = tail call i32 @ovl_get_nlink(ptr noundef %1, ptr noundef %cond8210226, ptr noundef %3, i32 noundef %cond39)
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.end51.cleanup_crit_edge
  %nlink.0 = phi i32 [ %cond39, %if.end51.cleanup_crit_edge ], [ %call54, %if.then53 ]
  tail call void @set_nlink(ptr noundef nonnull %cond.i, i32 noundef %nlink.0) #14
  br label %if.end64

if.else:                                          ; preds = %if.end
  %call57 = tail call ptr @new_inode(ptr noundef %sb) #14
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.else.out_err_crit_edge, label %if.end60

if.else.out_err_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

if.end60:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %5, align 4
  %fsid63 = getelementptr inbounds %struct.ovl_layer, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %fsid63 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fsid63, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end60, %cleanup
  %inode.0 = phi ptr [ %cond.i, %cleanup ], [ %call57, %if.end60 ]
  %fsid.0 = phi i32 [ %cond16, %cleanup ], [ %58, %if.end60 ]
  %.pn = phi ptr [ %39, %cleanup ], [ %realinode.0, %if.end60 ]
  %ino.1.in = getelementptr inbounds %struct.inode, ptr %.pn, i32 0, i32 11
  %59 = ptrtoint ptr %ino.1.in to i32
  call void @__asan_load4_noabort(i32 %59)
  %ino.1 = load i32, ptr %ino.1.in, align 8
  %60 = ptrtoint ptr %realinode.0 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %realinode.0, align 8
  %i_rdev = getelementptr inbounds %struct.inode, ptr %realinode.0, i32 0, i32 13
  %62 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i_rdev, align 8
  tail call fastcc void @ovl_fill_inode(ptr noundef nonnull %inode.0, i16 noundef zeroext %61, i32 noundef %63)
  tail call void @ovl_inode_init(ptr noundef nonnull %inode.0, ptr noundef %oip, i32 noundef %ino.1, i32 noundef %fsid.0)
  br i1 %tobool.not, label %if.end64.if.end70_crit_edge, label %land.lhs.true

if.end64.if.end70_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

land.lhs.true:                                    ; preds = %if.end64
  %call.i200 = tail call zeroext i1 @ovl_check_dir_xattr(ptr noundef %sb, ptr noundef nonnull %3, i32 noundef 3) #14
  br i1 %call.i200, label %if.then69, label %land.lhs.true.if.end70_crit_edge

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then69:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %flags.i = getelementptr i8, ptr %inode.0, i32 -8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #14
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %land.lhs.true.if.end70_crit_edge, %if.end64.if.end70_crit_edge
  %64 = ptrtoint ptr %index214225 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %index214225, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool72.not = icmp eq i8 %65, 0
  br i1 %tobool72.not, label %if.end70.if.end74_crit_edge, label %if.then73

if.end70.if.end74_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  %flags.i201 = getelementptr i8, ptr %inode.0, i32 -8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i201) #14
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end70.if.end74_crit_edge
  %redirect75 = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 5
  %66 = ptrtoint ptr %redirect75 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %redirect75, align 4
  %redirect77 = getelementptr i8, ptr %inode.0, i32 -20
  %68 = ptrtoint ptr %redirect77 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %redirect77, align 4
  br i1 %retval.0.i227, label %if.then79, label %if.end74.if.end80_crit_edge

if.end74.if.end80_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

if.then79:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  %flags.i202 = getelementptr i8, ptr %inode.0, i32 -8
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i202) #14
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end74.if.end80_crit_edge
  br i1 %cmp, label %if.then82, label %if.end80.if.end99_crit_edge

if.end80.if.end99_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end99

if.then82:                                        ; preds = %if.end80
  %or.cond = or i1 %tobool.not, %tobool.not.i215224
  br i1 %or.cond, label %lor.lhs.false86, label %if.then82.if.then97_crit_edge

if.then82.if.then97_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then97

lor.lhs.false86:                                  ; preds = %if.then82
  %numlower = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 4
  %69 = ptrtoint ptr %numlower to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %numlower, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp87 = icmp ugt i32 %70, 1
  br i1 %cmp87, label %lor.lhs.false86.if.then97_crit_edge, label %lor.lhs.false89

lor.lhs.false86.if.then97_crit_edge:              ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then97

lor.lhs.false89:                                  ; preds = %lor.lhs.false86
  %spec.select = select i1 %tobool.not, ptr %cond8210226, ptr %3
  %call95 = tail call zeroext i1 @ovl_check_origin_xattr(ptr noundef %1, ptr noundef %spec.select) #14
  br i1 %call95, label %lor.lhs.false89.if.then97_crit_edge, label %lor.lhs.false89.if.end99_crit_edge

lor.lhs.false89.if.end99_crit_edge:               ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end99

lor.lhs.false89.if.then97_crit_edge:              ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then97

if.then97:                                        ; preds = %lor.lhs.false89.if.then97_crit_edge, %lor.lhs.false86.if.then97_crit_edge, %if.then82.if.then97_crit_edge
  %flags.i203 = getelementptr i8, ptr %inode.0, i32 -8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i203) #14
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %lor.lhs.false89.if.end99_crit_edge, %if.end80.if.end99_crit_edge
  br i1 %tobool.not, label %if.end99.if.end102_crit_edge, label %if.then101

if.end99.if.end102_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102

if.then101:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ovl_check_protattr(ptr noundef nonnull %inode.0, ptr noundef nonnull %3) #14
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %if.end99.if.end102_crit_edge
  %i_state103 = getelementptr inbounds %struct.inode, ptr %inode.0, i32 0, i32 24
  %71 = ptrtoint ptr %i_state103 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %i_state103, align 8
  %and104 = and i32 %72, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end102.cleanup114_crit_edge, label %if.then106

if.end102.cleanup114_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup114

if.then106:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unlock_new_inode(ptr noundef nonnull %inode.0) #14
  br label %cleanup114

out_err:                                          ; preds = %if.else.out_err_crit_edge, %if.then49, %ovl_iget5.exit.out_err_crit_edge
  %err.1 = phi i32 [ -12, %if.else.out_err_crit_edge ], [ %cond18, %ovl_iget5.exit.out_err_crit_edge ], [ -116, %if.then49 ]
  %call108 = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_get_inode._rs, ptr noundef nonnull @__func__.ovl_get_inode) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %out_err.if.end112_crit_edge, label %do.end

out_err.if.end112_crit_edge:                      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

do.end:                                           ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #16
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %err.1) #17
  br label %if.end112

if.end112:                                        ; preds = %do.end, %out_err.if.end112_crit_edge
  %73 = inttoptr i32 %err.1 to ptr
  br label %cleanup114

cleanup114:                                       ; preds = %if.end112, %if.then106, %if.end102.cleanup114_crit_edge, %cleanup.thread246
  %retval.0 = phi ptr [ %73, %if.end112 ], [ %inode.0, %if.then106 ], [ %inode.0, %if.end102.cleanup114_crit_edge ], [ %cond.i, %cleanup.thread246 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_check_origin_xattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_check_protattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable_noaudit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_file_ioctl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_fiemap(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %start, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ovl_inode_realdata(ptr noundef %inode) #14
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_op, align 8
  %fiemap = getelementptr inbounds %struct.inode_operations, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %fiemap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fiemap, align 64
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %call1 = tail call ptr @ovl_override_creds(ptr noundef %5) #14
  %6 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_op, align 8
  %fiemap3 = getelementptr inbounds %struct.inode_operations, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %fiemap3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fiemap3, align 64
  %call4 = tail call i32 %9(ptr noundef %call, ptr noundef %fieinfo, i64 noundef %start, i64 noundef %len) #14
  tail call void @revert_creds(ptr noundef %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_inode_realdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @noop_direct_IO(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ovl_get_link(ptr noundef %dentry, ptr nocapture noundef readnone %inode, ptr noundef %done) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dentry, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %call1 = tail call ptr @ovl_override_creds(ptr noundef %1) #14
  %call2 = tail call ptr @ovl_dentry_real(ptr noundef nonnull %dentry) #14
  %call3 = tail call ptr @vfs_get_link(ptr noundef %call2, ptr noundef %done) #14
  tail call void @revert_creds(ptr noundef %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfs_get_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_indexdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_insert5(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_check_dir_xattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !25, !26, !28, !29, !30, !31, !32, !34, !36, !38, !39, !40, !41, !42, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68}
!llvm.named.register.sp = !{!70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/overlayfs/inode.c", i32 288, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/overlayfs/inode.c", i32 334, i32 24}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/overlayfs/inode.c", i32 337, i32 24}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/overlayfs/inode.c", i32 880, i32 64}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/overlayfs/inode.c", i32 885, i32 64}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/overlayfs/inode.c", i32 923, i32 2}
!12 = !{ptr @ovl_get_nlink._rs, !11, !"_rs", i1 false, i1 false}
!13 = !{ptr @__func__.ovl_get_nlink, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ovl_get_nlink._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @ovl_get_nlink._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @ovl_get_inode._rs, !18, !"_rs", i1 false, i1 false}
!18 = !{!"../fs/overlayfs/inode.c", i32 1193, i32 2}
!19 = !{ptr @__func__.ovl_get_inode, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ovl_get_inode._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @ovl_get_inode._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ovl_map_dev_ino._rs, !27, !"_rs", i1 false, i1 false}
!27 = !{!"../fs/overlayfs/inode.c", i32 124, i32 4}
!28 = !{ptr @__func__.ovl_map_dev_ino, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ovl_map_dev_ino._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @ovl_map_dev_ino._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/overlayfs/inode.c", i32 409, i32 17}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../fs/overlayfs/inode.c", i32 515, i32 41}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/overlayfs/overlayfs.h", i32 204, i32 2}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ovl_do_setxattr.__UNIQUE_ID_ddebug231, !37, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!42 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/overlayfs/overlayfs.h", i32 193, i32 2}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ovl_do_getxattr.__UNIQUE_ID_ddebug228, !44, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!47 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ovl_lockdep_annotate_inode_mutex_key.ovl_i_mutex_key, !49, !"ovl_i_mutex_key", i1 false, i1 false}
!49 = !{!"../fs/overlayfs/inode.c", i32 711, i32 31}
!50 = !{ptr @ovl_lockdep_annotate_inode_mutex_key.ovl_i_mutex_dir_key, !51, !"ovl_i_mutex_dir_key", i1 false, i1 false}
!51 = !{!"../fs/overlayfs/inode.c", i32 712, i32 31}
!52 = !{ptr @ovl_lockdep_annotate_inode_mutex_key.ovl_i_lock_key, !53, !"ovl_i_lock_key", i1 false, i1 false}
!53 = !{!"../fs/overlayfs/inode.c", i32 713, i32 31}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../fs/overlayfs/inode.c", i32 717, i32 6}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/overlayfs/inode.c", i32 721, i32 3}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/overlayfs/inode.c", i32 723, i32 3}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/overlayfs/inode.c", i32 725, i32 2}
!62 = !{ptr @ovl_file_inode_operations, !63, !"ovl_file_inode_operations", i1 false, i1 false}
!63 = !{!"../fs/overlayfs/inode.c", i32 636, i32 38}
!64 = !{ptr @ovl_aops, !65, !"ovl_aops", i1 false, i1 false}
!65 = !{!"../fs/overlayfs/inode.c", i32 665, i32 46}
!66 = !{ptr @ovl_symlink_inode_operations, !67, !"ovl_symlink_inode_operations", i1 false, i1 false}
!67 = !{!"../fs/overlayfs/inode.c", i32 648, i32 38}
!68 = !{ptr @ovl_special_inode_operations, !69, !"ovl_special_inode_operations", i1 false, i1 false}
!69 = !{!"../fs/overlayfs/inode.c", i32 656, i32 38}
!70 = !{!"sp"}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 2148784655}
!82 = !{i64 1168321, i64 1168345, i64 1168366, i64 1168383, i64 1168400}
!83 = !{i64 2148784881}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2148685273, i64 2148685299, i64 2148685328, i64 2148685362, i64 2148685393, i64 2148685416}
!86 = !{i64 1087488, i64 1087549}
!87 = !{i64 1090220}
!88 = !{i64 1090505}
!89 = !{i64 2152525639}
!90 = !{i64 2152525481}
!91 = !{i64 2152525809}
!92 = !{i64 2150111623}
!93 = !{i64 2152527570}
!94 = !{i64 2150003875}
!95 = !{i64 2150008809}
!96 = !{i64 2150030527}
!97 = !{i64 2150035421}
!98 = !{i64 2150111948}
!99 = !{i64 2150112273}
!100 = !{i64 2152539432}
!101 = !{!"auto-init"}
!102 = !{i8 0, i8 2}
!103 = !{!"branch_weights", i32 2000, i32 2002}
!104 = !{i64 2148768243}
!105 = !{i64 2148683528, i64 2148683560, i64 2148683589, i64 2148683623, i64 2148683654, i64 2148683677}
!106 = !{i64 2148768472}
!107 = !{i64 2148507406, i64 2148507411, i64 2148507424, i64 2148507468, i64 2148507502, i64 2148507523}
