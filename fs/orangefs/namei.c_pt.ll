; ModuleID = '/llk/IR_all_yes/fs/orangefs/namei.c_pt.bc'
source_filename = "../fs/orangefs/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.84, %struct.list_head, %struct.list_head, %union.anon.85 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.82 }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.84 = type { %struct.list_head }
%union.anon.85 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.81 = type { ptr }
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
%struct.orangefs_sb_info_s = type { %struct.orangefs_khandle, i32, i32, i32, [256 x i8], ptr, i32, i32, %struct.list_head }
%struct.orangefs_khandle = type { [16 x i8] }
%struct.orangefs_object_kref = type { %struct.orangefs_khandle, i32, i32 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }

@orangefs_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @orangefs_lookup, ptr null, ptr @orangefs_permission, ptr @orangefs_get_acl, ptr null, ptr @orangefs_create, ptr null, ptr @orangefs_unlink, ptr @orangefs_symlink, ptr @orangefs_mkdir, ptr @orangefs_unlink, ptr null, ptr @orangefs_rename, ptr @orangefs_setattr, ptr @orangefs_getattr, ptr @orangefs_listxattr, ptr null, ptr @orangefs_update_time, ptr null, ptr null, ptr @orangefs_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@orangefs_gossip_debug_mask = external dso_local local_unnamed_addr global i64, align 8
@orangefs_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s called on %pd\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"orangefs_lookup\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/orangefs/namei.c\00", [44 x i8] zeroinitializer }, align 32
@orangefs_lookup._entry_ptr = internal global ptr @orangefs_lookup._entry, section ".printk_index", align 4
@orangefs_lookup._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:%s:%d using parent %pU\0A\00", [35 x i8] zeroinitializer }, align 32
@orangefs_lookup._entry_ptr.5 = internal global ptr @orangefs_lookup._entry.3, section ".printk_index", align 4
@orangefs_lookup._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: doing lookup on %s under %pU,%d\0A\00", [57 x i8] zeroinitializer }, align 32
@orangefs_lookup._entry_ptr.8 = internal global ptr @orangefs_lookup._entry.6, section ".printk_index", align 4
@orangefs_lookup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017Lookup Got %pU, fsid %d (ret=%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@orangefs_lookup._entry_ptr.11 = internal global ptr @orangefs_lookup._entry.9, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@orangefs_dcache_timeout_msecs = external dso_local local_unnamed_addr global i32, align 4
@orangefs_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\017%s: %pd\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"orangefs_create\00", [16 x i8] zeroinitializer }, align 32
@orangefs_create._entry_ptr = internal global ptr @orangefs_create._entry, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@orangefs_create._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: %pd: handle:%pU: fsid:%d: new_op:%p: ret:%d:\0A\00", [44 x i8] zeroinitializer }, align 32
@orangefs_create._entry_ptr.17 = internal global ptr @orangefs_create._entry.15, section ".printk_index", align 4
@orangefs_create._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Failed to allocate inode for file :%pd:\0A\00", [49 x i8] zeroinitializer }, align 32
@orangefs_create._entry_ptr.20 = internal global ptr @orangefs_create._entry.18, section ".printk_index", align 4
@orangefs_create._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: Assigned inode :%pU: for file :%pd:\0A\00", [53 x i8] zeroinitializer }, align 32
@orangefs_create._entry_ptr.23 = internal global ptr @orangefs_create._entry.21, section ".printk_index", align 4
@orangefs_create._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.13, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: dentry instantiated for %pd\0A\00", [61 x i8] zeroinitializer }, align 32
@orangefs_create._entry_ptr.26 = internal global ptr @orangefs_create._entry.24, section ".printk_index", align 4
@orangefs_create._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.13, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %pd: returning %d\0A\00", [39 x i8] zeroinitializer }, align 32
@orangefs_create._entry_ptr.29 = internal global ptr @orangefs_create._entry.27, section ".printk_index", align 4
@orangefs_unlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017%s: called on %pd\0A  (inode %pU): Parent is %pU | fs_id %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"orangefs_unlink\00", [16 x i8] zeroinitializer }, align 32
@orangefs_unlink._entry_ptr = internal global ptr @orangefs_unlink._entry, section ".printk_index", align 4
@orangefs_unlink._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: service_operation returned:%d:\0A\00", [58 x i8] zeroinitializer }, align 32
@orangefs_unlink._entry_ptr.34 = internal global ptr @orangefs_unlink._entry.32, section ".printk_index", align 4
@orangefs_symlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: called\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"orangefs_symlink\00", [47 x i8] zeroinitializer }, align 32
@orangefs_symlink._entry_ptr = internal global ptr @orangefs_symlink._entry, section ".printk_index", align 4
@orangefs_symlink._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017Symlink Got ORANGEFS handle %pU on fsid %d (ret=%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@orangefs_symlink._entry_ptr.40 = internal global ptr @orangefs_symlink._entry.38, section ".printk_index", align 4
@orangefs_symlink._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: failed with error code %d\0A\00", [63 x i8] zeroinitializer }, align 32
@orangefs_symlink._entry_ptr.43 = internal global ptr @orangefs_symlink._entry.41, section ".printk_index", align 4
@orangefs_symlink._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.36, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013*** Failed to allocate orangefs symlink inode\0A\00", [47 x i8] zeroinitializer }, align 32
@orangefs_symlink._entry_ptr.46 = internal global ptr @orangefs_symlink._entry.44, section ".printk_index", align 4
@orangefs_symlink._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.36, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017Assigned symlink inode new number of %pU\0A\00", [52 x i8] zeroinitializer }, align 32
@orangefs_symlink._entry_ptr.49 = internal global ptr @orangefs_symlink._entry.47, section ".printk_index", align 4
@orangefs_symlink._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.36, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017Inode (Symlink) %pU -> %pd\0A\00", [34 x i8] zeroinitializer }, align 32
@orangefs_symlink._entry_ptr.52 = internal global ptr @orangefs_symlink._entry.50, section ".printk_index", align 4
@__func__.orangefs_mkdir = private unnamed_addr constant [15 x i8] c"orangefs_mkdir\00", align 1
@orangefs_mkdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @__func__.orangefs_mkdir, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017Mkdir Got ORANGEFS handle %pU on fsid %d\0A\00", [52 x i8] zeroinitializer }, align 32
@orangefs_mkdir._entry_ptr = internal global ptr @orangefs_mkdir._entry, section ".printk_index", align 4
@orangefs_mkdir._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @__func__.orangefs_mkdir, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@orangefs_mkdir._entry_ptr.56 = internal global ptr @orangefs_mkdir._entry.55, section ".printk_index", align 4
@orangefs_mkdir._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @__func__.orangefs_mkdir, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013*** Failed to allocate orangefs dir inode\0A\00", [51 x i8] zeroinitializer }, align 32
@orangefs_mkdir._entry_ptr.59 = internal global ptr @orangefs_mkdir._entry.57, section ".printk_index", align 4
@orangefs_mkdir._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @__func__.orangefs_mkdir, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017Assigned dir inode new number of %pU\0A\00", [56 x i8] zeroinitializer }, align 32
@orangefs_mkdir._entry_ptr.62 = internal global ptr @orangefs_mkdir._entry.60, section ".printk_index", align 4
@orangefs_mkdir._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @__func__.orangefs_mkdir, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017Inode (Directory) %pU -> %pd\0A\00", [32 x i8] zeroinitializer }, align 32
@orangefs_mkdir._entry_ptr.65 = internal global ptr @orangefs_mkdir._entry.63, section ".printk_index", align 4
@orangefs_rename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017orangefs_rename: called (%pd2 => %pd2) ct=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"orangefs_rename\00", [16 x i8] zeroinitializer }, align 32
@orangefs_rename._entry_ptr = internal global ptr @orangefs_rename._entry, section ".printk_index", align 4
@orangefs_rename._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017orangefs_rename: got downcall status %d\0A\00", [53 x i8] zeroinitializer }, align 32
@orangefs_rename._entry_ptr.70 = internal global ptr @orangefs_rename._entry.68, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 121, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 133, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 143, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 152, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 31, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 49, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 65, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 72, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 81, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 93, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 181, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 201, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 232, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 257, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 263, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 273, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 286, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 293, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 332, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 338, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 348, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 353, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 360, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 392, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.234 = private constant [23 x i8] c"../fs/orangefs/namei.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 419, i32 2 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @orangefs_create._entry, ptr @orangefs_create._entry.15, ptr @orangefs_create._entry.18, ptr @orangefs_create._entry.21, ptr @orangefs_create._entry.24, ptr @orangefs_create._entry.27, ptr @orangefs_create._entry_ptr, ptr @orangefs_create._entry_ptr.17, ptr @orangefs_create._entry_ptr.20, ptr @orangefs_create._entry_ptr.23, ptr @orangefs_create._entry_ptr.26, ptr @orangefs_create._entry_ptr.29, ptr @orangefs_lookup._entry, ptr @orangefs_lookup._entry.3, ptr @orangefs_lookup._entry.6, ptr @orangefs_lookup._entry.9, ptr @orangefs_lookup._entry_ptr, ptr @orangefs_lookup._entry_ptr.11, ptr @orangefs_lookup._entry_ptr.5, ptr @orangefs_lookup._entry_ptr.8, ptr @orangefs_mkdir._entry, ptr @orangefs_mkdir._entry.55, ptr @orangefs_mkdir._entry.57, ptr @orangefs_mkdir._entry.60, ptr @orangefs_mkdir._entry.63, ptr @orangefs_mkdir._entry_ptr, ptr @orangefs_mkdir._entry_ptr.56, ptr @orangefs_mkdir._entry_ptr.59, ptr @orangefs_mkdir._entry_ptr.62, ptr @orangefs_mkdir._entry_ptr.65, ptr @orangefs_rename._entry, ptr @orangefs_rename._entry.68, ptr @orangefs_rename._entry_ptr, ptr @orangefs_rename._entry_ptr.70, ptr @orangefs_symlink._entry, ptr @orangefs_symlink._entry.38, ptr @orangefs_symlink._entry.41, ptr @orangefs_symlink._entry.44, ptr @orangefs_symlink._entry.47, ptr @orangefs_symlink._entry.50, ptr @orangefs_symlink._entry_ptr, ptr @orangefs_symlink._entry_ptr.40, ptr @orangefs_symlink._entry_ptr.43, ptr @orangefs_symlink._entry_ptr.46, ptr @orangefs_symlink._entry_ptr.49, ptr @orangefs_symlink._entry_ptr.52, ptr @orangefs_unlink._entry, ptr @orangefs_unlink._entry.32, ptr @orangefs_unlink._entry_ptr, ptr @orangefs_unlink._entry_ptr.34, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_lookup._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_lookup._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_lookup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_create._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_create._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_create._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_create._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_create._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_unlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_unlink._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_symlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_symlink._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_symlink._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_symlink._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_symlink._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_symlink._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_mkdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_mkdir._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_mkdir._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_mkdir._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_mkdir._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_rename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_rename._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @orangefs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -376
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %dentry) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %1 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %2)
  %cmp = icmp ugt i32 %2, 255
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %call8 = tail call ptr @op_alloc(i32 noundef -16777214) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call8, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %req, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %4 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and14 = and i64 %4, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14)
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.end12.do.end24_crit_edge, label %do.end19

