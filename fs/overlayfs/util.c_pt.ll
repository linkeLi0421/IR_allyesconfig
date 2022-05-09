; ModuleID = '/llk/IR_all_yes/fs/overlayfs/util.c_pt.bc'
source_filename = "../fs/overlayfs/util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.73, %struct.list_head, %struct.list_head, %union.anon.74 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.71 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.73 = type { %struct.list_head }
%union.anon.74 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ovl_fs = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.ovl_config, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32 }
%struct.ovl_config = type { ptr, ptr, ptr, i8, i8, i8, ptr, i8, i8, i8, i32, i8, i8, i8 }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ovl_entry = type { %union.anon.75, i32, [0 x %struct.ovl_path] }
%union.anon.75 = type { %struct.callback_head }
%struct.ovl_path = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.70 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
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
%struct.restart_block = type { i32, ptr, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/overlayfs/util.c\00", [44 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"trusted.overlay.opaque\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"user.overlay.opaque\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"trusted.overlay.redirect\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"user.overlay.redirect\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"trusted.overlay.origin\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"user.overlay.origin\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"trusted.overlay.impure\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"user.overlay.impure\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trusted.overlay.nlink\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"user.overlay.nlink\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trusted.overlay.upper\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"user.overlay.upper\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"trusted.overlay.metacopy\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"user.overlay.metacopy\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"trusted.overlay.protattr\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"user.overlay.protattr\00", [42 x i8] zeroinitializer }, align 32
@ovl_xattr_table = dso_local constant { [8 x [2 x ptr]], [32 x i8] } { [8 x [2 x ptr]] [[2 x ptr] [ptr @.str.1, ptr @.str.2], [2 x ptr] [ptr @.str.3, ptr @.str.4], [2 x ptr] [ptr @.str.5, ptr @.str.6], [2 x ptr] [ptr @.str.7, ptr @.str.8], [2 x ptr] [ptr @.str.9, ptr @.str.10], [2 x ptr] [ptr @.str.11, ptr @.str.12], [2 x ptr] [ptr @.str.13, ptr @.str.14], [2 x ptr] [ptr @.str.15, ptr @.str.16]], [32 x i8] zeroinitializer }, align 32
@ovl_check_setxattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014overlayfs: cannot set %s xattr on upper\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ovl_check_setxattr\00", [45 x i8] zeroinitializer }, align 32
@ovl_check_setxattr._entry_ptr = internal global ptr @ovl_check_setxattr._entry, section ".printk_index", align 4
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"y\00", [30 x i8] zeroinitializer }, align 32
@ovl_check_protattr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ovl_check_protattr = private unnamed_addr constant [19 x i8] c"ovl_check_protattr\00", align 1
@ovl_check_protattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @__func__.ovl_check_protattr, ptr @.str, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014overlayfs: incompatible overlay.protattr format (%pd2, len=%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@ovl_check_protattr._entry_ptr = internal global ptr @ovl_check_protattr._entry, section ".printk_index", align 4
@ovl_lock_rename_workdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013overlayfs: failed to lock workdir+upperdir\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ovl_lock_rename_workdir\00", [40 x i8] zeroinitializer }, align 32
@ovl_lock_rename_workdir._entry_ptr = internal global ptr @ovl_lock_rename_workdir._entry, section ".printk_index", align 4
@ovl_check_metacopy_xattr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_check_metacopy_xattr = private unnamed_addr constant [25 x i8] c"ovl_check_metacopy_xattr\00", align 1
@ovl_check_metacopy_xattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ovl_check_metacopy_xattr, ptr @.str, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014overlayfs: failed to get metacopy (%i)\0A\00", [54 x i8] zeroinitializer }, align 32
@ovl_check_metacopy_xattr._entry_ptr = internal global ptr @ovl_check_metacopy_xattr._entry, section ".printk_index", align 4
@ovl_get_redirect_xattr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_get_redirect_xattr = private unnamed_addr constant [23 x i8] c"ovl_get_redirect_xattr\00", align 1
@ovl_get_redirect_xattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.ovl_get_redirect_xattr, ptr @.str, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014overlayfs: invalid redirect (%s)\0A\00", [60 x i8] zeroinitializer }, align 32
@ovl_get_redirect_xattr._entry_ptr = internal global ptr @ovl_get_redirect_xattr._entry, section ".printk_index", align 4
@ovl_get_redirect_xattr._rs.26 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ovl_get_redirect_xattr._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.ovl_get_redirect_xattr, ptr @.str, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014overlayfs: failed to get redirect (%i)\0A\00", [54 x i8] zeroinitializer }, align 32
@ovl_get_redirect_xattr._entry_ptr.29 = internal global ptr @ovl_get_redirect_xattr._entry.27, section ".printk_index", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@ovl_do_getxattr.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"overlay\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ovl_do_getxattr\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/overlayfs/overlayfs.h\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"getxattr(%pd2, \22%s\22, \22%*pE\22, %zu, 0) = %i\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"overlayfs: getxattr(%pd2, \22%s\22, \22%*pE\22, %zu, 0) = %i\0A\00", [42 x i8] zeroinitializer }, align 32
@ovl_do_setxattr.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.36, ptr @.str.33, ptr @.str.37, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ovl_do_setxattr\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"setxattr(%pd2, \22%s\22, \22%*pE\22, %zu, 0) = %i\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"overlayfs: setxattr(%pd2, \22%s\22, \22%*pE\22, %zu, 0) = %i\0A\00", [42 x i8] zeroinitializer }, align 32
@ovl_do_removexattr.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.39, ptr @.str.33, ptr @.str.40, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ovl_do_removexattr\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"removexattr(%pd2, \22%s\22) = %i\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"overlayfs: removexattr(%pd2, \22%s\22) = %i\0A\00", [55 x i8] zeroinitializer }, align 32
@ovl_cleanup_index._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_cleanup_index = private unnamed_addr constant [18 x i8] c"ovl_cleanup_index\00", align 1
@ovl_cleanup_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @__func__.ovl_cleanup_index, ptr @.str, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014overlayfs: cleanup linked index (%pd2, ino=%lu, nlink=%u)\0A\00", [35 x i8] zeroinitializer }, align 32
@ovl_cleanup_index._entry_ptr = internal global ptr @ovl_cleanup_index._entry, section ".printk_index", align 4
@ovl_cleanup_index._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @__func__.ovl_cleanup_index, ptr @.str, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013overlayfs: cleanup index of '%pd2' failed (%i)\0A\00", [46 x i8] zeroinitializer }, align 32
@ovl_cleanup_index._entry_ptr.45 = internal global ptr @ovl_cleanup_index._entry.43, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 97, i64 105]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967235]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967235]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967235]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 259, i32 6 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 596, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 597, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 598, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 599, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 600, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 601, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 602, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 603, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"ovl_xattr_table\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 595, i32 19 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 618, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 638, i32 63 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 676, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 941, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 970, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1027, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1031, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 271, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 193, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 204, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [28 x i8] c"../fs/overlayfs/overlayfs.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 214, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 810, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [23 x i8] c"../fs/overlayfs/util.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 850, i32 2 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @ovl_check_metacopy_xattr._entry, ptr @ovl_check_metacopy_xattr._entry_ptr, ptr @ovl_check_protattr._entry, ptr @ovl_check_protattr._entry_ptr, ptr @ovl_check_setxattr._entry, ptr @ovl_check_setxattr._entry_ptr, ptr @ovl_cleanup_index._entry, ptr @ovl_cleanup_index._entry.43, ptr @ovl_cleanup_index._entry_ptr, ptr @ovl_cleanup_index._entry_ptr.45, ptr @ovl_get_redirect_xattr._entry, ptr @ovl_get_redirect_xattr._entry.27, ptr @ovl_get_redirect_xattr._entry_ptr, ptr @ovl_get_redirect_xattr._entry_ptr.29, ptr @ovl_lock_rename_workdir._entry, ptr @ovl_lock_rename_workdir._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @ovl_xattr_table, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @ovl_check_protattr._rs, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @ovl_check_metacopy_xattr._rs, ptr @.str.24, ptr @ovl_get_redirect_xattr._rs, ptr @.str.25, ptr @ovl_get_redirect_xattr._rs.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @ovl_cleanup_index._rs, ptr @.str.42, ptr @.str.44], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_xattr_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_check_setxattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_check_protattr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_check_protattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lock_rename_workdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_check_metacopy_xattr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_check_metacopy_xattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_redirect_xattr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_redirect_xattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_redirect_xattr._rs.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_redirect_xattr._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_cleanup_index._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_cleanup_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_cleanup_index._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_want_write(ptr nocapture noundef readonly %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %layers.i = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %layers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %layers.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call1 = tail call i32 @mnt_want_write(ptr noundef %7) #15
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_drop_write(ptr nocapture noundef readonly %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %layers.i = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %layers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %layers.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @mnt_drop_write(ptr noundef %7) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ovl_workdir(ptr nocapture noundef readonly %dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %workdir = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %workdir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %workdir, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_override_creds(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %creator_cred = getelementptr inbounds %struct.ovl_fs, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %creator_cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %creator_cred, align 4
  %call = tail call ptr @override_creds(ptr noundef %3) #15
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_can_decode_fh(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 2) #15
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %0 = ptrtoint ptr %s_export_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_export_op, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %fh_to_dentry = getelementptr inbounds %struct.export_operations, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fh_to_dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fh_to_dentry, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.return_crit_edge, label %if.end4

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool6.not = icmp eq ptr %5, null
  %cond = select i1 %tobool6.not, i32 1, i32 -1
  br label %return

return:                                           ; preds = %if.end4, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end4 ], [ 0, %entry.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ovl_indexdir(ptr nocapture noundef readonly %sb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %indexdir = getelementptr inbounds %struct.ovl_fs, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %indexdir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %indexdir, align 4
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ovl_index_all(ptr nocapture noundef readonly %sb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %nfs_export = getelementptr inbounds %struct.ovl_fs, ptr %1, i32 0, i32 8, i32 9
  %2 = ptrtoint ptr %nfs_export to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nfs_export, align 2, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %index = getelementptr inbounds %struct.ovl_fs, ptr %1, i32 0, i32 8, i32 7
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2 = icmp ne i8 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool2, %land.rhs ]
  ret i1 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ovl_verify_lower(ptr nocapture noundef readonly %sb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %nfs_export = getelementptr inbounds %struct.ovl_fs, ptr %1, i32 0, i32 8, i32 9
  %2 = ptrtoint ptr %nfs_export to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nfs_export, align 2, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %index = getelementptr inbounds %struct.ovl_fs, ptr %1, i32 0, i32 8, i32 7
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2 = icmp ne i8 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool2, %land.rhs ]
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_alloc_entry(i32 noundef %numlower) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = shl i32 %numlower, 3
  %1 = add i32 %0, 12
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3520) #18
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %numlower1 = getelementptr inbounds %struct.ovl_entry, ptr %call9.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %numlower1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %numlower, ptr %numlower1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ovl_dentry_remote(ptr nocapture noundef readonly %dentry) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dentry, align 8
  %and = and i32 %1, 2052
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_dentry_update_reval(ptr noundef %dentry, ptr noundef readonly %upperdentry, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %tobool.not = icmp eq ptr %upperdentry, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %upperdentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %upperdentry, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %numlower = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %numlower to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numlower, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21.not = icmp eq i32 %5, 0
  br i1 %cmp21.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %flags.123 = phi i32 [ %or3, %for.body.for.body_crit_edge ], [ %flags.0, %if.end.for.body_crit_edge ]
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %dentry1 = getelementptr %struct.ovl_entry, ptr %1, i32 0, i32 2, i32 %i.022, i32 1
  %6 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %or3 = or i32 %9, %flags.123
  %inc = add nuw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %flags.1.lcssa = phi i32 [ %flags.0, %if.end.for.end_crit_edge ], [ %or3, %for.body.for.end_crit_edge ]
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #15
  %neg = xor i32 %mask, -1
  %10 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dentry, align 8
  %and = and i32 %11, %neg
  %and5 = and i32 %flags.1.lcssa, %mask
  %or7 = or i32 %and, %and5
  store i32 %or7, ptr %dentry, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ovl_dentry_weird(ptr nocapture noundef readonly %dentry) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dentry, align 8
  %and = and i32 %1, 393219
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_path_type(ptr nocapture noundef readonly %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i.i, align 8
  %__upperdentry.i.i = getelementptr i8, ptr %3, i32 784
  %4 = ptrtoint ptr %__upperdentry.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %__upperdentry.i.i, align 8
  %tobool.not = icmp eq ptr %5, null
  %numlower13 = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %numlower13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %numlower13, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.then.if.end17_crit_edge, label %if.then2

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then2:                                         ; preds = %if.then
  %flags.i = getelementptr i8, ptr %3, i32 -8
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  %spec.select = select i1 %tobool.i.not, i32 1, i32 5
  %11 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dentry, align 8
  %13 = and i32 %12, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %13)
  %14 = icmp eq i32 %13, 2097152
  br i1 %14, label %if.then2.if.then9_crit_edge, label %lor.lhs.false

if.then2.if.then9_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.then2
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %3, align 8
  %17 = and i16 %16, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %17)
  %cmp.i.i = icmp eq i16 %17, -32768
  br i1 %cmp.i.i, label %ovl_should_check_upperdata.exit.i, label %lor.lhs.false.if.end17_crit_edge

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

ovl_should_check_upperdata.exit.i:                ; preds = %lor.lhs.false
  %lower.i.i.i = getelementptr i8, ptr %3, i32 788
  %18 = ptrtoint ptr %lower.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lower.i.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.not.i, label %ovl_should_check_upperdata.exit.i.if.end17_crit_edge, label %if.end.i

ovl_should_check_upperdata.exit.i.if.end17_crit_edge: ; preds = %ovl_should_check_upperdata.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.end.i:                                         ; preds = %ovl_should_check_upperdata.exit.i
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i, align 4
  %22 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i, label %if.end.i.if.then9_crit_edge, label %do.end.i

if.end.i.if.then9_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !107
  br label %if.end17

if.then9:                                         ; preds = %if.end.i.if.then9_crit_edge, %if.then2.if.then9_crit_edge
  %or10 = or i32 %spec.select, 2
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.inv = icmp ult i32 %7, 2
  %spec.select26 = select i1 %cmp.inv, i32 0, i32 2
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then9, %do.end.i, %ovl_should_check_upperdata.exit.i.if.end17_crit_edge, %lor.lhs.false.if.end17_crit_edge, %if.then.if.end17_crit_edge
  %type.1 = phi i32 [ %or10, %if.then9 ], [ 1, %if.then.if.end17_crit_edge ], [ %spec.select26, %if.else ], [ %spec.select, %do.end.i ], [ %spec.select, %ovl_should_check_upperdata.exit.i.if.end17_crit_edge ], [ %spec.select, %lor.lhs.false.if.end17_crit_edge ]
  ret i32 %type.1
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ovl_dentry_upper(ptr nocapture noundef readonly %dentry) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %__upperdentry.i = getelementptr i8, ptr %1, i32 784
  %2 = ptrtoint ptr %__upperdentry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %__upperdentry.i, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ovl_has_upperdata(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %2)
  %cmp.i = icmp eq i16 %2, -32768
  br i1 %cmp.i, label %ovl_should_check_upperdata.exit, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

ovl_should_check_upperdata.exit:                  ; preds = %entry
  %lower.i.i = getelementptr i8, ptr %inode, i32 788
  %3 = ptrtoint ptr %lower.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lower.i.i, align 4
  %tobool.not.i.not = icmp eq ptr %4, null
  br i1 %tobool.not.i.not, label %ovl_should_check_upperdata.exit.return_crit_edge, label %if.end

ovl_should_check_upperdata.exit.return_crit_edge: ; preds = %ovl_should_check_upperdata.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %ovl_should_check_upperdata.exit
  %flags.i = getelementptr i8, ptr %inode, i32 -8
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %if.end.return_crit_edge, label %do.end

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !107
  br label %return

return:                                           ; preds = %do.end, %if.end.return_crit_edge, %ovl_should_check_upperdata.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %do.end ], [ true, %ovl_should_check_upperdata.exit.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ovl_path_upper(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %path) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %layers.i = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %layers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %layers.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %path, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i.i, align 8
  %__upperdentry.i.i = getelementptr i8, ptr %10, i32 784
  %11 = ptrtoint ptr %__upperdentry.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %__upperdentry.i.i, align 8
  %dentry2 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %13 = ptrtoint ptr %dentry2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dentry2, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ovl_path_lower(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %path) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata, align 4
  %numlower = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %numlower to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numlower, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %lowerstack = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %lowerstack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lowerstack, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %path, align 4
  %dentry4 = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 1, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %dentry4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry4, align 4
  %dentry5 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %11 = ptrtoint ptr %dentry5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dentry5, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %path, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %path, i32 4
  %13 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ovl_path_lowerdata(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %path) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata, align 4
  %numlower = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %numlower to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numlower, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sub = add i32 %3, -1
  %arrayidx = getelementptr %struct.ovl_entry, ptr %1, i32 0, i32 2, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %path, align 4
  %9 = ptrtoint ptr %numlower to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %numlower, align 4
  %sub5 = add i32 %10, -1
  %dentry7 = getelementptr %struct.ovl_entry, ptr %1, i32 0, i32 2, i32 %sub5, i32 1
  %11 = ptrtoint ptr %dentry7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dentry7, align 4
  %dentry8 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %13 = ptrtoint ptr %dentry8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dentry8, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %path, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %path, i32 4
  %15 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_path_real(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %path) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i.i.i, align 8
  %__upperdentry.i.i.i = getelementptr i8, ptr %3, i32 784
  %4 = ptrtoint ptr %__upperdentry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %__upperdentry.i.i.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  %numlower13.i = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %numlower13.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %numlower13.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %if.then.i.if.else_crit_edge, label %if.then2.i

if.then.i.if.else_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then2.i:                                       ; preds = %if.then.i
  %flags.i.i = getelementptr i8, ptr %3, i32 -8
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  %spec.select.i = select i1 %tobool.i.not.i, i32 1, i32 5
  %11 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dentry, align 8
  %13 = and i32 %12, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %13)
  %14 = icmp eq i32 %13, 2097152
  br i1 %14, label %if.then2.i.if.then9.i_crit_edge, label %lor.lhs.false.i

if.then2.i.if.then9.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9.i

lor.lhs.false.i:                                  ; preds = %if.then2.i
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %3, align 8
  %17 = and i16 %16, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %17)
  %cmp.i.i.i = icmp eq i16 %17, -32768
  br i1 %cmp.i.i.i, label %ovl_should_check_upperdata.exit.i.i, label %lor.lhs.false.i.ovl_path_type.exit_crit_edge

lor.lhs.false.i.ovl_path_type.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ovl_path_type.exit

ovl_should_check_upperdata.exit.i.i:              ; preds = %lor.lhs.false.i
  %lower.i.i.i.i = getelementptr i8, ptr %3, i32 788
  %18 = ptrtoint ptr %lower.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lower.i.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.not.i.i, label %ovl_should_check_upperdata.exit.i.i.ovl_path_type.exit_crit_edge, label %if.end.i.i

ovl_should_check_upperdata.exit.i.i.ovl_path_type.exit_crit_edge: ; preds = %ovl_should_check_upperdata.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ovl_path_type.exit

if.end.i.i:                                       ; preds = %ovl_should_check_upperdata.exit.i.i
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i.i, align 4
  %22 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i.if.then9.i_crit_edge, label %do.end.i.i

if.end.i.i.if.then9.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !107
  br label %ovl_path_type.exit

if.then9.i:                                       ; preds = %if.end.i.i.if.then9.i_crit_edge, %if.then2.i.if.then9.i_crit_edge
  %or10.i = or i32 %spec.select.i, 2
  br label %ovl_path_type.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.inv.i = icmp ult i32 %7, 2
  %spec.select26.i = select i1 %cmp.inv.i, i32 0, i32 2
  br label %ovl_path_type.exit

ovl_path_type.exit:                               ; preds = %if.else.i, %if.then9.i, %do.end.i.i, %ovl_should_check_upperdata.exit.i.i.ovl_path_type.exit_crit_edge, %lor.lhs.false.i.ovl_path_type.exit_crit_edge
  %type.1.i = phi i32 [ %or10.i, %if.then9.i ], [ %spec.select26.i, %if.else.i ], [ %spec.select.i, %do.end.i.i ], [ %spec.select.i, %ovl_should_check_upperdata.exit.i.i.ovl_path_type.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i.ovl_path_type.exit_crit_edge ]
  %and = and i32 %type.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %ovl_path_type.exit.if.else_crit_edge

ovl_path_type.exit.if.else_crit_edge:             ; preds = %ovl_path_type.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %ovl_path_type.exit
  %23 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_fsdata.i, align 4
  %numlower.i = getelementptr inbounds %struct.ovl_entry, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %numlower.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %numlower.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i6 = icmp eq i32 %26, 0
  br i1 %tobool.not.i6, label %if.else.i8, label %if.then.i7

if.then.i7:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %lowerstack.i = getelementptr inbounds %struct.ovl_entry, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %lowerstack.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lowerstack.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %31 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %path, align 4
  %dentry4.i = getelementptr inbounds %struct.ovl_entry, ptr %24, i32 1, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %dentry4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dentry4.i, align 4
  %dentry5.i = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %34 = ptrtoint ptr %dentry5.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %dentry5.i, align 4
  br label %if.end

if.else.i8:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %path, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %path, i32 4
  %36 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  br label %if.end

if.else:                                          ; preds = %ovl_path_type.exit.if.else_crit_edge, %if.then.i.if.else_crit_edge
  %type.1.i15 = phi i32 [ %type.1.i, %ovl_path_type.exit.if.else_crit_edge ], [ 1, %if.then.i.if.else_crit_edge ]
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %37 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 33
  %39 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i, align 16
  %layers.i.i = getelementptr inbounds %struct.ovl_fs, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %layers.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %layers.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %path, align 4
  %46 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %d_inode.i.i.i, align 8
  %__upperdentry.i.i.i10 = getelementptr i8, ptr %47, i32 784
  %48 = ptrtoint ptr %__upperdentry.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %__upperdentry.i.i.i10, align 8
  %dentry2.i = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %50 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %dentry2.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.else.i8, %if.then.i7
  %type.1.i14 = phi i32 [ %type.1.i15, %if.else ], [ %type.1.i, %if.then.i7 ], [ %type.1.i, %if.else.i8 ]
  ret i32 %type.1.i14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ovl_dentry_lower(ptr nocapture noundef readonly %dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata, align 4
  %numlower = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %numlower to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numlower, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dentry1 = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ovl_layer_lower(ptr nocapture noundef readonly %dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata, align 4
  %numlower = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %numlower to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numlower, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %lowerstack = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %lowerstack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lowerstack, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ovl_dentry_lowerdata(ptr nocapture noundef readonly %dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata, align 4
  %numlower = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %numlower to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numlower, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sub = add i32 %3, -1
  %dentry2 = getelementptr %struct.ovl_entry, ptr %1, i32 0, i32 2, i32 %sub, i32 1
  %4 = ptrtoint ptr %dentry2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ovl_dentry_real(ptr nocapture noundef readonly %dentry) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i.i, align 8
  %__upperdentry.i.i = getelementptr i8, ptr %1, i32 784
  %2 = ptrtoint ptr %__upperdentry.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %__upperdentry.i.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %entry
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %4 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_fsdata.i, align 4
  %numlower.i = getelementptr inbounds %struct.ovl_entry, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %numlower.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %numlower.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %cond.false.cond.end_crit_edge, label %cond.true.i

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true.i:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #17
  %dentry1.i = getelementptr inbounds %struct.ovl_entry, ptr %5, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry1.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true.i, %cond.false.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %entry.cond.end_crit_edge ], [ %9, %cond.true.i ], [ null, %cond.false.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ovl_i_dentry_upper(ptr noundef %inode) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %__upperdentry.i = getelementptr i8, ptr %inode, i32 784
  %0 = ptrtoint ptr %__upperdentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %__upperdentry.i, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ovl_inode_upper(ptr noundef %inode) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %__upperdentry.i.i = getelementptr i8, ptr %inode, i32 784
  %0 = ptrtoint ptr %__upperdentry.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %__upperdentry.i.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ovl_inode_lower(ptr nocapture noundef readonly %inode) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lower = getelementptr i8, ptr %inode, i32 788
  %0 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lower, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ovl_inode_real(ptr noundef %inode) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %__upperdentry.i.i.i = getelementptr i8, ptr %inode, i32 784
  %0 = ptrtoint ptr %__upperdentry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %__upperdentry.i.i.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cond.false_crit_edge, label %ovl_inode_upper.exit

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false

ovl_inode_upper.exit:                             ; preds = %entry
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %ovl_inode_upper.exit.cond.false_crit_edge, label %ovl_inode_upper.exit.cond.end_crit_edge

ovl_inode_upper.exit.cond.end_crit_edge:          ; preds = %ovl_inode_upper.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

ovl_inode_upper.exit.cond.false_crit_edge:        ; preds = %ovl_inode_upper.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false

cond.false:                                       ; preds = %ovl_inode_upper.exit.cond.false_crit_edge, %entry.cond.false_crit_edge
  %lower.i = getelementptr i8, ptr %inode, i32 788
  %4 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lower.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %ovl_inode_upper.exit.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.false ], [ %3, %ovl_inode_upper.exit.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_inode_lowerdata(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %2)
  %cmp.not = icmp eq i16 %2, -32768
  br i1 %cmp.not, label %if.end23, label %do.end, !prof !108

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 259, i32 noundef 9, ptr noundef null) #15
  br label %return

if.end23:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -24
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %tobool24.not = icmp eq ptr %4, null
  br i1 %tobool24.not, label %cond.false, label %if.end23.return_crit_edge

if.end23.return_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

cond.false:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %lower.i = getelementptr i8, ptr %inode, i32 788
  %5 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lower.i, align 4
  br label %return

return:                                           ; preds = %cond.false, %if.end23.return_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %6, %cond.false ], [ %4, %if.end23.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_inode_realdata(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %__upperdentry.i.i.i = getelementptr i8, ptr %inode, i32 784
  %0 = ptrtoint ptr %__upperdentry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %__upperdentry.i.i.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %ovl_inode_upper.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

ovl_inode_upper.exit:                             ; preds = %entry
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %ovl_inode_upper.exit.if.end_crit_edge, label %land.lhs.true

ovl_inode_upper.exit.if.end_crit_edge:            ; preds = %ovl_inode_upper.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %ovl_inode_upper.exit
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %6)
  %cmp.i.i = icmp eq i16 %6, -32768
  br i1 %cmp.i.i, label %ovl_should_check_upperdata.exit.i, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ovl_should_check_upperdata.exit.i:                ; preds = %land.lhs.true
  %lower.i.i.i = getelementptr i8, ptr %inode, i32 788
  %7 = ptrtoint ptr %lower.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lower.i.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.not.i, label %ovl_should_check_upperdata.exit.i.cleanup_crit_edge, label %if.end.i

ovl_should_check_upperdata.exit.i.cleanup_crit_edge: ; preds = %ovl_should_check_upperdata.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %ovl_should_check_upperdata.exit.i
  %flags.i.i = getelementptr i8, ptr %inode, i32 -8
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i.i, align 4
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %if.end.i.if.end_crit_edge, label %do.end.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !107
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %ovl_inode_upper.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %inode, align 8
  %14 = and i16 %13, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %14)
  %cmp.not.i = icmp eq i16 %14, -32768
  br i1 %cmp.not.i, label %if.end23.i, label %do.end.i6, !prof !108

do.end.i6:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 259, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end23.i:                                       ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -24
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i, align 8
  %tobool24.not.i = icmp eq ptr %16, null
  br i1 %tobool24.not.i, label %cond.false.i, label %if.end23.i.cleanup_crit_edge

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cond.false.i:                                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  %lower.i.i = getelementptr i8, ptr %inode, i32 788
  %17 = ptrtoint ptr %lower.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lower.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.false.i, %if.end23.i.cleanup_crit_edge, %do.end.i6, %do.end.i, %ovl_should_check_upperdata.exit.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.i6 ], [ %18, %cond.false.i ], [ %16, %if.end23.i.cleanup_crit_edge ], [ %3, %do.end.i ], [ %3, %ovl_should_check_upperdata.exit.i.cleanup_crit_edge ], [ %3, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ovl_dir_cache(ptr nocapture noundef readonly %inode) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -24
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ovl_set_dir_cache(ptr nocapture noundef writeonly %inode, ptr noundef %cache) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -24
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cache, ptr %add.ptr.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_dentry_set_flag(i32 noundef %flag, ptr nocapture noundef readonly %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  tail call void @_set_bit(i32 noundef %flag, ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_dentry_clear_flag(i32 noundef %flag, ptr nocapture noundef readonly %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  tail call void @_clear_bit(i32 noundef %flag, ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ovl_dentry_test_flag(i32 noundef %flag, ptr nocapture noundef readonly %dentry) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %div3.i = lshr i32 %flag, 5
  %arrayidx.i = getelementptr i32, ptr %1, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %flag, 31
  %4 = shl nuw i32 1, %and.i
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp ne i32 %5, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ovl_dentry_is_opaque(ptr nocapture noundef readonly %dentry) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i = icmp ne i32 %4, 0
  ret i1 %tobool.i
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ovl_dentry_is_whiteout(ptr nocapture noundef readonly %dentry) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %d_fsdata.i.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata.i.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.i = icmp ne i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %7 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool.i.i, %land.rhs ]
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_dentry_set_opaque(ptr nocapture noundef readonly %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i.i, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ovl_dentry_has_upper_alias(ptr nocapture noundef readonly %dentry) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %4 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i = icmp ne i32 %4, 0
  ret i1 %tobool.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_dentry_set_upper_alias(ptr nocapture noundef readonly %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_set_upperdata(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !109
  %flags.i = getelementptr i8, ptr %inode, i32 -8
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ovl_dentry_needs_data_copy_up_locked(ptr nocapture noundef readonly %dentry, i32 noundef %flags) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not.i = icmp eq i32 %flags, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %ovl_open_flags_need_copy_up.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

ovl_open_flags_need_copy_up.exit:                 ; preds = %entry
  %add.i = add i32 %flags, 1
  %and2.i = and i32 %add.i, 2
  %and4.i = and i32 %flags, 512
  %0 = or i32 %and2.i, %and4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %ovl_open_flags_need_copy_up.exit.return_crit_edge, label %if.end

ovl_open_flags_need_copy_up.exit.return_crit_edge: ; preds = %ovl_open_flags_need_copy_up.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %ovl_open_flags_need_copy_up.exit
  call void @__sanitizer_cov_trace_pc() #17
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %flags.i = getelementptr i8, ptr %2, i32 -8
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br label %return

return:                                           ; preds = %if.end, %ovl_open_flags_need_copy_up.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool.i.not, %if.end ], [ false, %ovl_open_flags_need_copy_up.exit.return_crit_edge ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ovl_dentry_needs_data_copy_up(ptr nocapture noundef readonly %dentry, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not.i = icmp eq i32 %flags, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %ovl_open_flags_need_copy_up.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

ovl_open_flags_need_copy_up.exit:                 ; preds = %entry
  %add.i = add i32 %flags, 1
  %and2.i = and i32 %add.i, 2
  %and4.i = and i32 %flags, 512
  %0 = or i32 %and2.i, %and4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %ovl_open_flags_need_copy_up.exit.return_crit_edge, label %if.end

ovl_open_flags_need_copy_up.exit.return_crit_edge: ; preds = %ovl_open_flags_need_copy_up.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %ovl_open_flags_need_copy_up.exit
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %5)
  %cmp.i.i = icmp eq i16 %5, -32768
  br i1 %cmp.i.i, label %ovl_should_check_upperdata.exit.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

ovl_should_check_upperdata.exit.i:                ; preds = %if.end
  %lower.i.i.i = getelementptr i8, ptr %2, i32 788
  %6 = ptrtoint ptr %lower.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lower.i.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.not.i, label %ovl_should_check_upperdata.exit.i.return_crit_edge, label %if.end.i3

ovl_should_check_upperdata.exit.i.return_crit_edge: ; preds = %ovl_should_check_upperdata.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end.i3:                                        ; preds = %ovl_should_check_upperdata.exit.i
  %flags.i.i = getelementptr i8, ptr %2, i32 -8
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %if.end.i3.return_crit_edge, label %do.end.i

if.end.i3.return_crit_edge:                       ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.end.i:                                         ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !107
  br label %return

return:                                           ; preds = %do.end.i, %if.end.i3.return_crit_edge, %ovl_should_check_upperdata.exit.i.return_crit_edge, %if.end.return_crit_edge, %ovl_open_flags_need_copy_up.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %ovl_open_flags_need_copy_up.exit.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %do.end.i ], [ false, %ovl_should_check_upperdata.exit.i.return_crit_edge ], [ true, %if.end.i3.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ovl_redirect_dir(ptr nocapture noundef readonly %sb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %redirect_dir = getelementptr inbounds %struct.ovl_fs, ptr %1, i32 0, i32 8, i32 4
  %2 = ptrtoint ptr %redirect_dir to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %redirect_dir, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %noxattr = getelementptr inbounds %struct.ovl_fs, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %noxattr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %noxattr, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool1.not, %land.rhs ]
  ret i1 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ovl_dentry_get_redirect(ptr nocapture noundef readonly %dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %redirect = getelementptr i8, ptr %1, i32 -20
  %2 = ptrtoint ptr %redirect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %redirect, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_dentry_set_redirect(ptr nocapture noundef readonly %dentry, ptr noundef %redirect) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %redirect2 = getelementptr i8, ptr %1, i32 -20
  %2 = ptrtoint ptr %redirect2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %redirect2, align 4
  tail call void @kfree(ptr noundef %3) #15
  %4 = ptrtoint ptr %redirect2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %redirect, ptr %redirect2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_inode_update(ptr noundef %inode, ptr noundef %upperdentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %upperdentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %__upperdentry = getelementptr i8, ptr %inode, i32 784
  %2 = ptrtoint ptr %__upperdentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__upperdentry, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !108

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 413, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !110
  %4 = ptrtoint ptr %__upperdentry to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %upperdentry, ptr %__upperdentry, align 8
  %pprev.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %5 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.not, label %if.then31, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %7 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %i_private, align 4
  %8 = ptrtoint ptr %1 to i32
  tail call void @__insert_inode_hash(ptr noundef %inode, i32 noundef %8) #15
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end.if.end32_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_dir_modified(ptr nocapture noundef readonly %dentry, i1 noundef zeroext %impurity) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i.i, align 8
  %__upperdentry.i.i = getelementptr i8, ptr %1, i32 784
  %2 = ptrtoint ptr %__upperdentry.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %__upperdentry.i.i, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %i_uid1.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %i_uid1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_uid1.i, align 4
  %8 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %i_gid2.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %i_gid2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_gid2.i, align 8
  %11 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %i_gid.i, align 8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %5, align 8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %1, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %i_atime4.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 15
  %15 = call ptr @memcpy(ptr %i_atime.i, ptr %i_atime4.i, i32 16)
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %i_mtime5.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 16
  %16 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_mtime5.i, i32 16)
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %i_ctime6.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 17
  %17 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_ctime6.i, i32 16)
  %i_size_seqcount.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 23
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 23, i32 1
  %i_size18.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %entry
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !111
  %and.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  %19 = tail call ptr @llvm.returnaddress(i32 0) #15
  %20 = ptrtoint ptr %19 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %20) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %20) #15
  tail call void @trace_hardirqs_on() #15
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %21 = tail call ptr @llvm.returnaddress(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %22) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %22) #15
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !112
  %and.i.i.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !113

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #15, !srcloc !114
  %24 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and29.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool.not30.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool.not30.i.i, label %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !115
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !116
  %26 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and.i.i = and i32 %27, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %25, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge ], [ %27, %do.end.i.i.while.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !117
  %28 = ptrtoint ptr %i_size18.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_size18.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !118
  %30 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq i32 %31, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %i_size_read.exit.i, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i

i_size_read.exit.i:                               ; preds = %while.end.i.i
  %32 = tail call i32 @llvm.read_register.i32(metadata !96) #15
  %and.i.i.i.i19.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i19.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %36 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i20.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i20.i, label %i_size_read.exit.i.ovl_copyattr.exit_crit_edge, label %land.lhs.true.i.i.i

i_size_read.exit.i.ovl_copyattr.exit_crit_edge:   ; preds = %i_size_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ovl_copyattr.exit

land.lhs.true.i.i.i:                              ; preds = %i_size_read.exit.i
  %37 = tail call i32 @llvm.read_register.i32(metadata !96) #15
  %and.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !120
  %41 = tail call i32 @llvm.read_register.i32(metadata !96) #15
  %and.i.i.i21.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i21.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i28.i.i = add i32 %46, ptrtoint (ptr @lockdep_recursion to i32)
  %47 = inttoptr i32 %add.i28.i.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !121
  %50 = tail call i32 @llvm.read_register.i32(metadata !96) #15
  %and.i.i.i7.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool20.not.i.i.i = icmp eq i32 %49, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.ovl_copyattr.exit_crit_edge

land.lhs.true.i.i.i.ovl_copyattr.exit_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ovl_copyattr.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %54 = tail call i32 @llvm.read_register.i32(metadata !96) #15
  %and.i.i.i29.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i29.i.i to ptr
  %preempt_count.i.i30.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i.i = icmp eq i32 %57, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.ovl_copyattr.exit_crit_edge

land.rhs.i.i.i.ovl_copyattr.exit_crit_edge:       ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ovl_copyattr.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %58 = tail call i32 @llvm.read_register.i32(metadata !96) #15
  %and.i.i.i9.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %61, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !122
  %62 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %65, ptrtoint (ptr @hardirqs_enabled to i32)
  %66 = inttoptr i32 %add47.i.i.i to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !123
  %69 = tail call i32 @llvm.read_register.i32(metadata !96) #15
  %and.i.i.i12.i.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %72, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool54.not.i.i.i = icmp eq i32 %68, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.ovl_copyattr.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.ovl_copyattr.exit_crit_edge:     ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ovl_copyattr.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.ovl_copyattr.exit_crit_edge, label %if.then.i.i22.i, !prof !108

land.rhs58.i.i.i.ovl_copyattr.exit_crit_edge:     ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ovl_copyattr.exit

if.then.i.i22.i:                                  ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %ovl_copyattr.exit

ovl_copyattr.exit:                                ; preds = %if.then.i.i22.i, %land.rhs58.i.i.i.ovl_copyattr.exit_crit_edge, %land.rhs22.i.i.i.ovl_copyattr.exit_crit_edge, %land.rhs.i.i.i.ovl_copyattr.exit_crit_edge, %land.lhs.true.i.i.i.ovl_copyattr.exit_crit_edge, %i_size_read.exit.i.ovl_copyattr.exit_crit_edge
  %i_size_seqcount.i23.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %73 = ptrtoint ptr %i_size_seqcount.i23.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %i_size_seqcount.i23.i, align 4
  %inc.i.i.i.i.i = add i32 %74, 1
  store i32 %inc.i.i.i.i.i, ptr %i_size_seqcount.i23.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !124
  %dep_map.i.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %75 = tail call ptr @llvm.returnaddress(i32 0) #15
  %76 = ptrtoint ptr %75 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %76) #15
  %i_size8.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %77 = ptrtoint ptr %i_size8.i.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %29, ptr %i_size8.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %76) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !125
  %78 = ptrtoint ptr %i_size_seqcount.i23.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %i_size_seqcount.i23.i, align 4
  %inc.i.i.i.i = add i32 %79, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i23.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !126
  %80 = tail call i32 @llvm.read_register.i32(metadata !96) #15
  %and.i.i.i26.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i26.i.i to ptr
  %preempt_count.i.i27.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i27.i.i, align 4
  %sub.i.i.i = add i32 %83, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i27.i.i, align 4
  %84 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %85, i32 0, i32 25
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i.i, i32 noundef 4) #15
  %86 = ptrtoint ptr %i_rwsem.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %i_rwsem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i.i.not.i = icmp eq i32 %87, 0
  br i1 %cmp.i.i.not.i, label %do.end.i, label %ovl_copyattr.exit.if.end.i_crit_edge, !prof !113

ovl_copyattr.exit.if.end.i_crit_edge:             ; preds = %ovl_copyattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %ovl_copyattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 430, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %ovl_copyattr.exit.if.end.i_crit_edge
  %88 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dentry, align 8
  %90 = and i32 %89, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %90)
  %91 = icmp eq i32 %90, 2097152
  br i1 %91, label %if.end.i.if.end47.i_crit_edge, label %do.end41.i, !prof !108

if.end.i.if.end47.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.i

do.end41.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 431, i32 noundef 9, ptr noundef null) #15
  br label %if.end47.i

