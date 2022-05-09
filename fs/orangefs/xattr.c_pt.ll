; ModuleID = '/llk/IR_all_yes/fs/orangefs/xattr.c_pt.bc'
source_filename = "../fs/orangefs/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }
%struct.orangefs_inode_s = type { %struct.orangefs_object_kref, [256 x i8], %struct.rw_semaphore, %struct.inode, i64, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, [16 x %struct.hlist_head] }
%struct.orangefs_object_kref = type { %struct.orangefs_khandle, i32, i32 }
%struct.orangefs_khandle = type { [16 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.80, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.81, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.82, ptr, %struct.address_space, %struct.list_head, %union.anon.83, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.80 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.81 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.82 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.83 = type { ptr }
%struct.orangefs_cached_xattr = type { %struct.hlist_node, [256 x i8], [8192 x i8], i32, i32 }
%struct.orangefs_kernel_op_s = type { i32, i64, %union.anon.86, %struct.orangefs_upcall_s, %struct.orangefs_downcall_s, %struct.completion, %struct.spinlock, i32, %struct.list_head }
%union.anon.86 = type { i32 }
%struct.orangefs_upcall_s = type { i32, i32, i32, i32, i32, i64, ptr, %union.anon.87 }
%union.anon.87 = type { %struct.orangefs_param_request_s, [6424 x i8] }
%struct.orangefs_param_request_s = type { i32, i32, %union.anon.88, [2048 x i8] }
%union.anon.88 = type { i64 }
%struct.orangefs_downcall_s = type { i32, i32, i64, ptr, %union.anon.89 }
%union.anon.89 = type { %struct.orangefs_listxattr_response, [4016 x i8] }
%struct.orangefs_listxattr_response = type { i32, i32, i64, [4096 x i8], i32, i32, [16 x i32] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.orangefs_sb_info_s = type { %struct.orangefs_khandle, i32, i32, i32, [256 x i8], ptr, i32, i32, %struct.list_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.78, %struct.list_head, %struct.list_head, %union.anon.79 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.78 = type { %struct.list_head }
%union.anon.79 = type { %struct.hlist_node }

@orangefs_gossip_debug_mask = external dso_local local_unnamed_addr global i64, align 8
@orangefs_inode_getxattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: name %s, buffer_size %zd\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"orangefs_inode_getxattr\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/orangefs/xattr.c\00", [44 x i8] zeroinitializer }, align 32
@orangefs_inode_getxattr._entry_ptr = internal global ptr @orangefs_inode_getxattr._entry, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@orangefs_inode_getxattr._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017getxattr on inode %pU, name %s (uid %o, gid %o)\0A\00", [45 x i8] zeroinitializer }, align 32
@orangefs_inode_getxattr._entry_ptr.6 = internal global ptr @orangefs_inode_getxattr._entry.4, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@orangefs_inode_getxattr._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017orangefs_inode_getxattr: inode %pU key %s does not exist!\0A\00", [35 x i8] zeroinitializer }, align 32
@orangefs_inode_getxattr._entry_ptr.9 = internal global ptr @orangefs_inode_getxattr._entry.7, section ".printk_index", align 4
@orangefs_getattr_timeout_msecs = external dso_local local_unnamed_addr global i32, align 4
@orangefs_inode_getxattr._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017orangefs_inode_getxattr: inode %pU key %s key_sz %d, val_len %d\0A\00", [61 x i8] zeroinitializer }, align 32
@orangefs_inode_getxattr._entry_ptr.12 = internal global ptr @orangefs_inode_getxattr._entry.10, section ".printk_index", align 4
@orangefs_inode_setxattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.13, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"orangefs_inode_setxattr\00", [40 x i8] zeroinitializer }, align 32
@orangefs_inode_setxattr._entry_ptr = internal global ptr @orangefs_inode_setxattr._entry, section ".printk_index", align 4
@orangefs_inode_setxattr._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017removing xattr (%s)\0A\00", [41 x i8] zeroinitializer }, align 32
@orangefs_inode_setxattr._entry_ptr.16 = internal global ptr @orangefs_inode_setxattr._entry.14, section ".printk_index", align 4
@orangefs_inode_setxattr._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017setxattr on inode %pU, name %s\0A\00", [62 x i8] zeroinitializer }, align 32
@orangefs_inode_setxattr._entry_ptr.19 = internal global ptr @orangefs_inode_setxattr._entry.17, section ".printk_index", align 4
@orangefs_inode_setxattr._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017orangefs_inode_setxattr: key %s, key_sz %d  value size %zd\0A\00", [34 x i8] zeroinitializer }, align 32
@orangefs_inode_setxattr._entry_ptr.22 = internal global ptr @orangefs_inode_setxattr._entry.20, section ".printk_index", align 4
@orangefs_inode_setxattr._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017orangefs_inode_setxattr: returning %d\0A\00", [55 x i8] zeroinitializer }, align 32
@orangefs_inode_setxattr._entry_ptr.25 = internal global ptr @orangefs_inode_setxattr._entry.23, section ".printk_index", align 4
@orangefs_listxattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: bogus NULL pointers\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"orangefs_listxattr\00", [45 x i8] zeroinitializer }, align 32
@orangefs_listxattr._entry_ptr = internal global ptr @orangefs_listxattr._entry, section ".printk_index", align 4
@orangefs_listxattr._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: impossible value for returned_count:%d:\0A\00", [49 x i8] zeroinitializer }, align 32
@orangefs_listxattr._entry_ptr.30 = internal global ptr @orangefs_listxattr._entry.28, section ".printk_index", align 4
@orangefs_listxattr._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: impossible value for lengths[%d]\0A\00", [56 x i8] zeroinitializer }, align 32
@orangefs_listxattr._entry_ptr.33 = internal global ptr @orangefs_listxattr._entry.31, section ".printk_index", align 4
@orangefs_listxattr._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.2, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017Copying key %d -> %s\0A\00", [40 x i8] zeroinitializer }, align 32
@orangefs_listxattr._entry_ptr.36 = internal global ptr @orangefs_listxattr._entry.34, section ".printk_index", align 4
@orangefs_listxattr._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.27, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017[RESERVED] key %d -> %s\0A\00", [37 x i8] zeroinitializer }, align 32
@orangefs_listxattr._entry_ptr.39 = internal global ptr @orangefs_listxattr._entry.37, section ".printk_index", align 4
@orangefs_listxattr._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.27, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017%s: returning %d [size of buffer %ld] (filled in %d keys)\0A\00", [35 x i8] zeroinitializer }, align 32
@orangefs_listxattr._entry_ptr.42 = internal global ptr @orangefs_listxattr._entry.40, section ".printk_index", align 4
@posix_acl_access_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_default_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@orangefs_xattr_default_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.49, i32 0, ptr null, ptr @orangefs_xattr_get_default, ptr @orangefs_xattr_set_default }, [40 x i8] zeroinitializer }, align 32
@orangefs_xattr_handlers = dso_local global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr @orangefs_xattr_default_handler, ptr null], [16 x i8] zeroinitializer }, align 32
@orangefs_inode_removexattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017orangefs_inode_removexattr: key %s, key_sz %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"orangefs_inode_removexattr\00", [37 x i8] zeroinitializer }, align 32
@orangefs_inode_removexattr._entry_ptr = internal global ptr @orangefs_inode_removexattr._entry, section ".printk_index", align 4
@orangefs_inode_removexattr._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017orangefs_inode_removexattr: returning %d\0A\00", [52 x i8] zeroinitializer }, align 32
@orangefs_inode_removexattr._entry_ptr.47 = internal global ptr @orangefs_inode_removexattr._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"system.pvfs2.\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 104, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 117, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 167, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 208, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 325, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 338, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 344, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 367, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 378, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 420, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 457, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 471, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 489, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 498, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 514, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [31 x i8] c"orangefs_xattr_default_handler\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 551, i32 35 }
@___asan_gen_.152 = private unnamed_addr constant [24 x i8] c"orangefs_xattr_handlers\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 557, i32 29 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 271, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 289, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 37, i32 22 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [23 x i8] c"../fs/orangefs/xattr.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 552, i32 12 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @orangefs_inode_getxattr._entry, ptr @orangefs_inode_getxattr._entry.10, ptr @orangefs_inode_getxattr._entry.4, ptr @orangefs_inode_getxattr._entry.7, ptr @orangefs_inode_getxattr._entry_ptr, ptr @orangefs_inode_getxattr._entry_ptr.12, ptr @orangefs_inode_getxattr._entry_ptr.6, ptr @orangefs_inode_getxattr._entry_ptr.9, ptr @orangefs_inode_removexattr._entry, ptr @orangefs_inode_removexattr._entry.45, ptr @orangefs_inode_removexattr._entry_ptr, ptr @orangefs_inode_removexattr._entry_ptr.47, ptr @orangefs_inode_setxattr._entry, ptr @orangefs_inode_setxattr._entry.14, ptr @orangefs_inode_setxattr._entry.17, ptr @orangefs_inode_setxattr._entry.20, ptr @orangefs_inode_setxattr._entry.23, ptr @orangefs_inode_setxattr._entry_ptr, ptr @orangefs_inode_setxattr._entry_ptr.16, ptr @orangefs_inode_setxattr._entry_ptr.19, ptr @orangefs_inode_setxattr._entry_ptr.22, ptr @orangefs_inode_setxattr._entry_ptr.25, ptr @orangefs_listxattr._entry, ptr @orangefs_listxattr._entry.28, ptr @orangefs_listxattr._entry.31, ptr @orangefs_listxattr._entry.34, ptr @orangefs_listxattr._entry.37, ptr @orangefs_listxattr._entry.40, ptr @orangefs_listxattr._entry_ptr, ptr @orangefs_listxattr._entry_ptr.30, ptr @orangefs_listxattr._entry_ptr.33, ptr @orangefs_listxattr._entry_ptr.36, ptr @orangefs_listxattr._entry_ptr.39, ptr @orangefs_listxattr._entry_ptr.42, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @orangefs_xattr_default_handler, ptr @orangefs_xattr_handlers, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_getxattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_getxattr._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_getxattr._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_getxattr._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_setxattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_setxattr._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_setxattr._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_setxattr._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_setxattr._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_listxattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_listxattr._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_listxattr._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_listxattr._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_listxattr._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_listxattr._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_xattr_default_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_xattr_handlers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_removexattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_removexattr._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_inode_getxattr(ptr noundef %inode, ptr noundef %name, ptr nocapture noundef %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -376
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %size) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %1 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %inode, align 8
  %3 = and i16 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %3)
  %cmp = icmp eq i16 %3, -24576
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end8

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end4
  %call9 = tail call i32 @strlen(ptr noundef %name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call9)
  %cmp10 = icmp ugt i32 %call9, 255
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %do.end16

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end16:                                         ; preds = %if.end8
  %4 = tail call i32 @llvm.read_register.i32(metadata !84) #7
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 99
  %8 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cred, align 16
  %fsuid19 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %fsuid19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid19, align 4
  %.fca.0.insert197 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call20 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert197) #7
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %cred28 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 99
  %13 = ptrtoint ptr %cred28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cred28, align 16
  %fsgid29 = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %fsgid29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %agg.tmp21.sroa.0.0.copyload = load i32, ptr %fsgid29, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp21.sroa.0.0.copyload, 0
  %call31 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %16 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and33 = and i64 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33)
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %do.end16.do.end44_crit_edge, label %do.end38