if.end12.do.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 137, ptr noundef %add.ptr.i) #10
  br label %do.end24

do.end24:                                         ; preds = %do.end19, %if.end12.do.end24_crit_edge
  %parent_refn = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call8, i32 0, i32 3, i32 7, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %parent_refn, ptr %add.ptr.i, i32 24)
  %d_name30 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call8, i32 0, i32 3, i32 7, i32 0, i32 3, i32 16
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %call32 = tail call ptr @strncpy(ptr noundef %d_name30, ptr noundef %7, i32 noundef 255)
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %8 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and34 = and i64 %8, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and34)
  %tobool35.not = icmp eq i64 %and34, 0
  br i1 %tobool35.not, label %do.end24.do.end55_crit_edge, label %do.end39

do.end24.do.end55_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

do.end39:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  %fs_id = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call8, i32 0, i32 3, i32 7, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %fs_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fs_id, align 8
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef %d_name30, ptr noundef %parent_refn, i32 noundef %10) #10
  br label %do.end55

do.end55:                                         ; preds = %do.end39, %do.end24.do.end55_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %flags57 = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %flags57 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags57, align 8
  %and58 = and i32 %16, 1
  %call60 = tail call i32 @service_operation(ptr noundef nonnull %call8, ptr noundef nonnull @.str.1, i32 noundef %and58) #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %17 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and62 = and i64 %17, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and62)
  %tobool63.not = icmp eq i64 %and62, 0
  br i1 %tobool63.not, label %do.end55.do.end78_crit_edge, label %do.end67