if.end47.i:                                       ; preds = %do.end41.i, %if.end.i.if.end47.i_crit_edge
  %92 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %d_inode.i.i, align 8
  %flags.i.i.i = getelementptr i8, ptr %93, i32 -8
  %94 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %flags.i.i.i, align 4
  %96 = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.i.not.i.i = icmp ne i32 %96, 0
  %brmerge.i = or i1 %tobool.i.not.i.i, %impurity
  br i1 %brmerge.i, label %if.then57.i, label %if.end47.i.ovl_dir_version_inc.exit_crit_edge

if.end47.i.ovl_dir_version_inc.exit_crit_edge:    ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ovl_dir_version_inc.exit

if.then57.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #17
  %version.i = getelementptr i8, ptr %85, i32 -16
  %97 = ptrtoint ptr %version.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %version.i, align 8
  %inc.i = add i64 %98, 1
  store i64 %inc.i, ptr %version.i, align 8
  br label %ovl_dir_version_inc.exit

ovl_dir_version_inc.exit:                         ; preds = %if.then57.i, %if.end47.i.ovl_dir_version_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ovl_dentry_version_get(ptr nocapture noundef readonly %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #15
  %2 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.i.not, label %do.end, label %entry.if.end_crit_edge, !prof !113

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 455, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %version = getelementptr i8, ptr %1, i32 -16
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %version, align 8
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ovl_is_whiteout(ptr nocapture noundef readonly %dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end5_crit_edge, label %land.rhs

entry.land.end5_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end5

land.rhs:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %4)
  %cmp = icmp eq i16 %4, 8192
  br i1 %cmp, label %land.rhs2, label %land.rhs.land.end5_crit_edge

land.rhs.land.end5_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end5

land.rhs2:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  %i_rdev = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_rdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3 = icmp eq i32 %6, 0
  br label %land.end5

land.end5:                                        ; preds = %land.rhs2, %land.rhs.land.end5_crit_edge, %entry.land.end5_crit_edge
  %7 = phi i1 [ false, %entry.land.end5_crit_edge ], [ false, %land.rhs.land.end5_crit_edge ], [ %cmp3, %land.rhs2 ]
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_path_open(ptr noundef %path, i32 noundef %flags) local_unnamed_addr #0 align 64 {
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
  %and = and i32 %flags, -131076
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/overlayfs/util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 472, 0\0A.popsection", ""() #15, !srcloc !127
  unreachable

if.end:                                           ; preds = %entry
  %and4 = and i32 %flags, 3
  %4 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and4, label %do.body6 [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/overlayfs/util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 482, 0\0A.popsection", ""() #15, !srcloc !128
  unreachable

sw.epilog:                                        ; preds = %sw.bb5, %if.end.sw.epilog_crit_edge
  %acc_mode.0 = phi i32 [ 34, %sw.bb5 ], [ 36, %if.end.sw.epilog_crit_edge ]
  %call12 = tail call i32 @inode_permission(ptr noundef nonnull @init_user_ns, ptr noundef %3, i32 noundef %acc_mode.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %5 = inttoptr i32 %call12 to ptr
  br label %cleanup

if.end16:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %call17 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef nonnull @init_user_ns, ptr noundef %3) #15
  %or19 = or i32 %flags, 262144
  %spec.select = select i1 %call17, i32 %or19, i32 %flags
  %6 = tail call i32 @llvm.read_register.i32(metadata !96) #15
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred, align 16
  %call25 = tail call ptr @dentry_open(ptr noundef %path, i32 noundef %spec.select, ptr noundef %11) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14
  %retval.0 = phi ptr [ %5, %if.then14 ], [ %call25, %if.end16 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ovl_already_copied_up(ptr nocapture noundef readonly %dentry, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dentry, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i.i, align 8
  %__upperdentry.i.i = getelementptr i8, ptr %3, i32 784
  %4 = ptrtoint ptr %__upperdentry.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %__upperdentry.i.i, align 8
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %d_fsdata.i.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %6 = ptrtoint ptr %d_fsdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_fsdata.i.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %10 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.i = icmp ne i32 %10, 0
  %brmerge = select i1 %tobool.i.i, i1 true, i1 %tobool.not
  br i1 %brmerge, label %land.lhs.true4, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true4:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not.i.i = icmp eq i32 %flags, 0
  br i1 %tobool.not.i.i, label %land.lhs.true4.cleanup_crit_edge, label %ovl_open_flags_need_copy_up.exit.i

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ovl_open_flags_need_copy_up.exit.i:               ; preds = %land.lhs.true4
  %add.i.i = add i32 %flags, 1
  %and2.i.i = and i32 %add.i.i, 2
  %and4.i.i = and i32 %flags, 512
  %11 = or i32 %and2.i.i, %and4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %.not.i = icmp eq i32 %11, 0
  br i1 %.not.i, label %ovl_open_flags_need_copy_up.exit.i.cleanup_crit_edge, label %if.end.i

ovl_open_flags_need_copy_up.exit.i.cleanup_crit_edge: ; preds = %ovl_open_flags_need_copy_up.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %ovl_open_flags_need_copy_up.exit.i
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %3, align 8
  %14 = and i16 %13, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %14)
  %cmp.i.i.i = icmp eq i16 %14, -32768
  br i1 %cmp.i.i.i, label %ovl_should_check_upperdata.exit.i.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ovl_should_check_upperdata.exit.i.i:              ; preds = %if.end.i
  %lower.i.i.i.i = getelementptr i8, ptr %3, i32 788
  %15 = ptrtoint ptr %lower.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lower.i.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.not.i.i, label %ovl_should_check_upperdata.exit.i.i.cleanup_crit_edge, label %if.end.i3.i

ovl_should_check_upperdata.exit.i.i.cleanup_crit_edge: ; preds = %ovl_should_check_upperdata.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i3.i:                                      ; preds = %ovl_should_check_upperdata.exit.i.i
  %flags.i.i.i = getelementptr i8, ptr %3, i32 -8
  %17 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i.i.i, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i.i, label %if.end.i3.i.cleanup_crit_edge, label %do.end.i.i

if.end.i3.i.cleanup_crit_edge:                    ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end.i.i:                                       ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !107
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i, %if.end.i3.i.cleanup_crit_edge, %ovl_should_check_upperdata.exit.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %ovl_open_flags_need_copy_up.exit.i.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end.i3.i.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ true, %ovl_open_flags_need_copy_up.exit.i.cleanup_crit_edge ], [ true, %land.lhs.true4.cleanup_crit_edge ], [ true, %do.end.i.i ], [ true, %ovl_should_check_upperdata.exit.i.i.cleanup_crit_edge ], [ true, %if.end.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_copy_up_start(ptr nocapture noundef readonly %dentry, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %lock.i = getelementptr i8, ptr %1, i32 792
  %call1.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock.i, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dentry, align 8
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %__upperdentry.i.i.i = getelementptr i8, ptr %5, i32 784
  %6 = ptrtoint ptr %__upperdentry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %__upperdentry.i.i.i, align 8
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.i

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %d_fsdata.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %8 = ptrtoint ptr %d_fsdata.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_fsdata.i.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %12 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.i.i = icmp ne i32 %12, 0
  %brmerge.i = select i1 %tobool.i.i.i, i1 true, i1 %tobool.not.i
  br i1 %brmerge.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not.i.i.i = icmp eq i32 %flags, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true4.i.if.then_crit_edge, label %ovl_open_flags_need_copy_up.exit.i.i

land.lhs.true4.i.if.then_crit_edge:               ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

ovl_open_flags_need_copy_up.exit.i.i:             ; preds = %land.lhs.true4.i
  %add.i.i.i = add i32 %flags, 1
  %and2.i.i.i = and i32 %add.i.i.i, 2
  %and4.i.i.i = and i32 %flags, 512
  %13 = or i32 %and2.i.i.i, %and4.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %.not.i.i = icmp eq i32 %13, 0
  br i1 %.not.i.i, label %ovl_open_flags_need_copy_up.exit.i.i.if.then_crit_edge, label %ovl_dentry_needs_data_copy_up_locked.exit.i

ovl_open_flags_need_copy_up.exit.i.i.if.then_crit_edge: ; preds = %ovl_open_flags_need_copy_up.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

ovl_dentry_needs_data_copy_up_locked.exit.i:      ; preds = %ovl_open_flags_need_copy_up.exit.i.i
  %flags.i.i.i = getelementptr i8, ptr %5, i32 -8
  %14 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i.i.i, align 4
  %16 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i.i, label %ovl_dentry_needs_data_copy_up_locked.exit.i.if.end_crit_edge, label %ovl_dentry_needs_data_copy_up_locked.exit.i.if.then_crit_edge

ovl_dentry_needs_data_copy_up_locked.exit.i.if.then_crit_edge: ; preds = %ovl_dentry_needs_data_copy_up_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

ovl_dentry_needs_data_copy_up_locked.exit.i.if.end_crit_edge: ; preds = %ovl_dentry_needs_data_copy_up_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %ovl_dentry_needs_data_copy_up_locked.exit.i.if.then_crit_edge, %ovl_open_flags_need_copy_up.exit.i.i.if.then_crit_edge, %land.lhs.true4.i.if.then_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %ovl_dentry_needs_data_copy_up_locked.exit.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call1.i, %entry.if.end_crit_edge ], [ 1, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %land.lhs.true.i.if.end_crit_edge ], [ 0, %ovl_dentry_needs_data_copy_up_locked.exit.i.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_copy_up_end(ptr nocapture noundef readonly %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %lock.i = getelementptr i8, ptr %1, i32 792
  tail call void @mutex_unlock(ptr noundef %lock.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ovl_check_origin_xattr(ptr nocapture noundef readonly %ofs, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %userxattr.i.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 12
  %0 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %userxattr.i.i, align 1, !range !106
  %2 = zext i8 %1 to i32
  %arrayidx1.i.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 2, i32 %2
  %3 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1.i.i, align 4
  %call1.i = tail call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %4, ptr noundef null, i32 noundef 0) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_getxattr.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_check_origin_xattr, %if.then.i)) #15
          to label %ovl_do_getxattr.exit [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_getxattr.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.35, ptr noundef %dentry, ptr noundef %4, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %call1.i) #15
  br label %ovl_do_getxattr.exit

ovl_do_getxattr.exit:                             ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp = icmp sgt i32 %call1.i, -1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ovl_check_dir_xattr(ptr nocapture noundef readonly %sb, ptr noundef %dentry, i32 noundef %ox) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #15
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !130
  %1 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dentry, align 8
  %3 = and i32 %2, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %3)
  %4 = icmp eq i32 %3, 2097152
  br i1 %4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %userxattr.i.i = getelementptr inbounds %struct.ovl_fs, ptr %6, i32 0, i32 8, i32 12
  %7 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %userxattr.i.i, align 1, !range !106
  %9 = zext i8 %8 to i32
  %arrayidx1.i.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 %ox, i32 %9
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1.i.i, align 4
  %call1.i = call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %11, ptr noundef nonnull %val, i32 noundef 1) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_getxattr.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_check_dir_xattr, %if.then.i)) #15
          to label %ovl_do_getxattr.exit [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, 0
  %12 = call i32 @llvm.umin.i32(i32 %call1.i, i32 48) #15
  %13 = select i1 %cmp.i, i32 %12, i32 0
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_getxattr.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.35, ptr noundef %dentry, ptr noundef %11, i32 noundef %13, ptr noundef nonnull %val, i32 noundef 1, i32 noundef %call1.i) #15
  br label %ovl_do_getxattr.exit