do.end16.do.end44_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

do.end38:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %add.ptr.i, ptr noundef %name, i32 noundef %call20, i32 noundef %call31) #10
  br label %do.end44

do.end44:                                         ; preds = %do.end38, %do.end16.do.end44_crit_edge
  %xattr_sem = getelementptr i8, ptr %inode, i32 -96
  tail call void @down_read(ptr noundef %xattr_sem) #7
  %tobool.not3.i.i = icmp eq ptr %name, null
  br i1 %tobool.not3.i.i, label %do.end44.xattr_key.exit.i_crit_edge, label %do.end44.while.body.i.i_crit_edge

do.end44.while.body.i.i_crit_edge:                ; preds = %do.end44
  br label %while.body.i.i

do.end44.xattr_key.exit.i_crit_edge:              ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %xattr_key.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end44.while.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %do.end44.while.body.i.i_crit_edge ]
  %key.addr.04.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %name, %do.end44.while.body.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %key.addr.04.i.i, i32 1
  %17 = ptrtoint ptr %key.addr.04.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %key.addr.04.i.i, align 1
  %conv.i.i = zext i8 %18 to i32
  %add.i.i = add i32 %i.05.i.i, %conv.i.i
  %tobool.not.i.i = icmp eq ptr %incdec.ptr.i.i, null
  br i1 %tobool.not.i.i, label %while.end.loopexit.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.end.loopexit.i.i:                           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo.i.i = and i32 %add.i.i, 15
  br label %xattr_key.exit.i

xattr_key.exit.i:                                 ; preds = %while.end.loopexit.i.i, %do.end44.xattr_key.exit.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %do.end44.xattr_key.exit.i_crit_edge ], [ %phi.bo.i.i, %while.end.loopexit.i.i ]
  %arrayidx.i = getelementptr %struct.orangefs_inode_s, ptr %add.ptr.i, i32 0, i32 11, i32 %i.0.lcssa.i.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool.not.i36.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i36.not.i, label %xattr_key.exit.i.if.end69_crit_edge, label %xattr_key.exit.i.land.rhs.i_crit_edge

xattr_key.exit.i.land.rhs.i_crit_edge:            ; preds = %xattr_key.exit.i
  br label %land.rhs.i

xattr_key.exit.i.if.end69_crit_edge:              ; preds = %xattr_key.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %xattr_key.exit.i.land.rhs.i_crit_edge
  %cx.038.i = phi ptr [ %22, %for.inc.i.land.rhs.i_crit_edge ], [ %20, %xattr_key.exit.i.land.rhs.i_crit_edge ]
  %key9.i = getelementptr inbounds %struct.orangefs_cached_xattr, ptr %cx.038.i, i32 0, i32 1
  %call10.i = tail call i32 @strcmp(ptr noundef %key9.i, ptr noundef %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true, label %for.inc.i

for.inc.i:                                        ; preds = %land.rhs.i
  %21 = ptrtoint ptr %cx.038.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cx.038.i, align 4
  %tobool6.not.i = icmp eq ptr %22, null
  br i1 %tobool6.not.i, label %for.inc.i.if.end69_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

for.inc.i.if.end69_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true:                                    ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %timeout = getelementptr inbounds %struct.orangefs_cached_xattr, ptr %cx.038.i, i32 0, i32 4
  %24 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timeout, align 4
  %sub = sub i32 %23, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp47 = icmp slt i32 %sub, 0
  br i1 %cmp47, label %if.then49, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then49:                                        ; preds = %land.lhs.true
  %length50 = getelementptr inbounds %struct.orangefs_cached_xattr, ptr %cx.038.i, i32 0, i32 3
  %26 = ptrtoint ptr %length50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp51 = icmp eq i32 %27, -1
  br i1 %cmp51, label %if.then49.out_unlock_crit_edge, label %if.else

if.then49.out_unlock_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.else:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp54 = icmp eq i32 %size, 0
  br i1 %cmp54, label %if.else.out_unlock_crit_edge, label %if.end58

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end58:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %size)
  %cmp60 = icmp ugt i32 %27, %size
  br i1 %cmp60, label %if.end58.out_unlock_crit_edge, label %if.end63