do.end55.do.end78_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

do.end67:                                         ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #9
  %resp = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call8, i32 0, i32 4, i32 4
  %fs_id74 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call8, i32 0, i32 4, i32 4, i32 0, i32 3
  %18 = ptrtoint ptr %fs_id74 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fs_id74, align 8
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %resp, i32 noundef %19, i32 noundef %call60) #10
  br label %do.end78

do.end78:                                         ; preds = %do.end67, %do.end55.do.end78_crit_edge
  %20 = zext i32 %call60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call60, label %if.else88 [
    i32 0, label %if.then80
    i32 -2, label %do.end78.if.end91_crit_edge
  ]

do.end78.if.end91_crit_edge:                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then80:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_dcache_timeout_msecs to i32))
  %22 = load i32, ptr @orangefs_dcache_timeout_msecs, align 4
  %mul.i = mul i32 %22, 100
  %div.i = sdiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %21
  %23 = inttoptr i32 %add.i to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %24 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %d_fsdata.i, align 4
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  %resp83 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call8, i32 0, i32 4, i32 4
  %call85 = tail call ptr @orangefs_iget(ptr noundef %26, ptr noundef %resp83) #7
  br label %if.end91

if.else88:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #9
  %27 = inttoptr i32 %call60 to ptr
  br label %if.end91

if.end91:                                         ; preds = %if.else88, %if.then80, %do.end78.if.end91_crit_edge
  %inode.0 = phi ptr [ %call85, %if.then80 ], [ %27, %if.else88 ], [ null, %do.end78.if.end91_crit_edge ]
  tail call void @op_release(ptr noundef nonnull %call8) #7
  %call92 = tail call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %if.end7.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi ptr [ %call92, %if.end91 ], [ inttoptr (i32 -36 to ptr), %do.end4.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_permission(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @orangefs_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %exclusive) #0 align 64 {
entry:
  %ref = alloca %struct.orangefs_object_kref, align 8
  %iattr = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -376
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ref) #7
  %0 = call ptr @memset(ptr %ref, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %iattr) #7
  %1 = call ptr @memset(ptr %iattr, i32 255, i32 80)
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %2 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %2, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %dentry) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call ptr @op_alloc(i32 noundef -16777213) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end4.cleanup_crit_edge, label %if.end8

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end4
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 3, i32 7
  %3 = call ptr @memcpy(ptr %req, ptr %add.ptr.i, i32 24)
  %4 = tail call i32 @llvm.read_register.i32(metadata !118) #7
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
  %fsuid = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %10)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert136 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call15 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert136) #7
  %attributes = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 3, i32 7, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %attributes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call15, ptr %attributes, align 8
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %cred25 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 99
  %14 = ptrtoint ptr %cred25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cred25, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %16)
  %agg.tmp18.sroa.0.0.copyload = load i32, ptr %fsgid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp18.sroa.0.0.copyload, 0
  %call27 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #7
  %group = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 3, i32 7, i32 0, i32 3, i32 12
  %17 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call27, ptr %group, align 4
  %conv = zext i16 %mode to i32
  %call31 = tail call i32 @ORANGEFS_util_translate_mode(i32 noundef %conv) #7
  %perms = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 3, i32 7, i32 0, i32 3, i32 16
  %18 = ptrtoint ptr %perms to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call31, ptr %perms, align 8
  %atime = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 3, i32 7, i32 0, i32 3, i32 24
  %mask = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 3, i32 7, i32 0, i32 3, i32 112
  %19 = call ptr @memset(ptr %atime, i32 0, i32 24)
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 63, ptr %mask, align 8
  %d_name = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 3, i32 7, i32 0, i32 3, i32 128
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 8
  %call52 = tail call ptr @strncpy(ptr noundef %d_name, ptr noundef %22, i32 noundef 255)
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i, align 16
  %flags = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 8
  %and54 = and i32 %28, 1
  %call56 = tail call i32 @service_operation(ptr noundef nonnull %call5, ptr noundef nonnull @.str.13, i32 noundef %and54) #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %29 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and58 = and i64 %29, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and58)
  %tobool59.not = icmp eq i64 %and58, 0
  br i1 %tobool59.not, label %if.end8.do.end72_crit_edge, label %do.end63