ovl_do_getxattr.exit:                             ; preds = %if.then.i, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp = icmp eq i32 %call1.i, 1
  br i1 %cmp, label %land.lhs.true, label %ovl_do_getxattr.exit.if.end6_crit_edge

ovl_do_getxattr.exit.if.end6_crit_edge:           ; preds = %ovl_do_getxattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

land.lhs.true:                                    ; preds = %ovl_do_getxattr.exit
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 121, i8 %15)
  %cmp3 = icmp eq i8 %15, 121
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %ovl_do_getxattr.exit.if.end6_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end6 ], [ false, %entry.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #15
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_check_setxattr(ptr nocapture noundef %ofs, ptr noundef %upperdentry, i32 noundef %ox, ptr noundef %value, i32 noundef %size, i32 noundef %xerr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %noxattr = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 11
  %0 = ptrtoint ptr %noxattr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %noxattr, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %userxattr.i.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 12
  %2 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %userxattr.i.i, align 1, !range !106
  %4 = zext i8 %3 to i32
  %arrayidx1.i.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 %ox, i32 %4
  %5 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx1.i.i, align 4
  %call1.i = tail call i32 @vfs_setxattr(ptr noundef nonnull @init_user_ns, ptr noundef %upperdentry, ptr noundef %6, ptr noundef %value, i32 noundef %size, i32 noundef 0) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_setxattr.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_check_setxattr, %if.then.i)) #15
          to label %ovl_do_setxattr.exit [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %7 = tail call i32 @llvm.smin.i32(i32 %size, i32 48) #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_setxattr.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.38, ptr noundef %upperdentry, ptr noundef %6, i32 noundef %7, ptr noundef %value, i32 noundef %size, i32 noundef %call1.i) #15
  br label %ovl_do_setxattr.exit

ovl_do_setxattr.exit:                             ; preds = %if.then.i, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call1.i)
  %cmp = icmp eq i32 %call1.i, -95
  br i1 %cmp, label %do.end, label %ovl_do_setxattr.exit.cleanup_crit_edge