if.end58.out_unlock_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end63:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr inbounds %struct.orangefs_cached_xattr, ptr %cx.038.i, i32 0, i32 2
  %28 = call ptr @memcpy(ptr %buffer, ptr %val, i32 %27)
  %29 = ptrtoint ptr %length50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length50, align 4
  %add.ptr = getelementptr i8, ptr %buffer, i32 %30
  %sub67 = sub i32 %size, %30
  %31 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub67)
  %32 = load i32, ptr %length50, align 4
  br label %out_unlock

if.end69:                                         ; preds = %land.lhs.true.if.end69_crit_edge, %for.inc.i.if.end69_crit_edge, %xattr_key.exit.i.if.end69_crit_edge
  %tobool46.not304 = phi i1 [ false, %land.lhs.true.if.end69_crit_edge ], [ true, %xattr_key.exit.i.if.end69_crit_edge ], [ true, %for.inc.i.if.end69_crit_edge ]
  %retval.0.i303 = phi ptr [ %cx.038.i, %land.lhs.true.if.end69_crit_edge ], [ null, %xattr_key.exit.i.if.end69_crit_edge ], [ null, %for.inc.i.if.end69_crit_edge ]
  %call70 = tail call ptr @op_alloc(i32 noundef -16777200) #7
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %if.end69.out_unlock_crit_edge, label %if.end73

if.end69.out_unlock_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end73:                                         ; preds = %if.end69
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call70, i32 0, i32 3, i32 7
  %33 = call ptr @memcpy(ptr %req, ptr %add.ptr.i, i32 24)
  %key = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call70, i32 0, i32 3, i32 7, i32 0, i32 3, i32 16
  %call78 = tail call ptr @strcpy(ptr noundef %key, ptr noundef %name) #11
  %call79 = tail call i32 @strlen(ptr noundef %name) #11
  %add = add i32 %call79, 1
  %key_sz = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call70, i32 0, i32 3, i32 7, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %key_sz to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %key_sz, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %35 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 33
  %37 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i, align 16
  %flags = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 8
  %and83 = and i32 %40, 1
  %call85 = tail call i32 @service_operation(ptr noundef nonnull %call70, ptr noundef nonnull @.str.1, i32 noundef %and83) #7
  %41 = zext i32 %call85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call85, label %if.end73.out_release_op_crit_edge [
    i32 0, label %if.end124
    i32 -2, label %if.then91
  ]

if.end73.out_release_op_crit_edge:                ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_release_op

if.then91:                                        ; preds = %if.end73
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %42 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and93 = and i64 %42, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and93)
  %tobool94.not = icmp eq i64 %and93, 0
  br i1 %tobool94.not, label %if.then91.do.end108_crit_edge, label %do.end98

if.then91.do.end108_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end108

do.end98:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %add.ptr.i, ptr noundef %key) #10
  br label %do.end108

do.end108:                                        ; preds = %do.end98, %if.then91.do.end108_crit_edge
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8464, i32 noundef 3264, i32 noundef 2) #13
  %tobool110.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool110.not, label %do.end108.out_release_op_crit_edge, label %if.then111

do.end108.out_release_op_crit_edge:               ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_release_op

if.then111:                                       ; preds = %do.end108
  %key112 = getelementptr inbounds %struct.orangefs_cached_xattr, ptr %call1.i.i, i32 0, i32 1
  %call114 = tail call ptr @strcpy(ptr noundef %key112, ptr noundef %name) #11
  %length115 = getelementptr inbounds %struct.orangefs_cached_xattr, ptr %call1.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %length115 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %length115, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_getattr_timeout_msecs to i32))
  %45 = load i32, ptr @orangefs_getattr_timeout_msecs, align 4
  %mul = mul i32 %45, 100
  %div = sdiv i32 %mul, 1000
  %add116 = add i32 %div, %44
  %timeout117 = getelementptr inbounds %struct.orangefs_cached_xattr, ptr %call1.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %timeout117 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add116, ptr %timeout117, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then111
  %i.05.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.then111 ]
  %key.addr.04.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %key112, %if.then111 ]
  %incdec.ptr.i = getelementptr i8, ptr %key.addr.04.i, i32 1
  %47 = ptrtoint ptr %key.addr.04.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %key.addr.04.i, align 1
  %conv.i = zext i8 %48 to i32
  %add.i = add i32 %i.05.i, %conv.i
  %tobool.not.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool.not.i, label %while.end.loopexit.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  %phi.bo.i = and i32 %add.i, 15
  %phi.bo = mul i32 %phi.bo.i, 1640531527
  %phi.bo305 = lshr i32 %phi.bo, 28
  %arrayidx = getelementptr %struct.orangefs_inode_s, ptr %add.ptr.i, i32 0, i32 11, i32 %phi.bo305
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx, align 4
  %51 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %call1.i.i, align 4096
  %tobool.not.i280 = icmp eq ptr %50, null
  br i1 %tobool.not.i280, label %while.end.loopexit.i.hlist_add_head.exit_crit_edge, label %do.body12.i

while.end.loopexit.i.hlist_add_head.exit_crit_edge: ; preds = %while.end.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %while.end.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %50, i32 0, i32 1
  %52 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %call1.i.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %while.end.loopexit.i.hlist_add_head.exit_crit_edge
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %call1.i.i, ptr %arrayidx, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call1.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %arrayidx, ptr %pprev34.i, align 4
  br label %out_release_op

if.end124:                                        ; preds = %if.end73
  %resp = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call70, i32 0, i32 4, i32 4
  %55 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %resp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp125 = icmp eq i32 %size, 0
  br i1 %cmp125, label %if.end124.out_release_op_crit_edge, label %if.end128

if.end124.out_release_op_crit_edge:               ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_release_op

if.end128:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %size)
  %cmp129 = icmp ugt i32 %56, %size
  br i1 %cmp129, label %if.end128.out_release_op_crit_edge, label %if.end132

if.end128.out_release_op_crit_edge:               ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_release_op

if.end132:                                        ; preds = %if.end128
  %val135 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call70, i32 0, i32 4, i32 4, i32 0, i32 2
  %57 = call ptr @memcpy(ptr %buffer, ptr %val135, i32 %56)
  %add.ptr137 = getelementptr i8, ptr %buffer, i32 %56
  %sub138 = sub i32 %size, %56
  %58 = call ptr @memset(ptr %add.ptr137, i32 0, i32 %sub138)
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %59 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and140 = and i64 %59, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and140)
  %tobool141.not = icmp eq i64 %and140, 0
  br i1 %tobool141.not, label %if.end132.do.end158_crit_edge, label %do.end145

if.end132.do.end158_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end158

do.end145:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %key_sz to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %key_sz, align 8
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr.i, ptr noundef %key, i32 noundef %61, i32 noundef 0) #10
  br label %do.end158