if.end8.do.end72_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72

do.end63:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %resp = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 4, i32 4
  %fs_id = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 4, i32 4, i32 0, i32 3
  %30 = ptrtoint ptr %fs_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fs_id, align 8
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13, ptr noundef %dentry, ptr noundef %resp, i32 noundef %31, ptr noundef nonnull %call5, i32 noundef %call56) #10
  br label %do.end72

do.end72:                                         ; preds = %do.end63, %if.end8.do.end72_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp = icmp slt i32 %call56, 0
  br i1 %cmp, label %do.end72.out_crit_edge, label %if.end75

do.end72.out_crit_edge:                           ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end75:                                         ; preds = %do.end72
  %resp77 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 4, i32 4
  %32 = call ptr @memcpy(ptr %ref, ptr %resp77, i32 24)
  %33 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb, align 4
  %or = or i32 %conv, 32768
  %call81 = call ptr @orangefs_new_inode(ptr noundef %34, ptr noundef %dir, i32 noundef %or, i32 noundef 0, ptr noundef nonnull %ref) #7
  %cmp.i = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end86, label %do.body91

do.end86:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.13, ptr noundef %dentry) #10
  %35 = ptrtoint ptr %call81 to i32
  br label %out

do.body91:                                        ; preds = %if.end75
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %36 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and92 = and i64 %36, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and92)
  %tobool93.not = icmp eq i64 %and92, 0
  br i1 %tobool93.not, label %do.body91.do.end103_crit_edge, label %do.end97

do.body91.do.end103_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end103

do.end97:                                         ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %call81, i32 -376
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.13, ptr noundef %add.ptr.i.i, ptr noundef %dentry) #10
  br label %do.end103

do.end103:                                        ; preds = %do.end97, %do.body91.do.end103_crit_edge
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call81) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_dcache_timeout_msecs to i32))
  %38 = load i32, ptr @orangefs_dcache_timeout_msecs, align 4
  %mul.i = mul i32 %38, 100
  %div.i = sdiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %37
  %39 = inttoptr i32 %add.i to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %40 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %d_fsdata.i, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %41 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and105 = and i64 %41, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and105)
  %tobool106.not = icmp eq i64 %and105, 0
  br i1 %tobool106.not, label %do.end103.do.end115_crit_edge, label %do.end110

do.end103.do.end115_crit_edge:                    ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end115

do.end110:                                        ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #9
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.13, ptr noundef %dentry) #10
  br label %do.end115

do.end115:                                        ; preds = %do.end110, %do.end103.do.end115_crit_edge
  %42 = call ptr @memset(ptr %iattr, i32 0, i32 80)
  %43 = ptrtoint ptr %iattr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 96, ptr %iattr, align 8
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ia_ctime, ptr noundef %dir) #7
  %44 = call ptr @memcpy(ptr %ia_mtime, ptr %ia_ctime, i32 16)
  %call118 = call i32 @__orangefs_setattr(ptr noundef %dir, ptr noundef nonnull %iattr) #7
  br label %out

out:                                              ; preds = %do.end115, %do.end86, %do.end72.out_crit_edge
  %ret.0 = phi i32 [ %call56, %do.end72.out_crit_edge ], [ %35, %do.end86 ], [ 0, %do.end115 ]
  call void @op_release(ptr noundef nonnull %call5) #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %45 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and120 = and i64 %45, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and120)
  %tobool121.not = icmp eq i64 %and120, 0
  br i1 %tobool121.not, label %out.cleanup_crit_edge, label %do.end125

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end125:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.13, ptr noundef %dentry, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end125, %out.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end4.cleanup_crit_edge ], [ %ret.0, %do.end125 ], [ %ret.0, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %iattr) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ref) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_unlink(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %iattr = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -376
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %iattr) #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %2 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %2, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -376
  %fs_id = getelementptr i8, ptr %dir, i32 -360
  %3 = ptrtoint ptr %fs_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fs_id, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef %dentry, ptr noundef %add.ptr.i.i, ptr noundef %add.ptr.i, i32 noundef %4) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call7 = tail call ptr @op_alloc(i32 noundef -16777211) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end6.cleanup_crit_edge, label %if.end10

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %do.end6
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call7, i32 0, i32 3, i32 7
  %5 = call ptr @memcpy(ptr %req, ptr %add.ptr.i, i32 24)
  %d_name = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call7, i32 0, i32 3, i32 7, i32 0, i32 3, i32 8
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %call15 = tail call ptr @strncpy(ptr noundef %d_name, ptr noundef %7, i32 noundef 255)
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %flags = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and17 = and i32 %13, 1
  %call19 = tail call i32 @service_operation(ptr noundef nonnull %call7, ptr noundef nonnull @.str.31, i32 noundef %and17) #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %14 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and21 = and i64 %14, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %if.end10.do.end31_crit_edge, label %do.end26