ovl_do_setxattr.exit.cleanup_crit_edge:           ; preds = %ovl_do_setxattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %ovl_do_setxattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %userxattr.i.i, align 1, !range !106
  %10 = zext i8 %9 to i32
  %arrayidx1.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 %ox, i32 %10
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx1.i, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %12) #19
  %13 = ptrtoint ptr %noxattr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %noxattr, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ovl_do_setxattr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %xerr, %do.end ], [ %xerr, %entry.cleanup_crit_edge ], [ %call1.i, %ovl_do_setxattr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_set_impure(ptr nocapture noundef readonly %dentry, ptr noundef %upperdentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %flags.i = getelementptr i8, ptr %5, i32 -8
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %noxattr.i = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %noxattr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %noxattr.i, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  %userxattr.i.i.i = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 12
  %11 = ptrtoint ptr %userxattr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %userxattr.i.i.i, align 1, !range !106
  %13 = zext i8 %12 to i32
  %arrayidx1.i.i.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 3, i32 %13
  %14 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1.i.i.i, align 4
  %call1.i.i = tail call i32 @vfs_setxattr(ptr noundef nonnull @init_user_ns, ptr noundef %upperdentry, ptr noundef %15, ptr noundef nonnull @.str.19, i32 noundef 1, i32 noundef 0) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_setxattr.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_set_impure, %if.then.i.i)) #15
          to label %ovl_do_setxattr.exit.i [label %if.then.i.i], !srcloc !129

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_setxattr.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.38, ptr noundef %upperdentry, ptr noundef %15, i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef 1, i32 noundef %call1.i.i) #15
  br label %ovl_do_setxattr.exit.i