do.end158:                                        ; preds = %do.end145, %if.end132.do.end158_crit_edge
  br i1 %tobool46.not304, label %if.else169, label %if.then160

if.then160:                                       ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #9
  %key161 = getelementptr inbounds %struct.orangefs_cached_xattr, ptr %retval.0.i303, i32 0, i32 1
  %call163 = tail call ptr @strcpy(ptr noundef %key161, ptr noundef %name) #11
  %val164 = getelementptr inbounds %struct.orangefs_cached_xattr, ptr %retval.0.i303, i32 0, i32 2
  %62 = call ptr @memcpy(ptr %val164, ptr %buffer, i32 %56)
  %length166 = getelementptr inbounds %struct.orangefs_cached_xattr, ptr %retval.0.i303, i32 0, i32 3
  %63 = ptrtoint ptr %length166 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %56, ptr %length166, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %add167 = add i32 %64, 100
  %timeout168 = getelementptr inbounds %struct.orangefs_cached_xattr, ptr %retval.0.i303, i32 0, i32 4
  %65 = ptrtoint ptr %timeout168 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add167, ptr %timeout168, align 4
  br label %out_release_op

if.else169:                                       ; preds = %do.end158
  %call1.i.i277 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8464, i32 noundef 3264, i32 noundef 2) #13
  %tobool171.not = icmp eq ptr %call1.i.i277, null
  br i1 %tobool171.not, label %if.else169.out_release_op_crit_edge, label %if.then172

if.else169.out_release_op_crit_edge:              ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_release_op

if.then172:                                       ; preds = %if.else169
  %key173 = getelementptr inbounds %struct.orangefs_cached_xattr, ptr %call1.i.i277, i32 0, i32 1
  %call175 = tail call ptr @strcpy(ptr noundef %key173, ptr noundef %name) #11
  %val176 = getelementptr inbounds %struct.orangefs_cached_xattr, ptr %call1.i.i277, i32 0, i32 2
  %66 = call ptr @memcpy(ptr %val176, ptr %buffer, i32 %56)
  %length178 = getelementptr inbounds %struct.orangefs_cached_xattr, ptr %call1.i.i277, i32 0, i32 3
  %67 = ptrtoint ptr %length178 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %56, ptr %length178, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %add179 = add i32 %68, 100
  %timeout180 = getelementptr inbounds %struct.orangefs_cached_xattr, ptr %call1.i.i277, i32 0, i32 4
  %69 = ptrtoint ptr %timeout180 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add179, ptr %timeout180, align 4
  br label %while.body.i289

while.body.i289:                                  ; preds = %while.body.i289.while.body.i289_crit_edge, %if.then172
  %i.05.i283 = phi i32 [ %add.i287, %while.body.i289.while.body.i289_crit_edge ], [ 0, %if.then172 ]
  %key.addr.04.i284 = phi ptr [ %incdec.ptr.i285, %while.body.i289.while.body.i289_crit_edge ], [ %key173, %if.then172 ]
  %incdec.ptr.i285 = getelementptr i8, ptr %key.addr.04.i284, i32 1
  %70 = ptrtoint ptr %key.addr.04.i284 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %key.addr.04.i284, align 1
  %conv.i286 = zext i8 %71 to i32
  %add.i287 = add i32 %i.05.i283, %conv.i286
  %tobool.not.i288 = icmp eq ptr %incdec.ptr.i285, null
  br i1 %tobool.not.i288, label %while.end.loopexit.i291, label %while.body.i289.while.body.i289_crit_edge

while.body.i289.while.body.i289_crit_edge:        ; preds = %while.body.i289
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i289

while.end.loopexit.i291:                          ; preds = %while.body.i289
  %phi.bo.i290 = and i32 %add.i287, 15
  %phi.bo306 = mul i32 %phi.bo.i290, 1640531527
  %phi.bo307 = lshr i32 %phi.bo306, 28
  %arrayidx187 = getelementptr %struct.orangefs_inode_s, ptr %add.ptr.i, i32 0, i32 11, i32 %phi.bo307
  %72 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx187, align 4
  %74 = ptrtoint ptr %call1.i.i277 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %73, ptr %call1.i.i277, align 4096
  %tobool.not.i296 = icmp eq ptr %73, null
  br i1 %tobool.not.i296, label %while.end.loopexit.i291.hlist_add_head.exit300_crit_edge, label %do.body12.i298

while.end.loopexit.i291.hlist_add_head.exit300_crit_edge: ; preds = %while.end.loopexit.i291
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_head.exit300

do.body12.i298:                                   ; preds = %while.end.loopexit.i291
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i297 = getelementptr inbounds %struct.hlist_node, ptr %73, i32 0, i32 1
  %75 = ptrtoint ptr %pprev.i297 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %call1.i.i277, ptr %pprev.i297, align 4
  br label %hlist_add_head.exit300

hlist_add_head.exit300:                           ; preds = %do.body12.i298, %while.end.loopexit.i291.hlist_add_head.exit300_crit_edge
  %76 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %call1.i.i277, ptr %arrayidx187, align 4
  %pprev34.i299 = getelementptr inbounds %struct.hlist_node, ptr %call1.i.i277, i32 0, i32 1
  %77 = ptrtoint ptr %pprev34.i299 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %arrayidx187, ptr %pprev34.i299, align 4
  br label %out_release_op

out_release_op:                                   ; preds = %hlist_add_head.exit300, %if.else169.out_release_op_crit_edge, %if.then160, %if.end128.out_release_op_crit_edge, %if.end124.out_release_op_crit_edge, %hlist_add_head.exit, %do.end108.out_release_op_crit_edge, %if.end73.out_release_op_crit_edge
  %ret.0 = phi i32 [ -61, %hlist_add_head.exit ], [ -61, %do.end108.out_release_op_crit_edge ], [ %56, %if.then160 ], [ %56, %hlist_add_head.exit300 ], [ %56, %if.else169.out_release_op_crit_edge ], [ %call85, %if.end73.out_release_op_crit_edge ], [ %56, %if.end124.out_release_op_crit_edge ], [ -34, %if.end128.out_release_op_crit_edge ]
  tail call void @op_release(ptr noundef nonnull %call70) #7
  br label %out_unlock

out_unlock:                                       ; preds = %out_release_op, %if.end69.out_unlock_crit_edge, %if.end63, %if.end58.out_unlock_crit_edge, %if.else.out_unlock_crit_edge, %if.then49.out_unlock_crit_edge
  %ret.1 = phi i32 [ %32, %if.end63 ], [ %ret.0, %out_release_op ], [ -12, %if.end69.out_unlock_crit_edge ], [ -61, %if.then49.out_unlock_crit_edge ], [ %27, %if.else.out_unlock_crit_edge ], [ -34, %if.end58.out_unlock_crit_edge ]
  tail call void @up_read(ptr noundef %xattr_sem) #7
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end8.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_unlock ], [ -95, %do.end4.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @op_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @service_operation(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @op_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_inode_setxattr(ptr noundef %inode, ptr noundef %name, ptr noundef readonly %value, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -376
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %size) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %size)
  %cmp = icmp ugt i32 %size, 8192
  br i1 %cmp, label %do.end5.cleanup_crit_edge, label %if.end7

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end5
  %call8 = tail call i32 @strlen(ptr noundef %name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call8)
  %cmp9 = icmp ugt i32 %call8, 255
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %and.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %flags, 1
  %internal_flag.0.i = select i1 %tobool.not.i, i32 %and1.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp13 = icmp eq i32 %size, 0
  %tobool14.not = icmp eq ptr %value, null
  %or.cond = and i1 %tobool14.not, %cmp13
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %1 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and17 = and i64 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %or.cond, label %do.body16, label %do.body30

do.body16:                                        ; preds = %if.end11
  br i1 %tobool18.not, label %do.body16.do.end27_crit_edge, label %do.end22

do.body16.do.end27_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

do.end22:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name) #10
  br label %do.end27