if.end10.do.end31_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

do.end26:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef %call19) #10
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %if.end10.do.end31_crit_edge
  tail call void @op_release(ptr noundef nonnull %call7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool32.not = icmp eq i32 %call19, 0
  br i1 %tobool32.not, label %if.then33, label %do.end31.cleanup_crit_edge

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drop_nlink(ptr noundef %1) #7
  %15 = call ptr @memset(ptr %iattr, i32 0, i32 80)
  %16 = ptrtoint ptr %iattr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 96, ptr %iattr, align 8
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ia_ctime, ptr noundef %dir) #7
  %17 = call ptr @memcpy(ptr %ia_mtime, ptr %ia_ctime, i32 16)
  %call35 = call i32 @__orangefs_setattr(ptr noundef %dir, ptr noundef nonnull %iattr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %do.end31.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end6.cleanup_crit_edge ], [ 0, %if.then33 ], [ %call19, %do.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %iattr) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef readonly %symname) #0 align 64 {
entry:
  %ref = alloca %struct.orangefs_object_kref, align 8
  %iattr = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -376
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ref) #7
  %0 = call ptr @memset(ptr %ref, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %iattr) #7
  %1 = call ptr @memset(ptr %iattr, i32 255, i32 80)
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %2 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %2, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %tobool5.not = icmp eq ptr %symname, null
  br i1 %tobool5.not, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %call8 = tail call i32 @strlen(ptr noundef nonnull %symname) #11
  %3 = add i32 %call8, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -257, i32 %3)
  %cmp = icmp ult i32 %3, -257
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %call11 = tail call ptr @op_alloc(i32 noundef -16777207) #7
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call11, i32 0, i32 3, i32 7
  %4 = call ptr @memcpy(ptr %req, ptr %add.ptr.i, i32 24)
  %5 = tail call i32 @llvm.read_register.i32(metadata !118) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 99
  %9 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %11)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert147 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call21 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert147) #7
  %attributes = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call11, i32 0, i32 3, i32 7, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %attributes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call21, ptr %attributes, align 8
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %cred31 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred31, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %17)
  %agg.tmp24.sroa.0.0.copyload = load i32, ptr %fsgid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp24.sroa.0.0.copyload, 0
  %call33 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #7
  %group = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call11, i32 0, i32 3, i32 7, i32 0, i32 3, i32 12
  %18 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call33, ptr %group, align 4
  %call37 = tail call i32 @ORANGEFS_util_translate_mode(i32 noundef 493) #7
  %perms = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call11, i32 0, i32 3, i32 7, i32 0, i32 3, i32 16
  %19 = ptrtoint ptr %perms to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call37, ptr %perms, align 8
  %atime = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call11, i32 0, i32 3, i32 7, i32 0, i32 3, i32 24
  %mask = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call11, i32 0, i32 3, i32 7, i32 0, i32 3, i32 112
  %20 = call ptr @memset(ptr %atime, i32 0, i32 24)
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 63, ptr %mask, align 8
  %entry_name = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call11, i32 0, i32 3, i32 7, i32 0, i32 3, i32 128
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 8
  %call57 = tail call ptr @strncpy(ptr noundef %entry_name, ptr noundef %23, i32 noundef 255)
  %target = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call11, i32 0, i32 3, i32 7, i32 0, i32 3, i32 384
  %call61 = tail call ptr @strncpy(ptr noundef %target, ptr noundef nonnull %symname, i32 noundef 255)
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i, align 16
  %flags = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 8
  %and63 = and i32 %29, 1
  %call65 = tail call i32 @service_operation(ptr noundef nonnull %call11, ptr noundef nonnull @.str.36, i32 noundef %and63) #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %30 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and67 = and i64 %30, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and67)
  %tobool68.not = icmp eq i64 %and67, 0
  br i1 %tobool68.not, label %if.end14.do.end81_crit_edge, label %do.end72

if.end14.do.end81_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end81

do.end72:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %resp = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call11, i32 0, i32 4, i32 4
  %fs_id = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call11, i32 0, i32 4, i32 4, i32 0, i32 3
  %31 = ptrtoint ptr %fs_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fs_id, align 8
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %resp, i32 noundef %32, i32 noundef %call65) #10
  br label %do.end81

do.end81:                                         ; preds = %do.end72, %if.end14.do.end81_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp82 = icmp slt i32 %call65, 0
  br i1 %cmp82, label %do.body84, label %if.end96

do.body84:                                        ; preds = %do.end81
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %33 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and85 = and i64 %33, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and85)
  %tobool86.not = icmp eq i64 %and85, 0
  br i1 %tobool86.not, label %do.body84.out_crit_edge, label %do.end90

do.body84.out_crit_edge:                          ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end90:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.36, i32 noundef %call65) #10
  br label %out