ovl_do_setxattr.exit.i:                           ; preds = %if.then.i.i, %if.end.i
  %16 = zext i32 %call1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call1.i.i, label %ovl_do_setxattr.exit.i.cleanup_crit_edge [
    i32 -95, label %do.end.i
    i32 0, label %ovl_do_setxattr.exit.i.if.then4_crit_edge
  ]

ovl_do_setxattr.exit.i.if.then4_crit_edge:        ; preds = %ovl_do_setxattr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

ovl_do_setxattr.exit.i.cleanup_crit_edge:         ; preds = %ovl_do_setxattr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end.i:                                         ; preds = %ovl_do_setxattr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %userxattr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %userxattr.i.i.i, align 1, !range !106
  %19 = zext i8 %18 to i32
  %arrayidx1.i.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 3, i32 %19
  %20 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx1.i.i, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %21) #19
  %22 = ptrtoint ptr %noxattr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %noxattr.i, align 1
  br label %if.then4

if.then4:                                         ; preds = %do.end.i, %ovl_do_setxattr.exit.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %23 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i, align 8
  %flags.i12 = getelementptr i8, ptr %24, i32 -8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i12) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %ovl_do_setxattr.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ %call1.i.i, %ovl_do_setxattr.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_check_protattr(ptr noundef %inode, ptr noundef %upper) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [33 x i8], align 1
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
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %buf) #15
  %6 = call ptr @memset(ptr %buf, i32 255, i32 33)
  %userxattr.i.i = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 12
  %7 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %userxattr.i.i, align 1, !range !106
  %9 = zext i8 %8 to i32
  %arrayidx1.i.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 7, i32 %9
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1.i.i, align 4
  %call1.i = call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %upper, ptr noundef %11, ptr noundef nonnull %buf, i32 noundef 32) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_getxattr.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_check_protattr, %if.then.i)) #15
          to label %ovl_do_getxattr.exit [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, 0
  %12 = call i32 @llvm.umin.i32(i32 %call1.i, i32 48) #15
  %13 = select i1 %cmp.i, i32 %12, i32 0
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_getxattr.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.35, ptr noundef %upper, ptr noundef %11, i32 noundef %13, ptr noundef nonnull %buf, i32 noundef 32, i32 noundef %call1.i) #15
  br label %ovl_do_getxattr.exit

ovl_do_getxattr.exit:                             ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %ovl_do_getxattr.exit.cleanup_crit_edge, label %if.end

ovl_do_getxattr.exit.cleanup_crit_edge:           ; preds = %ovl_do_getxattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %ovl_do_getxattr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp246.not = icmp eq i32 %call1.i, 0
  br i1 %cmp246.not, label %if.end.if.then17_crit_edge, label %for.body.preheader

if.end.if.then17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then17

for.body.preheader:                               ; preds = %if.end
  %and = and i32 %5, 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %iflags.048 = phi i32 [ %or, %for.inc.for.body_crit_edge ], [ %and, %for.body.preheader ]
  %n.047 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [33 x i8], ptr %buf, i32 0, i32 %n.047
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %15, label %for.body.if.then17_crit_edge [
    i8 97, label %for.body.for.inc_crit_edge
    i8 105, label %if.then10
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.body.if.then17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then17

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.body.for.inc_crit_edge
  %.sink = phi i32 [ 8, %if.then10 ], [ 4, %for.body.for.inc_crit_edge ]
  %or = or i32 %iflags.048, %.sink
  %inc = add nuw nsw i32 %n.047, 1
  %exitcond.not = icmp eq i32 %inc, %call1.i
  br i1 %exitcond.not, label %if.else23, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.then17:                                        ; preds = %for.body.if.then17_crit_edge, %if.end.if.then17_crit_edge
  %call18 = call i32 @___ratelimit(ptr noundef nonnull @ovl_check_protattr._rs, ptr noundef nonnull @__func__.ovl_check_protattr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.cleanup_crit_edge, label %do.end

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %upper, i32 noundef %call1.i) #19
  br label %cleanup

if.else23:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  call void @inode_set_flags(ptr noundef %inode, i32 noundef %or, i32 noundef 12) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else23, %do.end, %if.then17.cleanup_crit_edge, %ovl_do_getxattr.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %buf) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_set_protattr(ptr noundef %inode, ptr noundef %upper, ptr nocapture noundef %fa) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
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
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #15
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %5 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fa, align 4
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %and2 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.end.if.end8.thread_crit_edge

if.end.if.end8.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.thread

if.end.thread:                                    ; preds = %entry
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 97, ptr %buf, align 1
  %and265 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and265)
  %tobool3.not66 = icmp eq i32 %and265, 0
  br i1 %tobool3.not66, label %if.end.thread.if.then10_crit_edge, label %if.end.thread.if.end8.thread_crit_edge

if.end.thread.if.end8.thread_crit_edge:           ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.thread

if.end.thread.if.then10_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then10

if.end8.thread:                                   ; preds = %if.end.thread.if.end8.thread_crit_edge, %if.end.if.end8.thread_crit_edge
  %iflags.068 = phi i32 [ 12, %if.end.thread.if.end8.thread_crit_edge ], [ 8, %if.end.if.end8.thread_crit_edge ]
  %len.067 = phi i32 [ 1, %if.end.thread.if.end8.thread_crit_edge ], [ 0, %if.end.if.end8.thread_crit_edge ]
  %inc5 = add nuw nsw i32 %len.067, 1
  %arrayidx6 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %len.067
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 105, ptr %arrayidx6, align 1
  br label %if.then10

if.then10:                                        ; preds = %if.end8.thread, %if.end.thread.if.then10_crit_edge
  %iflags.153 = phi i32 [ %iflags.068, %if.end8.thread ], [ 4, %if.end.thread.if.then10_crit_edge ]
  %len.151 = phi i32 [ %inc5, %if.end8.thread ], [ 1, %if.end.thread.if.then10_crit_edge ]
  %noxattr.i = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %noxattr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %noxattr.i, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.then10
  %userxattr.i.i.i = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 12
  %11 = ptrtoint ptr %userxattr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %userxattr.i.i.i, align 1, !range !106
  %13 = zext i8 %12 to i32
  %arrayidx1.i.i.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 7, i32 %13
  %14 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1.i.i.i, align 4
  %call1.i.i = call i32 @vfs_setxattr(ptr noundef nonnull @init_user_ns, ptr noundef %upper, ptr noundef %15, ptr noundef nonnull %buf, i32 noundef %len.151, i32 noundef 0) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_setxattr.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_set_protattr, %if.then.i.i)) #15
          to label %ovl_do_setxattr.exit.i [label %if.then.i.i], !srcloc !129

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_setxattr.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.38, ptr noundef %upper, ptr noundef %15, i32 noundef %len.151, ptr noundef nonnull %buf, i32 noundef %len.151, i32 noundef %call1.i.i) #15
  br label %ovl_do_setxattr.exit.i