do.end27:                                         ; preds = %do.end22, %do.body16.do.end27_crit_edge
  %call1.i = tail call i32 @strlen(ptr noundef %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call1.i)
  %cmp.i = icmp ugt i32 %call1.i, 255
  br i1 %cmp.i, label %do.end27.cleanup_crit_edge, label %if.end.i

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %do.end27
  %xattr_sem.i = getelementptr i8, ptr %inode, i32 -96
  tail call void @down_write(ptr noundef %xattr_sem.i) #7
  %call2.i = tail call ptr @op_alloc(i32 noundef -16777197) #7
  %tobool.not.i175 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i175, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end4.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end4.i:                                        ; preds = %if.end.i
  %req.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call2.i, i32 0, i32 3, i32 7
  %2 = call ptr @memcpy(ptr %req.i, ptr %add.ptr.i, i32 24)
  %key.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call2.i, i32 0, i32 3, i32 7, i32 0, i32 3, i32 16
  %call8.i = tail call ptr @strcpy(ptr noundef %key.i, ptr noundef %name) #12
  %call9.i = tail call i32 @strlen(ptr noundef %name) #12
  %add.i = add i32 %call9.i, 1
  %key_sz.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call2.i, i32 0, i32 3, i32 7, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %key_sz.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add.i, ptr %key_sz.i, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %4 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and.i176 = and i64 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i176)
  %tobool12.not.i = icmp eq i64 %and.i176, 0
  br i1 %tobool12.not.i, label %if.end4.i.do.end26.i_crit_edge, label %do.end.i

if.end4.i.do.end26.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %key.i, i32 noundef %add.i) #10
  br label %do.end26.i

do.end26.i:                                       ; preds = %do.end.i, %if.end4.i.do.end26.i_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i, align 16
  %flags28.i = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %flags28.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags28.i, align 8
  %and29.i = and i32 %10, 1
  %call31.i = tail call i32 @service_operation(ptr noundef nonnull %call2.i, ptr noundef nonnull @.str.44, i32 noundef %and29.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call31.i)
  %cmp32.i = icmp eq i32 %call31.i, -2
  %..i = select i1 %tobool.not.i, i32 0, i32 -61
  %ret.0.i = select i1 %cmp32.i, i32 %..i, i32 %call31.i
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %11 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and40.i = and i64 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and40.i)
  %tobool41.not.i = icmp eq i64 %and40.i, 0
  br i1 %tobool41.not.i, label %do.end26.i.do.end50.i_crit_edge, label %do.end45.i

do.end26.i.do.end50.i_crit_edge:                  ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50.i

do.end45.i:                                       ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %ret.0.i) #10
  br label %do.end50.i

do.end50.i:                                       ; preds = %do.end45.i, %do.end26.i.do.end50.i_crit_edge
  tail call void @op_release(ptr noundef nonnull %call2.i) #7
  %tobool.not3.i.i = icmp eq ptr %name, null
  br i1 %tobool.not3.i.i, label %do.end50.i.xattr_key.exit.i_crit_edge, label %do.end50.i.while.body.i.i_crit_edge

do.end50.i.while.body.i.i_crit_edge:              ; preds = %do.end50.i
  br label %while.body.i.i

do.end50.i.xattr_key.exit.i_crit_edge:            ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xattr_key.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end50.i.while.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %do.end50.i.while.body.i.i_crit_edge ]
  %key.addr.04.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %name, %do.end50.i.while.body.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %key.addr.04.i.i, i32 1
  %12 = ptrtoint ptr %key.addr.04.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %key.addr.04.i.i, align 1
  %conv.i.i = zext i8 %13 to i32
  %add.i.i = add i32 %i.05.i.i, %conv.i.i
  %tobool.not.i.i = icmp eq ptr %incdec.ptr.i.i, null
  br i1 %tobool.not.i.i, label %while.end.loopexit.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.end.loopexit.i.i:                           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo.i.i = and i32 %add.i.i, 15
  br label %xattr_key.exit.i

xattr_key.exit.i:                                 ; preds = %while.end.loopexit.i.i, %do.end50.i.xattr_key.exit.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %do.end50.i.xattr_key.exit.i_crit_edge ], [ %phi.bo.i.i, %while.end.loopexit.i.i ]
  %arrayidx.i = getelementptr %struct.orangefs_inode_s, ptr %add.ptr.i, i32 0, i32 11, i32 %i.0.lcssa.i.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.rhs.i.for.cond.i_crit_edge, %xattr_key.exit.i
  %cx.0.i = phi ptr [ %15, %xattr_key.exit.i ], [ %17, %land.rhs.i.for.cond.i_crit_edge ]
  %tobool56.not.i = icmp eq ptr %cx.0.i, null
  br i1 %tobool56.not.i, label %for.cond.i.cleanup.sink.split_crit_edge, label %land.rhs.i

for.cond.i.cleanup.sink.split_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.rhs.i:                                       ; preds = %for.cond.i
  %16 = ptrtoint ptr %cx.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cx.0.i, align 4
  %key59.i = getelementptr inbounds %struct.orangefs_cached_xattr, ptr %cx.0.i, i32 0, i32 1
  %call61.i = tail call i32 @strcmp(ptr noundef %key59.i, ptr noundef %name) #12
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.then63.i, label %land.rhs.i.for.cond.i_crit_edge

land.rhs.i.for.cond.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then63.i:                                      ; preds = %land.rhs.i
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %cx.0.i, i32 0, i32 1
  %18 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pprev2.i.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %17, ptr %19, align 4
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %if.then63.i.cleanup.sink.split.sink.split_crit_edge, label %if.then63.i.cleanup.sink.split.sink.split.sink.split_crit_edge

if.then63.i.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split.sink.split

if.then63.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split

do.body30:                                        ; preds = %if.end11
  br i1 %tobool18.not, label %do.body30.do.end42_crit_edge, label %do.end36

do.body30.do.end42_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

do.end36:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %add.ptr.i, ptr noundef %name) #10
  br label %do.end42

do.end42:                                         ; preds = %do.end36, %do.body30.do.end42_crit_edge
  %xattr_sem = getelementptr i8, ptr %inode, i32 -96
  tail call void @down_write(ptr noundef %xattr_sem) #7
  %call43 = tail call ptr @op_alloc(i32 noundef -16777199) #7
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %do.end42.cleanup.sink.split_crit_edge, label %if.end46