if.end96:                                         ; preds = %do.end81
  %resp98 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call11, i32 0, i32 4, i32 4
  %34 = call ptr @memcpy(ptr %ref, ptr %resp98, i32 24)
  %35 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb, align 4
  %call101 = call ptr @orangefs_new_inode(ptr noundef %36, ptr noundef %dir, i32 noundef 41453, i32 noundef 0, ptr noundef nonnull %ref) #7
  %cmp.i = icmp ugt ptr %call101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end106, label %if.end110

do.end106:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  %37 = ptrtoint ptr %call101 to i32
  br label %out

if.end110:                                        ; preds = %if.end96
  %call111 = call i32 @strlen(ptr noundef nonnull %symname) #11
  %conv = zext i32 %call111 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call101, i32 0, i32 14
  %38 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv, ptr %i_size, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %39 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and113 = and i64 %39, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and113)
  %tobool114.not = icmp eq i64 %and113, 0
  br i1 %tobool114.not, label %if.end110.do.end124_crit_edge, label %do.end118

if.end110.do.end124_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end124

do.end118:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %call101, i32 -376
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %add.ptr.i.i) #10
  br label %do.end124

do.end124:                                        ; preds = %do.end118, %if.end110.do.end124_crit_edge
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call101) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_dcache_timeout_msecs to i32))
  %41 = load i32, ptr @orangefs_dcache_timeout_msecs, align 4
  %mul.i = mul i32 %41, 100
  %div.i = sdiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %40
  %42 = inttoptr i32 %add.i to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %43 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %d_fsdata.i, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %44 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and126 = and i64 %44, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and126)
  %tobool127.not = icmp eq i64 %and126, 0
  br i1 %tobool127.not, label %do.end124.do.end137_crit_edge, label %do.end131

do.end124.do.end137_crit_edge:                    ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end137

do.end131:                                        ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i183 = getelementptr i8, ptr %call101, i32 -376
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %add.ptr.i.i183, ptr noundef %dentry) #10
  br label %do.end137

do.end137:                                        ; preds = %do.end131, %do.end124.do.end137_crit_edge
  %45 = call ptr @memset(ptr %iattr, i32 0, i32 80)
  %46 = ptrtoint ptr %iattr to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 96, ptr %iattr, align 8
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ia_ctime, ptr noundef %dir) #7
  %47 = call ptr @memcpy(ptr %ia_mtime, ptr %ia_ctime, i32 16)
  %call140 = call i32 @__orangefs_setattr(ptr noundef %dir, ptr noundef nonnull %iattr) #7
  br label %out

out:                                              ; preds = %do.end137, %do.end106, %do.end90, %do.body84.out_crit_edge
  %ret.0 = phi i32 [ %call65, %do.end90 ], [ %call65, %do.body84.out_crit_edge ], [ %37, %do.end106 ], [ 0, %do.end137 ]
  call void @op_release(ptr noundef nonnull %call11) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %do.end4.cleanup_crit_edge ], [ -36, %if.end7.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %iattr) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ref) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  %ref = alloca %struct.orangefs_object_kref, align 8
  %iattr = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ref) #7
  %0 = call ptr @memset(ptr %ref, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %iattr) #7
  %1 = call ptr @memset(ptr %iattr, i32 255, i32 80)
  %call1 = tail call ptr @op_alloc(i32 noundef -16777210) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -376
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7
  %2 = call ptr @memcpy(ptr %req, ptr %add.ptr.i, i32 24)
  %3 = tail call i32 @llvm.read_register.i32(metadata !118) #7
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %9)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert125 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call4 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert125) #7
  %attributes = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %attributes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call4, ptr %attributes, align 8
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %cred14 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 99
  %13 = ptrtoint ptr %cred14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cred14, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %15)
  %agg.tmp7.sroa.0.0.copyload = load i32, ptr %fsgid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp7.sroa.0.0.copyload, 0
  %call16 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #7
  %group = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 3, i32 12
  %16 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call16, ptr %group, align 4
  %conv = zext i16 %mode to i32
  %call20 = tail call i32 @ORANGEFS_util_translate_mode(i32 noundef %conv) #7
  %perms = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 3, i32 16
  %17 = ptrtoint ptr %perms to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call20, ptr %perms, align 8
  %atime = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 3, i32 24
  %mask = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 3, i32 112
  %18 = call ptr @memset(ptr %atime, i32 0, i32 24)
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 63, ptr %mask, align 8
  %d_name = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 3, i32 128
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 8
  %call41 = tail call ptr @strncpy(ptr noundef %d_name, ptr noundef %21, i32 noundef 255)
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i, align 16
  %flags = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 8
  %and = and i32 %27, 1
  %call44 = tail call i32 @service_operation(ptr noundef nonnull %call1, ptr noundef nonnull @__func__.orangefs_mkdir, i32 noundef %and) #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %28 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and46 = and i64 %28, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and46)
  %tobool47.not = icmp eq i64 %and46, 0
  br i1 %tobool47.not, label %if.end.do.end60_crit_edge, label %do.end51

if.end.do.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

do.end51:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %resp = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 4, i32 4
  %fs_id = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 4, i32 4, i32 0, i32 3
  %29 = ptrtoint ptr %fs_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fs_id, align 8
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %resp, i32 noundef %30) #10
  br label %do.end60

do.end60:                                         ; preds = %do.end51, %if.end.do.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp = icmp slt i32 %call44, 0
  br i1 %cmp, label %do.body63, label %if.end75