ovl_do_setxattr.exit.i:                           ; preds = %if.then.i.i, %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call1.i.i)
  %cmp.i = icmp eq i32 %call1.i.i, -95
  br i1 %cmp.i, label %do.end.i, label %ovl_do_setxattr.exit.i.if.end20_crit_edge

ovl_do_setxattr.exit.i.if.end20_crit_edge:        ; preds = %ovl_do_setxattr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

do.end.i:                                         ; preds = %ovl_do_setxattr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %userxattr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %userxattr.i.i.i, align 1, !range !106
  %18 = zext i8 %17 to i32
  %arrayidx1.i.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 7, i32 %18
  %19 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx1.i.i, align 4
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %20) #19
  %21 = ptrtoint ptr %noxattr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %noxattr.i, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %22 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_flags, align 4
  %and12 = and i32 %23, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else.if.end23_crit_edge, label %if.then14

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then14:                                        ; preds = %if.else
  %userxattr.i.i = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 12
  %24 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %userxattr.i.i, align 1, !range !106
  %26 = zext i8 %25 to i32
  %arrayidx1.i.i46 = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 7, i32 %26
  %27 = ptrtoint ptr %arrayidx1.i.i46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx1.i.i46, align 4
  %call1.i = tail call i32 @vfs_removexattr(ptr noundef nonnull @init_user_ns, ptr noundef %upper, ptr noundef %28) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_removexattr.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_set_protattr, %if.then.i)) #15
          to label %ovl_do_removexattr.exit [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_removexattr.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.41, ptr noundef %upper, ptr noundef %28, i32 noundef %call1.i) #15
  br label %ovl_do_removexattr.exit

ovl_do_removexattr.exit:                          ; preds = %if.then.i, %if.then14
  %29 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call1.i, label %ovl_do_removexattr.exit.if.end20_crit_edge [
    i32 -95, label %ovl_do_removexattr.exit.if.end23_crit_edge
    i32 -61, label %ovl_do_removexattr.exit.if.end23_crit_edge72
  ]

ovl_do_removexattr.exit.if.end23_crit_edge72:     ; preds = %ovl_do_removexattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

ovl_do_removexattr.exit.if.end23_crit_edge:       ; preds = %ovl_do_removexattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