do.end42.cleanup.sink.split_crit_edge:            ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end46:                                         ; preds = %do.end42
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call43, i32 0, i32 3, i32 7
  %21 = call ptr @memcpy(ptr %req, ptr %add.ptr.i, i32 24)
  %flags50 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call43, i32 0, i32 3, i32 7, i32 1, i32 6416
  %22 = ptrtoint ptr %flags50 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %internal_flag.0.i, ptr %flags50, align 8
  %keyval = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call43, i32 0, i32 3, i32 7, i32 0, i32 3, i32 8
  %call53 = tail call ptr @strcpy(ptr noundef %keyval, ptr noundef %name) #11
  %call54 = tail call i32 @strlen(ptr noundef %name) #11
  %add = add i32 %call54, 1
  %key_sz = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call43, i32 0, i32 3, i32 7, i32 0, i32 3, i32 264
  %23 = ptrtoint ptr %key_sz to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %key_sz, align 8
  %val = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call43, i32 0, i32 3, i32 7, i32 0, i32 3, i32 272
  %24 = call ptr @memcpy(ptr %val, ptr %value, i32 %size)
  %val_sz = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call43, i32 0, i32 3, i32 7, i32 0, i32 3, i32 268
  %25 = ptrtoint ptr %val_sz to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %size, ptr %val_sz, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %26 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and66 = and i64 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and66)
  %tobool67.not = icmp eq i64 %and66, 0
  br i1 %tobool67.not, label %if.end46.do.end85_crit_edge, label %do.end71

if.end46.do.end85_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end85

do.end71:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %keyval, i32 noundef %add, i32 noundef %size) #10
  br label %do.end85

do.end85:                                         ; preds = %do.end71, %if.end46.do.end85_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 33
  %29 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i, align 16
  %flags87 = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %flags87 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags87, align 8
  %and88 = and i32 %32, 1
  %call90 = tail call i32 @service_operation(ptr noundef nonnull %call43, ptr noundef nonnull @.str.13, i32 noundef %and88) #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %33 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and92 = and i64 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and92)
  %tobool93.not = icmp eq i64 %and92, 0
  br i1 %tobool93.not, label %do.end85.do.end102_crit_edge, label %do.end97

do.end85.do.end102_crit_edge:                     ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end102

do.end97:                                         ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #9
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call90) #10
  br label %do.end102

do.end102:                                        ; preds = %do.end97, %do.end85.do.end102_crit_edge
  tail call void @op_release(ptr noundef nonnull %call43) #7
  %tobool.not3.i = icmp eq ptr %name, null
  br i1 %tobool.not3.i, label %do.end102.xattr_key.exit_crit_edge, label %do.end102.while.body.i_crit_edge

do.end102.while.body.i_crit_edge:                 ; preds = %do.end102
  br label %while.body.i

do.end102.xattr_key.exit_crit_edge:               ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %xattr_key.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end102.while.body.i_crit_edge
  %i.05.i = phi i32 [ %add.i178, %while.body.i.while.body.i_crit_edge ], [ 0, %do.end102.while.body.i_crit_edge ]
  %key.addr.04.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %name, %do.end102.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %key.addr.04.i, i32 1
  %34 = ptrtoint ptr %key.addr.04.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %key.addr.04.i, align 1
  %conv.i = zext i8 %35 to i32
  %add.i178 = add i32 %i.05.i, %conv.i
  %tobool.not.i179 = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool.not.i179, label %while.end.loopexit.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo.i = and i32 %add.i178, 15
  br label %xattr_key.exit

xattr_key.exit:                                   ; preds = %while.end.loopexit.i, %do.end102.xattr_key.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %do.end102.xattr_key.exit_crit_edge ], [ %phi.bo.i, %while.end.loopexit.i ]
  %arrayidx = getelementptr %struct.orangefs_inode_s, ptr %add.ptr.i, i32 0, i32 11, i32 %i.0.lcssa.i
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  br label %for.cond

for.cond:                                         ; preds = %land.rhs.for.cond_crit_edge, %xattr_key.exit
  %cx.0 = phi ptr [ %37, %xattr_key.exit ], [ %39, %land.rhs.for.cond_crit_edge ]
  %tobool108.not = icmp eq ptr %cx.0, null
  br i1 %tobool108.not, label %for.cond.cleanup.sink.split_crit_edge, label %land.rhs

for.cond.cleanup.sink.split_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.rhs:                                         ; preds = %for.cond
  %38 = ptrtoint ptr %cx.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cx.0, align 4
  %key111 = getelementptr inbounds %struct.orangefs_cached_xattr, ptr %cx.0, i32 0, i32 1
  %call113 = tail call i32 @strcmp(ptr noundef %key111, ptr noundef %name) #11
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then115, label %land.rhs.for.cond_crit_edge

land.rhs.for.cond_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then115:                                       ; preds = %land.rhs
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %cx.0, i32 0, i32 1
  %40 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pprev2.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %39, ptr %41, align 4
  %tobool.not.i.i180 = icmp eq ptr %39, null
  br i1 %tobool.not.i.i180, label %if.then115.cleanup.sink.split.sink.split_crit_edge, label %if.then115.cleanup.sink.split.sink.split.sink.split_crit_edge

if.then115.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split.sink.split