do.body63:                                        ; preds = %do.end60
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %31 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and64 = and i64 %31, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and64)
  %tobool65.not = icmp eq i64 %and64, 0
  br i1 %tobool65.not, label %do.body63.out_crit_edge, label %do.end69

do.body63.out_crit_edge:                          ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end69:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.orangefs_mkdir, i32 noundef %call44) #10
  br label %out

if.end75:                                         ; preds = %do.end60
  %resp77 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 4, i32 4
  %32 = call ptr @memcpy(ptr %ref, ptr %resp77, i32 24)
  %33 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb, align 4
  %or = or i32 %conv, 16384
  %call81 = call ptr @orangefs_new_inode(ptr noundef %34, ptr noundef %dir, i32 noundef %or, i32 noundef 0, ptr noundef nonnull %ref) #7
  %cmp.i = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end86, label %do.body91

do.end86:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #10
  %35 = ptrtoint ptr %call81 to i32
  br label %out

do.body91:                                        ; preds = %if.end75
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %36 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and92 = and i64 %36, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and92)
  %tobool93.not = icmp eq i64 %and92, 0
  br i1 %tobool93.not, label %do.body91.do.end103_crit_edge, label %do.end97

do.body91.do.end103_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end103

do.end97:                                         ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %call81, i32 -376
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %add.ptr.i.i) #10
  br label %do.end103

do.end103:                                        ; preds = %do.end97, %do.body91.do.end103_crit_edge
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call81) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_dcache_timeout_msecs to i32))
  %38 = load i32, ptr @orangefs_dcache_timeout_msecs, align 4
  %mul.i = mul i32 %38, 100
  %div.i = sdiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %37
  %39 = inttoptr i32 %add.i to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %40 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %d_fsdata.i, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %41 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and105 = and i64 %41, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and105)
  %tobool106.not = icmp eq i64 %and105, 0
  br i1 %tobool106.not, label %do.end103.do.end116_crit_edge, label %do.end110

do.end103.do.end116_crit_edge:                    ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end116

do.end110:                                        ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i155 = getelementptr i8, ptr %call81, i32 -376
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %add.ptr.i.i155, ptr noundef %dentry) #10
  br label %do.end116

do.end116:                                        ; preds = %do.end110, %do.end103.do.end116_crit_edge
  %42 = call ptr @memset(ptr %iattr, i32 0, i32 80)
  %43 = ptrtoint ptr %iattr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 96, ptr %iattr, align 8
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ia_ctime, ptr noundef %dir) #7
  %44 = call ptr @memcpy(ptr %ia_mtime, ptr %ia_ctime, i32 16)
  %call119 = call i32 @__orangefs_setattr(ptr noundef %dir, ptr noundef nonnull %iattr) #7
  br label %out

out:                                              ; preds = %do.end116, %do.end86, %do.end69, %do.body63.out_crit_edge
  %ret.0 = phi i32 [ %call44, %do.end69 ], [ %call44, %do.body63.out_crit_edge ], [ %35, %do.end86 ], [ %call44, %do.end116 ]
  call void @op_release(ptr noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %iattr) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ref) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_rename(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #0 align 64 {
entry:
  %iattr = alloca %struct.iattr, align 8
  %tmp49 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %iattr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %count.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 7, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %count.i, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %old_dentry, ptr noundef %new_dentry, i32 noundef %2) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %3 = call ptr @memset(ptr %iattr, i32 0, i32 80)
  %4 = ptrtoint ptr %iattr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 96, ptr %iattr, align 8
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ia_ctime, ptr noundef %new_dir) #7
  %5 = call ptr @memcpy(ptr %ia_mtime, ptr %ia_ctime, i32 16)
  %call9 = call i32 @__orangefs_setattr(ptr noundef %new_dir, ptr noundef nonnull %iattr) #7
  %call10 = call ptr @op_alloc(i32 noundef -16777206) #7
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end7.cleanup_crit_edge, label %if.end13

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %do.end7
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call10, i32 0, i32 3, i32 7
  %add.ptr.i = getelementptr i8, ptr %old_dir, i32 -376
  %6 = call ptr @memcpy(ptr %req, ptr %add.ptr.i, i32 24)
  %new_parent_refn = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call10, i32 0, i32 3, i32 7, i32 0, i32 3, i32 8
  %add.ptr.i70 = getelementptr i8, ptr %new_dir, i32 -376
  %7 = call ptr @memcpy(ptr %new_parent_refn, ptr %add.ptr.i70, i32 24)
  %d_old_name = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call10, i32 0, i32 3, i32 7, i32 0, i32 3, i32 32
  %name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  %call21 = call ptr @strncpy(ptr noundef %d_old_name, ptr noundef %9, i32 noundef 255)
  %d_new_name = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call10, i32 0, i32 3, i32 7, i32 0, i32 3, i32 288
  %name26 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %name26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name26, align 8
  %call27 = call ptr @strncpy(ptr noundef %d_new_name, ptr noundef %11, i32 noundef 255)
  %d_inode = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %flags29 = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags29, align 8
  %and30 = and i32 %19, 1
  %call32 = call i32 @service_operation(ptr noundef nonnull %call10, ptr noundef nonnull @.str.67, i32 noundef %and30) #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %20 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and34 = and i64 %20, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and34)
  %tobool35.not = icmp eq i64 %and34, 0
  br i1 %tobool35.not, label %if.end13.do.end44_crit_edge, label %do.end39

if.end13.do.end44_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