ovl_do_removexattr.exit.if.end20_crit_edge:       ; preds = %ovl_do_removexattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.end20:                                         ; preds = %ovl_do_removexattr.exit.if.end20_crit_edge, %ovl_do_setxattr.exit.i.if.end20_crit_edge
  %iflags.152 = phi i32 [ 0, %ovl_do_removexattr.exit.if.end20_crit_edge ], [ %iflags.153, %ovl_do_setxattr.exit.i.if.end20_crit_edge ]
  %err.0 = phi i32 [ %call1.i, %ovl_do_removexattr.exit.if.end20_crit_edge ], [ %call1.i.i, %ovl_do_setxattr.exit.i.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool21.not = icmp eq i32 %err.0, 0
  br i1 %tobool21.not, label %if.end20.if.end23_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.end23:                                         ; preds = %if.end20.if.end23_crit_edge, %ovl_do_removexattr.exit.if.end23_crit_edge, %ovl_do_removexattr.exit.if.end23_crit_edge72, %if.else.if.end23_crit_edge
  %iflags.15257 = phi i32 [ %iflags.152, %if.end20.if.end23_crit_edge ], [ 0, %if.else.if.end23_crit_edge ], [ 0, %ovl_do_removexattr.exit.if.end23_crit_edge ], [ 0, %ovl_do_removexattr.exit.if.end23_crit_edge72 ]
  call void @inode_set_flags(ptr noundef %inode, i32 noundef %iflags.15257, i32 noundef 12) #15
  %30 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fa, align 4
  %and25 = and i32 %31, -49
  store i32 %and25, ptr %fa, align 4
  %fsx_xflags = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %32 = ptrtoint ptr %fsx_xflags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fsx_xflags, align 4
  %and26 = and i32 %33, -25
  store i32 %and26, ptr %fsx_xflags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end20.cleanup_crit_edge, %do.end.i, %if.then10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ %err.0, %if.end20.cleanup_crit_edge ], [ -1, %do.end.i ], [ -1, %if.then10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ovl_inuse_trylock(ptr nocapture noundef readonly %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_lock = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #15
  %i_state = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_state, align 8
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i32 %3, 16384
  %4 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %i_state, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_inuse_unlock(ptr noundef readonly %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dentry, null
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then:                                          ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_lock = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #15
  %i_state = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_state, align 8
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.end, label %if.then.if.end_crit_edge, !prof !113

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 752, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %4 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_state, align 8
  %and24 = and i32 %5, -16385
  store i32 %and24, ptr %i_state, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  br label %if.end26

if.end26:                                         ; preds = %if.end, %entry.if.end26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ovl_is_inuse(ptr nocapture noundef readonly %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_lock = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #15
  %i_state = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_state, align 8
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ovl_need_index(ptr nocapture noundef readonly %dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %numlower.i = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %numlower.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numlower.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %ovl_dentry_lower.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ovl_dentry_lower.exit:                            ; preds = %entry
  %dentry1.i = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry1.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %ovl_dentry_lower.exit.cleanup_crit_edge, label %lor.lhs.false

ovl_dentry_lower.exit.cleanup_crit_edge:          ; preds = %ovl_dentry_lower.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %ovl_dentry_lower.exit
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %6 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %indexdir.i = getelementptr inbounds %struct.ovl_fs, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %indexdir.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %indexdir.i, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %nfs_export.i = getelementptr inbounds %struct.ovl_fs, ptr %9, i32 0, i32 8, i32 9
  %12 = ptrtoint ptr %nfs_export.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nfs_export.i, align 2, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i16 = icmp eq i8 %13, 0
  br i1 %tobool.not.i16, label %if.end.if.end6_crit_edge, label %ovl_index_all.exit

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

ovl_index_all.exit:                               ; preds = %if.end
  %index.i = getelementptr inbounds %struct.ovl_fs, ptr %9, i32 0, i32 8, i32 7
  %14 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %index.i, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.i.not = icmp eq i8 %15, 0
  br i1 %tobool2.i.not, label %ovl_index_all.exit.if.end6_crit_edge, label %ovl_index_all.exit.cleanup_crit_edge

ovl_index_all.exit.cleanup_crit_edge:             ; preds = %ovl_index_all.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ovl_index_all.exit.if.end6_crit_edge:             ; preds = %ovl_index_all.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end6:                                          ; preds = %ovl_index_all.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %5, align 8
  %18 = and i32 %17, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %18)
  %19 = icmp eq i32 %18, 2097152
  br i1 %19, label %if.end6.if.end10_crit_edge, label %land.lhs.true

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end6
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %20 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 12
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp = icmp ugt i32 %24, 1
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true.cleanup_crit_edge, %ovl_index_all.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %ovl_dentry_lower.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end10 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %ovl_dentry_lower.exit.cleanup_crit_edge ], [ true, %ovl_index_all.exit.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_nlink_start(ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !113

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 864, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end23:                                         ; preds = %entry
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata.i.i, align 4
  %numlower.i.i = getelementptr inbounds %struct.ovl_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %numlower.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numlower.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %if.end23.if.end31_crit_edge, label %ovl_dentry_lower.exit.i

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

ovl_dentry_lower.exit.i:                          ; preds = %if.end23
  %dentry1.i.i = getelementptr inbounds %struct.ovl_entry, ptr %3, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %dentry1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry1.i.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %ovl_dentry_lower.exit.i.if.end31_crit_edge, label %lor.lhs.false.i

ovl_dentry_lower.exit.i.if.end31_crit_edge:       ; preds = %ovl_dentry_lower.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

lor.lhs.false.i:                                  ; preds = %ovl_dentry_lower.exit.i
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %8 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %indexdir.i.i = getelementptr inbounds %struct.ovl_fs, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %indexdir.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %indexdir.i.i, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end31_crit_edge, label %if.end.i

lor.lhs.false.i.if.end31_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.end.i:                                         ; preds = %lor.lhs.false.i
  %nfs_export.i.i = getelementptr inbounds %struct.ovl_fs, ptr %11, i32 0, i32 8, i32 9
  %14 = ptrtoint ptr %nfs_export.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nfs_export.i.i, align 2, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i16.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i16.i, label %if.end.i.if.end6.i_crit_edge, label %ovl_index_all.exit.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

ovl_index_all.exit.i:                             ; preds = %if.end.i
  %index.i.i = getelementptr inbounds %struct.ovl_fs, ptr %11, i32 0, i32 8, i32 7
  %16 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %index.i.i, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.i.not.i = icmp eq i8 %17, 0
  br i1 %tobool2.i.not.i, label %ovl_index_all.exit.i.if.end6.i_crit_edge, label %ovl_index_all.exit.i.land.lhs.true_crit_edge

ovl_index_all.exit.i.land.lhs.true_crit_edge:     ; preds = %ovl_index_all.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

ovl_index_all.exit.i.if.end6.i_crit_edge:         ; preds = %ovl_index_all.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.end6.i:                                        ; preds = %ovl_index_all.exit.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %7, align 8
  %20 = and i32 %19, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %20)
  %21 = icmp eq i32 %20, 2097152
  br i1 %21, label %if.end6.i.if.end31_crit_edge, label %land.lhs.true.i

if.end6.i.if.end31_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

land.lhs.true.i:                                  ; preds = %if.end6.i
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %22 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i.i, align 8
  %24 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 12
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i = icmp ugt i32 %26, 1
  br i1 %cmp.i, label %land.lhs.true.i.land.lhs.true_crit_edge, label %land.lhs.true.i.if.end31_crit_edge

land.lhs.true.i.if.end31_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.i.land.lhs.true_crit_edge, %ovl_index_all.exit.i.land.lhs.true_crit_edge
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %3, align 4
  %29 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.i.not = icmp eq i32 %29, 0
  br i1 %tobool.i.i.not, label %if.then26, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then26:                                        ; preds = %land.lhs.true
  %call27 = tail call i32 @ovl_copy_up(ptr noundef %dentry) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.if.end31_crit_edge, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.end31:                                         ; preds = %if.then26.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %land.lhs.true.i.if.end31_crit_edge, %if.end6.i.if.end31_crit_edge, %lor.lhs.false.i.if.end31_crit_edge, %ovl_dentry_lower.exit.i.if.end31_crit_edge, %if.end23.if.end31_crit_edge
  %lock.i = getelementptr i8, ptr %1, i32 792
  %call1.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock.i, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool33.not = icmp eq i32 %call1.i, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %30 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dentry, align 8
  %32 = and i32 %31, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %32)
  %33 = icmp eq i32 %32, 2097152
  br i1 %33, label %if.end35.cleanup_crit_edge, label %lor.lhs.false

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end35
  %flags.i = getelementptr i8, ptr %1, i32 -8
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i, align 4
  %36 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.not = icmp eq i32 %36, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %out

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

out:                                              ; preds = %lor.lhs.false
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %37 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 33
  %39 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i, align 16
  %creator_cred.i = getelementptr inbounds %struct.ovl_fs, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %creator_cred.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %creator_cred.i, align 4
  %call.i = tail call ptr @override_creds(ptr noundef %42) #15
  %call41 = tail call i32 @ovl_set_nlink_upper(ptr noundef %dentry) #15
  tail call void @revert_creds(ptr noundef %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %out.cleanup_crit_edge, label %if.then43

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then43:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %lock.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %out.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ %call27, %if.then26.cleanup_crit_edge ], [ %call1.i, %if.end31.cleanup_crit_edge ], [ %call41, %if.then43 ], [ 0, %out.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_copy_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_set_nlink_upper(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_nlink_end(ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  %name.i = alloca %struct.qstr, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %flags.i = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %8 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %creator_cred.i = getelementptr inbounds %struct.ovl_fs, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %creator_cred.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %creator_cred.i, align 4
  %call.i = tail call ptr @override_creds(ptr noundef %13) #15
  %14 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i, align 16
  %indexdir.i.i = getelementptr inbounds %struct.ovl_fs, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %indexdir.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %indexdir.i.i, align 4
  %d_inode.i7 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %d_inode.i7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i7, align 8
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %22 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_fsdata.i.i, align 4
  %numlower.i.i = getelementptr inbounds %struct.ovl_entry, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %numlower.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %numlower.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %if.then.ovl_dentry_lower.exit.i_crit_edge, label %cond.true.i.i

if.then.ovl_dentry_lower.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %ovl_dentry_lower.exit.i

cond.true.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %dentry1.i.i = getelementptr inbounds %struct.ovl_entry, ptr %23, i32 1, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %dentry1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dentry1.i.i, align 4
  br label %ovl_dentry_lower.exit.i

ovl_dentry_lower.exit.i:                          ; preds = %cond.true.i.i, %if.then.ovl_dentry_lower.exit.i_crit_edge
  %cond.i.i = phi ptr [ %27, %cond.true.i.i ], [ null, %if.then.ovl_dentry_lower.exit.i_crit_edge ]
  %28 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode.i, align 8
  %__upperdentry.i.i.i = getelementptr i8, ptr %29, i32 784
  %30 = ptrtoint ptr %__upperdentry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %__upperdentry.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i) #15
  %32 = call ptr @memset(ptr %name.i, i32 0, i32 16)
  %call5.i = call i32 @ovl_get_index_name(ptr noundef %17, ptr noundef %cond.i.i, ptr noundef nonnull %name.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ovl_dentry_lower.exit.i.do.end40.i_crit_edge

ovl_dentry_lower.exit.i.do.end40.i_crit_edge:     ; preds = %ovl_dentry_lower.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end40.i

if.end.i:                                         ; preds = %ovl_dentry_lower.exit.i
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 5
  %33 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 8
  %37 = and i16 %36, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %37)
  %cmp.i = icmp eq i16 %37, 16384
  br i1 %cmp.i, label %if.end.i.if.end18.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %38 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 12
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp8.not.i = icmp eq i32 %40, 1
  br i1 %cmp8.not.i, label %land.lhs.true.i.if.end18.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  %call11.i = call i32 @___ratelimit(ptr noundef nonnull @ovl_cleanup_index._rs, ptr noundef nonnull @__func__.ovl_cleanup_index) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.then10.i.if.end15.i_crit_edge, label %do.end.i

if.then10.i.if.end15.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i

do.end.i:                                         ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #17
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 11
  %41 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_ino.i, align 8
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %38, align 4
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %31, i32 noundef %42, i32 noundef %44) #19
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end.i, %if.then10.i.if.end15.i_crit_edge
  %45 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %d_inode.i, align 8
  %47 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %38, align 4
  %sub.i = add i32 %48, -1
  call void @set_nlink(ptr noundef %46, i32 noundef %sub.i) #15
  %call17.i = call i32 @ovl_set_nlink_upper(ptr noundef %dentry) #15
  br label %ovl_cleanup_index.exit

if.end18.i:                                       ; preds = %land.lhs.true.i.if.end18.i_crit_edge, %if.end.i.if.end18.i_crit_edge
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 25
  call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #15
  %name19.i = getelementptr inbounds %struct.qstr, ptr %name.i, i32 0, i32 1
  %49 = ptrtoint ptr %name19.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name19.i, align 8
  %51 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %name.i, align 8
  %call20.i = call ptr @lookup_one_len(ptr noundef %50, ptr noundef %19, i32 noundef %52) #15
  %53 = ptrtoint ptr %call20.i to i32
  %cmp.i.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end18.i.if.end33.i_crit_edge, label %if.else.i

if.end18.i.if.end33.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33.i

if.else.i:                                        ; preds = %if.end18.i
  %54 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i68.i = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 33
  %56 = ptrtoint ptr %s_fs_info.i68.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_fs_info.i68.i, align 16
  %nfs_export.i.i = getelementptr inbounds %struct.ovl_fs, ptr %57, i32 0, i32 8, i32 9
  %58 = ptrtoint ptr %nfs_export.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %nfs_export.i.i, align 2, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i69.i = icmp eq i8 %59, 0
  br i1 %tobool.not.i69.i, label %if.else.i.if.else30.i_crit_edge, label %ovl_index_all.exit.i

if.else.i.if.else30.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else30.i

ovl_index_all.exit.i:                             ; preds = %if.else.i
  %index.i.i = getelementptr inbounds %struct.ovl_fs, ptr %57, i32 0, i32 8, i32 7
  %60 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %index.i.i, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool2.i.not.i = icmp eq i8 %61, 0
  br i1 %tobool2.i.not.i, label %ovl_index_all.exit.i.if.else30.i_crit_edge, label %if.then26.i

ovl_index_all.exit.i.if.else30.i_crit_edge:       ; preds = %ovl_index_all.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else30.i

if.then26.i:                                      ; preds = %ovl_index_all.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call29.i = call i32 @ovl_cleanup_and_whiteout(ptr noundef %57, ptr noundef %21, ptr noundef %call20.i) #15
  br label %if.end33.i

if.else30.i:                                      ; preds = %ovl_index_all.exit.i.if.else30.i_crit_edge, %if.else.i.if.else30.i_crit_edge
  %call31.i = call i32 @ovl_cleanup(ptr noundef %21, ptr noundef %call20.i) #15
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else30.i, %if.then26.i, %if.end18.i.if.end33.i_crit_edge
  %index.0.i = phi ptr [ %call20.i, %if.then26.i ], [ %call20.i, %if.else30.i ], [ null, %if.end18.i.if.end33.i_crit_edge ]
  %err.0.i = phi i32 [ %call29.i, %if.then26.i ], [ %call31.i, %if.else30.i ], [ %53, %if.end18.i.if.end33.i_crit_edge ]
  call void @up_write(ptr noundef %i_rwsem.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool34.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool34.not.i, label %if.end33.i.ovl_cleanup_index.exit_crit_edge, label %if.end33.i.do.end40.i_crit_edge

if.end33.i.do.end40.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end40.i

if.end33.i.ovl_cleanup_index.exit_crit_edge:      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ovl_cleanup_index.exit

do.end40.i:                                       ; preds = %if.end33.i.do.end40.i_crit_edge, %ovl_dentry_lower.exit.i.do.end40.i_crit_edge
  %index.2.i = phi ptr [ null, %ovl_dentry_lower.exit.i.do.end40.i_crit_edge ], [ %index.0.i, %if.end33.i.do.end40.i_crit_edge ]
  %err.1.i = phi i32 [ %call5.i, %ovl_dentry_lower.exit.i.do.end40.i_crit_edge ], [ %err.0.i, %if.end33.i.do.end40.i_crit_edge ]
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %dentry, i32 noundef %err.1.i) #19
  br label %ovl_cleanup_index.exit

ovl_cleanup_index.exit:                           ; preds = %do.end40.i, %if.end33.i.ovl_cleanup_index.exit_crit_edge, %if.end15.i
  %index.1.i = phi ptr [ %index.2.i, %do.end40.i ], [ %index.0.i, %if.end33.i.ovl_cleanup_index.exit_crit_edge ], [ null, %if.end15.i ]
  %name37.i = getelementptr inbounds %struct.qstr, ptr %name.i, i32 0, i32 1
  %62 = ptrtoint ptr %name37.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name37.i, align 8
  call void @kfree(ptr noundef %63) #15
  call void @dput(ptr noundef %index.1.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #15
  call void @revert_creds(ptr noundef %call.i) #15
  br label %if.end

if.end:                                           ; preds = %ovl_cleanup_index.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %lock.i = getelementptr i8, ptr %1, i32 792
  call void @mutex_unlock(ptr noundef %lock.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_lock_rename_workdir(ptr noundef %workdir, ptr noundef %upperdir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %workdir, %upperdir
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end:                                           ; preds = %entry
  %call = tail call ptr @lock_rename(ptr noundef %workdir, ptr noundef %upperdir) #15
  %cmp1.not = icmp eq ptr %call, null
  br i1 %cmp1.not, label %if.end.return_crit_edge, label %err_unlock

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

err_unlock:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @unlock_rename(ptr noundef %workdir, ptr noundef %upperdir) #15
  br label %do.end

do.end:                                           ; preds = %err_unlock, %entry.do.end_crit_edge
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #19
  br label %return

return:                                           ; preds = %do.end, %if.end.return_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lock_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_check_metacopy_xattr(ptr nocapture noundef readonly %ofs, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp = icmp eq i16 %4, -32768
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %userxattr.i.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 12
  %5 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %userxattr.i.i, align 1, !range !106
  %7 = zext i8 %6 to i32
  %arrayidx1.i.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1.i.i, align 4
  %call1.i = tail call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %9, ptr noundef null, i32 noundef 0) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_getxattr.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_check_metacopy_xattr, %if.then.i)) #15
          to label %ovl_do_getxattr.exit [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_getxattr.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.35, ptr noundef %dentry, ptr noundef %9, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %call1.i) #15
  br label %ovl_do_getxattr.exit

ovl_do_getxattr.exit:                             ; preds = %if.then.i, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp3 = icmp slt i32 %call1.i, 0
  br i1 %cmp3, label %if.then5, label %ovl_do_getxattr.exit.cleanup_crit_edge

ovl_do_getxattr.exit.cleanup_crit_edge:           ; preds = %ovl_do_getxattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then5:                                         ; preds = %ovl_do_getxattr.exit
  %10 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call1.i, label %if.end11 [
    i32 -61, label %if.then5.cleanup_crit_edge
    i32 -95, label %if.then5.cleanup_crit_edge30
  ]

if.then5.cleanup_crit_edge30:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %if.then5
  %11 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %userxattr.i.i, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp ne i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call1.i)
  %cmp13 = icmp eq i32 %call1.i, -13
  %or.cond = select i1 %tobool.not, i1 %cmp13, i1 false
  br i1 %or.cond, label %if.end11.cleanup_crit_edge, label %out

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

out:                                              ; preds = %if.end11
  %call18 = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_check_metacopy_xattr._rs, ptr noundef nonnull @__func__.ovl_check_metacopy_xattr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %out.cleanup_crit_edge, label %do.end

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call1.i) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %out.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.then5.cleanup_crit_edge30, %ovl_do_getxattr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then5.cleanup_crit_edge ], [ 0, %if.then5.cleanup_crit_edge30 ], [ 0, %if.end11.cleanup_crit_edge ], [ 1, %ovl_do_getxattr.exit.cleanup_crit_edge ], [ %call1.i, %do.end ], [ %call1.i, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ovl_is_metacopy_dentry(ptr nocapture noundef readonly %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata, align 4
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %3, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 4194304
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i, align 8
  %__upperdentry.i.i = getelementptr i8, ptr %5, i32 784
  %6 = ptrtoint ptr %__upperdentry.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %__upperdentry.i.i, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %5, align 8
  %10 = and i16 %9, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %10)
  %cmp.i.i = icmp eq i16 %10, -32768
  br i1 %cmp.i.i, label %ovl_should_check_upperdata.exit.i, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ovl_should_check_upperdata.exit.i:                ; preds = %if.then2
  %lower.i.i.i = getelementptr i8, ptr %5, i32 788
  %11 = ptrtoint ptr %lower.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lower.i.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.not.i, label %ovl_should_check_upperdata.exit.i.cleanup_crit_edge, label %if.end.i

ovl_should_check_upperdata.exit.i.cleanup_crit_edge: ; preds = %ovl_should_check_upperdata.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %ovl_should_check_upperdata.exit.i
  %flags.i.i = getelementptr i8, ptr %5, i32 -8
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i.i, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i, label %if.end.i.cleanup_crit_edge, label %do.end.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !107
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %numlower = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %numlower to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %numlower, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp = icmp ugt i32 %17, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.i, %if.end.i.cleanup_crit_edge, %ovl_should_check_upperdata.exit.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end7 ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.i.cleanup_crit_edge ], [ false, %do.end.i ], [ false, %ovl_should_check_upperdata.exit.i.cleanup_crit_edge ], [ false, %if.then2.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_get_redirect_xattr(ptr nocapture noundef readonly %ofs, ptr noundef %dentry, i32 noundef %padding) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %userxattr.i.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 12
  %0 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %userxattr.i.i, align 1, !range !106
  %2 = zext i8 %1 to i32
  %arrayidx1.i.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 1, i32 %2
  %3 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1.i.i, align 4
  %call1.i = tail call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %4, ptr noundef null, i32 noundef 0) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_getxattr.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_get_redirect_xattr, %if.then.i)) #15
          to label %ovl_do_getxattr.exit [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_getxattr.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.35, ptr noundef %dentry, ptr noundef %4, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %call1.i) #15
  br label %ovl_do_getxattr.exit