if.then115.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split.sink.split:         ; preds = %if.then115.cleanup.sink.split.sink.split.sink.split_crit_edge, %if.then63.i.cleanup.sink.split.sink.split.sink.split_crit_edge
  %.lcssa189.sink = phi ptr [ %17, %if.then63.i.cleanup.sink.split.sink.split.sink.split_crit_edge ], [ %39, %if.then115.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %.sink = phi ptr [ %19, %if.then63.i.cleanup.sink.split.sink.split.sink.split_crit_edge ], [ %41, %if.then115.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %cx.0.lcssa188.sink190.ph = phi ptr [ %cx.0.i, %if.then63.i.cleanup.sink.split.sink.split.sink.split_crit_edge ], [ %cx.0, %if.then115.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %pprev2.i.i.sink.ph = phi ptr [ %pprev2.i.i.i, %if.then63.i.cleanup.sink.split.sink.split.sink.split_crit_edge ], [ %pprev2.i.i, %if.then115.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %xattr_sem.i.sink.ph.ph = phi ptr [ %xattr_sem.i, %if.then63.i.cleanup.sink.split.sink.split.sink.split_crit_edge ], [ %xattr_sem, %if.then115.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph.ph = phi i32 [ %ret.0.i, %if.then63.i.cleanup.sink.split.sink.split.sink.split_crit_edge ], [ %call90, %if.then115.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %.lcssa189.sink, i32 0, i32 1
  %43 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %.sink, ptr %pprev14.i.i, align 4
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %cleanup.sink.split.sink.split.sink.split, %if.then115.cleanup.sink.split.sink.split_crit_edge, %if.then63.i.cleanup.sink.split.sink.split_crit_edge
  %cx.0.lcssa188.sink190 = phi ptr [ %cx.0.i, %if.then63.i.cleanup.sink.split.sink.split_crit_edge ], [ %cx.0, %if.then115.cleanup.sink.split.sink.split_crit_edge ], [ %cx.0.lcssa188.sink190.ph, %cleanup.sink.split.sink.split.sink.split ]
  %pprev2.i.i.sink = phi ptr [ %pprev2.i.i.i, %if.then63.i.cleanup.sink.split.sink.split_crit_edge ], [ %pprev2.i.i, %if.then115.cleanup.sink.split.sink.split_crit_edge ], [ %pprev2.i.i.sink.ph, %cleanup.sink.split.sink.split.sink.split ]
  %xattr_sem.i.sink.ph = phi ptr [ %xattr_sem.i, %if.then63.i.cleanup.sink.split.sink.split_crit_edge ], [ %xattr_sem, %if.then115.cleanup.sink.split.sink.split_crit_edge ], [ %xattr_sem.i.sink.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  %retval.0.ph.ph = phi i32 [ %ret.0.i, %if.then63.i.cleanup.sink.split.sink.split_crit_edge ], [ %call90, %if.then115.cleanup.sink.split.sink.split_crit_edge ], [ %retval.0.ph.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  %44 = ptrtoint ptr %cx.0.lcssa188.sink190 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %cx.0.lcssa188.sink190, align 4
  %45 = ptrtoint ptr %pprev2.i.i.sink to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.sink, align 4
  tail call void @kfree(ptr noundef nonnull %cx.0.lcssa188.sink190) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %for.cond.cleanup.sink.split_crit_edge, %do.end42.cleanup.sink.split_crit_edge, %for.cond.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %xattr_sem.i.sink = phi ptr [ %xattr_sem.i, %if.end.i.cleanup.sink.split_crit_edge ], [ %xattr_sem, %do.end42.cleanup.sink.split_crit_edge ], [ %xattr_sem.i.sink.ph, %cleanup.sink.split.sink.split ], [ %xattr_sem.i, %for.cond.i.cleanup.sink.split_crit_edge ], [ %xattr_sem, %for.cond.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -12, %if.end.i.cleanup.sink.split_crit_edge ], [ -12, %do.end42.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ], [ %ret.0.i, %for.cond.i.cleanup.sink.split_crit_edge ], [ %call90, %for.cond.cleanup.sink.split_crit_edge ]
  tail call void @up_write(ptr noundef %xattr_sem.i.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end27.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end5.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %do.end27.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_listxattr(ptr nocapture noundef readonly %dentry, ptr noundef writeonly %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not = icmp eq i32 %size, 0
  %cmp.not.not = xor i1 %cmp.not, true
  %tobool.not = icmp eq ptr %buffer, null
  %or.cond = and i1 %tobool.not, %cmp.not.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %xattr_sem = getelementptr i8, ptr %1, i32 -96
  tail call void @down_read(ptr noundef %xattr_sem) #7
  %call2 = tail call ptr @op_alloc(i32 noundef -16777198) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.out_unlock_crit_edge, label %if.end5

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end5:                                          ; preds = %if.end
  %brmerge = or i1 %tobool.not, %cmp.not
  br i1 %brmerge, label %if.end5.if.end10_crit_edge, label %if.then9

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %2 = call ptr @memset(ptr %buffer, i32 0, i32 %size)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5.if.end10_crit_edge
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call2, i32 0, i32 3, i32 7
  %token14 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call2, i32 0, i32 3, i32 7, i32 0, i32 3, i32 16
  %cond = select i1 %cmp.not, i32 0, i32 16
  %requested_count = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call2, i32 0, i32 3, i32 7, i32 0, i32 3, i32 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %resp30 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call2, i32 0, i32 4, i32 4
  %key = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call2, i32 0, i32 4, i32 4, i32 0, i32 3
  %token136 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call2, i32 0, i32 4, i32 4, i32 0, i32 2
  br label %try_again

try_again:                                        ; preds = %for.end.try_again_crit_edge, %if.end10
  %total.0 = phi i32 [ 0, %if.end10 ], [ %total.1.lcssa, %for.end.try_again_crit_edge ]
  %count_keys.0 = phi i32 [ 0, %if.end10 ], [ %count_keys.1.lcssa, %for.end.try_again_crit_edge ]
  %token.0 = phi i64 [ 2147483646, %if.end10 ], [ %27, %for.end.try_again_crit_edge ]
  %3 = call ptr @memcpy(ptr %req, ptr %add.ptr.i, i32 24)
  %4 = ptrtoint ptr %token14 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %token.0, ptr %token14, align 8
  %5 = ptrtoint ptr %requested_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %requested_count, align 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %flags = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and = and i32 %11, 1
  %call21 = tail call i32 @service_operation(ptr noundef nonnull %call2, ptr noundef nonnull @.str.27, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end24, label %try_again.do.body140_crit_edge

try_again.do.body140_crit_edge:                   ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body140

if.end24:                                         ; preds = %try_again
  %12 = ptrtoint ptr %resp30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resp30, align 8
  br i1 %cmp.not, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %13, 8
  br label %do.body140

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %14 = icmp ugt i32 %13, 16
  br i1 %14, label %do.end37, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp41250.not = icmp eq i32 %13, 0
  br i1 %cmp41250.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %13) #10
  br label %do.body140

for.body:                                         ; preds = %if.end127.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0256 = phi i32 [ %inc133, %if.end127.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %key_size.0255 = phi i32 [ %add132, %if.end127.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %count_keys.1253 = phi i32 [ %count_keys.2, %if.end127.for.body_crit_edge ], [ %count_keys.0, %for.cond.preheader.for.body_crit_edge ]
  %total.1251 = phi i32 [ %total.2, %if.end127.for.body_crit_edge ], [ %total.0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.orangefs_kernel_op_s, ptr %call2, i32 0, i32 4, i32 4, i32 0, i32 6, i32 %i.0256
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %16)
  %17 = icmp ugt i32 %16, 256
  br i1 %17, label %do.end54, label %if.end61

do.end54:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27, i32 noundef %16) #10
  br label %do.body140

if.end61:                                         ; preds = %for.body
  %add = add i32 %16, %total.1251
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size)
  %cmp66 = icmp ugt i32 %add, %size
  br i1 %cmp66, label %if.end61.do.body140_crit_edge, label %if.end68

if.end61.do.body140_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body140

if.end68:                                         ; preds = %if.end61
  %add.ptr = getelementptr i8, ptr %key, i32 %key_size.0255
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %16)
  %cmp.i = icmp ult i32 %16, 13
  br i1 %cmp.i, label %if.end68.do.body78_crit_edge, label %is_reserved_key.exit

if.end68.do.body78_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body78

is_reserved_key.exit:                             ; preds = %if.end68
  %call.i = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(14) @.str.48, i32 noundef 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %do.body110, label %is_reserved_key.exit.do.body78_crit_edge

is_reserved_key.exit.do.body78_crit_edge:         ; preds = %is_reserved_key.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body78

do.body78:                                        ; preds = %is_reserved_key.exit.do.body78_crit_edge, %if.end68.do.body78_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %18 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and79 = and i64 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and79)
  %tobool80.not = icmp eq i64 %and79, 0
  br i1 %tobool80.not, label %do.body78.do.end94_crit_edge, label %do.end84

do.body78.do.end94_crit_edge:                     ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end94

do.end84:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %i.0256, ptr noundef %add.ptr) #10
  br label %do.end94

do.end94:                                         ; preds = %do.end84, %do.body78.do.end94_crit_edge
  %add.ptr95 = getelementptr i8, ptr %buffer, i32 %total.1251
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %21 = call ptr @memcpy(ptr %add.ptr95, ptr %add.ptr, i32 %20)
  %22 = load i32, ptr %arrayidx, align 4
  %add109 = add i32 %22, %total.1251
  %inc = add i32 %count_keys.1253, 1
  br label %if.end127

do.body110:                                       ; preds = %is_reserved_key.exit
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %23 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and111 = and i64 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and111)
  %tobool112.not = icmp eq i64 %and111, 0
  br i1 %tobool112.not, label %do.body110.if.end127_crit_edge, label %do.end116

do.body110.if.end127_crit_edge:                   ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

do.end116:                                        ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #9
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %i.0256, ptr noundef %add.ptr) #10
  br label %if.end127

if.end127:                                        ; preds = %do.end116, %do.body110.if.end127_crit_edge, %do.end94
  %total.2 = phi i32 [ %add109, %do.end94 ], [ %total.1251, %do.end116 ], [ %total.1251, %do.body110.if.end127_crit_edge ]
  %count_keys.2 = phi i32 [ %inc, %do.end94 ], [ %count_keys.1253, %do.end116 ], [ %count_keys.1253, %do.body110.if.end127_crit_edge ]
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %add132 = add i32 %25, %key_size.0255
  %inc133 = add nuw nsw i32 %i.0256, 1
  %exitcond.not = icmp eq i32 %inc133, %13
  br i1 %exitcond.not, label %if.end127.for.end_crit_edge, label %if.end127.for.body_crit_edge

if.end127.for.body_crit_edge:                     ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end127.for.end_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end127.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %total.1.lcssa = phi i32 [ %total.0, %for.cond.preheader.for.end_crit_edge ], [ %total.2, %if.end127.for.end_crit_edge ]
  %count_keys.1.lcssa = phi i32 [ %count_keys.0, %for.cond.preheader.for.end_crit_edge ], [ %count_keys.2, %if.end127.for.end_crit_edge ]
  %26 = ptrtoint ptr %token136 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %token136, align 8
  %cmp137.not = icmp eq i64 %27, 2147483645
  br i1 %cmp137.not, label %for.end.do.body140_crit_edge, label %for.end.try_again_crit_edge

for.end.try_again_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_again

for.end.do.body140_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body140

do.body140:                                       ; preds = %for.end.do.body140_crit_edge, %if.end61.do.body140_crit_edge, %do.end54, %do.end37, %if.then26, %try_again.do.body140_crit_edge
  %total.3 = phi i32 [ %mul, %if.then26 ], [ %total.0, %do.end37 ], [ %total.1251, %do.end54 ], [ %total.1251, %if.end61.do.body140_crit_edge ], [ %total.1.lcssa, %for.end.do.body140_crit_edge ], [ %total.0, %try_again.do.body140_crit_edge ]
  %count_keys.3 = phi i32 [ 0, %if.then26 ], [ %count_keys.0, %do.end37 ], [ %count_keys.1253, %do.end54 ], [ %count_keys.1253, %if.end61.do.body140_crit_edge ], [ %count_keys.1.lcssa, %for.end.do.body140_crit_edge ], [ %count_keys.0, %try_again.do.body140_crit_edge ]
  %ret.0 = phi i32 [ 0, %if.then26 ], [ -5, %do.end37 ], [ -5, %do.end54 ], [ 0, %if.end61.do.body140_crit_edge ], [ 0, %for.end.do.body140_crit_edge ], [ %call21, %try_again.do.body140_crit_edge ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %28 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and141 = and i64 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and141)
  %tobool142.not = icmp eq i64 %and141, 0
  br i1 %tobool142.not, label %do.body140.do.end153_crit_edge, label %do.end146

do.body140.do.end153_crit_edge:                   ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end153

do.end146:                                        ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool148.not = icmp eq i32 %ret.0, 0
  %total.3.ret.0 = select i1 %tobool148.not, i32 %total.3, i32 %ret.0
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.27, i32 noundef %total.3.ret.0, i32 noundef %size, i32 noundef %count_keys.3) #10
  br label %do.end153

do.end153:                                        ; preds = %do.end146, %do.body140.do.end153_crit_edge
  tail call void @op_release(ptr noundef nonnull %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp154 = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %cmp154, i32 %total.3, i32 %ret.0
  br label %out_unlock

out_unlock:                                       ; preds = %do.end153, %if.end.out_unlock_crit_edge
  %ret.1 = phi i32 [ -12, %if.end.out_unlock_crit_edge ], [ %spec.select, %do.end153 ]
  tail call void @up_read(ptr noundef %xattr_sem) #7
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %do.end
  %retval.0 = phi i32 [ %ret.1, %out_unlock ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_xattr_get_default(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr nocapture noundef %buffer, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @orangefs_inode_getxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_xattr_set_default(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @orangefs_inode_setxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size, i32 noundef %flags)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !82}
!llvm.named.register.sp = !{!84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/orangefs/xattr.c", i32 104, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @orangefs_inode_getxattr._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @orangefs_inode_getxattr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../fs/orangefs/xattr.c", i32 114, i32 35}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../fs/orangefs/xattr.c", i32 115, i32 35}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/orangefs/xattr.c", i32 117, i32 2}
!12 = !{ptr @orangefs_inode_getxattr._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @orangefs_inode_getxattr._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/orangefs/xattr.c", i32 167, i32 4}
!16 = !{ptr @orangefs_inode_getxattr._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @orangefs_inode_getxattr._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/orangefs/xattr.c", i32 208, i32 2}
!20 = !{ptr @orangefs_inode_getxattr._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @orangefs_inode_getxattr._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/orangefs/xattr.c", i32 325, i32 2}
!24 = !{ptr @orangefs_inode_setxattr._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @orangefs_inode_setxattr._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/orangefs/xattr.c", i32 338, i32 3}
!28 = !{ptr @orangefs_inode_setxattr._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @orangefs_inode_setxattr._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/orangefs/xattr.c", i32 344, i32 2}
!32 = !{ptr @orangefs_inode_setxattr._entry.17, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @orangefs_inode_setxattr._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/orangefs/xattr.c", i32 367, i32 2}
!36 = !{ptr @orangefs_inode_setxattr._entry.20, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @orangefs_inode_setxattr._entry_ptr.22, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/orangefs/xattr.c", i32 378, i32 2}
!40 = !{ptr @orangefs_inode_setxattr._entry.23, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @orangefs_inode_setxattr._entry_ptr.25, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/orangefs/xattr.c", i32 420, i32 3}
!44 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @orangefs_listxattr._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @orangefs_listxattr._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/orangefs/xattr.c", i32 457, i32 3}
!49 = !{ptr @orangefs_listxattr._entry.28, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @orangefs_listxattr._entry_ptr.30, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/orangefs/xattr.c", i32 471, i32 4}
!53 = !{ptr @orangefs_listxattr._entry.31, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @orangefs_listxattr._entry_ptr.33, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/orangefs/xattr.c", i32 489, i32 4}
!57 = !{ptr @orangefs_listxattr._entry.34, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @orangefs_listxattr._entry_ptr.36, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.38, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/orangefs/xattr.c", i32 498, i32 4}
!61 = !{ptr @orangefs_listxattr._entry.37, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @orangefs_listxattr._entry_ptr.39, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.41, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/orangefs/xattr.c", i32 514, i32 2}
!65 = !{ptr @orangefs_listxattr._entry.40, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @orangefs_listxattr._entry_ptr.42, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @orangefs_xattr_handlers, !68, !"orangefs_xattr_handlers", i1 false, i1 false}
!68 = !{!"../fs/orangefs/xattr.c", i32 557, i32 29}
!69 = !{ptr @.str.43, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/orangefs/xattr.c", i32 271, i32 2}
!71 = !{ptr @.str.44, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @orangefs_inode_removexattr._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @orangefs_inode_removexattr._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.46, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/orangefs/xattr.c", i32 289, i32 2}
!76 = !{ptr @orangefs_inode_removexattr._entry.45, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @orangefs_inode_removexattr._entry_ptr.47, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.48, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/orangefs/xattr.c", i32 37, i32 22}
!80 = !{ptr @.str.49, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/orangefs/xattr.c", i32 552, i32 12}
!82 = !{ptr @orangefs_xattr_default_handler, !83, !"orangefs_xattr_default_handler", i1 false, i1 false}
!83 = !{!"../fs/orangefs/xattr.c", i32 551, i32 35}
!84 = !{!"sp"}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