do.end39:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %call32) #10
  br label %do.end44

do.end44:                                         ; preds = %do.end39, %if.end13.do.end44_crit_edge
  %d_inode45 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode45, align 8
  %tobool46.not = icmp eq ptr %22, null
  br i1 %tobool46.not, label %do.end44.if.end51_crit_edge, label %if.then47

do.end44.if.end51_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then47:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  %i_ctime = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp49) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp49, ptr noundef nonnull %22) #7
  %23 = call ptr @memcpy(ptr %i_ctime, ptr %tmp49, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp49) #7
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %do.end44.if.end51_crit_edge
  call void @op_release(ptr noundef nonnull %call10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %if.end51 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %iattr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_setattr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_listxattr(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_update_time(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @op_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @service_operation(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @orangefs_iget(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @op_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ORANGEFS_util_translate_mode(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @orangefs_new_inode(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__orangefs_setattr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !92, !93, !94, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117}
!llvm.named.register.sp = !{!118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @orangefs_dir_inode_operations, !1, !"orangefs_dir_inode_operations", i1 false, i1 false}
!1 = !{!"../fs/orangefs/namei.c", i32 431, i32 31}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/orangefs/namei.c", i32 121, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @orangefs_lookup._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @orangefs_lookup._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/orangefs/namei.c", i32 133, i32 2}
!10 = !{ptr @orangefs_lookup._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @orangefs_lookup._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/orangefs/namei.c", i32 143, i32 2}
!14 = !{ptr @orangefs_lookup._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @orangefs_lookup._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/orangefs/namei.c", i32 152, i32 2}
!18 = !{ptr @orangefs_lookup._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @orangefs_lookup._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/orangefs/namei.c", i32 31, i32 2}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @orangefs_create._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @orangefs_create._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../fs/orangefs/namei.c", i32 41, i32 2}
!27 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/orangefs/namei.c", i32 49, i32 2}
!30 = !{ptr @orangefs_create._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @orangefs_create._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/orangefs/namei.c", i32 65, i32 3}
!34 = !{ptr @orangefs_create._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @orangefs_create._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/orangefs/namei.c", i32 72, i32 2}
!38 = !{ptr @orangefs_create._entry.21, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @orangefs_create._entry_ptr.23, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/orangefs/namei.c", i32 81, i32 2}
!42 = !{ptr @orangefs_create._entry.24, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @orangefs_create._entry_ptr.26, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/orangefs/namei.c", i32 93, i32 2}
!46 = !{ptr @orangefs_create._entry.27, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @orangefs_create._entry_ptr.29, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/orangefs/namei.c", i32 181, i32 2}
!50 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @orangefs_unlink._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @orangefs_unlink._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/orangefs/namei.c", i32 201, i32 2}
!55 = !{ptr @orangefs_unlink._entry.32, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @orangefs_unlink._entry_ptr.34, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/orangefs/namei.c", i32 232, i32 2}
!59 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @orangefs_symlink._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @orangefs_symlink._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../fs/orangefs/namei.c", i32 246, i32 2}
!64 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!65 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/orangefs/namei.c", i32 257, i32 2}
!67 = !{ptr @orangefs_symlink._entry.38, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @orangefs_symlink._entry_ptr.40, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/orangefs/namei.c", i32 263, i32 3}
!71 = !{ptr @orangefs_symlink._entry.41, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @orangefs_symlink._entry_ptr.43, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.45, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/orangefs/namei.c", i32 273, i32 3}
!75 = !{ptr @orangefs_symlink._entry.44, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @orangefs_symlink._entry_ptr.46, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.48, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/orangefs/namei.c", i32 286, i32 2}
!79 = !{ptr @orangefs_symlink._entry.47, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @orangefs_symlink._entry_ptr.49, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.51, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/orangefs/namei.c", i32 293, i32 2}
!83 = !{ptr @orangefs_symlink._entry.50, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @orangefs_symlink._entry_ptr.52, !82, !"_entry_ptr", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../fs/orangefs/namei.c", i32 324, i32 2}
!87 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!88 = !{ptr @__func__.orangefs_mkdir, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/orangefs/namei.c", i32 330, i32 34}
!90 = !{ptr @.str.54, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/orangefs/namei.c", i32 332, i32 2}
!92 = !{ptr @orangefs_mkdir._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @orangefs_mkdir._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @orangefs_mkdir._entry.55, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../fs/orangefs/namei.c", i32 338, i32 3}
!96 = !{ptr @orangefs_mkdir._entry_ptr.56, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.58, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/orangefs/namei.c", i32 348, i32 3}
!99 = !{ptr @orangefs_mkdir._entry.57, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @orangefs_mkdir._entry_ptr.59, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.61, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/orangefs/namei.c", i32 353, i32 2}
!103 = !{ptr @orangefs_mkdir._entry.60, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @orangefs_mkdir._entry_ptr.62, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.64, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/orangefs/namei.c", i32 360, i32 2}
!107 = !{ptr @orangefs_mkdir._entry.63, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @orangefs_mkdir._entry_ptr.65, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.66, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/orangefs/namei.c", i32 392, i32 2}
!111 = !{ptr @.str.67, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @orangefs_rename._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @orangefs_rename._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.69, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/orangefs/namei.c", i32 419, i32 2}
!116 = !{ptr @orangefs_rename._entry.68, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @orangefs_rename._entry_ptr.70, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{!"sp"}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