ovl_do_getxattr.exit:                             ; preds = %if.then.i, %entry
  %5 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call1.i, label %if.end [
    i32 -61, label %ovl_do_getxattr.exit.cleanup_crit_edge
    i32 -95, label %ovl_do_getxattr.exit.cleanup_crit_edge86
  ]

ovl_do_getxattr.exit.cleanup_crit_edge86:         ; preds = %ovl_do_getxattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ovl_do_getxattr.exit.cleanup_crit_edge:           ; preds = %ovl_do_getxattr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %ovl_do_getxattr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2 = icmp slt i32 %call1.i, 0
  br i1 %cmp2, label %if.end.fail_crit_edge, label %if.end4

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp5 = icmp eq i32 %call1.i, 0
  br i1 %cmp5, label %if.end4.invalid_crit_edge, label %if.end8.i.i

if.end4.invalid_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %invalid

if.end8.i.i:                                      ; preds = %if.end4
  %add = add i32 %call1.i, %padding
  %add8 = add i32 %add, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add8, i32 noundef 3520) #18
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end12

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %if.end8.i.i
  %6 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %userxattr.i.i, align 1, !range !106
  %8 = zext i8 %7 to i32
  %arrayidx1.i.i77 = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 1, i32 %8
  %9 = ptrtoint ptr %arrayidx1.i.i77 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1.i.i77, align 4
  %call1.i78 = tail call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %10, ptr noundef nonnull %call9.i.i, i32 noundef %call1.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_getxattr.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_get_redirect_xattr, %if.then.i80)) #15
          to label %ovl_do_getxattr.exit81 [label %if.then.i80], !srcloc !129

if.then.i80:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i78)
  %cmp.i79 = icmp sgt i32 %call1.i78, 0
  %11 = tail call i32 @llvm.umin.i32(i32 %call1.i78, i32 48) #15
  %12 = select i1 %cmp.i79, i32 %11, i32 0
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_getxattr.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.35, ptr noundef %dentry, ptr noundef %10, i32 noundef %12, ptr noundef nonnull %call9.i.i, i32 noundef %call1.i, i32 noundef %call1.i78) #15
  br label %ovl_do_getxattr.exit81

ovl_do_getxattr.exit81:                           ; preds = %if.then.i80, %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i78)
  %cmp14 = icmp slt i32 %call1.i78, 0
  br i1 %cmp14, label %ovl_do_getxattr.exit81.fail_crit_edge, label %if.end16

ovl_do_getxattr.exit81.fail_crit_edge:            ; preds = %ovl_do_getxattr.exit81
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end16:                                         ; preds = %ovl_do_getxattr.exit81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i78)
  %cmp17 = icmp eq i32 %call1.i78, 0
  br i1 %cmp17, label %if.end16.invalid_crit_edge, label %if.end19

if.end16.invalid_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %invalid

if.end19:                                         ; preds = %if.end16
  %13 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %14)
  %cmp20 = icmp eq i8 %14, 47
  br i1 %cmp20, label %if.end19.for.body_crit_edge, label %if.else

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

for.condthread-pre-split:                         ; preds = %for.body
  %15 = ptrtoint ptr %call26 to i32
  call void @__asan_load1_noabort(i32 %15)
  %.pr = load i8, ptr %call26, align 1
  %cmp24 = icmp eq i8 %.pr, 47
  br i1 %cmp24, label %for.condthread-pre-split.for.body_crit_edge, label %for.condthread-pre-split.cleanup_crit_edge

for.condthread-pre-split.cleanup_crit_edge:       ; preds = %for.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.condthread-pre-split.for.body_crit_edge:      ; preds = %for.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body:                                         ; preds = %for.condthread-pre-split.for.body_crit_edge, %if.end19.for.body_crit_edge
  %s.085 = phi ptr [ %call26, %for.condthread-pre-split.for.body_crit_edge ], [ %call9.i.i, %if.end19.for.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %s.085, i32 1
  %call26 = tail call ptr @strchrnul(ptr noundef %incdec.ptr, i32 noundef 47) #15
  %cmp27 = icmp eq ptr %incdec.ptr, %call26
  br i1 %cmp27, label %for.body.invalid_crit_edge, label %for.condthread-pre-split

for.body.invalid_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %invalid

if.else:                                          ; preds = %if.end19
  %call31 = tail call ptr @strchr(ptr noundef nonnull %call9.i.i, i32 noundef 47)
  %cmp32.not = icmp eq ptr %call31, null
  br i1 %cmp32.not, label %if.else.cleanup_crit_edge, label %if.else.invalid_crit_edge

if.else.invalid_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %invalid

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

invalid:                                          ; preds = %if.else.invalid_crit_edge, %for.body.invalid_crit_edge, %if.end16.invalid_crit_edge, %if.end4.invalid_crit_edge
  %buf.0 = phi ptr [ null, %if.end4.invalid_crit_edge ], [ %call9.i.i, %if.end16.invalid_crit_edge ], [ %call9.i.i, %if.else.invalid_crit_edge ], [ %call9.i.i, %for.body.invalid_crit_edge ]
  %call37 = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_get_redirect_xattr._rs, ptr noundef nonnull @__func__.ovl_get_redirect_xattr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %invalid.err_free_crit_edge, label %do.end

invalid.err_free_crit_edge:                       ; preds = %invalid
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free

do.end:                                           ; preds = %invalid
  call void @__sanitizer_cov_trace_pc() #17
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %buf.0) #19
  br label %err_free

fail:                                             ; preds = %ovl_do_getxattr.exit81.fail_crit_edge, %if.end.fail_crit_edge
  %buf.1 = phi ptr [ null, %if.end.fail_crit_edge ], [ %call9.i.i, %ovl_do_getxattr.exit81.fail_crit_edge ]
  %res.0 = phi i32 [ %call1.i, %if.end.fail_crit_edge ], [ %call1.i78, %ovl_do_getxattr.exit81.fail_crit_edge ]
  %call42 = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_get_redirect_xattr._rs.26, ptr noundef nonnull @__func__.ovl_get_redirect_xattr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %fail.err_free_crit_edge, label %do.end47

fail.err_free_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free

do.end47:                                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #17
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %res.0) #19
  br label %err_free

err_free:                                         ; preds = %do.end47, %fail.err_free_crit_edge, %do.end, %invalid.err_free_crit_edge
  %buf.2 = phi ptr [ %buf.1, %do.end47 ], [ %buf.1, %fail.err_free_crit_edge ], [ %buf.0, %do.end ], [ %buf.0, %invalid.err_free_crit_edge ]
  %res.1 = phi i32 [ %res.0, %do.end47 ], [ %res.0, %fail.err_free_crit_edge ], [ -22, %do.end ], [ -22, %invalid.err_free_crit_edge ]
  tail call void @kfree(ptr noundef %buf.2) #15
  %16 = inttoptr i32 %res.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.else.cleanup_crit_edge, %for.condthread-pre-split.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %ovl_do_getxattr.exit.cleanup_crit_edge, %ovl_do_getxattr.exit.cleanup_crit_edge86
  %retval.0 = phi ptr [ %16, %err_free ], [ null, %ovl_do_getxattr.exit.cleanup_crit_edge ], [ null, %ovl_do_getxattr.exit.cleanup_crit_edge86 ], [ %call9.i.i, %if.else.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ], [ %call9.i.i, %for.condthread-pre-split.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_sync_status(ptr nocapture noundef readonly %ofs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ovl_volatile.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 13
  %0 = ptrtoint ptr %ovl_volatile.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ovl_volatile.i, align 2, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %layers.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 2
  %2 = ptrtoint ptr %layers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layers.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mnt_sb, align 4
  %s_wb_err = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 50
  %errseq = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 21
  %8 = ptrtoint ptr %errseq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %errseq, align 4
  %call4 = tail call i32 @errseq_check(ptr noundef %s_wb_err, i32 noundef %9) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_setxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_removexattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_get_index_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_cleanup_and_whiteout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !55, !57, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !71, !72, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !92, !94, !95}
!llvm.named.register.sp = !{!96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/overlayfs/util.c", i32 259, i32 6}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../fs/overlayfs/util.c", i32 493, i32 34}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/overlayfs/util.c", i32 596, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/overlayfs/util.c", i32 597, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/overlayfs/util.c", i32 598, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/overlayfs/util.c", i32 599, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/overlayfs/util.c", i32 600, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/overlayfs/util.c", i32 601, i32 2}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/overlayfs/util.c", i32 602, i32 2}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/overlayfs/util.c", i32 603, i32 2}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ovl_xattr_table, !29, !"ovl_xattr_table", i1 false, i1 false}
!29 = !{!"../fs/overlayfs/util.c", i32 595, i32 19}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/overlayfs/util.c", i32 618, i32 3}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ovl_check_setxattr._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ovl_check_setxattr._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/overlayfs/util.c", i32 638, i32 63}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/overlayfs/util.c", i32 676, i32 3}
!39 = !{ptr @ovl_check_protattr._rs, !38, !"_rs", i1 false, i1 false}
!40 = !{ptr @__func__.ovl_check_protattr, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ovl_check_protattr._entry, !38, !"_entry", i1 false, i1 false}
!43 = !{ptr @ovl_check_protattr._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/overlayfs/util.c", i32 941, i32 2}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ovl_lock_rename_workdir._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @ovl_lock_rename_workdir._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @ovl_check_metacopy_xattr._rs, !50, !"_rs", i1 false, i1 false}
!50 = !{!"../fs/overlayfs/util.c", i32 970, i32 2}
!51 = !{ptr @__func__.ovl_check_metacopy_xattr, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ovl_check_metacopy_xattr._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @ovl_check_metacopy_xattr._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @ovl_get_redirect_xattr._rs, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../fs/overlayfs/util.c", i32 1027, i32 2}
!57 = !{ptr @__func__.ovl_get_redirect_xattr, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ovl_get_redirect_xattr._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @ovl_get_redirect_xattr._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @ovl_get_redirect_xattr._rs.26, !62, !"_rs", i1 false, i1 false}
!62 = !{!"../fs/overlayfs/util.c", i32 1031, i32 2}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ovl_get_redirect_xattr._entry.27, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @ovl_get_redirect_xattr._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/overlayfs/overlayfs.h", i32 193, i32 2}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ovl_do_getxattr.__UNIQUE_ID_ddebug227, !70, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!75 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/overlayfs/overlayfs.h", i32 204, i32 2}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ovl_do_setxattr.__UNIQUE_ID_ddebug230, !77, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!80 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/overlayfs/overlayfs.h", i32 214, i32 2}
!83 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ovl_do_removexattr.__UNIQUE_ID_ddebug233, !82, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!85 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ovl_cleanup_index._rs, !87, !"_rs", i1 false, i1 false}
!87 = !{!"../fs/overlayfs/util.c", i32 810, i32 3}
!88 = !{ptr @__func__.ovl_cleanup_index, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ovl_cleanup_index._entry, !87, !"_entry", i1 false, i1 false}
!91 = !{ptr @ovl_cleanup_index._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/overlayfs/util.c", i32 850, i32 2}
!94 = !{ptr @ovl_cleanup_index._entry.43, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ovl_cleanup_index._entry_ptr.45, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{!"sp"}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i8 0, i8 2}
!107 = !{i64 2153437461}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{i64 2153437617}
!110 = !{i64 2153438283}
!111 = !{i64 1080923, i64 1080984}
!112 = !{i64 1083655}
!113 = !{!"branch_weights", i32 1, i32 2000}
!114 = !{i64 1083940}
!115 = !{i64 2152519074}
!116 = !{i64 2152518916}
!117 = !{i64 2152519244}
!118 = !{i64 2150105058}
!119 = !{i64 2152521005}
!120 = !{i64 2149997310}
!121 = !{i64 2150002244}
!122 = !{i64 2150023962}
!123 = !{i64 2150028856}
!124 = !{i64 2150105383}
!125 = !{i64 2150105708}
!126 = !{i64 2152532867}
!127 = !{i64 2153440187, i64 2153440671, i64 2153440224, i64 2153440280, i64 2153440314, i64 2153440338, i64 2153440379, i64 2153440400, i64 2153440428, i64 2153440462}
!128 = !{i64 2153441714, i64 2153442198, i64 2153441751, i64 2153441807, i64 2153441841, i64 2153441865, i64 2153441906, i64 2153441927, i64 2153441955, i64 2153441989}
!129 = !{i64 2148500841, i64 2148500846, i64 2148500859, i64 2148500903, i64 2148500937, i64 2148500958}
!130 = !{!"auto-init"}
