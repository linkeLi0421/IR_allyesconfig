; ModuleID = '/llk/IR_all_yes/security/selinux/selinuxfs.c_pt.bc'
source_filename = "../security/selinux/selinuxfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.path = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.17 = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_descr = type { ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.selinux_state = type { i8, i8, i8, i8, [7 x i8], ptr, %struct.mutex, ptr, ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.21 }
%union.anon.21 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.31, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.127 }
%union.anon.127 = type { i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.avc_cache_stats = type { i32, i32, i32, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.selinux_fs_info = type { ptr, i32, ptr, ptr, ptr, i32, i8, ptr, i32, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.128, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.129, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.130, ptr, %struct.address_space, %struct.list_head, %union.anon.131, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.128 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.129 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.130 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.131 = type { ptr }
%struct.inode_security_struct = type { ptr, %struct.list_head, i32, i32, i16, i8, %struct.spinlock }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.119, %struct.list_head, %struct.list_head, %union.anon.120 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.119 = type { %struct.list_head }
%union.anon.120 = type { %struct.hlist_node }
%struct.selinux_load_state = type { ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
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
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.103, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.76 }
%struct.llist_node = type { ptr }
%union.anon.76 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.103 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.83 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.83 = type { %struct.callback_head }
%struct.task_security_struct = type { i32, i32, i32, i32, i32, i32 }
%struct.av_decision = type { i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.policy_load_memory = type { i32, ptr }
%struct.vm_fault = type { %struct.anon.13, i32, ptr, ptr, %union.anon.14, ptr, ptr, ptr, ptr, ptr }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%union.anon.14 = type { i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.125, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.125 = type { %struct.atomic_t }

@__initcall__kmod_selinux__519_2248_init_sel_fs6 = internal global ptr @init_sel_fs, section ".initcall6.init", align 4
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"selinux\00", [24 x i8] zeroinitializer }, align 32
@selinux_null = dso_local local_unnamed_addr global %struct.path zeroinitializer, section ".data..ro_after_init", align 4
@selinuxfs_mount = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@sel_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.8, i32 0, ptr @sel_init_fs_context, ptr null, ptr null, ptr @sel_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"null\00", [27 x i8] zeroinitializer }, align 32
@__const.init_sel_fs.null_name = private unnamed_addr constant { { %struct.anon.17 }, ptr, [4 x i8] } { { %struct.anon.17 } { %struct.anon.17 { i32 4, i32 0 } }, ptr @.str.1, [4 x i8] c"\FF\FF\FF\FF" }, align 8
@selinux_enabled_boot = external dso_local local_unnamed_addr global i32, align 4
@init_sel_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013selinuxfs:  could not mount!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_sel_fs\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"security/selinux/selinuxfs.c\00", [35 x i8] zeroinitializer }, align 32
@init_sel_fs._entry_ptr = internal global ptr @init_sel_fs._entry, section ".printk_index", align 4
@init_sel_fs._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 2240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013selinuxfs:  could not lookup null!\0A\00", [58 x i8] zeroinitializer }, align 32
@init_sel_fs._entry_ptr.7 = internal global ptr @init_sel_fs._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"selinuxfs\00", [22 x i8] zeroinitializer }, align 32
@sel_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr null, ptr null, ptr null, ptr null, ptr @sel_get_tree, ptr null }, [40 x i8] zeroinitializer }, align 32
@sel_fill_super.selinux_files = internal constant { [23 x %struct.tree_descr], [76 x i8] } { [23 x %struct.tree_descr] [%struct.tree_descr zeroinitializer, %struct.tree_descr zeroinitializer, %struct.tree_descr zeroinitializer, %struct.tree_descr { ptr @.str.9, ptr @sel_load_ops, i32 384 }, %struct.tree_descr { ptr @.str.10, ptr @sel_enforce_ops, i32 420 }, %struct.tree_descr { ptr @.str.11, ptr @transaction_ops, i32 438 }, %struct.tree_descr { ptr @.str.12, ptr @transaction_ops, i32 438 }, %struct.tree_descr { ptr @.str.13, ptr @transaction_ops, i32 438 }, %struct.tree_descr { ptr @.str.14, ptr @transaction_ops, i32 438 }, %struct.tree_descr { ptr @.str.15, ptr @transaction_ops, i32 438 }, %struct.tree_descr { ptr @.str.16, ptr @sel_policyvers_ops, i32 292 }, %struct.tree_descr { ptr @.str.17, ptr @sel_commit_bools_ops, i32 128 }, %struct.tree_descr { ptr @.str.18, ptr @sel_mls_ops, i32 292 }, %struct.tree_descr { ptr @.str.19, ptr @sel_disable_ops, i32 128 }, %struct.tree_descr { ptr @.str.20, ptr @transaction_ops, i32 438 }, %struct.tree_descr { ptr @.str.21, ptr @sel_checkreqprot_ops, i32 420 }, %struct.tree_descr zeroinitializer, %struct.tree_descr { ptr @.str.22, ptr @sel_handle_unknown_ops, i32 292 }, %struct.tree_descr { ptr @.str.23, ptr @sel_handle_unknown_ops, i32 292 }, %struct.tree_descr { ptr @.str.24, ptr @sel_handle_status_ops, i32 292 }, %struct.tree_descr { ptr @.str.25, ptr @sel_policy_ops, i32 292 }, %struct.tree_descr { ptr @.str.26, ptr @sel_transition_ops, i32 146 }, %struct.tree_descr { ptr @.str.27, ptr null, i32 0 }], [76 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"load\00", [27 x i8] zeroinitializer }, align 32
@sel_load_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @sel_write_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enforce\00", [24 x i8] zeroinitializer }, align 32
@sel_enforce_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @sel_read_enforce, ptr @sel_write_enforce, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"context\00", [24 x i8] zeroinitializer }, align 32
@transaction_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @simple_transaction_read, ptr @selinux_transaction_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @simple_transaction_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"access\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"create\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"relabel\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"policyvers\00", [21 x i8] zeroinitializer }, align 32
@sel_policyvers_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @sel_read_policyvers, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"commit_pending_bools\00", [43 x i8] zeroinitializer }, align 32
@sel_commit_bools_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @sel_commit_bools_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mls\00", [28 x i8] zeroinitializer }, align 32
@sel_mls_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @sel_read_mls, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@sel_disable_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @sel_write_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"member\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"checkreqprot\00", [19 x i8] zeroinitializer }, align 32
@sel_checkreqprot_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @sel_read_checkreqprot, ptr @sel_write_checkreqprot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reject_unknown\00", [17 x i8] zeroinitializer }, align 32
@sel_handle_unknown_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @sel_read_handle_unknown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"deny_unknown\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@sel_handle_status_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @sel_read_handle_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sel_mmap_handle_status, i32 0, ptr @sel_open_handle_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"policy\00", [25 x i8] zeroinitializer }, align 32
@sel_policy_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @sel_read_policy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sel_mmap_policy, i32 0, ptr @sel_open_policy, ptr null, ptr @sel_release_policy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"validatetrans\00", [18 x i8] zeroinitializer }, align 32
@sel_transition_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @sel_write_validatetrans, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"booleans\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"avc\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ss\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"initial_contexts\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"class\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"policy_capabilities\00", [44 x i8] zeroinitializer }, align 32
@sel_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 2168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013SELinux: failed to load policy capabilities\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sel_fill_super\00", [17 x i8] zeroinitializer }, align 32
@sel_fill_super._entry_ptr = internal global ptr @sel_fill_super._entry, section ".printk_index", align 4
@sel_fill_super._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 2175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013SELinux: %s:  failed while creating inodes\0A\00", [50 x i8] zeroinitializer }, align 32
@sel_fill_super._entry_ptr.38 = internal global ptr @sel_fill_super._entry.36, section ".printk_index", align 4
@selinux_state = external dso_local global %struct.selinux_state, align 4
@sel_write_load._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.sel_write_load = private unnamed_addr constant [15 x i8] c"sel_write_load\00", align 1
@sel_write_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.sel_write_load, ptr @.str.4, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014SELinux: failed to load policy\0A\00", [62 x i8] zeroinitializer }, align 32
@sel_write_load._entry_ptr = internal global ptr @sel_write_load._entry, section ".printk_index", align 4
@sel_write_load._rs.41 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sel_write_load._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @__func__.sel_write_load, ptr @.str.4, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014SELinux: failed to initialize selinuxfs\0A\00", [53 x i8] zeroinitializer }, align 32
@sel_write_load._entry_ptr.44 = internal global ptr @sel_write_load._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"auid=%u ses=%u lsm=selinux res=1\00", [63 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@selinux_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@simple_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"/%s/%s\00", [25 x i8] zeroinitializer }, align 32
@sel_make_bools._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.sel_make_bools = private unnamed_addr constant [15 x i8] c"sel_make_bools\00", align 1
@sel_make_bools._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @__func__.sel_make_bools, ptr @.str.4, i32 1469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014SELinux: no sid found, defaulting to security isid for %s\0A\00", [35 x i8] zeroinitializer }, align 32
@sel_make_bools._entry_ptr = internal global ptr @sel_make_bools._entry, section ".printk_index", align 4
@sel_bool_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @sel_read_bool, ptr @sel_write_bool, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d %d\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"index\00", [26 x i8] zeroinitializer }, align 32
@sel_class_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @sel_read_class, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"perms\00", [26 x i8] zeroinitializer }, align 32
@sel_perm_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @sel_read_perm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"enforcing=%d old_enforcing=%d auid=%u ses=%u enabled=1 old-enabled=1 lsm=selinux res=1\00", [41 x i8] zeroinitializer }, align 32
@write_op = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sel_write_context, ptr @sel_write_access, ptr @sel_write_create, ptr @sel_write_relabel, ptr @sel_write_user, ptr null, ptr null, ptr null, ptr null, ptr @sel_write_member], [36 x i8] zeroinitializer }, align 32
@sel_write_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013SELinux: %s:  context size (%u) exceeds payload max\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sel_write_context\00", [46 x i8] zeroinitializer }, align 32
@sel_write_context._entry_ptr = internal global ptr @sel_write_context._entry, section ".printk_index", align 4
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s %s %hu\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%x %x %x %x %u %x\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s %s %hu %s\00", [19 x i8] zeroinitializer }, align 32
@sel_write_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.61, ptr @.str.4, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sel_write_create\00", [47 x i8] zeroinitializer }, align 32
@sel_write_create._entry_ptr = internal global ptr @sel_write_create._entry, section ".printk_index", align 4
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@sel_write_member._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.64, ptr @.str.4, i32 1240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sel_write_member\00", [47 x i8] zeroinitializer }, align 32
@sel_write_member._entry_ptr = internal global ptr @sel_write_member._entry, section ".printk_index", align 4
@sel_write_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013SELinux:  Runtime disable is deprecated, use selinux=0 on the kernel cmdline.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sel_write_disable\00", [46 x i8] zeroinitializer }, align 32
@sel_write_disable._entry_ptr = internal global ptr @sel_write_disable._entry, section ".printk_index", align 4
@.str.67 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"enforcing=%d old_enforcing=%d auid=%u ses=%u enabled=0 old-enabled=1 lsm=selinux res=1\00", [41 x i8] zeroinitializer }, align 32
@sel_write_checkreqprot.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sel_write_checkreqprot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"\014SELinux: %s (%d) set checkreqprot to 1. This is deprecated and will be rejected in a future kernel release.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sel_write_checkreqprot\00", [41 x i8] zeroinitializer }, align 32
@sel_write_checkreqprot._entry_ptr = internal global ptr @sel_write_checkreqprot._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@sel_mmap_policy_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sel_mmap_policy_fault, ptr null, ptr null, ptr null, ptr @sel_mmap_policy_fault, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@sel_make_avc_files.files = internal constant { [3 x %struct.tree_descr], [60 x i8] } { [3 x %struct.tree_descr] [%struct.tree_descr { ptr @.str.72, ptr @sel_avc_cache_threshold_ops, i32 420 }, %struct.tree_descr { ptr @.str.73, ptr @sel_avc_hash_stats_ops, i32 292 }, %struct.tree_descr { ptr @.str.74, ptr @sel_avc_cache_stats_ops, i32 292 }], [60 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cache_threshold\00", [16 x i8] zeroinitializer }, align 32
@sel_avc_cache_threshold_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @sel_read_avc_cache_threshold, ptr @sel_write_avc_cache_threshold, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hash_stats\00", [21 x i8] zeroinitializer }, align 32
@sel_avc_hash_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @sel_read_avc_hash_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cache_stats\00", [20 x i8] zeroinitializer }, align 32
@sel_avc_cache_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sel_open_avc_cache_stats, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sel_avc_cache_stats_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @sel_avc_stats_seq_start, ptr @sel_avc_stats_seq_stop, ptr @sel_avc_stats_seq_next, ptr @sel_avc_stats_seq_show }, [16 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@avc_cache_stats = external dso_local global %struct.avc_cache_stats, section ".data..percpu", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.76 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"lookups hits misses allocations reclaims frees\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%u %u %u %u %u %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sidtab_hash_stats\00", [46 x i8] zeroinitializer }, align 32
@sel_sidtab_hash_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @sel_read_sidtab_hash_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sel_initcon_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @sel_read_initcon, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@selinux_policycap_names = external dso_local local_unnamed_addr global [7 x ptr], align 4
@sel_policycap_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @sel_read_policycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2253, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"sel_fs_type\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2203, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2214, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2233, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2240, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2204, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"sel_context_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2187, i32 43 }
@___asan_gen_.113 = private unnamed_addr constant [14 x i8] c"selinux_files\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2063, i32 33 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2064, i32 17 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"sel_load_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 671, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2065, i32 20 }
@___asan_gen_.125 = private unnamed_addr constant [16 x i8] c"sel_enforce_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 198, i32 37 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2066, i32 20 }
@___asan_gen_.131 = private unnamed_addr constant [16 x i8] c"transaction_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 895, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2067, i32 19 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2068, i32 19 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2069, i32 20 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2070, i32 17 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2071, i32 23 }
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"sel_policyvers_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 349, i32 37 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2072, i32 25 }
@___asan_gen_.155 = private unnamed_addr constant [21 x i8] c"sel_commit_bools_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1409, i32 37 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2073, i32 16 }
@___asan_gen_.161 = private unnamed_addr constant [12 x i8] c"sel_mls_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 385, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2074, i32 20 }
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"sel_disable_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 334, i32 37 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2075, i32 19 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2076, i32 25 }
@___asan_gen_.176 = private unnamed_addr constant [21 x i8] c"sel_checkreqprot_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 771, i32 37 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2077, i32 27 }
@___asan_gen_.182 = private unnamed_addr constant [23 x i8] c"sel_handle_unknown_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 220, i32 37 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2078, i32 25 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2079, i32 19 }
@___asan_gen_.191 = private unnamed_addr constant [22 x i8] c"sel_handle_status_ops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 272, i32 37 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2080, i32 19 }
@___asan_gen_.197 = private unnamed_addr constant [15 x i8] c"sel_policy_ops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 519, i32 37 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2081, i32 27 }
@___asan_gen_.203 = private unnamed_addr constant [19 x i8] c"sel_transition_ops\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 851, i32 37 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2083, i32 19 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2095, i32 43 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2123, i32 36 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2131, i32 36 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2141, i32 36 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2151, i32 44 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2158, i32 48 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2168, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2174, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 646, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 652, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 662, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 230, i32 6 }
@___asan_gen_.270 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 214, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 156, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1457, i32 35 }
@___asan_gen_.278 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1468, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant [13 x i8] c"sel_bool_ops\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1356, i32 37 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1292, i32 38 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1341, i32 19 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1918, i32 29 }
@___asan_gen_.299 = private unnamed_addr constant [14 x i8] c"sel_class_ops\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1829, i32 37 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1932, i32 29 }
@___asan_gen_.305 = private unnamed_addr constant [13 x i8] c"sel_perm_ops\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1843, i32 37 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 174, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant [9 x i8] c"write_op\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 865, i32 24 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 700, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 935, i32 18 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 949, i32 6 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 995, i32 22 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1048, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1153, i32 18 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1164, i32 24 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1239, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 295, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 318, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 758, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant [20 x i8] c"sel_mmap_policy_ops\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 498, i32 42 }
@___asan_gen_.375 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1160, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 271, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1686, i32 33 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1687, i32 5 }
@___asan_gen_.386 = private unnamed_addr constant [28 x i8] c"sel_avc_cache_threshold_ops\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1599, i32 37 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1689, i32 5 }
@___asan_gen_.392 = private unnamed_addr constant [23 x i8] c"sel_avc_hash_stats_ops\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1605, i32 37 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1691, i32 5 }
@___asan_gen_.398 = private unnamed_addr constant [24 x i8] c"sel_avc_cache_stats_ops\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1673, i32 37 }
@___asan_gen_.401 = private unnamed_addr constant [28 x i8] c"sel_avc_cache_stats_seq_ops\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1661, i32 36 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1646, i32 5 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1651, i32 19 }
@___asan_gen_.410 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1723, i32 5 }
@___asan_gen_.413 = private unnamed_addr constant [26 x i8] c"sel_sidtab_hash_stats_ops\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1594, i32 37 }
@___asan_gen_.416 = private unnamed_addr constant [16 x i8] c"sel_initcon_ops\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1766, i32 37 }
@___asan_gen_.419 = private unnamed_addr constant [18 x i8] c"sel_policycap_ops\00", align 1
@___asan_gen_.420 = private constant [32 x i8] c"../security/selinux/selinuxfs.c\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1863, i32 37 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @__initcall__kmod_selinux__519_2248_init_sel_fs6, ptr @init_sel_fs._entry, ptr @init_sel_fs._entry.5, ptr @init_sel_fs._entry_ptr, ptr @init_sel_fs._entry_ptr.7, ptr @sel_fill_super._entry, ptr @sel_fill_super._entry.36, ptr @sel_fill_super._entry_ptr, ptr @sel_fill_super._entry_ptr.38, ptr @sel_make_bools._entry, ptr @sel_make_bools._entry_ptr, ptr @sel_write_checkreqprot._entry, ptr @sel_write_checkreqprot._entry_ptr, ptr @sel_write_context._entry, ptr @sel_write_context._entry_ptr, ptr @sel_write_create._entry, ptr @sel_write_create._entry_ptr, ptr @sel_write_disable._entry, ptr @sel_write_disable._entry_ptr, ptr @sel_write_load._entry, ptr @sel_write_load._entry.42, ptr @sel_write_load._entry_ptr, ptr @sel_write_load._entry_ptr.44, ptr @sel_write_member._entry, ptr @sel_write_member._entry_ptr, ptr @.str, ptr @sel_fs_type, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @sel_context_ops, ptr @sel_fill_super.selinux_files, ptr @.str.9, ptr @sel_load_ops, ptr @.str.10, ptr @sel_enforce_ops, ptr @.str.11, ptr @transaction_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @sel_policyvers_ops, ptr @.str.17, ptr @sel_commit_bools_ops, ptr @.str.18, ptr @sel_mls_ops, ptr @.str.19, ptr @sel_disable_ops, ptr @.str.20, ptr @.str.21, ptr @sel_checkreqprot_ops, ptr @.str.22, ptr @sel_handle_unknown_ops, ptr @.str.23, ptr @.str.24, ptr @sel_handle_status_ops, ptr @.str.25, ptr @sel_policy_ops, ptr @.str.26, ptr @sel_transition_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @sel_write_load._rs, ptr @.str.39, ptr @.str.40, ptr @sel_write_load._rs.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @sel_make_bools._rs, ptr @.str.50, ptr @sel_bool_ops, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @sel_class_ops, ptr @.str.54, ptr @sel_perm_ops, ptr @.str.55, ptr @write_op, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @sel_mmap_policy_ops, ptr @.str.70, ptr @.str.71, ptr @sel_make_avc_files.files, ptr @.str.72, ptr @sel_avc_cache_threshold_ops, ptr @.str.73, ptr @sel_avc_hash_stats_ops, ptr @.str.74, ptr @sel_avc_cache_stats_ops, ptr @sel_avc_cache_stats_seq_ops, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @sel_sidtab_hash_stats_ops, ptr @sel_initcon_ops, ptr @sel_policycap_ops], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sel_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sel_fs._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_fill_super.selinux_files to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_load_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_enforce_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transaction_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_policyvers_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_commit_bools_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_mls_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_disable_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_checkreqprot_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_handle_unknown_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_handle_status_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_policy_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_transition_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_fill_super._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_write_load._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_write_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_write_load._rs.41 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_write_load._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_make_bools._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_make_bools._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_bool_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_class_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_perm_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_op to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_write_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_write_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_write_member._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_write_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_write_checkreqprot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_mmap_policy_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_make_avc_files.files to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_avc_cache_threshold_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_avc_hash_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_avc_cache_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_avc_cache_stats_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_sidtab_hash_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_initcon_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_policycap_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_sel_fs() #0 section ".init.text" align 64 {
entry:
  %null_name = alloca %struct.qstr, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %null_name) #18
  %0 = call ptr @memcpy(ptr %null_name, ptr @__const.init_sel_fs.null_name, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_enabled_boot to i32))
  %1 = load i32, ptr @selinux_enabled_boot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %2 = load ptr, ptr @fs_kobj, align 4
  %call = tail call i32 @sysfs_create_mount_point(ptr noundef %2, ptr noundef nonnull @.str) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @register_filesystem(ptr noundef nonnull @sel_fs_type) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %3 = load ptr, ptr @fs_kobj, align 4
  tail call void @sysfs_remove_mount_point(ptr noundef %3, ptr noundef nonnull @.str) #18
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = tail call ptr @kern_mount(ptr noundef nonnull @sel_fs_type) #18
  store ptr %call8, ptr @selinuxfs_mount, align 4
  store ptr %call8, ptr @selinux_null, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #21
  %4 = load ptr, ptr @selinuxfs_mount, align 4
  %5 = ptrtoint ptr %4 to i32
  store ptr null, ptr @selinuxfs_mount, align 4
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end7.if.end13_crit_edge
  %err.0 = phi i32 [ %5, %do.end ], [ 0, %if.end7.if.end13_crit_edge ]
  %6 = load ptr, ptr @selinux_null, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call14 = call ptr @d_hash_and_lookup(ptr noundef %8, ptr noundef nonnull %null_name) #18
  store ptr %call14, ptr getelementptr inbounds (%struct.path, ptr @selinux_null, i32 0, i32 1), align 4
  %cmp.i29 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %do.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #21
  %9 = load ptr, ptr getelementptr inbounds (%struct.path, ptr @selinux_null, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %9 to i32
  store ptr null, ptr getelementptr inbounds (%struct.path, ptr @selinux_null, i32 0, i32 1), align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end13.cleanup_crit_edge, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %10, %do.end19 ], [ %err.0, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %null_name) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_sel_fs() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %0 = load ptr, ptr @fs_kobj, align 4
  tail call void @sysfs_remove_mount_point(ptr noundef %0, ptr noundef nonnull @.str) #18
  %1 = load ptr, ptr getelementptr inbounds (%struct.path, ptr @selinux_null, i32 0, i32 1), align 4
  tail call void @dput(ptr noundef %1) #18
  %2 = load ptr, ptr @selinuxfs_mount, align 4
  tail call void @kern_unmount(ptr noundef %2) #18
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @sel_fs_type) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kern_unmount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_hash_and_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sel_init_fs_context(ptr nocapture noundef writeonly %fc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @sel_context_ops, ptr %fc, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sel_kill_sb(ptr noundef %sb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.selinux_fs_info_free.exit_crit_edge, label %for.cond.preheader.i

entry.selinux_fs_info_free.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %selinux_fs_info_free.exit

for.cond.preheader.i:                             ; preds = %entry
  %bool_num.i = getelementptr inbounds %struct.selinux_fs_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bool_num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bool_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.not.i = icmp eq i32 %3, 0
  br i1 %cmp12.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %bool_pending_names.i = getelementptr inbounds %struct.selinux_fs_info, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %bool_pending_names.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bool_pending_names.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %i.013.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %7) #18
  %inc.i = add nuw i32 %i.013.i, 1
  %8 = ptrtoint ptr %bool_num.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bool_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %bool_pending_names1.i = getelementptr inbounds %struct.selinux_fs_info, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %bool_pending_names1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bool_pending_names1.i, align 4
  tail call void @kfree(ptr noundef %11) #18
  %bool_pending_values.i = getelementptr inbounds %struct.selinux_fs_info, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %bool_pending_values.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bool_pending_values.i, align 4
  tail call void @kfree(ptr noundef %13) #18
  br label %selinux_fs_info_free.exit

selinux_fs_info_free.exit:                        ; preds = %for.end.i, %entry.selinux_fs_info_free.exit_crit_edge
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @kfree(ptr noundef %15) #18
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %s_fs_info.i, align 16
  tail call void @kill_litter_super(ptr noundef %sb) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_get_tree(ptr noundef %fc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_single(ptr noundef %fc, ptr noundef nonnull @sel_fill_super) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_single(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_fill_super(ptr noundef %sb, ptr nocapture noundef readnone %fc) #1 align 64 {
entry:
  %tmp.i.i186 = alloca %struct.timespec64, align 8
  %tmp.i.i169 = alloca %struct.timespec64, align 8
  %tmp.i.i152 = alloca %struct.timespec64, align 8
  %tmp.i.i = alloca %struct.timespec64, align 8
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 44) #22
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.do.end81_crit_edge, label %if.end

entry.do.end81_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end81

if.end:                                           ; preds = %entry
  %last_ino.i = getelementptr inbounds %struct.selinux_fs_info, ptr %call7.i.i.i, i32 0, i32 8
  %1 = ptrtoint ptr %last_ino.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 21, ptr %last_ino.i, align 8
  %state.i = getelementptr inbounds %struct.selinux_fs_info, ptr %call7.i.i.i, i32 0, i32 9
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @selinux_state, ptr %state.i, align 4
  %sb1.i = getelementptr inbounds %struct.selinux_fs_info, ptr %call7.i.i.i, i32 0, i32 10
  %3 = ptrtoint ptr %sb1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sb, ptr %sb1.i, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %s_fs_info.i, align 16
  %call1 = tail call i32 @simple_fill_super(ptr noundef %sb, i32 noundef -109248628, ptr noundef nonnull @sel_fill_super.selinux_files) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.do.end81_crit_edge

if.end.do.end81_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end81

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %7 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_root, align 64
  %last_ino = getelementptr inbounds %struct.selinux_fs_info, ptr %6, i32 0, i32 8
  %call5 = tail call fastcc ptr @sel_make_dir(ptr noundef %8, ptr noundef nonnull @.str.28, ptr noundef %last_ino)
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %6, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %call5 to i32
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %6, align 4
  br label %do.end81

if.end12:                                         ; preds = %if.end4
  %12 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_root, align 64
  %call14 = tail call ptr @d_alloc_name(ptr noundef %13, ptr noundef nonnull @.str.1) #18
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end12.do.end81_crit_edge, label %if.end17

if.end12.do.end81_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end81

if.end17:                                         ; preds = %if.end12
  %call.i = tail call ptr @new_inode(ptr noundef %sb) #18
  %tobool.not.i140 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i140, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dput(ptr noundef nonnull %call14) #18
  br label %do.end81

if.end21:                                         ; preds = %if.end17
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 8630, ptr %call.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #18
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %call.i) #18
  %15 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #18
  %16 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %17 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  %18 = ptrtoint ptr %last_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_ino, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %last_ino, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 11
  %20 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc, ptr %i_ino, align 8
  %i_security.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_security.i, align 4
  %tobool.not.i142 = icmp eq ptr %22, null
  br i1 %tobool.not.i142, label %if.end21.selinux_inode.exit_crit_edge, label %if.end.i143, !prof !248

if.end21.selinux_inode.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  br label %selinux_inode.exit

if.end.i143:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @selinux_blob_sizes, i32 0, i32 2) to i32))
  %23 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @selinux_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %23
  br label %selinux_inode.exit

selinux_inode.exit:                               ; preds = %if.end.i143, %if.end21.selinux_inode.exit_crit_edge
  %retval.0.i144 = phi ptr [ %add.ptr.i, %if.end.i143 ], [ null, %if.end21.selinux_inode.exit_crit_edge ]
  %sid = getelementptr inbounds %struct.inode_security_struct, ptr %retval.0.i144, i32 0, i32 3
  %24 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 27, ptr %sid, align 4
  %sclass = getelementptr inbounds %struct.inode_security_struct, ptr %retval.0.i144, i32 0, i32 4
  %25 = ptrtoint ptr %sclass to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 11, ptr %sclass, align 4
  %initialized = getelementptr inbounds %struct.inode_security_struct, ptr %retval.0.i144, i32 0, i32 5
  %26 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %initialized, align 2
  call void @init_special_inode(ptr noundef nonnull %call.i, i16 noundef zeroext 8630, i32 noundef 1048579) #18
  call void @d_add(ptr noundef nonnull %call14, ptr noundef nonnull %call.i) #18
  %27 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_root, align 64
  %call26 = call fastcc ptr @sel_make_dir(ptr noundef %28, ptr noundef nonnull @.str.29, ptr noundef %last_ino)
  %cmp.i145 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %if.then28, label %if.end30

if.then28:                                        ; preds = %selinux_inode.exit
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %call26 to i32
  br label %do.end81

if.end30:                                         ; preds = %selinux_inode.exit
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %call26, i32 0, i32 9
  %30 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i146 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %s_fs_info.i146 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i146, align 16
  %last_ino.i147 = getelementptr inbounds %struct.selinux_fs_info, ptr %33, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end6.i.for.body.i_crit_edge, %if.end30
  %i.01.i = phi i32 [ 0, %if.end30 ], [ %inc9.i, %if.end6.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [3 x %struct.tree_descr], ptr @sel_make_avc_files.files, i32 0, i32 %i.01.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %call.i148 = call ptr @d_alloc_name(ptr noundef %call26, ptr noundef %35) #18
  %tobool.not.i149 = icmp eq ptr %call.i148, null
  br i1 %tobool.not.i149, label %for.body.i.sel_make_avc_files.exit_crit_edge, label %if.end.i150

for.body.i.sel_make_avc_files.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sel_make_avc_files.exit

if.end.i150:                                      ; preds = %for.body.i
  %36 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d_sb.i, align 4
  %mode.i = getelementptr [3 x %struct.tree_descr], ptr @sel_make_avc_files.files, i32 0, i32 %i.01.i, i32 2
  %38 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mode.i, align 4
  %call.i.i = call ptr @new_inode(ptr noundef %37) #18
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #20
  call void @dput(ptr noundef nonnull %call.i148) #18
  br label %sel_make_avc_files.exit

if.end6.i:                                        ; preds = %if.end.i150
  %40 = trunc i32 %39 to i16
  %conv.i.i = or i16 %40, -32768
  %41 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i.i, ptr %call.i.i, align 8
  %i_atime.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 15
  %i_mtime.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 16
  %i_ctime.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #18
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i, ptr noundef nonnull %call.i.i) #18
  %42 = call ptr @memcpy(ptr %i_ctime.i.i, ptr %tmp.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #18
  %43 = call ptr @memcpy(ptr %i_mtime.i.i, ptr %i_ctime.i.i, i32 16)
  %44 = call ptr @memcpy(ptr %i_atime.i.i, ptr %i_ctime.i.i, i32 16)
  %ops.i = getelementptr [3 x %struct.tree_descr], ptr @sel_make_avc_files.files, i32 0, i32 %i.01.i, i32 1
  %45 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i, align 4
  %47 = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 44
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %47, align 8
  %49 = ptrtoint ptr %last_ino.i147 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %last_ino.i147, align 4
  %inc.i = add i32 %50, 1
  store i32 %inc.i, ptr %last_ino.i147, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 11
  %51 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %inc.i, ptr %i_ino.i, align 8
  call void @d_add(ptr noundef nonnull %call.i148, ptr noundef nonnull %call.i.i) #18
  %inc9.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc9.i, 3
  br i1 %exitcond.not.i, label %if.end6.i.sel_make_avc_files.exit_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

if.end6.i.sel_make_avc_files.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sel_make_avc_files.exit

sel_make_avc_files.exit:                          ; preds = %if.end6.i.sel_make_avc_files.exit_crit_edge, %if.then5.i, %for.body.i.sel_make_avc_files.exit_crit_edge
  %52 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_root, align 64
  %call34 = call fastcc ptr @sel_make_dir(ptr noundef %53, ptr noundef nonnull @.str.30, ptr noundef %last_ino)
  %cmp.i151 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.then36, label %if.end38

if.then36:                                        ; preds = %sel_make_avc_files.exit
  call void @__sanitizer_cov_trace_pc() #20
  %54 = ptrtoint ptr %call34 to i32
  br label %do.end81

if.end38:                                         ; preds = %sel_make_avc_files.exit
  %d_sb.i153 = getelementptr inbounds %struct.dentry, ptr %call34, i32 0, i32 9
  %55 = ptrtoint ptr %d_sb.i153 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %d_sb.i153, align 4
  %s_fs_info.i154 = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 33
  %57 = ptrtoint ptr %s_fs_info.i154 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info.i154, align 16
  %call.i155 = call ptr @d_alloc_name(ptr noundef %call34, ptr noundef nonnull @.str.78) #18
  %tobool.not.i156 = icmp eq ptr %call.i155, null
  br i1 %tobool.not.i156, label %if.end38.do.end81_crit_edge, label %if.end.i159

if.end38.do.end81_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end81

if.end.i159:                                      ; preds = %if.end38
  %59 = ptrtoint ptr %d_sb.i153 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %d_sb.i153, align 4
  %call.i.i157 = call ptr @new_inode(ptr noundef %60) #18
  %tobool.not.i.i158 = icmp eq ptr %call.i.i157, null
  br i1 %tobool.not.i.i158, label %if.then5.i160, label %if.end42

if.then5.i160:                                    ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #20
  call void @dput(ptr noundef nonnull %call.i155) #18
  br label %do.end81

if.end42:                                         ; preds = %if.end.i159
  %61 = ptrtoint ptr %call.i.i157 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -32476, ptr %call.i.i157, align 8
  %i_atime.i.i161 = getelementptr inbounds %struct.inode, ptr %call.i.i157, i32 0, i32 15
  %i_mtime.i.i162 = getelementptr inbounds %struct.inode, ptr %call.i.i157, i32 0, i32 16
  %i_ctime.i.i163 = getelementptr inbounds %struct.inode, ptr %call.i.i157, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i152) #18
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i152, ptr noundef nonnull %call.i.i157) #18
  %62 = call ptr @memcpy(ptr %i_ctime.i.i163, ptr %tmp.i.i152, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i152) #18
  %63 = call ptr @memcpy(ptr %i_mtime.i.i162, ptr %i_ctime.i.i163, i32 16)
  %64 = call ptr @memcpy(ptr %i_atime.i.i161, ptr %i_ctime.i.i163, i32 16)
  %65 = getelementptr inbounds %struct.inode, ptr %call.i.i157, i32 0, i32 44
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @sel_sidtab_hash_stats_ops, ptr %65, align 8
  %last_ino.i164 = getelementptr inbounds %struct.selinux_fs_info, ptr %58, i32 0, i32 8
  %67 = ptrtoint ptr %last_ino.i164 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %last_ino.i164, align 4
  %inc.i165 = add i32 %68, 1
  store i32 %inc.i165, ptr %last_ino.i164, align 4
  %i_ino.i166 = getelementptr inbounds %struct.inode, ptr %call.i.i157, i32 0, i32 11
  %69 = ptrtoint ptr %i_ino.i166 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %inc.i165, ptr %i_ino.i166, align 8
  call void @d_add(ptr noundef nonnull %call.i155, ptr noundef nonnull %call.i.i157) #18
  %70 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_root, align 64
  %call45 = call fastcc ptr @sel_make_dir(ptr noundef %71, ptr noundef nonnull @.str.31, ptr noundef %last_ino)
  %cmp.i168 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  %72 = ptrtoint ptr %call45 to i32
  br label %do.end81

if.end49:                                         ; preds = %if.end42
  %d_sb.i170 = getelementptr inbounds %struct.dentry, ptr %call45, i32 0, i32 9
  br label %for.body.i173

for.body.i173:                                    ; preds = %for.inc.i.for.body.i173_crit_edge, %if.end49
  %i.023.i = phi i32 [ 1, %if.end49 ], [ %inc.i181, %for.inc.i.for.body.i173_crit_edge ]
  %call.i171 = call ptr @security_get_initial_sid_context(i32 noundef %i.023.i) #18
  %tobool.not.i172 = icmp eq ptr %call.i171, null
  br i1 %tobool.not.i172, label %for.body.i173.for.inc.i_crit_edge, label %if.end.i174

for.body.i173.for.inc.i_crit_edge:                ; preds = %for.body.i173
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.end.i174:                                      ; preds = %for.body.i173
  %call1.i = call ptr @d_alloc_name(ptr noundef %call45, ptr noundef nonnull %call.i171) #18
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i174.do.end81_crit_edge, label %if.end4.i

if.end.i174.do.end81_crit_edge:                   ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end81

if.end4.i:                                        ; preds = %if.end.i174
  %73 = ptrtoint ptr %d_sb.i170 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %d_sb.i170, align 4
  %call.i.i175 = call ptr @new_inode(ptr noundef %74) #18
  %tobool.not.i.i176 = icmp eq ptr %call.i.i175, null
  br i1 %tobool.not.i.i176, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @dput(ptr noundef nonnull %call1.i) #18
  br label %do.end81

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  %75 = ptrtoint ptr %call.i.i175 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 -32476, ptr %call.i.i175, align 8
  %i_atime.i.i177 = getelementptr inbounds %struct.inode, ptr %call.i.i175, i32 0, i32 15
  %i_mtime.i.i178 = getelementptr inbounds %struct.inode, ptr %call.i.i175, i32 0, i32 16
  %i_ctime.i.i179 = getelementptr inbounds %struct.inode, ptr %call.i.i175, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i169) #18
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i169, ptr noundef nonnull %call.i.i175) #18
  %76 = call ptr @memcpy(ptr %i_ctime.i.i179, ptr %tmp.i.i169, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i169) #18
  %77 = call ptr @memcpy(ptr %i_mtime.i.i178, ptr %i_ctime.i.i179, i32 16)
  %78 = call ptr @memcpy(ptr %i_atime.i.i177, ptr %i_ctime.i.i179, i32 16)
  %79 = getelementptr inbounds %struct.inode, ptr %call.i.i175, i32 0, i32 44
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @sel_initcon_ops, ptr %79, align 8
  %or.i = or i32 %i.023.i, 16777216
  %i_ino.i180 = getelementptr inbounds %struct.inode, ptr %call.i.i175, i32 0, i32 11
  %81 = ptrtoint ptr %i_ino.i180 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or.i, ptr %i_ino.i180, align 8
  call void @d_add(ptr noundef nonnull %call1.i, ptr noundef nonnull %call.i.i175) #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i, %for.body.i173.for.inc.i_crit_edge
  %inc.i181 = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i182 = icmp eq i32 %inc.i181, 28
  br i1 %exitcond.not.i182, label %if.end53, label %for.inc.i.for.body.i173_crit_edge

for.inc.i.for.body.i173_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i173

if.end53:                                         ; preds = %for.inc.i
  %82 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_root, align 64
  %call56 = call fastcc ptr @sel_make_dir(ptr noundef %83, ptr noundef nonnull @.str.32, ptr noundef %last_ino)
  %class_dir = getelementptr inbounds %struct.selinux_fs_info, ptr %6, i32 0, i32 4
  %84 = ptrtoint ptr %class_dir to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call56, ptr %class_dir, align 4
  %cmp.i184 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %if.then59, label %if.end63

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #20
  %85 = ptrtoint ptr %call56 to i32
  %86 = ptrtoint ptr %class_dir to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %class_dir, align 4
  br label %do.end81

if.end63:                                         ; preds = %if.end53
  %87 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %s_root, align 64
  %call66 = call fastcc ptr @sel_make_dir(ptr noundef %88, ptr noundef nonnull @.str.33, ptr noundef %last_ino)
  %policycap_dir = getelementptr inbounds %struct.selinux_fs_info, ptr %6, i32 0, i32 7
  %89 = ptrtoint ptr %policycap_dir to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call66, ptr %policycap_dir, align 4
  %cmp.i185 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %if.then69, label %if.end73

if.then69:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #20
  %90 = ptrtoint ptr %call66 to i32
  %91 = ptrtoint ptr %policycap_dir to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %policycap_dir, align 4
  br label %do.end81

if.end73:                                         ; preds = %if.end63
  %sb.i = getelementptr inbounds %struct.selinux_fs_info, ptr %6, i32 0, i32 10
  br label %if.then.i189

if.then.i189:                                     ; preds = %if.end10.i.if.then.i189_crit_edge, %if.end73
  %iter.024.i = phi i32 [ 0, %if.end73 ], [ %inc.i198, %if.end10.i.if.then.i189_crit_edge ]
  %92 = ptrtoint ptr %policycap_dir to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %policycap_dir, align 4
  %arrayidx.i187 = getelementptr [7 x ptr], ptr @selinux_policycap_names, i32 0, i32 %iter.024.i
  %94 = ptrtoint ptr %arrayidx.i187 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i187, align 4
  %call.i188 = call ptr @d_alloc_name(ptr noundef %93, ptr noundef %95) #18
  %cmp4.i = icmp eq ptr %call.i188, null
  br i1 %cmp4.i, label %if.then.i189.do.end_crit_edge, label %if.end6.i192

if.then.i189.do.end_crit_edge:                    ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.end6.i192:                                     ; preds = %if.then.i189
  %96 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sb.i, align 4
  %call.i.i190 = call ptr @new_inode(ptr noundef %97) #18
  %tobool.not.i.i191 = icmp eq ptr %call.i.i190, null
  br i1 %tobool.not.i.i191, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i192
  call void @__sanitizer_cov_trace_pc() #20
  call void @dput(ptr noundef nonnull %call.i188) #18
  br label %do.end

if.end10.i:                                       ; preds = %if.end6.i192
  %98 = ptrtoint ptr %call.i.i190 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 -32476, ptr %call.i.i190, align 8
  %i_atime.i.i193 = getelementptr inbounds %struct.inode, ptr %call.i.i190, i32 0, i32 15
  %i_mtime.i.i194 = getelementptr inbounds %struct.inode, ptr %call.i.i190, i32 0, i32 16
  %i_ctime.i.i195 = getelementptr inbounds %struct.inode, ptr %call.i.i190, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i186) #18
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i186, ptr noundef nonnull %call.i.i190) #18
  %99 = call ptr @memcpy(ptr %i_ctime.i.i195, ptr %tmp.i.i186, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i186) #18
  %100 = call ptr @memcpy(ptr %i_mtime.i.i194, ptr %i_ctime.i.i195, i32 16)
  %101 = call ptr @memcpy(ptr %i_atime.i.i193, ptr %i_ctime.i.i195, i32 16)
  %102 = getelementptr inbounds %struct.inode, ptr %call.i.i190, i32 0, i32 44
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @sel_policycap_ops, ptr %102, align 8
  %or.i196 = or i32 %iter.024.i, 134217728
  %i_ino.i197 = getelementptr inbounds %struct.inode, ptr %call.i.i190, i32 0, i32 11
  %104 = ptrtoint ptr %i_ino.i197 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or.i196, ptr %i_ino.i197, align 8
  call void @d_add(ptr noundef nonnull %call.i188, ptr noundef nonnull %call.i.i190) #18
  %inc.i198 = add nuw nsw i32 %iter.024.i, 1
  %exitcond.not.i199 = icmp eq i32 %inc.i198, 7
  br i1 %exitcond.not.i199, label %if.end10.i.cleanup_crit_edge, label %if.end10.i.if.then.i189_crit_edge

if.end10.i.if.then.i189_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i189

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %if.then9.i, %if.then.i189.do.end_crit_edge
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #21
  br label %do.end81

do.end81:                                         ; preds = %do.end, %if.then69, %if.then59, %if.then7.i, %if.end.i174.do.end81_crit_edge, %if.then47, %if.then5.i160, %if.end38.do.end81_crit_edge, %if.then36, %if.then28, %if.then20, %if.end12.do.end81_crit_edge, %if.then8, %if.end.do.end81_crit_edge, %entry.do.end81_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.do.end81_crit_edge ], [ %10, %if.then8 ], [ %29, %if.then28 ], [ %54, %if.then36 ], [ %72, %if.then47 ], [ %85, %if.then59 ], [ %90, %if.then69 ], [ -12, %do.end ], [ -12, %if.then20 ], [ -12, %if.end12.do.end81_crit_edge ], [ -12, %entry.do.end81_crit_edge ], [ -12, %if.end38.do.end81_crit_edge ], [ -12, %if.then5.i160 ], [ -12, %if.then7.i ], [ -12, %if.end.i174.do.end81_crit_edge ]
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35) #21
  %s_fs_info.i201 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %105 = ptrtoint ptr %s_fs_info.i201 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %s_fs_info.i201, align 16
  %tobool.not.i202 = icmp eq ptr %106, null
  br i1 %tobool.not.i202, label %do.end81.selinux_fs_info_free.exit_crit_edge, label %for.cond.preheader.i

do.end81.selinux_fs_info_free.exit_crit_edge:     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #20
  br label %selinux_fs_info_free.exit

for.cond.preheader.i:                             ; preds = %do.end81
  %bool_num.i = getelementptr inbounds %struct.selinux_fs_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %bool_num.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bool_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp12.not.i = icmp eq i32 %108, 0
  br i1 %cmp12.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %bool_pending_names.i = getelementptr inbounds %struct.selinux_fs_info, ptr %106, i32 0, i32 2
  br label %for.body.i206

for.body.i206:                                    ; preds = %for.body.i206.for.body.i206_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i204, %for.body.i206.for.body.i206_crit_edge ]
  %109 = ptrtoint ptr %bool_pending_names.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bool_pending_names.i, align 4
  %arrayidx.i203 = getelementptr ptr, ptr %110, i32 %i.013.i
  %111 = ptrtoint ptr %arrayidx.i203 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i203, align 4
  call void @kfree(ptr noundef %112) #18
  %inc.i204 = add nuw i32 %i.013.i, 1
  %113 = ptrtoint ptr %bool_num.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %bool_num.i, align 4
  %cmp.i205 = icmp ult i32 %inc.i204, %114
  br i1 %cmp.i205, label %for.body.i206.for.body.i206_crit_edge, label %for.body.i206.for.end.i_crit_edge

for.body.i206.for.end.i_crit_edge:                ; preds = %for.body.i206
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body.i206.for.body.i206_crit_edge:            ; preds = %for.body.i206
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i206

for.end.i:                                        ; preds = %for.body.i206.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %bool_pending_names1.i = getelementptr inbounds %struct.selinux_fs_info, ptr %106, i32 0, i32 2
  %115 = ptrtoint ptr %bool_pending_names1.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bool_pending_names1.i, align 4
  call void @kfree(ptr noundef %116) #18
  %bool_pending_values.i = getelementptr inbounds %struct.selinux_fs_info, ptr %106, i32 0, i32 3
  %117 = ptrtoint ptr %bool_pending_values.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bool_pending_values.i, align 4
  call void @kfree(ptr noundef %118) #18
  br label %selinux_fs_info_free.exit

selinux_fs_info_free.exit:                        ; preds = %for.end.i, %do.end81.selinux_fs_info_free.exit_crit_edge
  %119 = ptrtoint ptr %s_fs_info.i201 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %s_fs_info.i201, align 16
  call void @kfree(ptr noundef %120) #18
  %121 = ptrtoint ptr %s_fs_info.i201 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %s_fs_info.i201, align 16
  br label %cleanup

cleanup:                                          ; preds = %selinux_fs_info_free.exit, %if.end10.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %selinux_fs_info_free.exit ], [ 0, %if.end10.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_fill_super(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sel_make_dir(ptr noundef %dir, ptr noundef %name, ptr nocapture noundef %ino) unnamed_addr #1 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @d_alloc_name(ptr noundef %dir, ptr noundef %name) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %call.i = tail call ptr @new_inode(ptr noundef %1) #18
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dput(ptr noundef nonnull %call) #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 16749, ptr %call.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #18
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %call.i) #18
  %3 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #18
  %4 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %5 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  %i_op = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @simple_dir_inode_operations, ptr %i_op, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 44
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @simple_dir_operations, ptr %7, align 8
  %9 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ino, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %ino, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc, ptr %i_ino, align 8
  call void @inc_nlink(ptr noundef nonnull %call.i) #18
  call void @d_add(ptr noundef nonnull %call, ptr noundef nonnull %call.i) #18
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i, align 8
  call void @inc_nlink(ptr noundef %13) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end6 ], [ inttoptr (i32 -12 to ptr), %if.then4 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_write_load(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #1 align 64 {
entry:
  %load_state = alloca %struct.selinux_load_state, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %load_state) #18
  %6 = ptrtoint ptr %load_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %load_state, align 4, !annotation !249
  %7 = getelementptr inbounds %struct.selinux_load_state, ptr %load_state, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !249
  %state = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 4
  %policy_mutex = getelementptr inbounds %struct.selinux_state, ptr %10, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %policy_mutex, i32 noundef 0) #18
  %11 = tail call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 23
  %17 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %19 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %18, i32 %19
  %sid.i = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i.i62, i32 0, i32 1
  %20 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sid.i, align 4
  %call2 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %21, i32 noundef 2, i16 noundef zeroext 1, i32 noundef 16, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  %22 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp.not = icmp eq i64 %23, 0
  br i1 %cmp.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end4:                                          ; preds = %if.end
  %call5 = tail call noalias ptr @vmalloc(i32 noundef %count) #23
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.out_crit_edge, label %if.end8.i.i

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end8.i.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.out_crit_edge, label %if.then27.i.i, !prof !250

land.rhs16.i.i.out_crit_edge:                     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 230, i32 noundef 9, ptr noundef null) #18
  br label %out

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef nonnull %call5, i32 noundef %count, i1 noundef zeroext false) #18
  tail call void @__might_fault(ptr noundef nonnull @.str.48, i32 noundef 156) #18
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #24, !srcloc !251
  %asmresult.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !250

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call5, i32 noundef %count) #18
  %25 = tail call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !252
  %and.i.i.i.i = and i32 %27, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #18, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !254
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call5, ptr noundef %buf, i32 noundef %count) #18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #18, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !254
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end12, label %if.then11.i.i, !prof !250

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call5, i32 %sub.i.i
  %28 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out

if.end12:                                         ; preds = %if.end.i.i
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %state, align 4
  %call14 = call i32 @security_load_policy(ptr noundef %30, ptr noundef nonnull %call5, i32 noundef %count, ptr noundef nonnull %load_state) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end22, label %if.then16

if.then16:                                        ; preds = %if.end12
  %call17 = call i32 @___ratelimit(ptr noundef nonnull @sel_write_load._rs, ptr noundef nonnull @__func__.sel_write_load) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.out_crit_edge, label %do.end

if.then16.out_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #20
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #21
  br label %out

if.end22:                                         ; preds = %if.end12
  %31 = ptrtoint ptr %load_state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %load_state, align 4
  %call23 = call fastcc i32 @sel_make_policy_nodes(ptr noundef %5, ptr noundef %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end36, label %if.then25

if.then25:                                        ; preds = %if.end22
  %call26 = call i32 @___ratelimit(ptr noundef nonnull @sel_write_load._rs.41, ptr noundef nonnull @__func__.sel_write_load) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then25.if.end34_crit_edge, label %do.end31

if.then25.if.end34_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

do.end31:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #20
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #21
  br label %if.end34

if.end34:                                         ; preds = %do.end31, %if.then25.if.end34_crit_edge
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state, align 4
  call void @selinux_policy_cancel(ptr noundef %34, ptr noundef nonnull %load_state) #18
  br label %out

if.end36:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %state, align 4
  call void @selinux_policy_commit(ptr noundef %36, ptr noundef nonnull %load_state) #18
  %37 = call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %loginuid.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 121
  %41 = ptrtoint ptr %loginuid.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %retval.sroa.0.0.copyload.i = load i32, ptr %loginuid.i, align 16
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.copyload.i, 0
  %call42 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #18
  %42 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task, align 8
  %sessionid.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 122
  %44 = ptrtoint ptr %sessionid.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sessionid.i, align 4
  call void (ptr, i32, i32, ptr, ...) @audit_log(ptr noundef null, i32 noundef 3264, i32 noundef 1403, ptr noundef nonnull @.str.45, i32 noundef %call42, i32 noundef %45) #18
  br label %out

out:                                              ; preds = %if.end36, %if.end34, %do.end, %if.then16.out_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %data.0 = phi ptr [ null, %entry.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ %call5, %do.end ], [ %call5, %if.then16.out_crit_edge ], [ %call5, %if.end34 ], [ %call5, %if.end36 ], [ null, %if.end4.out_crit_edge ], [ %call5, %if.then11.i.i ], [ %call5, %if.then27.i.i ], [ %call5, %land.rhs16.i.i.out_crit_edge ]
  %length.0 = phi i32 [ %call2, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ %call14, %do.end ], [ %call14, %if.then16.out_crit_edge ], [ %call23, %if.end34 ], [ %count, %if.end36 ], [ -12, %if.end4.out_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_crit_edge ]
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %state, align 4
  %policy_mutex47 = getelementptr inbounds %struct.selinux_state, ptr %47, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %policy_mutex47) #18
  call void @vfree(ptr noundef %data.0) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %load_state) #18
  ret i32 %length.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_has_perm(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_load_policy(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sel_make_policy_nodes(ptr nocapture noundef %fsi, ptr noundef %newpolicy) unnamed_addr #1 align 64 {
entry:
  %tmp.i.i.i.i = alloca %struct.timespec64, align 8
  %nperms.i.i.i = alloca i32, align 4
  %perms.i.i.i = alloca ptr, align 4
  %tmp.i.i.i = alloca %struct.timespec64, align 8
  %nclasses.i = alloca i32, align 4
  %classes.i = alloca ptr, align 4
  %tmp.i.i86 = alloca %struct.timespec64, align 8
  %names.i = alloca ptr, align 4
  %num.i = alloca i32, align 4
  %values.i = alloca ptr, align 4
  %sid.i = alloca i32, align 4
  %tmp.i.i = alloca %struct.timespec64, align 8
  %tmp_ino = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_ino) #18
  %last_ino = getelementptr inbounds %struct.selinux_fs_info, ptr %fsi, i32 0, i32 8
  %0 = ptrtoint ptr %last_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_ino, align 4
  %sb = getelementptr inbounds %struct.selinux_fs_info, ptr %fsi, i32 0, i32 10
  %2 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sb, align 4
  %call.i.i = tail call ptr @new_inode(ptr noundef %3) #18
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %sel_make_disconnected_dir.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

sel_make_disconnected_dir.exit:                   ; preds = %entry
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 16749, ptr %call.i.i, align 8
  %i_atime.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 15
  %i_mtime.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 16
  %i_ctime.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #18
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i, ptr noundef nonnull %call.i.i) #18
  %5 = call ptr @memcpy(ptr %i_ctime.i.i, ptr %tmp.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #18
  %6 = call ptr @memcpy(ptr %i_mtime.i.i, ptr %i_ctime.i.i, i32 16)
  %7 = call ptr @memcpy(ptr %i_atime.i.i, ptr %i_ctime.i.i, i32 16)
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @simple_dir_inode_operations, ptr %i_op.i, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 44
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @simple_dir_operations, ptr %9, align 8
  %inc.i = add i32 %1, 1
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc.i, ptr %i_ino.i, align 8
  call void @inc_nlink(ptr noundef nonnull %call.i.i) #18
  %call2.i = call ptr @d_obtain_alias(ptr noundef nonnull %call.i.i) #18
  %cmp.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sel_make_disconnected_dir.exit.if.then_crit_edge, label %if.end

sel_make_disconnected_dir.exit.if.then_crit_edge: ; preds = %sel_make_disconnected_dir.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %sel_make_disconnected_dir.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i113 = phi ptr [ %call2.i, %sel_make_disconnected_dir.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i113 to i32
  br label %cleanup

if.end:                                           ; preds = %sel_make_disconnected_dir.exit
  %13 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fsi, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino, align 8
  %sub = add i32 %18, -1
  %19 = ptrtoint ptr %tmp_ino to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %tmp_ino, align 4
  %call3 = call fastcc ptr @sel_make_dir(ptr noundef %call2.i, ptr noundef nonnull @.str.28, ptr noundef nonnull %tmp_ino)
  %cmp.i84 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %20 = ptrtoint ptr %call3 to i32
  br label %out

if.end7:                                          ; preds = %if.end
  %class_dir = getelementptr inbounds %struct.selinux_fs_info, ptr %fsi, i32 0, i32 4
  %21 = ptrtoint ptr %class_dir to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %class_dir, align 4
  %d_inode8 = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %d_inode8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode8, align 8
  %i_ino9 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %i_ino9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino9, align 8
  %sub10 = add i32 %26, -1
  %27 = ptrtoint ptr %tmp_ino to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub10, ptr %tmp_ino, align 4
  %call11 = call fastcc ptr @sel_make_dir(ptr noundef %call2.i, ptr noundef nonnull @.str.32, ptr noundef nonnull %tmp_ino)
  %cmp.i85 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %28 = ptrtoint ptr %call11 to i32
  br label %out

if.end15:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %names.i) #18
  %29 = ptrtoint ptr %names.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %names.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num.i) #18
  %30 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %num.i, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i) #18
  %31 = ptrtoint ptr %values.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %values.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sid.i) #18
  %32 = ptrtoint ptr %sid.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %sid.i, align 4, !annotation !249
  %call.i = call i32 @get_zeroed_page(i32 noundef 3264) #18
  %33 = inttoptr i32 %call.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end15.out.i_crit_edge, label %if.end.i87

if.end15.out.i_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.i

if.end.i87:                                       ; preds = %if.end15
  %call1.i = call i32 @security_get_bools(ptr noundef %newpolicy, ptr noundef nonnull %num.i, ptr noundef nonnull %names.i, ptr noundef nonnull %values.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.cond.preheader.i, label %if.end.i87.out.i_crit_edge

if.end.i87.out.i_crit_edge:                       ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.i

for.cond.preheader.i:                             ; preds = %if.end.i87
  %34 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp83.not.i = icmp eq i32 %35, 0
  br i1 %cmp83.not.i, label %for.cond.preheader.i.sel_make_bools.exit.thread_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.sel_make_bools.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sel_make_bools.exit.thread

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %call3, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %if.end27.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.084.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i94, %if.end27.i.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %names.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %names.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %37, i32 %i.084.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %call5.i = call ptr @d_alloc_name(ptr noundef %call3, ptr noundef %39) #18
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %for.body.i.out.i_crit_edge, label %if.end8.i

for.body.i.out.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.i

if.end8.i:                                        ; preds = %for.body.i
  %40 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %d_sb.i, align 4
  %call.i.i88 = call ptr @new_inode(ptr noundef %41) #18
  %tobool.not.i.i89 = icmp eq ptr %call.i.i88, null
  br i1 %tobool.not.i.i89, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @dput(ptr noundef nonnull %call5.i) #18
  br label %out.i

if.end12.i:                                       ; preds = %if.end8.i
  %42 = ptrtoint ptr %call.i.i88 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -32348, ptr %call.i.i88, align 8
  %i_atime.i.i90 = getelementptr inbounds %struct.inode, ptr %call.i.i88, i32 0, i32 15
  %i_mtime.i.i91 = getelementptr inbounds %struct.inode, ptr %call.i.i88, i32 0, i32 16
  %i_ctime.i.i92 = getelementptr inbounds %struct.inode, ptr %call.i.i88, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i86) #18
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i86, ptr noundef nonnull %call.i.i88) #18
  %43 = call ptr @memcpy(ptr %i_ctime.i.i92, ptr %tmp.i.i86, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i86) #18
  %44 = call ptr @memcpy(ptr %i_mtime.i.i91, ptr %i_ctime.i.i92, i32 16)
  %45 = call ptr @memcpy(ptr %i_atime.i.i90, ptr %i_ctime.i.i92, i32 16)
  %46 = ptrtoint ptr %names.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %names.i, align 4
  %arrayidx13.i = getelementptr ptr, ptr %47, i32 %i.084.i
  %48 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx13.i, align 4
  %call14.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %33, i32 noundef 4096, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.28, ptr noundef %49) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call14.i)
  %cmp15.i = icmp ugt i32 %call14.i, 4095
  br i1 %cmp15.i, label %if.then16.i, label %if.end17.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @dput(ptr noundef nonnull %call5.i) #18
  call void @iput(ptr noundef nonnull %call.i.i88) #18
  br label %out.i

if.end17.i:                                       ; preds = %if.end12.i
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i88, i32 0, i32 10
  %50 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_security.i.i, align 4
  %tobool.not.i76.i = icmp eq ptr %51, null
  br i1 %tobool.not.i76.i, label %if.end17.i.selinux_inode.exit.i_crit_edge, label %if.end.i.i, !prof !248

if.end17.i.selinux_inode.exit.i_crit_edge:        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %selinux_inode.exit.i

if.end.i.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @selinux_blob_sizes, i32 0, i32 2) to i32))
  %52 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @selinux_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 %52
  br label %selinux_inode.exit.i

selinux_inode.exit.i:                             ; preds = %if.end.i.i, %if.end17.i.selinux_inode.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %if.end17.i.selinux_inode.exit.i_crit_edge ]
  %call19.i = call i32 @selinux_policy_genfs_sid(ptr noundef %newpolicy, ptr noundef nonnull @.str.8, ptr noundef nonnull %33, i16 noundef zeroext 7, ptr noundef nonnull %sid.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %selinux_inode.exit.i.if.end27.i_crit_edge, label %if.then21.i

selinux_inode.exit.i.if.end27.i_crit_edge:        ; preds = %selinux_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27.i

if.then21.i:                                      ; preds = %selinux_inode.exit.i
  %call22.i = call i32 @___ratelimit(ptr noundef nonnull @sel_make_bools._rs, ptr noundef nonnull @__func__.sel_make_bools) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then21.i.if.end26.i_crit_edge, label %do.end.i

if.then21.i.if.end26.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26.i

do.end.i:                                         ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #20
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull %33) #21
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end.i, %if.then21.i.if.end26.i_crit_edge
  %53 = ptrtoint ptr %sid.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %sid.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end26.i, %selinux_inode.exit.i.if.end27.i_crit_edge
  %54 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sid.i, align 4
  %sid28.i = getelementptr inbounds %struct.inode_security_struct, ptr %retval.0.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %sid28.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %sid28.i, align 4
  %initialized.i = getelementptr inbounds %struct.inode_security_struct, ptr %retval.0.i.i, i32 0, i32 5
  %57 = ptrtoint ptr %initialized.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %initialized.i, align 2
  %58 = getelementptr inbounds %struct.inode, ptr %call.i.i88, i32 0, i32 44
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @sel_bool_ops, ptr %58, align 8
  %or.i = or i32 %i.084.i, 33554432
  %i_ino.i93 = getelementptr inbounds %struct.inode, ptr %call.i.i88, i32 0, i32 11
  %60 = ptrtoint ptr %i_ino.i93 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or.i, ptr %i_ino.i93, align 8
  call void @d_add(ptr noundef nonnull %call5.i, ptr noundef nonnull %call.i.i88) #18
  %inc.i94 = add nuw i32 %i.084.i, 1
  %61 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num.i, align 4
  %cmp.i95 = icmp ult i32 %inc.i94, %62
  br i1 %cmp.i95, label %if.end27.i.for.body.i_crit_edge, label %if.end27.i.sel_make_bools.exit.thread_crit_edge

if.end27.i.sel_make_bools.exit.thread_crit_edge:  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sel_make_bools.exit.thread

if.end27.i.for.body.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

sel_make_bools.exit.thread:                       ; preds = %if.end27.i.sel_make_bools.exit.thread_crit_edge, %for.cond.preheader.i.sel_make_bools.exit.thread_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.sel_make_bools.exit.thread_crit_edge ], [ %62, %if.end27.i.sel_make_bools.exit.thread_crit_edge ]
  %63 = ptrtoint ptr %names.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %names.i, align 4
  %65 = ptrtoint ptr %values.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %values.i, align 4
  call void @free_pages(i32 noundef %call.i, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sid.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %names.i) #18
  br label %if.end18

out.i:                                            ; preds = %if.then16.i, %if.then11.i, %for.body.i.out.i_crit_edge, %if.end.i87.out.i_crit_edge, %if.end15.out.i_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %if.end.i87.out.i_crit_edge ], [ -36, %if.then16.i ], [ -12, %if.then11.i ], [ -12, %if.end15.out.i_crit_edge ], [ -12, %for.body.i.out.i_crit_edge ]
  call void @free_pages(i32 noundef %call.i, i32 noundef 0) #18
  %67 = ptrtoint ptr %names.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %names.i, align 4
  %tobool29.not.i = icmp eq ptr %68, null
  br i1 %tobool29.not.i, label %out.i.sel_make_bools.exit_crit_edge, label %for.cond31.preheader.i

out.i.sel_make_bools.exit_crit_edge:              ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sel_make_bools.exit

for.cond31.preheader.i:                           ; preds = %out.i
  %69 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp3285.not.i = icmp eq i32 %70, 0
  br i1 %cmp3285.not.i, label %for.cond31.preheader.i.for.end37.i_crit_edge, label %for.cond31.preheader.i.for.body33.i_crit_edge

for.cond31.preheader.i.for.body33.i_crit_edge:    ; preds = %for.cond31.preheader.i
  br label %for.body33.i

for.cond31.preheader.i.for.end37.i_crit_edge:     ; preds = %for.cond31.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end37.i

for.body33.i:                                     ; preds = %for.body33.i.for.body33.i_crit_edge, %for.cond31.preheader.i.for.body33.i_crit_edge
  %i.186.i = phi i32 [ %inc36.i, %for.body33.i.for.body33.i_crit_edge ], [ 0, %for.cond31.preheader.i.for.body33.i_crit_edge ]
  %71 = ptrtoint ptr %names.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %names.i, align 4
  %arrayidx34.i = getelementptr ptr, ptr %72, i32 %i.186.i
  %73 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx34.i, align 4
  call void @kfree(ptr noundef %74) #18
  %inc36.i = add nuw i32 %i.186.i, 1
  %75 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num.i, align 4
  %cmp32.i = icmp ult i32 %inc36.i, %76
  br i1 %cmp32.i, label %for.body33.i.for.body33.i_crit_edge, label %for.body33.i.for.end37.i_crit_edge

for.body33.i.for.end37.i_crit_edge:               ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end37.i

for.body33.i.for.body33.i_crit_edge:              ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body33.i

for.end37.i:                                      ; preds = %for.body33.i.for.end37.i_crit_edge, %for.cond31.preheader.i.for.end37.i_crit_edge
  %77 = ptrtoint ptr %names.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %names.i, align 4
  call void @kfree(ptr noundef %78) #18
  br label %sel_make_bools.exit

sel_make_bools.exit:                              ; preds = %for.end37.i, %out.i.sel_make_bools.exit_crit_edge
  %79 = ptrtoint ptr %values.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %values.i, align 4
  call void @kfree(ptr noundef %80) #18
  call void @d_genocide(ptr noundef %call3) #18
  call void @shrink_dcache_parent(ptr noundef %call3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sid.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %names.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not, label %sel_make_bools.exit.if.end18_crit_edge, label %sel_make_bools.exit.out_crit_edge

sel_make_bools.exit.out_crit_edge:                ; preds = %sel_make_bools.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

sel_make_bools.exit.if.end18_crit_edge:           ; preds = %sel_make_bools.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.end18:                                         ; preds = %sel_make_bools.exit.if.end18_crit_edge, %sel_make_bools.exit.thread
  %tmp_bool_values.0121 = phi ptr [ %66, %sel_make_bools.exit.thread ], [ inttoptr (i32 -1 to ptr), %sel_make_bools.exit.if.end18_crit_edge ]
  %tmp_bool_names.0120 = phi ptr [ %64, %sel_make_bools.exit.thread ], [ inttoptr (i32 -1 to ptr), %sel_make_bools.exit.if.end18_crit_edge ]
  %tmp_bool_num.0119 = phi i32 [ %.lcssa.i, %sel_make_bools.exit.thread ], [ -1, %sel_make_bools.exit.if.end18_crit_edge ]
  %last_class_ino = getelementptr inbounds %struct.selinux_fs_info, ptr %fsi, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nclasses.i) #18
  %81 = ptrtoint ptr %nclasses.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %nclasses.i, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %classes.i) #18
  %82 = ptrtoint ptr %classes.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 -1 to ptr), ptr %classes.i, align 4, !annotation !249
  %call.i97 = call i32 @security_get_classes(ptr noundef %newpolicy, ptr noundef nonnull %classes.i, ptr noundef nonnull %nclasses.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool.not.i98 = icmp eq i32 %call.i97, 0
  br i1 %tobool.not.i98, label %if.end.i99, label %sel_make_classes.exit.thread

sel_make_classes.exit.thread:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %classes.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nclasses.i) #18
  br label %out

if.end.i99:                                       ; preds = %if.end18
  %83 = ptrtoint ptr %nclasses.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nclasses.i, align 4
  %conv.i = add i32 %84, 2
  %conv.i.i = and i32 %conv.i, 65535
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 33
  %or.i.i = or i32 %mul.i.i, 67108864
  %85 = ptrtoint ptr %last_class_ino to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or.i.i, ptr %last_class_ino, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp48.i = icmp sgt i32 %84, 0
  br i1 %cmp48.i, label %if.end.i99.for.body.i102_crit_edge, label %if.end.i99.outthread-pre-split.i_crit_edge

if.end.i99.outthread-pre-split.i_crit_edge:       ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #20
  br label %outthread-pre-split.i

if.end.i99.for.body.i102_crit_edge:               ; preds = %if.end.i99
  br label %for.body.i102

for.cond.i:                                       ; preds = %sel_make_class_dir_entries.exit.i
  %86 = ptrtoint ptr %nclasses.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nclasses.i, align 4
  %cmp.i100 = icmp slt i32 %add9.i, %87
  br i1 %cmp.i100, label %for.cond.i.for.body.i102_crit_edge, label %for.cond.i.out.i107_crit_edge

for.cond.i.out.i107_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.i107

for.cond.i.for.body.i102_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i102

for.body.i102:                                    ; preds = %for.cond.i.for.body.i102_crit_edge, %if.end.i99.for.body.i102_crit_edge
  %i.049.i = phi i32 [ %add9.i, %for.cond.i.for.body.i102_crit_edge ], [ 0, %if.end.i99.for.body.i102_crit_edge ]
  %88 = ptrtoint ptr %classes.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %classes.i, align 4
  %arrayidx.i101 = getelementptr ptr, ptr %89, i32 %i.049.i
  %90 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i101, align 4
  %call3.i = call fastcc ptr @sel_make_dir(ptr noundef %call11, ptr noundef %91, ptr noundef %last_class_ino) #18
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #20
  %92 = ptrtoint ptr %call3.i to i32
  br label %outthread-pre-split.i

if.end7.i:                                        ; preds = %for.body.i102
  %93 = ptrtoint ptr %classes.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %classes.i, align 4
  %arrayidx8.i = getelementptr ptr, ptr %94, i32 %i.049.i
  %95 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx8.i, align 4
  %add9.i = add nuw nsw i32 %i.049.i, 1
  %d_sb.i.i = getelementptr inbounds %struct.dentry, ptr %call3.i, i32 0, i32 9
  %97 = ptrtoint ptr %d_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %d_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %98, i32 0, i32 33
  %99 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %s_fs_info.i.i, align 16
  %call.i.i103 = call ptr @d_alloc_name(ptr noundef %call3.i, ptr noundef nonnull @.str.53) #18
  %tobool.not.i.i104 = icmp eq ptr %call.i.i103, null
  br i1 %tobool.not.i.i104, label %if.end7.i.outthread-pre-split.i_crit_edge, label %if.end.i.i105

if.end7.i.outthread-pre-split.i_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %outthread-pre-split.i

if.end.i.i105:                                    ; preds = %if.end7.i
  %101 = ptrtoint ptr %d_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %d_sb.i.i, align 4
  %call.i.i.i = call ptr @new_inode(ptr noundef %102) #18
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then4.i.i, label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #20
  call void @dput(ptr noundef nonnull %call.i.i103) #18
  br label %outthread-pre-split.i

if.end5.i.i:                                      ; preds = %if.end.i.i105
  %103 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 -32476, ptr %call.i.i.i, align 8
  %i_atime.i.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i.i, i32 0, i32 15
  %i_mtime.i.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i.i, i32 0, i32 16
  %i_ctime.i.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i.i) #18
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i.i, ptr noundef nonnull %call.i.i.i) #18
  %104 = call ptr @memcpy(ptr %i_ctime.i.i.i, ptr %tmp.i.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i.i) #18
  %105 = call ptr @memcpy(ptr %i_mtime.i.i.i, ptr %i_ctime.i.i.i, i32 16)
  %106 = call ptr @memcpy(ptr %i_atime.i.i.i, ptr %i_ctime.i.i.i, i32 16)
  %107 = getelementptr inbounds %struct.inode, ptr %call.i.i.i, i32 0, i32 44
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @sel_class_ops, ptr %107, align 8
  %conv.i.i.i = and i32 %add9.i, 65535
  %mul.i.i.i = mul nuw nsw i32 %conv.i.i.i, 33
  %or.i.i.i = or i32 %mul.i.i.i, 67108864
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i.i, i32 0, i32 11
  %109 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or.i.i.i, ptr %i_ino.i.i, align 8
  call void @d_add(ptr noundef nonnull %call.i.i103, ptr noundef nonnull %call.i.i.i) #18
  %last_class_ino.i.i = getelementptr inbounds %struct.selinux_fs_info, ptr %100, i32 0, i32 5
  %call7.i.i = call fastcc ptr @sel_make_dir(ptr noundef %call3.i, ptr noundef nonnull @.str.54, ptr noundef %last_class_ino.i.i) #18
  %cmp.i.i.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then9.i.i, label %if.end11.i.i

if.then9.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %110 = ptrtoint ptr %call7.i.i to i32
  br label %sel_make_class_dir_entries.exit.i

if.end11.i.i:                                     ; preds = %if.end5.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nperms.i.i.i) #18
  %111 = ptrtoint ptr %nperms.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %nperms.i.i.i, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %perms.i.i.i) #18
  %112 = ptrtoint ptr %perms.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr inttoptr (i32 -1 to ptr), ptr %perms.i.i.i, align 4, !annotation !249
  %call.i29.i.i = call i32 @security_get_permissions(ptr noundef %newpolicy, ptr noundef %96, ptr noundef nonnull %perms.i.i.i, ptr noundef nonnull %nperms.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i.i)
  %tobool.not.i30.i.i = icmp eq i32 %call.i29.i.i, 0
  br i1 %tobool.not.i30.i.i, label %for.cond.preheader.i.i.i, label %if.end11.i.i.sel_make_perm_files.exit.i.i_crit_edge

if.end11.i.i.sel_make_perm_files.exit.i.i_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sel_make_perm_files.exit.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end11.i.i
  %113 = ptrtoint ptr %nperms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %nperms.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp38.i.i.i = icmp sgt i32 %114, 0
  br i1 %cmp38.i.i.i, label %for.body.lr.ph.i.i.i, label %for.cond.preheader.i.i.i.for.end18.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.end18.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end18.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.preheader.i.i.i
  %d_sb.i.i.i = getelementptr inbounds %struct.dentry, ptr %call7.i.i, i32 0, i32 9
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.039.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %add.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %115 = ptrtoint ptr %perms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %perms.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %116, i32 %i.039.i.i.i
  %117 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call1.i.i.i = call ptr @d_alloc_name(ptr noundef %call7.i.i, ptr noundef %118) #18
  %tobool2.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %for.body.i.i.i.outthread-pre-split.i.i.i_crit_edge, label %if.end4.i.i.i

for.body.i.i.i.outthread-pre-split.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %outthread-pre-split.i.i.i

if.end4.i.i.i:                                    ; preds = %for.body.i.i.i
  %119 = ptrtoint ptr %d_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %d_sb.i.i.i, align 4
  %call.i.i.i.i = call ptr @new_inode(ptr noundef %120) #18
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then7.i.i.i, label %for.inc.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @dput(ptr noundef nonnull %call1.i.i.i) #18
  br label %outthread-pre-split.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end4.i.i.i
  %121 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 -32476, ptr %call.i.i.i.i, align 8
  %i_atime.i.i.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i.i.i, i32 0, i32 15
  %i_mtime.i.i.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i.i.i, i32 0, i32 16
  %i_ctime.i.i.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i.i.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i.i.i) #18
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i.i.i, ptr noundef nonnull %call.i.i.i.i) #18
  %122 = call ptr @memcpy(ptr %i_ctime.i.i.i.i, ptr %tmp.i.i.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i.i.i) #18
  %123 = call ptr @memcpy(ptr %i_mtime.i.i.i.i, ptr %i_ctime.i.i.i.i, i32 16)
  %124 = call ptr @memcpy(ptr %i_atime.i.i.i.i, ptr %i_ctime.i.i.i.i, i32 16)
  %125 = getelementptr inbounds %struct.inode, ptr %call.i.i.i.i, i32 0, i32 44
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @sel_perm_ops, ptr %125, align 8
  %add.i.i.i = add nuw nsw i32 %i.039.i.i.i, 1
  %add.i.i.i.i = add nuw i32 %add.i.i.i, %mul.i.i.i
  %or.i.i.i.i = or i32 %add.i.i.i.i, 67108864
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i.i.i, i32 0, i32 11
  %127 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %or.i.i.i.i, ptr %i_ino.i.i.i, align 8
  call void @d_add(ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull %call.i.i.i.i) #18
  %128 = ptrtoint ptr %nperms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %nperms.i.i.i, align 4
  %cmp.i31.i.i = icmp slt i32 %add.i.i.i, %129
  br i1 %cmp.i31.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.out.i.i.i_crit_edge

for.inc.i.i.i.out.i.i.i_crit_edge:                ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i.i

outthread-pre-split.i.i.i:                        ; preds = %if.then7.i.i.i, %for.body.i.i.i.outthread-pre-split.i.i.i_crit_edge
  %130 = ptrtoint ptr %nperms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pr.i.i.i = load i32, ptr %nperms.i.i.i, align 4
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %outthread-pre-split.i.i.i, %for.inc.i.i.i.out.i.i.i_crit_edge
  %131 = phi i32 [ %.pr.i.i.i, %outthread-pre-split.i.i.i ], [ %129, %for.inc.i.i.i.out.i.i.i_crit_edge ]
  %rc.1.i.i.i = phi i32 [ -12, %outthread-pre-split.i.i.i ], [ 0, %for.inc.i.i.i.out.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp1241.i.i.i = icmp sgt i32 %131, 0
  br i1 %cmp1241.i.i.i, label %out.i.i.i.for.body14.i.i.i_crit_edge, label %out.i.i.i.for.end18.i.i.i_crit_edge

out.i.i.i.for.end18.i.i.i_crit_edge:              ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end18.i.i.i

out.i.i.i.for.body14.i.i.i_crit_edge:             ; preds = %out.i.i.i
  br label %for.body14.i.i.i

for.body14.i.i.i:                                 ; preds = %for.body14.i.i.i.for.body14.i.i.i_crit_edge, %out.i.i.i.for.body14.i.i.i_crit_edge
  %i.142.i.i.i = phi i32 [ %inc17.i.i.i, %for.body14.i.i.i.for.body14.i.i.i_crit_edge ], [ 0, %out.i.i.i.for.body14.i.i.i_crit_edge ]
  %132 = ptrtoint ptr %perms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %perms.i.i.i, align 4
  %arrayidx15.i.i.i = getelementptr ptr, ptr %133, i32 %i.142.i.i.i
  %134 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx15.i.i.i, align 4
  call void @kfree(ptr noundef %135) #18
  %inc17.i.i.i = add nuw nsw i32 %i.142.i.i.i, 1
  %136 = ptrtoint ptr %nperms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %nperms.i.i.i, align 4
  %cmp12.i.i.i = icmp slt i32 %inc17.i.i.i, %137
  br i1 %cmp12.i.i.i, label %for.body14.i.i.i.for.body14.i.i.i_crit_edge, label %for.body14.i.i.i.for.end18.i.i.i_crit_edge

for.body14.i.i.i.for.end18.i.i.i_crit_edge:       ; preds = %for.body14.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end18.i.i.i

for.body14.i.i.i.for.body14.i.i.i_crit_edge:      ; preds = %for.body14.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body14.i.i.i

for.end18.i.i.i:                                  ; preds = %for.body14.i.i.i.for.end18.i.i.i_crit_edge, %out.i.i.i.for.end18.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.end18.i.i.i_crit_edge
  %rc.146.i.i.i = phi i32 [ %rc.1.i.i.i, %out.i.i.i.for.end18.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.end18.i.i.i_crit_edge ], [ %rc.1.i.i.i, %for.body14.i.i.i.for.end18.i.i.i_crit_edge ]
  %138 = ptrtoint ptr %perms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %perms.i.i.i, align 4
  call void @kfree(ptr noundef %139) #18
  br label %sel_make_perm_files.exit.i.i

sel_make_perm_files.exit.i.i:                     ; preds = %for.end18.i.i.i, %if.end11.i.i.sel_make_perm_files.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %rc.146.i.i.i, %for.end18.i.i.i ], [ %call.i29.i.i, %if.end11.i.i.sel_make_perm_files.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %perms.i.i.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nperms.i.i.i) #18
  br label %sel_make_class_dir_entries.exit.i

sel_make_class_dir_entries.exit.i:                ; preds = %sel_make_perm_files.exit.i.i, %if.then9.i.i
  %retval.0.i.i106 = phi i32 [ %110, %if.then9.i.i ], [ %retval.0.i.i.i, %sel_make_perm_files.exit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i106)
  %tobool11.not.i = icmp eq i32 %retval.0.i.i106, 0
  br i1 %tobool11.not.i, label %for.cond.i, label %sel_make_class_dir_entries.exit.i.outthread-pre-split.i_crit_edge

sel_make_class_dir_entries.exit.i.outthread-pre-split.i_crit_edge: ; preds = %sel_make_class_dir_entries.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %outthread-pre-split.i

outthread-pre-split.i:                            ; preds = %sel_make_class_dir_entries.exit.i.outthread-pre-split.i_crit_edge, %if.then4.i.i, %if.end7.i.outthread-pre-split.i_crit_edge, %if.then5.i, %if.end.i99.outthread-pre-split.i_crit_edge
  %rc.1.ph.i = phi i32 [ 0, %if.end.i99.outthread-pre-split.i_crit_edge ], [ -12, %if.then4.i.i ], [ %92, %if.then5.i ], [ %retval.0.i.i106, %sel_make_class_dir_entries.exit.i.outthread-pre-split.i_crit_edge ], [ -12, %if.end7.i.outthread-pre-split.i_crit_edge ]
  %140 = ptrtoint ptr %nclasses.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %.pr.i = load i32, ptr %nclasses.i, align 4
  br label %out.i107

out.i107:                                         ; preds = %outthread-pre-split.i, %for.cond.i.out.i107_crit_edge
  %141 = phi i32 [ %.pr.i, %outthread-pre-split.i ], [ %87, %for.cond.i.out.i107_crit_edge ]
  %rc.1.i = phi i32 [ %rc.1.ph.i, %outthread-pre-split.i ], [ 0, %for.cond.i.out.i107_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp1552.i = icmp sgt i32 %141, 0
  br i1 %cmp1552.i, label %out.i107.for.body17.i_crit_edge, label %out.i107.sel_make_classes.exit_crit_edge

out.i107.sel_make_classes.exit_crit_edge:         ; preds = %out.i107
  call void @__sanitizer_cov_trace_pc() #20
  br label %sel_make_classes.exit

out.i107.for.body17.i_crit_edge:                  ; preds = %out.i107
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %out.i107.for.body17.i_crit_edge
  %i.153.i = phi i32 [ %inc20.i, %for.body17.i.for.body17.i_crit_edge ], [ 0, %out.i107.for.body17.i_crit_edge ]
  %142 = ptrtoint ptr %classes.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %classes.i, align 4
  %arrayidx18.i = getelementptr ptr, ptr %143, i32 %i.153.i
  %144 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx18.i, align 4
  call void @kfree(ptr noundef %145) #18
  %inc20.i = add nuw nsw i32 %i.153.i, 1
  %146 = ptrtoint ptr %nclasses.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %nclasses.i, align 4
  %cmp15.i108 = icmp slt i32 %inc20.i, %147
  br i1 %cmp15.i108, label %for.body17.i.for.body17.i_crit_edge, label %for.body17.i.sel_make_classes.exit_crit_edge

for.body17.i.sel_make_classes.exit_crit_edge:     ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sel_make_classes.exit

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body17.i

sel_make_classes.exit:                            ; preds = %for.body17.i.sel_make_classes.exit_crit_edge, %out.i107.sel_make_classes.exit_crit_edge
  %148 = ptrtoint ptr %classes.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %classes.i, align 4
  call void @kfree(ptr noundef %149) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %classes.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nclasses.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1.i)
  %tobool20.not = icmp eq i32 %rc.1.i, 0
  br i1 %tobool20.not, label %if.end22, label %sel_make_classes.exit.out_crit_edge

sel_make_classes.exit.out_crit_edge:              ; preds = %sel_make_classes.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end22:                                         ; preds = %sel_make_classes.exit
  call void @__sanitizer_cov_trace_pc() #20
  %150 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %fsi, align 4
  %call24 = call ptr @lock_rename(ptr noundef %call3, ptr noundef %151) #18
  %152 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %fsi, align 4
  call void @d_exchange(ptr noundef %call3, ptr noundef %153) #18
  %bool_num = getelementptr inbounds %struct.selinux_fs_info, ptr %fsi, i32 0, i32 1
  %154 = ptrtoint ptr %bool_num to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %bool_num, align 4
  %bool_pending_names = getelementptr inbounds %struct.selinux_fs_info, ptr %fsi, i32 0, i32 2
  %156 = ptrtoint ptr %bool_pending_names to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %bool_pending_names, align 4
  %bool_pending_values = getelementptr inbounds %struct.selinux_fs_info, ptr %fsi, i32 0, i32 3
  %158 = ptrtoint ptr %bool_pending_values to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bool_pending_values, align 4
  store i32 %tmp_bool_num.0119, ptr %bool_num, align 4
  store ptr %tmp_bool_names.0120, ptr %bool_pending_names, align 4
  store ptr %tmp_bool_values.0121, ptr %bool_pending_values, align 4
  call fastcc void @sel_remove_old_bool_data(i32 noundef %155, ptr noundef %157, ptr noundef %159)
  %160 = ptrtoint ptr %fsi to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call3, ptr %fsi, align 4
  call void @unlock_rename(ptr noundef %call3, ptr noundef %151) #18
  %161 = ptrtoint ptr %class_dir to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %class_dir, align 4
  %call31 = call ptr @lock_rename(ptr noundef %call11, ptr noundef %162) #18
  %163 = ptrtoint ptr %class_dir to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %class_dir, align 4
  call void @d_exchange(ptr noundef %call11, ptr noundef %164) #18
  %165 = ptrtoint ptr %class_dir to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call11, ptr %class_dir, align 4
  call void @unlock_rename(ptr noundef %call11, ptr noundef %162) #18
  br label %out

out:                                              ; preds = %if.end22, %sel_make_classes.exit.out_crit_edge, %sel_make_classes.exit.thread, %sel_make_bools.exit.out_crit_edge, %if.then13, %if.then5
  %ret.0 = phi i32 [ %20, %if.then5 ], [ %28, %if.then13 ], [ %ret.0.i, %sel_make_bools.exit.out_crit_edge ], [ %rc.1.i, %sel_make_classes.exit.out_crit_edge ], [ 0, %if.end22 ], [ %call.i97, %sel_make_classes.exit.thread ]
  call void @d_genocide(ptr noundef %call2.i) #18
  call void @shrink_dcache_parent(ptr noundef %call2.i) #18
  call void @dput(ptr noundef %call2.i) #18
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %12, %if.then ], [ %ret.0, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_ino) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @selinux_policy_cancel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @selinux_policy_commit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lock_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_exchange(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sel_remove_old_bool_data(i32 noundef %bool_num, ptr noundef %bool_names, ptr noundef %bool_values) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bool_num)
  %cmp4.not = icmp eq i32 %bool_num, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %bool_names, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %1) #18
  %inc = add nuw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %bool_num
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %bool_names) #18
  tail call void @kfree(ptr noundef %bool_values) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_get_bools(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @selinux_policy_genfs_sid(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_read_bool(ptr nocapture noundef readonly %filep, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %and = and i32 %7, 16777215
  %dentry = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry, align 4
  %name2 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name2, align 8
  %state = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %policy_mutex = getelementptr inbounds %struct.selinux_state, ptr %13, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %policy_mutex, i32 noundef 0) #18
  %bool_num = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %bool_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bool_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %15)
  %cmp.not = icmp ult i32 %and, %15
  br i1 %cmp.not, label %lor.lhs.false, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

lor.lhs.false:                                    ; preds = %entry
  %bool_pending_names = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %bool_pending_names to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bool_pending_names, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %and
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %11, ptr noundef %19) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.out_unlock_crit_edge

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call i32 @get_zeroed_page(i32 noundef 3264) #18
  %20 = inttoptr i32 %call4 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.out_unlock_crit_edge, label %if.end7

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

if.end7:                                          ; preds = %if.end
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state, align 4
  %call9 = tail call i32 @security_get_bool_value(ptr noundef %22, i32 noundef %and) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end7.out_unlock_crit_edge, label %if.end12

if.end7.out_unlock_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %bool_pending_values = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 3
  %23 = ptrtoint ptr %bool_pending_values to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bool_pending_values, align 4
  %arrayidx13 = getelementptr i32, ptr %24, i32 %and
  %25 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx13, align 4
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %20, i32 noundef 4096, ptr noundef nonnull @.str.51, i32 noundef %call9, i32 noundef %26) #18
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state, align 4
  %policy_mutex16 = getelementptr inbounds %struct.selinux_state, ptr %28, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %policy_mutex16) #18
  %call17 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %20, i32 noundef %call14) #18
  br label %out_free

out_free:                                         ; preds = %out_unlock, %if.end12
  %page.0 = phi ptr [ %page.1, %out_unlock ], [ %20, %if.end12 ]
  %ret.0 = phi i32 [ %ret.1, %out_unlock ], [ %call17, %if.end12 ]
  %29 = ptrtoint ptr %page.0 to i32
  tail call void @free_pages(i32 noundef %29, i32 noundef 0) #18
  ret i32 %ret.0

out_unlock:                                       ; preds = %if.end7.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %lor.lhs.false.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %page.1 = phi ptr [ null, %entry.out_unlock_crit_edge ], [ null, %lor.lhs.false.out_unlock_crit_edge ], [ null, %if.end.out_unlock_crit_edge ], [ %20, %if.end7.out_unlock_crit_edge ]
  %ret.1 = phi i32 [ -22, %entry.out_unlock_crit_edge ], [ -22, %lor.lhs.false.out_unlock_crit_edge ], [ -12, %if.end.out_unlock_crit_edge ], [ %call9, %if.end7.out_unlock_crit_edge ]
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state, align 4
  %policy_mutex19 = getelementptr inbounds %struct.selinux_state, ptr %31, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %policy_mutex19) #18
  br label %out_free
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_write_bool(ptr nocapture noundef readonly %filep, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #1 align 64 {
entry:
  %new_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_value) #18
  %6 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %new_value, align 4, !annotation !249
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino, align 8
  %and = and i32 %8, 16777215
  %dentry = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry, align 4
  %name2 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %count)
  %cmp = icmp ugt i32 %count, 4095
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp3.not = icmp eq i64 %14, 0
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #18
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %state = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 4
  %policy_mutex = getelementptr inbounds %struct.selinux_state, ptr %17, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %policy_mutex, i32 noundef 0) #18
  %18 = tail call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 99
  %22 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 23
  %24 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %26 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %26
  %sid.i = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sid.i, align 4
  %call12 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %28, i32 noundef 2, i16 noundef zeroext 1, i32 noundef 256, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end14:                                         ; preds = %if.end10
  %bool_num = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %bool_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bool_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %30)
  %cmp15.not = icmp ult i32 %and, %30
  br i1 %cmp15.not, label %lor.lhs.false, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

lor.lhs.false:                                    ; preds = %if.end14
  %bool_pending_names = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 2
  %31 = ptrtoint ptr %bool_pending_names to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bool_pending_names, align 4
  %arrayidx = getelementptr ptr, ptr %32, i32 %and
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %call16 = tail call i32 @strcmp(ptr noundef %12, ptr noundef %34) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end19:                                         ; preds = %lor.lhs.false
  %call20 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call6, ptr noundef nonnull @.str.52, ptr noundef nonnull %new_value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 1
  br i1 %cmp21.not, label %if.end23, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end23:                                         ; preds = %if.end19
  %35 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %new_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool24.not = icmp eq i32 %36, 0
  br i1 %tobool24.not, label %if.end23.if.end26_crit_edge, label %if.then25

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  %37 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %new_value, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  %38 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %new_value, align 4
  %bool_pending_values = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 3
  %40 = ptrtoint ptr %bool_pending_values to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bool_pending_values, align 4
  %arrayidx27 = getelementptr i32, ptr %41, i32 %and
  %42 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %arrayidx27, align 4
  br label %out

out:                                              ; preds = %if.end26, %if.end19.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end14.out_crit_edge, %if.end10.out_crit_edge
  %length.0 = phi i32 [ %call12, %if.end10.out_crit_edge ], [ -22, %if.end14.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %if.end19.out_crit_edge ], [ %count, %if.end26 ]
  %43 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %state, align 4
  %policy_mutex29 = getelementptr inbounds %struct.selinux_state, ptr %44, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %policy_mutex29) #18
  call void @kfree(ptr noundef %call6) #18
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then8 ], [ %length.0, %out ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_value) #18
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_get_bool_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_get_classes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_read_class(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %res = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %res) #18
  %and.i = and i32 %3, 16777215
  %div.i = udiv i32 %and.i, 33
  %conv = and i32 %div.i, 65535
  %4 = call ptr @memset(ptr %res, i32 255, i32 12)
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %res, i32 noundef 12, ptr noundef nonnull @.str.52, i32 noundef %conv) #18
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %res, i32 noundef %call2) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %res) #18
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_get_permissions(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_read_perm(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %res = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %res) #18
  %and.i = and i32 %3, 16777215
  %rem.i = urem i32 %and.i, 33
  %4 = call ptr @memset(ptr %res, i32 255, i32 12)
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %res, i32 noundef 12, ptr noundef nonnull @.str.52, i32 noundef %rem.i) #18
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %res, i32 noundef %call2) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %res) #18
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_genocide(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_read_enforce(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %tmpbuf = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmpbuf) #18
  %state = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %6 = call ptr @memset(ptr %tmpbuf, i32 255, i32 12)
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 4
  %enforcing.i = getelementptr inbounds %struct.selinux_state, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %enforcing.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %enforcing.i, align 1, !range !255
  %11 = zext i8 %10 to i32
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tmpbuf, i32 noundef 12, ptr noundef nonnull @.str.52, i32 noundef %11) #18
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tmpbuf, i32 noundef %call2) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmpbuf) #18
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_write_enforce(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #1 align 64 {
entry:
  %new_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %state1 = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_value) #18
  %8 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %new_value, align 4, !annotation !249
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %count)
  %cmp = icmp ugt i32 %count, 4095
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp2.not = icmp eq i64 %10, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #18
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call5, ptr noundef nonnull @.str.52, ptr noundef nonnull %new_value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 1
  br i1 %cmp11.not, label %if.end13, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end13:                                         ; preds = %if.end9
  %12 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool = icmp ne i32 %13, 0
  %lnot.ext = zext i1 %tobool to i32
  %14 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %lnot.ext, ptr %new_value, align 4
  %enforcing.i = getelementptr inbounds %struct.selinux_state, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %enforcing.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load volatile i8, ptr %enforcing.i, align 1, !range !255
  %17 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lnot.ext, i32 %17)
  %cmp16.not = icmp eq i32 %lnot.ext, %17
  br i1 %cmp16.not, label %if.end13.out_crit_edge, label %if.then18

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then18:                                        ; preds = %if.end13
  %18 = call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 99
  %22 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 23
  %24 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %26 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %26
  %sid.i = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sid.i, align 4
  %call20 = call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %28, i32 noundef 2, i16 noundef zeroext 1, i32 noundef 128, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then18.out_crit_edge

if.then18.out_crit_edge:                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end23:                                         ; preds = %if.then18
  %29 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %new_value, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %loginuid.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 121
  %35 = ptrtoint ptr %loginuid.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %retval.sroa.0.0.copyload.i = load i32, ptr %loginuid.i, align 16
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.copyload.i, 0
  %call28 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #18
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %sessionid.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 122
  %38 = ptrtoint ptr %sessionid.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sessionid.i, align 4
  call void (ptr, i32, i32, ptr, ...) @audit_log(ptr noundef null, i32 noundef 3264, i32 noundef 1404, ptr noundef nonnull @.str.55, i32 noundef %30, i32 noundef %17, i32 noundef %call28, i32 noundef %39) #18
  %40 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %new_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool32 = icmp ne i32 %41, 0
  %frombool.i = zext i1 %tobool32 to i8
  %42 = ptrtoint ptr %enforcing.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store volatile i8 %frombool.i, ptr %enforcing.i, align 1
  %43 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %new_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool33.not = icmp eq i32 %44, 0
  br i1 %tobool33.not, label %if.end23.if.end36_crit_edge, label %if.then34

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  %avc = getelementptr inbounds %struct.selinux_state, ptr %7, i32 0, i32 7
  %45 = ptrtoint ptr %avc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %avc, align 4
  %call35 = call i32 @avc_ss_reset(ptr noundef %46, i32 noundef 0) #18
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end23.if.end36_crit_edge
  %47 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %new_value, align 4
  call void @selnl_notify_setenforce(i32 noundef %48) #18
  %49 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %new_value, align 4
  call void @selinux_status_update_setenforce(ptr noundef %7, i32 noundef %50) #18
  %51 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %new_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool37.not = icmp eq i32 %52, 0
  br i1 %tobool37.not, label %if.then38, label %if.end36.if.end40_crit_edge

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  %call39 = call i32 @call_blocking_lsm_notifier(i32 noundef 0, ptr noundef null) #18
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36.if.end40_crit_edge
  call void @selinux_ima_measure_state(ptr noundef %7) #18
  br label %out

out:                                              ; preds = %if.end40, %if.then18.out_crit_edge, %if.end13.out_crit_edge, %if.end9.out_crit_edge
  %length.0 = phi i32 [ -22, %if.end9.out_crit_edge ], [ %call20, %if.then18.out_crit_edge ], [ %count, %if.end40 ], [ %count, %if.end13.out_crit_edge ]
  call void @kfree(ptr noundef %call5) #18
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then7 ], [ %length.0, %out ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_value) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_ss_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @selnl_notify_setenforce(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @selinux_status_update_setenforce(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_blocking_lsm_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @selinux_ima_measure_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_transaction_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @selinux_transaction_write(ptr noundef %file, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %3)
  %cmp = icmp ugt i32 %3, 14
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr [15 x ptr], ptr @write_op, i32 0, i32 %3
  %4 = lshr i32 15391, %3
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.not = icmp eq i32 %5, 0
  br i1 %tobool.not.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call1 = tail call ptr @simple_transaction_get(ptr noundef %file, ptr noundef %buf, i32 noundef %size) #18
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call i32 %8(ptr noundef %file, ptr noundef %call1, i32 noundef %size) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp sgt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @simple_transaction_set(ptr noundef %file, i32 noundef %call7) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end5.cleanup_crit_edge, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then3 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %size, %if.then9 ], [ %call7, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_transaction_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_transaction_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_transaction_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_write_context(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size) #1 align 64 {
entry:
  %canon = alloca ptr, align 4
  %sid = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %state1 = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %canon) #18
  %8 = ptrtoint ptr %canon to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %canon, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sid) #18
  %9 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %sid, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #18
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %len, align 4, !annotation !249
  %11 = tail call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 23
  %17 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %19 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %19
  %sid.i = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sid.i, align 4
  %call3 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %21, i32 noundef 2, i16 noundef zeroext 1, i32 noundef 8, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  %call4 = call i32 @security_context_to_sid(ptr noundef %7, ptr noundef %buf, i32 noundef %size, ptr noundef nonnull %sid, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end7:                                          ; preds = %if.end
  %22 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sid, align 4
  %call8 = call i32 @security_sid_to_context(ptr noundef %7, i32 noundef %23, ptr noundef nonnull %canon, ptr noundef nonnull %len) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end11:                                         ; preds = %if.end7
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4092, i32 %25)
  %cmp = icmp ugt i32 %25, 4092
  br i1 %cmp, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %25) #21
  br label %out

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %canon to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %canon, align 4
  %28 = call ptr @memcpy(ptr %buf, ptr %27, i32 %25)
  br label %out

out:                                              ; preds = %if.end14, %do.end, %if.end7.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %length.0 = phi i32 [ %call3, %entry.out_crit_edge ], [ %call4, %if.end.out_crit_edge ], [ %call8, %if.end7.out_crit_edge ], [ -34, %do.end ], [ %25, %if.end14 ]
  %29 = ptrtoint ptr %canon to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %canon, align 4
  call void @kfree(ptr noundef %30) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %canon) #18
  ret i32 %length.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_write_access(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size) #1 align 64 {
entry:
  %ssid = alloca i32, align 4
  %tsid = alloca i32, align 4
  %tclass = alloca i16, align 2
  %avd = alloca %struct.av_decision, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %state1 = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ssid) #18
  %8 = ptrtoint ptr %ssid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ssid, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tsid) #18
  %9 = ptrtoint ptr %tsid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %tsid, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tclass) #18
  %10 = ptrtoint ptr %tclass to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %tclass, align 2, !annotation !249
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %avd) #18
  %11 = getelementptr inbounds %struct.av_decision, ptr %avd, i32 0, i32 1
  %12 = getelementptr inbounds %struct.av_decision, ptr %avd, i32 0, i32 2
  %13 = getelementptr inbounds %struct.av_decision, ptr %avd, i32 0, i32 3
  %14 = getelementptr inbounds %struct.av_decision, ptr %avd, i32 0, i32 4
  %15 = call ptr @memset(ptr %avd, i32 255, i32 20)
  %16 = tail call i32 @llvm.read_register.i32(metadata !238) #18
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
  %security.i.i = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 23
  %22 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %24 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %24
  %sid.i = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sid.i, align 4
  %call3 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %26, i32 noundef 2, i16 noundef zeroext 1, i32 noundef 1, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  %add = add i32 %size, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #23
  %tobool5.not74 = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not74, label %if.end.out_crit_edge, label %if.end8.i.i63

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end8.i.i63:                                    ; preds = %if.end
  %call9.i.i62 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #23
  %tobool10.not = icmp eq ptr %call9.i.i62, null
  br i1 %tobool10.not, label %if.end8.i.i63.out_crit_edge, label %if.end12

if.end8.i.i63.out_crit_edge:                      ; preds = %if.end8.i.i63
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end12:                                         ; preds = %if.end8.i.i63
  %call13 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.58, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call9.i.i62, ptr noundef nonnull %tclass)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call13)
  %cmp.not = icmp eq i32 %call13, 3
  br i1 %cmp.not, label %if.end15, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end15:                                         ; preds = %if.end12
  %call16 = call i32 @security_context_str_to_sid(ptr noundef %7, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %ssid, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end19:                                         ; preds = %if.end15
  %call20 = call i32 @security_context_str_to_sid(ptr noundef %7, ptr noundef nonnull %call9.i.i62, ptr noundef nonnull %tsid, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  %27 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ssid, align 4
  %29 = ptrtoint ptr %tsid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tsid, align 4
  %31 = ptrtoint ptr %tclass to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %tclass, align 2
  call void @security_compute_av_user(ptr noundef %7, i32 noundef %28, i32 noundef %30, i16 noundef zeroext %32, ptr noundef nonnull %avd) #18
  %33 = ptrtoint ptr %avd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %avd, align 4
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %11, align 4
  %37 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %12, align 4
  %39 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %13, align 4
  %41 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %14, align 4
  %call24 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4092, ptr noundef nonnull @.str.59, i32 noundef %34, i32 noundef -1, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42) #18
  br label %out

out:                                              ; preds = %if.end23, %if.end19.out_crit_edge, %if.end15.out_crit_edge, %if.end12.out_crit_edge, %if.end8.i.i63.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %scon.0 = phi ptr [ null, %entry.out_crit_edge ], [ %call9.i.i, %if.end12.out_crit_edge ], [ %call9.i.i, %if.end15.out_crit_edge ], [ %call9.i.i, %if.end19.out_crit_edge ], [ %call9.i.i, %if.end23 ], [ %call9.i.i, %if.end8.i.i63.out_crit_edge ], [ null, %if.end.out_crit_edge ]
  %tcon.0 = phi ptr [ null, %entry.out_crit_edge ], [ %call9.i.i62, %if.end12.out_crit_edge ], [ %call9.i.i62, %if.end15.out_crit_edge ], [ %call9.i.i62, %if.end19.out_crit_edge ], [ %call9.i.i62, %if.end23 ], [ null, %if.end8.i.i63.out_crit_edge ], [ null, %if.end.out_crit_edge ]
  %length.0 = phi i32 [ %call3, %entry.out_crit_edge ], [ -22, %if.end12.out_crit_edge ], [ %call16, %if.end15.out_crit_edge ], [ %call20, %if.end19.out_crit_edge ], [ %call24, %if.end23 ], [ -12, %if.end8.i.i63.out_crit_edge ], [ -12, %if.end.out_crit_edge ]
  call void @kfree(ptr noundef %tcon.0) #18
  call void @kfree(ptr noundef %scon.0) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %avd) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tclass) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tsid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ssid) #18
  ret i32 %length.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_write_create(ptr nocapture noundef readonly %file, ptr nocapture noundef %buf, i32 noundef %size) #1 align 64 {
entry:
  %ssid = alloca i32, align 4
  %tsid = alloca i32, align 4
  %newsid = alloca i32, align 4
  %tclass = alloca i16, align 2
  %newcon = alloca ptr, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %state1 = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ssid) #18
  %8 = ptrtoint ptr %ssid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ssid, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tsid) #18
  %9 = ptrtoint ptr %tsid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %tsid, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newsid) #18
  %10 = ptrtoint ptr %newsid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %newsid, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tclass) #18
  %11 = ptrtoint ptr %tclass to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %tclass, align 2, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newcon) #18
  %12 = ptrtoint ptr %newcon to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %newcon, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #18
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %len, align 4, !annotation !249
  %14 = tail call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 99
  %18 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %22 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %22
  %sid.i = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sid.i, align 4
  %call3 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %24, i32 noundef 2, i16 noundef zeroext 1, i32 noundef 2, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  %add = add i32 %size, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #23
  %tobool5.not186 = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not186, label %if.end.out_crit_edge, label %kzalloc.exit149.thread206

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

kzalloc.exit149.thread206:                        ; preds = %if.end
  %call9.i.i146 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #23
  %tobool10.not209 = icmp eq ptr %call9.i.i146, null
  br i1 %tobool10.not209, label %kzalloc.exit149.thread206.out_crit_edge, label %if.end8.i.i175

kzalloc.exit149.thread206.out_crit_edge:          ; preds = %kzalloc.exit149.thread206
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end8.i.i175:                                   ; preds = %kzalloc.exit149.thread206
  %call9.i.i174 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #23
  %tobool15.not = icmp eq ptr %call9.i.i174, null
  br i1 %tobool15.not, label %if.end8.i.i175.out_crit_edge, label %if.end17

if.end8.i.i175.out_crit_edge:                     ; preds = %if.end8.i.i175
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end17:                                         ; preds = %if.end8.i.i175
  %call18 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.60, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call9.i.i146, ptr noundef nonnull %tclass, ptr noundef nonnull %call9.i.i174)
  %25 = add i32 %call18, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %25)
  %26 = icmp ult i32 %25, -2
  br i1 %26, label %if.end17.out_crit_edge, label %if.end21

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call18)
  %cmp22 = icmp eq i32 %call18, 4
  br i1 %cmp22, label %if.end21.do.body_crit_edge, label %if.end21.if.end51_crit_edge

if.end21.if.end51_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51

if.end21.do.body_crit_edge:                       ; preds = %if.end21
  br label %do.body

do.body:                                          ; preds = %if.end43.do.body_crit_edge, %if.end21.do.body_crit_edge
  %r.0 = phi ptr [ %r.1, %if.end43.do.body_crit_edge ], [ %call9.i.i174, %if.end21.do.body_crit_edge ]
  %w.0 = phi ptr [ %incdec.ptr45, %if.end43.do.body_crit_edge ], [ %call9.i.i174, %if.end21.do.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %r.0, i32 1
  %27 = ptrtoint ptr %r.0 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %r.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %28)
  %cmp24 = icmp eq i8 %28, 43
  br i1 %cmp24, label %do.body.if.end43_crit_edge, label %if.else

do.body.if.end43_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

if.else:                                          ; preds = %do.body
  %conv = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %28)
  %cmp27 = icmp eq i8 %28, 37
  br i1 %cmp27, label %if.then29, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

if.then29:                                        ; preds = %if.else
  %29 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %incdec.ptr, align 1
  %call31 = call i32 @hex_to_bin(i8 noundef zeroext %30) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then29.out_crit_edge, label %if.end35

if.then29.out_crit_edge:                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end35:                                         ; preds = %if.then29
  %incdec.ptr30 = getelementptr i8, ptr %r.0, i32 2
  %31 = ptrtoint ptr %incdec.ptr30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr30, align 1
  %call37 = call i32 @hex_to_bin(i8 noundef zeroext %32) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end35.out_crit_edge, label %if.end41

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  %incdec.ptr36 = getelementptr i8, ptr %r.0, i32 3
  %shl = shl i32 %call31, 4
  %or = or i32 %call37, %shl
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.else.if.end43_crit_edge, %do.body.if.end43_crit_edge
  %r.1 = phi ptr [ %incdec.ptr36, %if.end41 ], [ %incdec.ptr, %if.else.if.end43_crit_edge ], [ %incdec.ptr, %do.body.if.end43_crit_edge ]
  %c1.0 = phi i32 [ %or, %if.end41 ], [ %conv, %if.else.if.end43_crit_edge ], [ 32, %do.body.if.end43_crit_edge ]
  %conv44 = trunc i32 %c1.0 to i8
  %incdec.ptr45 = getelementptr i8, ptr %w.0, i32 1
  %33 = ptrtoint ptr %w.0 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv44, ptr %w.0, align 1
  %cmp46.not = icmp eq i32 %c1.0, 0
  br i1 %cmp46.not, label %if.end43.if.end51_crit_edge, label %if.end43.do.body_crit_edge

if.end43.do.body_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51

if.end51:                                         ; preds = %if.end43.if.end51_crit_edge, %if.end21.if.end51_crit_edge
  %objname.1 = phi ptr [ null, %if.end21.if.end51_crit_edge ], [ %call9.i.i174, %if.end43.if.end51_crit_edge ]
  %call52 = call i32 @security_context_str_to_sid(ptr noundef %7, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %ssid, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.out_crit_edge

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end55:                                         ; preds = %if.end51
  %call56 = call i32 @security_context_str_to_sid(ptr noundef %7, ptr noundef nonnull %call9.i.i146, ptr noundef nonnull %tsid, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.out_crit_edge

if.end55.out_crit_edge:                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end59:                                         ; preds = %if.end55
  %34 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ssid, align 4
  %36 = ptrtoint ptr %tsid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tsid, align 4
  %38 = ptrtoint ptr %tclass to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tclass, align 2
  %call60 = call i32 @security_transition_sid_user(ptr noundef %7, i32 noundef %35, i32 noundef %37, i16 noundef zeroext %39, ptr noundef %objname.1, ptr noundef nonnull %newsid) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.out_crit_edge

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end63:                                         ; preds = %if.end59
  %40 = ptrtoint ptr %newsid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %newsid, align 4
  %call64 = call i32 @security_sid_to_context(ptr noundef %7, i32 noundef %41, ptr noundef nonnull %newcon, ptr noundef nonnull %len) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.out_crit_edge

if.end63.out_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end67:                                         ; preds = %if.end63
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4092, i32 %43)
  %cmp68 = icmp ugt i32 %43, 4092
  br i1 %cmp68, label %do.end73, label %if.end75

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #20
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.61, i32 noundef %43) #21
  br label %out

if.end75:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #20
  %44 = ptrtoint ptr %newcon to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %newcon, align 4
  %46 = call ptr @memcpy(ptr %buf, ptr %45, i32 %43)
  br label %out

out:                                              ; preds = %if.end75, %do.end73, %if.end63.out_crit_edge, %if.end59.out_crit_edge, %if.end55.out_crit_edge, %if.end51.out_crit_edge, %if.end35.out_crit_edge, %if.then29.out_crit_edge, %if.end17.out_crit_edge, %if.end8.i.i175.out_crit_edge, %kzalloc.exit149.thread206.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %scon.0 = phi ptr [ null, %entry.out_crit_edge ], [ %call9.i.i, %if.end17.out_crit_edge ], [ %call9.i.i, %if.end51.out_crit_edge ], [ %call9.i.i, %if.end55.out_crit_edge ], [ %call9.i.i, %if.end59.out_crit_edge ], [ %call9.i.i, %if.end63.out_crit_edge ], [ %call9.i.i, %do.end73 ], [ %call9.i.i, %if.end75 ], [ %call9.i.i, %if.end8.i.i175.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ %call9.i.i, %kzalloc.exit149.thread206.out_crit_edge ], [ %call9.i.i, %if.then29.out_crit_edge ], [ %call9.i.i, %if.end35.out_crit_edge ]
  %tcon.0 = phi ptr [ null, %entry.out_crit_edge ], [ %call9.i.i146, %if.end17.out_crit_edge ], [ %call9.i.i146, %if.end51.out_crit_edge ], [ %call9.i.i146, %if.end55.out_crit_edge ], [ %call9.i.i146, %if.end59.out_crit_edge ], [ %call9.i.i146, %if.end63.out_crit_edge ], [ %call9.i.i146, %do.end73 ], [ %call9.i.i146, %if.end75 ], [ %call9.i.i146, %if.end8.i.i175.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ null, %kzalloc.exit149.thread206.out_crit_edge ], [ %call9.i.i146, %if.then29.out_crit_edge ], [ %call9.i.i146, %if.end35.out_crit_edge ]
  %namebuf.0 = phi ptr [ null, %entry.out_crit_edge ], [ %call9.i.i174, %if.end17.out_crit_edge ], [ %call9.i.i174, %if.end51.out_crit_edge ], [ %call9.i.i174, %if.end55.out_crit_edge ], [ %call9.i.i174, %if.end59.out_crit_edge ], [ %call9.i.i174, %if.end63.out_crit_edge ], [ %call9.i.i174, %do.end73 ], [ %call9.i.i174, %if.end75 ], [ null, %if.end8.i.i175.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ null, %kzalloc.exit149.thread206.out_crit_edge ], [ %call9.i.i174, %if.then29.out_crit_edge ], [ %call9.i.i174, %if.end35.out_crit_edge ]
  %length.0 = phi i32 [ %call3, %entry.out_crit_edge ], [ -22, %if.end17.out_crit_edge ], [ %call52, %if.end51.out_crit_edge ], [ %call56, %if.end55.out_crit_edge ], [ %call60, %if.end59.out_crit_edge ], [ %call64, %if.end63.out_crit_edge ], [ -34, %do.end73 ], [ %43, %if.end75 ], [ -12, %if.end8.i.i175.out_crit_edge ], [ -12, %if.end.out_crit_edge ], [ -12, %kzalloc.exit149.thread206.out_crit_edge ], [ -22, %if.then29.out_crit_edge ], [ -22, %if.end35.out_crit_edge ]
  %47 = ptrtoint ptr %newcon to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %newcon, align 4
  call void @kfree(ptr noundef %48) #18
  call void @kfree(ptr noundef %namebuf.0) #18
  call void @kfree(ptr noundef %tcon.0) #18
  call void @kfree(ptr noundef %scon.0) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newcon) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tclass) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newsid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tsid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ssid) #18
  ret i32 %length.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_write_relabel(ptr nocapture noundef readonly %file, ptr nocapture noundef %buf, i32 noundef %size) #1 align 64 {
entry:
  %ssid = alloca i32, align 4
  %tsid = alloca i32, align 4
  %newsid = alloca i32, align 4
  %tclass = alloca i16, align 2
  %newcon = alloca ptr, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %state1 = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ssid) #18
  %8 = ptrtoint ptr %ssid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ssid, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tsid) #18
  %9 = ptrtoint ptr %tsid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %tsid, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newsid) #18
  %10 = ptrtoint ptr %newsid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %newsid, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tclass) #18
  %11 = ptrtoint ptr %tclass to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %tclass, align 2, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newcon) #18
  %12 = ptrtoint ptr %newcon to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %newcon, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #18
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %len, align 4, !annotation !249
  %14 = tail call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 99
  %18 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %22 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %22
  %sid.i = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sid.i, align 4
  %call3 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %24, i32 noundef 2, i16 noundef zeroext 1, i32 noundef 32, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  %add = add i32 %size, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #23
  %tobool5.not87 = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not87, label %if.end.out_crit_edge, label %if.end8.i.i76

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end8.i.i76:                                    ; preds = %if.end
  %call9.i.i75 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #23
  %tobool10.not = icmp eq ptr %call9.i.i75, null
  br i1 %tobool10.not, label %if.end8.i.i76.out_crit_edge, label %if.end12

if.end8.i.i76.out_crit_edge:                      ; preds = %if.end8.i.i76
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end12:                                         ; preds = %if.end8.i.i76
  %call13 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.58, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call9.i.i75, ptr noundef nonnull %tclass)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call13)
  %cmp.not = icmp eq i32 %call13, 3
  br i1 %cmp.not, label %if.end15, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end15:                                         ; preds = %if.end12
  %call16 = call i32 @security_context_str_to_sid(ptr noundef %7, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %ssid, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end19:                                         ; preds = %if.end15
  %call20 = call i32 @security_context_str_to_sid(ptr noundef %7, ptr noundef nonnull %call9.i.i75, ptr noundef nonnull %tsid, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end23:                                         ; preds = %if.end19
  %25 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ssid, align 4
  %27 = ptrtoint ptr %tsid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tsid, align 4
  %29 = ptrtoint ptr %tclass to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tclass, align 2
  %call24 = call i32 @security_change_sid(ptr noundef %7, i32 noundef %26, i32 noundef %28, i16 noundef zeroext %30, ptr noundef nonnull %newsid) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end27:                                         ; preds = %if.end23
  %31 = ptrtoint ptr %newsid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %newsid, align 4
  %call28 = call i32 @security_sid_to_context(ptr noundef %7, i32 noundef %32, ptr noundef nonnull %newcon, ptr noundef nonnull %len) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.out_crit_edge

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end31:                                         ; preds = %if.end27
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4092, i32 %34)
  %cmp32 = icmp ugt i32 %34, 4092
  br i1 %cmp32, label %if.end31.out_crit_edge, label %if.end34

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end34:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  %35 = ptrtoint ptr %newcon to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %newcon, align 4
  %37 = call ptr @memcpy(ptr %buf, ptr %36, i32 %34)
  br label %out

out:                                              ; preds = %if.end34, %if.end31.out_crit_edge, %if.end27.out_crit_edge, %if.end23.out_crit_edge, %if.end19.out_crit_edge, %if.end15.out_crit_edge, %if.end12.out_crit_edge, %if.end8.i.i76.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %scon.0 = phi ptr [ null, %entry.out_crit_edge ], [ %call9.i.i, %if.end12.out_crit_edge ], [ %call9.i.i, %if.end15.out_crit_edge ], [ %call9.i.i, %if.end19.out_crit_edge ], [ %call9.i.i, %if.end23.out_crit_edge ], [ %call9.i.i, %if.end27.out_crit_edge ], [ %call9.i.i, %if.end31.out_crit_edge ], [ %call9.i.i, %if.end34 ], [ %call9.i.i, %if.end8.i.i76.out_crit_edge ], [ null, %if.end.out_crit_edge ]
  %tcon.0 = phi ptr [ null, %entry.out_crit_edge ], [ %call9.i.i75, %if.end12.out_crit_edge ], [ %call9.i.i75, %if.end15.out_crit_edge ], [ %call9.i.i75, %if.end19.out_crit_edge ], [ %call9.i.i75, %if.end23.out_crit_edge ], [ %call9.i.i75, %if.end27.out_crit_edge ], [ %call9.i.i75, %if.end31.out_crit_edge ], [ %call9.i.i75, %if.end34 ], [ null, %if.end8.i.i76.out_crit_edge ], [ null, %if.end.out_crit_edge ]
  %length.0 = phi i32 [ %call3, %entry.out_crit_edge ], [ -22, %if.end12.out_crit_edge ], [ %call16, %if.end15.out_crit_edge ], [ %call20, %if.end19.out_crit_edge ], [ %call24, %if.end23.out_crit_edge ], [ %call28, %if.end27.out_crit_edge ], [ -34, %if.end31.out_crit_edge ], [ %34, %if.end34 ], [ -12, %if.end8.i.i76.out_crit_edge ], [ -12, %if.end.out_crit_edge ]
  %38 = ptrtoint ptr %newcon to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %newcon, align 4
  call void @kfree(ptr noundef %39) #18
  call void @kfree(ptr noundef %tcon.0) #18
  call void @kfree(ptr noundef %scon.0) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newcon) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tclass) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newsid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tsid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ssid) #18
  ret i32 %length.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_write_user(ptr nocapture noundef readonly %file, ptr nocapture noundef %buf, i32 noundef %size) #1 align 64 {
entry:
  %sid = alloca i32, align 4
  %sids = alloca ptr, align 4
  %newcon = alloca ptr, align 4
  %len = alloca i32, align 4
  %nsids = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %state1 = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sid) #18
  %8 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %sid, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sids) #18
  %9 = ptrtoint ptr %sids to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %sids, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newcon) #18
  %10 = ptrtoint ptr %newcon to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %newcon, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #18
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %len, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsids) #18
  %12 = ptrtoint ptr %nsids to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %nsids, align 4, !annotation !249
  %13 = tail call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 99
  %17 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 23
  %19 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %21 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %21
  %sid.i = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sid.i, align 4
  %call3 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %23, i32 noundef 2, i16 noundef zeroext 1, i32 noundef 64, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  %add = add i32 %size, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #23
  %tobool5.not94 = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not94, label %if.end.out_crit_edge, label %if.end8.i.i83

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end8.i.i83:                                    ; preds = %if.end
  %call9.i.i82 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #23
  %tobool10.not = icmp eq ptr %call9.i.i82, null
  br i1 %tobool10.not, label %if.end8.i.i83.out_crit_edge, label %if.end12

if.end8.i.i83.out_crit_edge:                      ; preds = %if.end8.i.i83
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end12:                                         ; preds = %if.end8.i.i83
  %call13 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.62, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call9.i.i82)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call13)
  %cmp.not = icmp eq i32 %call13, 2
  br i1 %cmp.not, label %if.end15, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end15:                                         ; preds = %if.end12
  %call16 = call i32 @security_context_str_to_sid(ptr noundef %7, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %sid, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end19:                                         ; preds = %if.end15
  %24 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sid, align 4
  %call20 = call i32 @security_get_user_sids(ptr noundef %7, i32 noundef %25, ptr noundef nonnull %call9.i.i82, ptr noundef nonnull %sids, ptr noundef nonnull %nsids) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end23:                                         ; preds = %if.end19
  %26 = ptrtoint ptr %nsids to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nsids, align 4
  %call24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.63, i32 noundef %27)
  %add25 = add i32 %call24, 1
  %28 = ptrtoint ptr %nsids to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nsids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp26108.not = icmp eq i32 %29, 0
  br i1 %cmp26108.not, label %if.end23.out_crit_edge, label %for.body.preheader

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

for.body.preheader:                               ; preds = %if.end23
  %add.ptr = getelementptr i8, ptr %buf, i32 %add25
  br label %for.body

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %for.body.preheader
  %i.0111 = phi i32 [ %inc, %if.end34.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %length.0110 = phi i32 [ %add36, %if.end34.for.body_crit_edge ], [ %add25, %for.body.preheader ]
  %ptr.0109 = phi ptr [ %add.ptr35, %if.end34.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %30 = ptrtoint ptr %sids to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sids, align 4
  %arrayidx = getelementptr i32, ptr %31, i32 %i.0111
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %call27 = call i32 @security_sid_to_context(ptr noundef %7, i32 noundef %33, ptr noundef nonnull %newcon, ptr noundef nonnull %len) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end30:                                         ; preds = %for.body
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %add31 = add i32 %35, %length.0110
  call void @__sanitizer_cov_trace_const_cmp4(i32 4091, i32 %add31)
  %cmp32 = icmp ugt i32 %add31, 4091
  %36 = ptrtoint ptr %newcon to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %newcon, align 4
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef %37) #18
  br label %out

if.end34:                                         ; preds = %if.end30
  %38 = call ptr @memcpy(ptr %ptr.0109, ptr %37, i32 %35)
  call void @kfree(ptr noundef %37) #18
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  %add.ptr35 = getelementptr i8, ptr %ptr.0109, i32 %40
  %add36 = add i32 %40, %length.0110
  %inc = add nuw i32 %i.0111, 1
  %41 = ptrtoint ptr %nsids to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nsids, align 4
  %cmp26 = icmp ult i32 %inc, %42
  br i1 %cmp26, label %if.end34.for.body_crit_edge, label %if.end34.out_crit_edge

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

out:                                              ; preds = %if.end34.out_crit_edge, %if.then33, %for.body.out_crit_edge, %if.end23.out_crit_edge, %if.end19.out_crit_edge, %if.end15.out_crit_edge, %if.end12.out_crit_edge, %if.end8.i.i83.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %con.0 = phi ptr [ null, %entry.out_crit_edge ], [ %call9.i.i, %if.end12.out_crit_edge ], [ %call9.i.i, %if.end15.out_crit_edge ], [ %call9.i.i, %if.end19.out_crit_edge ], [ %call9.i.i, %if.then33 ], [ %call9.i.i, %if.end8.i.i83.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ %call9.i.i, %if.end23.out_crit_edge ], [ %call9.i.i, %for.body.out_crit_edge ], [ %call9.i.i, %if.end34.out_crit_edge ]
  %user.0 = phi ptr [ null, %entry.out_crit_edge ], [ %call9.i.i82, %if.end12.out_crit_edge ], [ %call9.i.i82, %if.end15.out_crit_edge ], [ %call9.i.i82, %if.end19.out_crit_edge ], [ %call9.i.i82, %if.then33 ], [ null, %if.end8.i.i83.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ %call9.i.i82, %if.end23.out_crit_edge ], [ %call9.i.i82, %for.body.out_crit_edge ], [ %call9.i.i82, %if.end34.out_crit_edge ]
  %length.1 = phi i32 [ %call3, %entry.out_crit_edge ], [ -22, %if.end12.out_crit_edge ], [ %call16, %if.end15.out_crit_edge ], [ %call20, %if.end19.out_crit_edge ], [ -34, %if.then33 ], [ -12, %if.end8.i.i83.out_crit_edge ], [ -12, %if.end.out_crit_edge ], [ %add25, %if.end23.out_crit_edge ], [ %add36, %if.end34.out_crit_edge ], [ %call27, %for.body.out_crit_edge ]
  %43 = ptrtoint ptr %sids to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sids, align 4
  call void @kfree(ptr noundef %44) #18
  call void @kfree(ptr noundef %user.0) #18
  call void @kfree(ptr noundef %con.0) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsids) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newcon) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sids) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sid) #18
  ret i32 %length.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_write_member(ptr nocapture noundef readonly %file, ptr nocapture noundef %buf, i32 noundef %size) #1 align 64 {
entry:
  %ssid = alloca i32, align 4
  %tsid = alloca i32, align 4
  %newsid = alloca i32, align 4
  %tclass = alloca i16, align 2
  %newcon = alloca ptr, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %state1 = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ssid) #18
  %8 = ptrtoint ptr %ssid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ssid, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tsid) #18
  %9 = ptrtoint ptr %tsid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %tsid, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newsid) #18
  %10 = ptrtoint ptr %newsid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %newsid, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tclass) #18
  %11 = ptrtoint ptr %tclass to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %tclass, align 2, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newcon) #18
  %12 = ptrtoint ptr %newcon to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %newcon, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #18
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %len, align 4, !annotation !249
  %14 = tail call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 99
  %18 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %22 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %22
  %sid.i = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sid.i, align 4
  %call3 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %24, i32 noundef 2, i16 noundef zeroext 1, i32 noundef 4, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  %add = add i32 %size, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #23
  %tobool5.not88 = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not88, label %if.end.out_crit_edge, label %if.end8.i.i77

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end8.i.i77:                                    ; preds = %if.end
  %call9.i.i76 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #23
  %tobool10.not = icmp eq ptr %call9.i.i76, null
  br i1 %tobool10.not, label %if.end8.i.i77.out_crit_edge, label %if.end12

if.end8.i.i77.out_crit_edge:                      ; preds = %if.end8.i.i77
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end12:                                         ; preds = %if.end8.i.i77
  %call13 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.58, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call9.i.i76, ptr noundef nonnull %tclass)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call13)
  %cmp.not = icmp eq i32 %call13, 3
  br i1 %cmp.not, label %if.end15, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end15:                                         ; preds = %if.end12
  %call16 = call i32 @security_context_str_to_sid(ptr noundef %7, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %ssid, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end19:                                         ; preds = %if.end15
  %call20 = call i32 @security_context_str_to_sid(ptr noundef %7, ptr noundef nonnull %call9.i.i76, ptr noundef nonnull %tsid, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end23:                                         ; preds = %if.end19
  %25 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ssid, align 4
  %27 = ptrtoint ptr %tsid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tsid, align 4
  %29 = ptrtoint ptr %tclass to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tclass, align 2
  %call24 = call i32 @security_member_sid(ptr noundef %7, i32 noundef %26, i32 noundef %28, i16 noundef zeroext %30, ptr noundef nonnull %newsid) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end27:                                         ; preds = %if.end23
  %31 = ptrtoint ptr %newsid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %newsid, align 4
  %call28 = call i32 @security_sid_to_context(ptr noundef %7, i32 noundef %32, ptr noundef nonnull %newcon, ptr noundef nonnull %len) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.out_crit_edge

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end31:                                         ; preds = %if.end27
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4092, i32 %34)
  %cmp32 = icmp ugt i32 %34, 4092
  br i1 %cmp32, label %do.end, label %if.end35

do.end:                                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.64, i32 noundef %34) #21
  br label %out

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  %35 = ptrtoint ptr %newcon to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %newcon, align 4
  %37 = call ptr @memcpy(ptr %buf, ptr %36, i32 %34)
  br label %out

out:                                              ; preds = %if.end35, %do.end, %if.end27.out_crit_edge, %if.end23.out_crit_edge, %if.end19.out_crit_edge, %if.end15.out_crit_edge, %if.end12.out_crit_edge, %if.end8.i.i77.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %scon.0 = phi ptr [ null, %entry.out_crit_edge ], [ %call9.i.i, %if.end12.out_crit_edge ], [ %call9.i.i, %if.end15.out_crit_edge ], [ %call9.i.i, %if.end19.out_crit_edge ], [ %call9.i.i, %if.end23.out_crit_edge ], [ %call9.i.i, %if.end27.out_crit_edge ], [ %call9.i.i, %do.end ], [ %call9.i.i, %if.end35 ], [ %call9.i.i, %if.end8.i.i77.out_crit_edge ], [ null, %if.end.out_crit_edge ]
  %tcon.0 = phi ptr [ null, %entry.out_crit_edge ], [ %call9.i.i76, %if.end12.out_crit_edge ], [ %call9.i.i76, %if.end15.out_crit_edge ], [ %call9.i.i76, %if.end19.out_crit_edge ], [ %call9.i.i76, %if.end23.out_crit_edge ], [ %call9.i.i76, %if.end27.out_crit_edge ], [ %call9.i.i76, %do.end ], [ %call9.i.i76, %if.end35 ], [ null, %if.end8.i.i77.out_crit_edge ], [ null, %if.end.out_crit_edge ]
  %length.0 = phi i32 [ %call3, %entry.out_crit_edge ], [ -22, %if.end12.out_crit_edge ], [ %call16, %if.end15.out_crit_edge ], [ %call20, %if.end19.out_crit_edge ], [ %call24, %if.end23.out_crit_edge ], [ %call28, %if.end27.out_crit_edge ], [ -34, %do.end ], [ %34, %if.end35 ], [ -12, %if.end8.i.i77.out_crit_edge ], [ -12, %if.end.out_crit_edge ]
  %38 = ptrtoint ptr %newcon to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %newcon, align 4
  call void @kfree(ptr noundef %39) #18
  call void @kfree(ptr noundef %tcon.0) #18
  call void @kfree(ptr noundef %scon.0) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newcon) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tclass) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newsid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tsid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ssid) #18
  ret i32 %length.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_context_to_sid(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sid_to_context(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_context_str_to_sid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_compute_av_user(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_transition_sid_user(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_change_sid(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_get_user_sids(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_member_sid(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_read_policyvers(ptr nocapture noundef readnone %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %tmpbuf = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmpbuf) #18
  %0 = call ptr @memset(ptr %tmpbuf, i32 255, i32 12)
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tmpbuf, i32 noundef 12, ptr noundef nonnull @.str.63, i32 noundef 33) #18
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tmpbuf, i32 noundef %call) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmpbuf) #18
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_commit_bools_write(ptr nocapture noundef readonly %filep, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #1 align 64 {
entry:
  %new_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_value) #18
  %6 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %new_value, align 4, !annotation !249
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %count)
  %cmp = icmp ugt i32 %count, 4095
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp1.not = icmp eq i64 %8, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #18
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %state = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  %policy_mutex = getelementptr inbounds %struct.selinux_state, ptr %11, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %policy_mutex, i32 noundef 0) #18
  %12 = tail call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 99
  %16 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %20 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %20
  %sid.i = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sid.i, align 4
  %call10 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %22, i32 noundef 2, i16 noundef zeroext 1, i32 noundef 256, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call4, ptr noundef nonnull @.str.52, ptr noundef nonnull %new_value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 1
  br i1 %cmp14.not, label %if.end16, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end16:                                         ; preds = %if.end12
  %23 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %new_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool17.not = icmp eq i32 %24, 0
  br i1 %tobool17.not, label %if.end16.if.end23.thread_crit_edge, label %land.lhs.true

if.end16.if.end23.thread_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.thread

land.lhs.true:                                    ; preds = %if.end16
  %bool_pending_values = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 3
  %25 = ptrtoint ptr %bool_pending_values to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bool_pending_values, align 4
  %tobool18.not = icmp eq ptr %26, null
  br i1 %tobool18.not, label %land.lhs.true.if.end23.thread_crit_edge, label %if.end23

land.lhs.true.if.end23.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.thread

if.end23:                                         ; preds = %land.lhs.true
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state, align 4
  %bool_num = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %bool_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bool_num, align 4
  %call22 = call i32 @security_set_bools(ptr noundef %28, i32 noundef %30, ptr noundef nonnull %26) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not = icmp eq i32 %call22, 0
  br i1 %tobool24.not, label %if.end23.if.end23.thread_crit_edge, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end23.if.end23.thread_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.thread

if.end23.thread:                                  ; preds = %if.end23.if.end23.thread_crit_edge, %land.lhs.true.if.end23.thread_crit_edge, %if.end16.if.end23.thread_crit_edge
  br label %out

out:                                              ; preds = %if.end23.thread, %if.end23.out_crit_edge, %if.end12.out_crit_edge, %if.end8.out_crit_edge
  %length.1 = phi i32 [ %call10, %if.end8.out_crit_edge ], [ -22, %if.end12.out_crit_edge ], [ %count, %if.end23.thread ], [ %call22, %if.end23.out_crit_edge ]
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %state, align 4
  %policy_mutex28 = getelementptr inbounds %struct.selinux_state, ptr %32, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %policy_mutex28) #18
  call void @kfree(ptr noundef %call4) #18
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then6 ], [ %length.1, %out ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_value) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_set_bools(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_read_mls(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %tmpbuf = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmpbuf) #18
  %state = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %6 = call ptr @memset(ptr %tmpbuf, i32 255, i32 12)
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 4
  %call1 = tail call i32 @security_mls_enabled(ptr noundef %8) #18
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tmpbuf, i32 noundef 12, ptr noundef nonnull @.str.52, i32 noundef %call1) #18
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tmpbuf, i32 noundef %call2) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmpbuf) #18
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_mls_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_write_disable(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #1 align 64 {
entry:
  %new_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_value) #18
  %6 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %new_value, align 4, !annotation !249
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %count)
  %cmp = icmp ugt i32 %count, 4095
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp2.not = icmp eq i64 %8, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #18
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call5, ptr noundef nonnull @.str.52, ptr noundef nonnull %new_value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 1
  br i1 %cmp11.not, label %if.end13, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end13:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %new_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end13.out_crit_edge, label %if.then14

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then14:                                        ; preds = %if.end13
  %state = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %enforcing.i = getelementptr inbounds %struct.selinux_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %enforcing.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %enforcing.i, align 1, !range !255
  %call17 = call i32 @selinux_disable(ptr noundef %13) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then14.out_crit_edge

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #20
  %16 = zext i8 %15 to i32
  %17 = call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %loginuid.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 121
  %21 = ptrtoint ptr %loginuid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %retval.sroa.0.0.copyload.i = load i32, ptr %loginuid.i, align 16
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.copyload.i, 0
  %call25 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #18
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %sessionid.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 122
  %24 = ptrtoint ptr %sessionid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sessionid.i, align 4
  call void (ptr, i32, i32, ptr, ...) @audit_log(ptr noundef null, i32 noundef 3264, i32 noundef 1404, ptr noundef nonnull @.str.67, i32 noundef %16, i32 noundef %16, i32 noundef %call25, i32 noundef %25) #18
  br label %out

out:                                              ; preds = %if.end20, %if.then14.out_crit_edge, %if.end13.out_crit_edge, %if.end9.out_crit_edge
  %length.0 = phi i32 [ -22, %if.end9.out_crit_edge ], [ %call17, %if.then14.out_crit_edge ], [ %count, %if.end20 ], [ %count, %if.end13.out_crit_edge ]
  call void @kfree(ptr noundef %call5) #18
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then7 ], [ %length.0, %out ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_value) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @selinux_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_read_checkreqprot(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %tmpbuf = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmpbuf) #18
  %state = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %6 = call ptr @memset(ptr %tmpbuf, i32 255, i32 12)
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 4
  %checkreqprot.i = getelementptr inbounds %struct.selinux_state, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %checkreqprot.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %checkreqprot.i, align 2, !range !255
  %11 = zext i8 %10 to i32
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tmpbuf, i32 noundef 12, ptr noundef nonnull @.str.63, i32 noundef %11) #18
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tmpbuf, i32 noundef %call2) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmpbuf) #18
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_write_checkreqprot(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #1 align 64 {
entry:
  %new_value = alloca i32, align 4
  %comm = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_value) #18
  %6 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %new_value, align 4, !annotation !249
  %7 = tail call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %15 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %15
  %sid.i = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sid.i, align 4
  %call2 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %17, i32 noundef 2, i16 noundef zeroext 1, i32 noundef 1024, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %count)
  %cmp = icmp ugt i32 %count, 4095
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %18 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp5.not = icmp eq i64 %19, 0
  br i1 %cmp5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call8 = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #18
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %20 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call13 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call8, ptr noundef nonnull @.str.63, ptr noundef nonnull %new_value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 1
  br i1 %cmp14.not, label %if.end16, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end16:                                         ; preds = %if.end12
  %21 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %new_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool17.not = icmp eq i32 %22, 0
  br i1 %tobool17.not, label %if.end16.if.end40_crit_edge, label %if.then18

if.end16.if.end40_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40

if.then18:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %comm) #18
  %23 = call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %comm20 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 101
  %27 = call ptr @memcpy(ptr %comm, ptr %comm20, i32 16)
  %.b56 = load i1, ptr @sel_write_checkreqprot.__already_done, align 1
  br i1 %.b56, label %if.then18.if.end32_crit_edge, label %if.then27, !prof !250

if.then18.if.end32_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

if.then27:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @sel_write_checkreqprot.__already_done, align 1
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid, align 8
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull %comm, i32 noundef %31) #21
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.then18.if.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %comm) #18
  br label %if.end40

if.end40:                                         ; preds = %if.end32, %if.end16.if.end40_crit_edge
  %state = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %state, align 4
  %34 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %new_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool41 = icmp ne i32 %35, 0
  %frombool.i = zext i1 %tobool41 to i8
  %checkreqprot.i = getelementptr inbounds %struct.selinux_state, ptr %33, i32 0, i32 2
  %36 = ptrtoint ptr %checkreqprot.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store volatile i8 %frombool.i, ptr %checkreqprot.i, align 2
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %state, align 4
  call void @selinux_ima_measure_state(ptr noundef %38) #18
  br label %out

out:                                              ; preds = %if.end40, %if.end12.out_crit_edge
  %length.0 = phi i32 [ -22, %if.end12.out_crit_edge ], [ %count, %if.end40 ]
  call void @kfree(ptr noundef %call8) #18
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then10, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.then10 ], [ %length.0, %out ], [ %call2, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_value) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_read_handle_unknown(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %tmpbuf = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %state1 = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmpbuf) #18
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %8 = call ptr @memset(ptr %tmpbuf, i32 255, i32 12)
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %10)
  %cmp = icmp eq i32 %10, 17
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call3 = tail call i32 @security_get_reject_unknown(ptr noundef %7) #18
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call4 = tail call i32 @security_get_allow_unknown(ptr noundef %7) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %lnot.ext = zext i1 %tobool.not to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call3, %cond.true ], [ %lnot.ext, %cond.false ]
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tmpbuf, i32 noundef 12, ptr noundef nonnull @.str.52, i32 noundef %cond) #18
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tmpbuf, i32 noundef %call5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmpbuf) #18
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_get_reject_unknown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_get_allow_unknown(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_read_handle_status(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !248

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/selinux/selinuxfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 243, 0\0A.popsection", ""() #18, !srcloc !256
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call ptr @page_address(ptr noundef nonnull %1) #18
  %call10 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %call, i32 noundef 20) #18
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_mmap_handle_status(ptr nocapture noundef readonly %filp, ptr noundef %vma) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vma, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !248

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/selinux/selinuxfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 256, 0\0A.popsection", ""() #18, !srcloc !257
  unreachable

do.end9:                                          ; preds = %entry
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end, align 4
  %sub = sub i32 %5, %3
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %6 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp10.not = icmp eq i32 %sub, 4096
  %or.cond = select i1 %cmp.not, i1 %cmp10.not, i1 false
  br i1 %or.cond, label %if.end12, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %8 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %and17 = and i32 %9, -33
  %10 = ptrtoint ptr %vm_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and17, ptr %vm_flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %12
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %13 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_page_prot, align 4
  %call = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %3, i32 noundef %add, i32 noundef 4096, i32 noundef %14) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end12.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end15 ], [ -5, %do.end9.cleanup_crit_edge ], [ -1, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_open_handle_status(ptr nocapture noundef readnone %inode, ptr nocapture noundef %filp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %state = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %call1 = tail call ptr @selinux_kernel_status_page(ptr noundef %7) #18
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @selinux_kernel_status_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_read_policy(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %10 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %10
  %sid.i = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sid.i, align 4
  %call1 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %12, i32 noundef 2, i16 noundef zeroext 1, i32 noundef 2048, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %data = getelementptr inbounds %struct.policy_load_memory, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %call2 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %14, i32 noundef %16) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sel_mmap_policy(ptr nocapture noundef readnone %filp, ptr nocapture noundef %vma) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then:                                          ; preds = %entry
  %and2 = and i32 %1, -33
  %2 = ptrtoint ptr %vm_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and2, ptr %vm_flags, align 4
  %and4 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %3 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vm_flags, align 4
  %or = or i32 %4, 67371008
  store i32 %or, ptr %vm_flags, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %5 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sel_mmap_policy_ops, ptr %vm_ops, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -13, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_open_policy(ptr noundef %inode, ptr nocapture noundef %filp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %state1 = getelementptr inbounds %struct.selinux_fs_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state1, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end9, label %do.body4, !prof !250

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/selinux/selinuxfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 402, 0\0A.popsection", ""() #18, !srcloc !258
  unreachable

do.end9:                                          ; preds = %entry
  %policy_mutex = getelementptr inbounds %struct.selinux_state, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %policy_mutex, i32 noundef 0) #18
  %8 = tail call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %16 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %16
  %sid.i = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sid.i, align 4
  %call11 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %18, i32 noundef 2, i16 noundef zeroext 1, i32 noundef 2048, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end9.err_crit_edge

do.end9.err_crit_edge:                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end14:                                         ; preds = %do.end9
  %policy_opened = getelementptr inbounds %struct.selinux_fs_info, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %policy_opened to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %policy_opened, align 4, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool15.not = icmp eq i8 %20, 0
  br i1 %tobool15.not, label %if.end17, label %if.end14.err_crit_edge

if.end14.err_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end17:                                         ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 8) #22
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.end17.err_crit_edge, label %if.end21

if.end17.err_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end21:                                         ; preds = %if.end17
  %data = getelementptr inbounds %struct.policy_load_memory, ptr %call7.i.i, i32 0, i32 1
  %call22 = tail call i32 @security_read_policy(ptr noundef %5, ptr noundef %data, ptr noundef nonnull %call7.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.err_crit_edge

if.end21.err_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end25:                                         ; preds = %if.end21
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end25
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !259
  %and.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @trace_hardirqs_off() #18
  %23 = tail call ptr @llvm.returnaddress(i32 0) #18
  %24 = ptrtoint ptr %23 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %24) #18
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %24) #18
  tail call void @trace_hardirqs_on() #18
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %25 = tail call ptr @llvm.returnaddress(i32 0) #18
  %26 = ptrtoint ptr %25 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %26) #18
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %26) #18
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !260
  %and.i.i.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !248

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #18, !srcloc !261
  %28 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !262
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !263
  %30 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %31, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %29, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %31, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !264
  %32 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !265
  %34 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %35, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %conv = trunc i64 %33 to i32
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv)
  %cmp.not = icmp eq i32 %37, %conv
  br i1 %cmp.not, label %i_size_read.exit.if.end32_crit_edge, label %if.then29

i_size_read.exit.if.end32_crit_edge:              ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

if.then29:                                        ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #20
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #18
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call7.i.i, align 8
  %conv31 = zext i32 %39 to i64
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %conv31)
  tail call void @up_write(ptr noundef %i_rwsem.i) #18
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %i_size_read.exit.if.end32_crit_edge
  %40 = ptrtoint ptr %policy_opened to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %policy_opened, align 4
  %41 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %private_data, align 4
  %42 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state1, align 4
  %policy_mutex36 = getelementptr inbounds %struct.selinux_state, ptr %43, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %policy_mutex36) #18
  br label %cleanup

err:                                              ; preds = %if.end21.err_crit_edge, %if.end17.err_crit_edge, %if.end14.err_crit_edge, %do.end9.err_crit_edge
  %plm.0 = phi ptr [ null, %do.end9.err_crit_edge ], [ null, %if.end14.err_crit_edge ], [ %call7.i.i, %if.end21.err_crit_edge ], [ null, %if.end17.err_crit_edge ]
  %rc.0 = phi i32 [ %call11, %do.end9.err_crit_edge ], [ -16, %if.end14.err_crit_edge ], [ %call22, %if.end21.err_crit_edge ], [ -12, %if.end17.err_crit_edge ]
  %44 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %state1, align 4
  %policy_mutex38 = getelementptr inbounds %struct.selinux_state, ptr %45, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %policy_mutex38) #18
  %tobool39.not = icmp eq ptr %plm.0, null
  br i1 %tobool39.not, label %err.if.end42_crit_edge, label %if.then40

err.if.end42_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42

if.then40:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #20
  %data41 = getelementptr inbounds %struct.policy_load_memory, ptr %plm.0, i32 0, i32 1
  %46 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data41, align 4
  tail call void @vfree(ptr noundef %47) #18
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %err.if.end42_crit_edge
  tail call void @kfree(ptr noundef %plm.0) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end32
  %retval.0 = phi i32 [ %rc.0, %if.end42 ], [ 0, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_release_policy(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %filp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !248

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/selinux/selinuxfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #18, !srcloc !266
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %policy_opened = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %policy_opened to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %policy_opened, align 4
  %data = getelementptr inbounds %struct.policy_load_memory, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  tail call void @vfree(ptr noundef %8) #18
  tail call void @kfree(ptr noundef nonnull %1) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_mmap_policy_fault(ptr nocapture noundef %vmf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %flags = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %pgoff = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 2
  %8 = ptrtoint ptr %pgoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pgoff, align 4
  %shl = shl i32 %9, 12
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  %add = add i32 %11, 4095
  %div14 = and i32 %add, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %div14)
  %cmp.not = icmp ult i32 %shl, %div14
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.policy_load_memory, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %shl
  %call = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr) #18
  %14 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !250

if.then.i.i:                                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %16, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #20
  %17 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %17, %if.end.i.i ]
  %18 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #18
  %19 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %20, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !248

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.70) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #18, !srcloc !267
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #18
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #18, !srcloc !268
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@sel_mmap_policy_fault, %if.then.i.i.i.i)) #18
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !269

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__page_ref_mod(ptr noundef %18, i32 noundef 1) #18
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %page3 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %22 = ptrtoint ptr %page3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %page3, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_page.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_page.exit ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_read_policy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !270
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !271
  %9 = tail call i32 @llvm.read_register.i32(metadata !238) #18
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
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !272
  %18 = tail call i32 @llvm.read_register.i32(metadata !238) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !238) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !273
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
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !274
  %37 = tail call i32 @llvm.read_register.i32(metadata !238) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !250

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 271, i32 noundef 9, ptr noundef null) #18
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !275
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #18
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #18
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !276
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !277
  %48 = tail call i32 @llvm.read_register.i32(metadata !238) #18
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
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_write_validatetrans(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #1 align 64 {
entry:
  %osid = alloca i32, align 4
  %nsid = alloca i32, align 4
  %tsid = alloca i32, align 4
  %tclass = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %state1 = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %osid) #18
  %8 = ptrtoint ptr %osid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %osid, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsid) #18
  %9 = ptrtoint ptr %nsid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %nsid, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tsid) #18
  %10 = ptrtoint ptr %tsid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %tsid, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tclass) #18
  %11 = ptrtoint ptr %tclass to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %tclass, align 2, !annotation !249
  %12 = tail call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 99
  %16 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %20 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %20
  %sid.i = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sid.i, align 4
  %call3 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %22, i32 noundef 2, i16 noundef zeroext 1, i32 noundef 4096, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %count)
  %cmp = icmp ugt i32 %count, 4095
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end5:                                          ; preds = %if.end
  %23 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %cmp6.not = icmp eq i64 %24, 0
  br i1 %cmp6.not, label %if.end8, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end8:                                          ; preds = %if.end5
  %call9 = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #18
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  %25 = ptrtoint ptr %call9 to i32
  br label %out

if.end13:                                         ; preds = %if.end8
  %add = add nuw nsw i32 %count, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #23
  %tobool15.not130 = icmp eq ptr %call9.i.i, null
  br i1 %tobool15.not130, label %if.end13.out_crit_edge, label %kzalloc.exit100.thread

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

kzalloc.exit100.thread:                           ; preds = %if.end13
  %call9.i.i97 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #23
  %tobool20.not137 = icmp eq ptr %call9.i.i97, null
  br i1 %tobool20.not137, label %kzalloc.exit100.thread.out_crit_edge, label %if.end8.i.i126

kzalloc.exit100.thread.out_crit_edge:             ; preds = %kzalloc.exit100.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end8.i.i126:                                   ; preds = %kzalloc.exit100.thread
  %call9.i.i125 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #23
  %tobool25.not = icmp eq ptr %call9.i.i125, null
  br i1 %tobool25.not, label %if.end8.i.i126.out_crit_edge, label %if.end27

if.end8.i.i126.out_crit_edge:                     ; preds = %if.end8.i.i126
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end27:                                         ; preds = %if.end8.i.i126
  %call28 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call9, ptr noundef nonnull @.str.60, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call9.i.i97, ptr noundef nonnull %tclass, ptr noundef nonnull %call9.i.i125)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 4
  br i1 %cmp29.not, label %if.end31, label %if.end27.out_crit_edge

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end31:                                         ; preds = %if.end27
  %call32 = call i32 @security_context_str_to_sid(ptr noundef %7, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %osid, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end35:                                         ; preds = %if.end31
  %call36 = call i32 @security_context_str_to_sid(ptr noundef %7, ptr noundef nonnull %call9.i.i97, ptr noundef nonnull %nsid, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.out_crit_edge

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end39:                                         ; preds = %if.end35
  %call40 = call i32 @security_context_str_to_sid(ptr noundef %7, ptr noundef nonnull %call9.i.i125, ptr noundef nonnull %tsid, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.out_crit_edge

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end43:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %osid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %osid, align 4
  %28 = ptrtoint ptr %nsid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nsid, align 4
  %30 = ptrtoint ptr %tsid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tsid, align 4
  %32 = ptrtoint ptr %tclass to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %tclass, align 2
  %call44 = call i32 @security_validate_transition_user(ptr noundef %7, i32 noundef %27, i32 noundef %29, i32 noundef %31, i16 noundef zeroext %33) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  %spec.select = select i1 %tobool45.not, i32 %count, i32 %call44
  br label %out

out:                                              ; preds = %if.end43, %if.end39.out_crit_edge, %if.end35.out_crit_edge, %if.end31.out_crit_edge, %if.end27.out_crit_edge, %if.end8.i.i126.out_crit_edge, %kzalloc.exit100.thread.out_crit_edge, %if.end13.out_crit_edge, %if.then11, %if.end5.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %oldcon.0 = phi ptr [ null, %entry.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ null, %if.end5.out_crit_edge ], [ null, %if.then11 ], [ %call9.i.i, %if.end27.out_crit_edge ], [ %call9.i.i, %if.end31.out_crit_edge ], [ %call9.i.i, %if.end35.out_crit_edge ], [ %call9.i.i, %if.end39.out_crit_edge ], [ %call9.i.i, %if.end8.i.i126.out_crit_edge ], [ %call9.i.i, %if.end43 ], [ null, %if.end13.out_crit_edge ], [ %call9.i.i, %kzalloc.exit100.thread.out_crit_edge ]
  %newcon.0 = phi ptr [ null, %entry.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ null, %if.end5.out_crit_edge ], [ null, %if.then11 ], [ %call9.i.i97, %if.end27.out_crit_edge ], [ %call9.i.i97, %if.end31.out_crit_edge ], [ %call9.i.i97, %if.end35.out_crit_edge ], [ %call9.i.i97, %if.end39.out_crit_edge ], [ %call9.i.i97, %if.end8.i.i126.out_crit_edge ], [ %call9.i.i97, %if.end43 ], [ null, %if.end13.out_crit_edge ], [ null, %kzalloc.exit100.thread.out_crit_edge ]
  %taskcon.0 = phi ptr [ null, %entry.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ null, %if.end5.out_crit_edge ], [ null, %if.then11 ], [ %call9.i.i125, %if.end27.out_crit_edge ], [ %call9.i.i125, %if.end31.out_crit_edge ], [ %call9.i.i125, %if.end35.out_crit_edge ], [ %call9.i.i125, %if.end39.out_crit_edge ], [ null, %if.end8.i.i126.out_crit_edge ], [ %call9.i.i125, %if.end43 ], [ null, %if.end13.out_crit_edge ], [ null, %kzalloc.exit100.thread.out_crit_edge ]
  %req.0 = phi ptr [ null, %entry.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ null, %if.end5.out_crit_edge ], [ null, %if.then11 ], [ %call9, %if.end27.out_crit_edge ], [ %call9, %if.end31.out_crit_edge ], [ %call9, %if.end35.out_crit_edge ], [ %call9, %if.end39.out_crit_edge ], [ %call9, %if.end8.i.i126.out_crit_edge ], [ %call9, %if.end43 ], [ %call9, %if.end13.out_crit_edge ], [ %call9, %kzalloc.exit100.thread.out_crit_edge ]
  %rc.0 = phi i32 [ %call3, %entry.out_crit_edge ], [ -12, %if.end.out_crit_edge ], [ -22, %if.end5.out_crit_edge ], [ %25, %if.then11 ], [ -22, %if.end27.out_crit_edge ], [ %call32, %if.end31.out_crit_edge ], [ %call36, %if.end35.out_crit_edge ], [ %call40, %if.end39.out_crit_edge ], [ -12, %if.end8.i.i126.out_crit_edge ], [ %spec.select, %if.end43 ], [ -12, %if.end13.out_crit_edge ], [ -12, %kzalloc.exit100.thread.out_crit_edge ]
  call void @kfree(ptr noundef %req.0) #18
  call void @kfree(ptr noundef %oldcon.0) #18
  call void @kfree(ptr noundef %newcon.0) #18
  call void @kfree(ptr noundef %taskcon.0) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tclass) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tsid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %osid) #18
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_validate_transition_user(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_read_avc_cache_threshold(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %tmpbuf = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %state1 = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmpbuf) #18
  %avc = getelementptr inbounds %struct.selinux_state, ptr %7, i32 0, i32 7
  %8 = call ptr @memset(ptr %tmpbuf, i32 255, i32 12)
  %9 = ptrtoint ptr %avc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %avc, align 4
  %call2 = tail call i32 @avc_get_cache_threshold(ptr noundef %10) #18
  %call3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tmpbuf, i32 noundef 12, ptr noundef nonnull @.str.63, i32 noundef %call2) #18
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tmpbuf, i32 noundef %call3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmpbuf) #18
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_write_avc_cache_threshold(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #1 align 64 {
entry:
  %new_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %state1 = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_value) #18
  %8 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %new_value, align 4, !annotation !249
  %9 = tail call i32 @llvm.read_register.i32(metadata !238) #18
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 99
  %13 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 23
  %15 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %17 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %17
  %sid.i = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sid.i, align 4
  %call3 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %19, i32 noundef 2, i16 noundef zeroext 1, i32 noundef 512, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %count)
  %cmp = icmp ugt i32 %count, 4095
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %20 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp6.not = icmp eq i64 %21, 0
  br i1 %cmp6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %call9 = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #18
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  %22 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %call14 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call9, ptr noundef nonnull @.str.63, ptr noundef nonnull %new_value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 1
  br i1 %cmp15.not, label %if.end17, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  %avc = getelementptr inbounds %struct.selinux_state, ptr %7, i32 0, i32 7
  %23 = ptrtoint ptr %avc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %avc, align 4
  %25 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %new_value, align 4
  call void @avc_set_cache_threshold(ptr noundef %24, i32 noundef %26) #18
  br label %out

out:                                              ; preds = %if.end17, %if.end13.out_crit_edge
  %ret.0 = phi i32 [ -22, %if.end13.out_crit_edge ], [ %count, %if.end17 ]
  call void @kfree(ptr noundef %call9) #18
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.then11 ], [ %ret.0, %out ], [ %call3, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_value) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_get_cache_threshold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @avc_set_cache_threshold(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_read_avc_hash_stats(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %state1 = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  %call2 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #18
  %8 = inttoptr i32 %call2 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %avc = getelementptr inbounds %struct.selinux_state, ptr %7, i32 0, i32 7
  %9 = ptrtoint ptr %avc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %avc, align 4
  %call3 = tail call i32 @avc_get_hash_stats(ptr noundef %10, ptr noundef nonnull %8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp sgt i32 %call3, -1
  br i1 %cmp, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call5 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %8, i32 noundef %call3) #18
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %length.0 = phi i32 [ %call5, %if.then4 ], [ %call3, %if.end.if.end6_crit_edge ]
  tail call void @free_pages(i32 noundef %call2, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %length.0, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_get_hash_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_open_avc_cache_stats(ptr nocapture noundef readnone %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @sel_avc_cache_stats_seq_ops) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sel_avc_stats_seq_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = trunc i64 %1 to i32
  %conv.i = add i32 %2, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i)
  %cmp13.i = icmp ugt i32 %3, %conv.i
  br i1 %cmp13.i, label %if.end.cpu_possible.exit.i_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.cpu_possible.exit.i_crit_edge:             ; preds = %if.end
  br label %cpu_possible.exit.i

cpu_possible.exit.i:                              ; preds = %for.inc.i.cpu_possible.exit.i_crit_edge, %if.end.cpu_possible.exit.i_crit_edge
  %cpu.014.i = phi i32 [ %inc.i, %for.inc.i.cpu_possible.exit.i_crit_edge ], [ %conv.i, %if.end.cpu_possible.exit.i_crit_edge ]
  %div1.i.i.i.i = lshr i32 %cpu.014.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr @__cpu_possible_mask, i32 %div1.i.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %cpu.014.i, 31
  %6 = shl nuw i32 1, %and.i.i.i.i
  %7 = and i32 %6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %for.inc.i, label %if.end.i

if.end.i:                                         ; preds = %cpu_possible.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu.014.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add4.i = add i32 %9, ptrtoint (ptr @avc_cache_stats to i32)
  %10 = inttoptr i32 %add4.i to ptr
  br label %cleanup

for.inc.i:                                        ; preds = %cpu_possible.exit.i
  %inc.i = add i32 %cpu.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.cpu_possible.exit.i_crit_edge

for.inc.i.cpu_possible.exit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_possible.exit.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 1 to ptr), %entry.cleanup_crit_edge ], [ %10, %if.end.i ], [ null, %if.end.cleanup_crit_edge ], [ null, %for.inc.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sel_avc_stats_seq_stop(ptr nocapture noundef %seq, ptr nocapture noundef %v) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sel_avc_stats_seq_next(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %conv.i = trunc i64 %1 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv.i)
  %cmp13.i = icmp ugt i32 %2, %conv.i
  br i1 %cmp13.i, label %entry.cpu_possible.exit.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

entry.cpu_possible.exit.i_crit_edge:              ; preds = %entry
  br label %cpu_possible.exit.i

cpu_possible.exit.i:                              ; preds = %for.inc.i.cpu_possible.exit.i_crit_edge, %entry.cpu_possible.exit.i_crit_edge
  %cpu.014.i = phi i32 [ %inc.i, %for.inc.i.cpu_possible.exit.i_crit_edge ], [ %conv.i, %entry.cpu_possible.exit.i_crit_edge ]
  %div1.i.i.i.i = lshr i32 %cpu.014.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr @__cpu_possible_mask, i32 %div1.i.i.i.i
  %3 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %cpu.014.i, 31
  %5 = shl nuw i32 1, %and.i.i.i.i
  %6 = and i32 %5, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  %inc.i = add i32 %cpu.014.i, 1
  br i1 %tobool.i.not.i, label %for.inc.i, label %if.end.i

if.end.i:                                         ; preds = %cpu_possible.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv2.i = sext i32 %inc.i to i64
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv2.i, ptr %pos, align 8
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu.014.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add4.i = add i32 %9, ptrtoint (ptr @avc_cache_stats to i32)
  %10 = inttoptr i32 %add4.i to ptr
  br label %sel_avc_get_stat_idx.exit

for.inc.i:                                        ; preds = %cpu_possible.exit.i
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.cpu_possible.exit.i_crit_edge

for.inc.i.cpu_possible.exit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_possible.exit.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %inc5.i = add i64 %1, 1
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %inc5.i, ptr %pos, align 8
  br label %sel_avc_get_stat_idx.exit

sel_avc_get_stat_idx.exit:                        ; preds = %for.end.i, %if.end.i
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ null, %for.end.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_avc_stats_seq_show(ptr noundef %seq, ptr noundef readonly %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.76) #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v, align 4
  %misses2 = getelementptr inbounds %struct.avc_cache_stats, ptr %v, i32 0, i32 1
  %2 = ptrtoint ptr %misses2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %misses2, align 4
  %sub = sub i32 %1, %3
  %allocations = getelementptr inbounds %struct.avc_cache_stats, ptr %v, i32 0, i32 2
  %4 = ptrtoint ptr %allocations to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %allocations, align 4
  %reclaims = getelementptr inbounds %struct.avc_cache_stats, ptr %v, i32 0, i32 3
  %6 = ptrtoint ptr %reclaims to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reclaims, align 4
  %frees = getelementptr inbounds %struct.avc_cache_stats, ptr %v, i32 0, i32 4
  %8 = ptrtoint ptr %frees to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frees, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.77, i32 noundef %1, i32 noundef %sub, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_read_sidtab_hash_stats(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %state1 = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  %call2 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #18
  %8 = inttoptr i32 %call2 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @security_sidtab_hash_stats(ptr noundef %7, ptr noundef nonnull %8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp sgt i32 %call3, -1
  br i1 %cmp, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call5 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %8, i32 noundef %call3) #18
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %length.0 = phi i32 [ %call5, %if.then4 ], [ %call3, %if.end.if.end6_crit_edge ]
  tail call void @free_pages(i32 noundef %call2, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %length.0, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sidtab_hash_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @security_get_initial_sid_context(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_read_initcon(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %con = alloca ptr, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %con) #18
  %6 = ptrtoint ptr %con to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %con, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #18
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %len, align 4, !annotation !249
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %and = and i32 %9, 16777215
  %state = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  %call2 = call i32 @security_sid_to_context(ptr noundef %11, i32 noundef %and, ptr noundef nonnull %con, ptr noundef nonnull %len) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %con, align 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %13, i32 noundef %15) #18
  %16 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %con, align 4
  call void @kfree(ptr noundef %17) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %con) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_read_policycap(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %tmpbuf = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmpbuf) #18
  %i_ino2 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %6 = call ptr @memset(ptr %tmpbuf, i32 255, i32 12)
  %7 = ptrtoint ptr %i_ino2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino2, align 8
  %state = getelementptr inbounds %struct.selinux_fs_info, ptr %5, i32 0, i32 9
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 4
  %and = and i32 %8, 16777215
  %call3 = tail call i32 @security_policycap_supported(ptr noundef %10, i32 noundef %and) #18
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tmpbuf, i32 noundef 12, ptr noundef nonnull @.str.52, i32 noundef %call3) #18
  %call6 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tmpbuf, i32 noundef %call4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmpbuf) #18
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_policycap_supported(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind readnone }
attributes #25 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !94, !95, !96, !98, !99, !100, !101, !103, !105, !107, !108, !110, !112, !114, !116, !117, !118, !119, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !145, !146, !147, !149, !151, !153, !155, !156, !157, !159, !161, !163, !164, !165, !167, !169, !171, !173, !175, !176, !177, !178, !180, !182, !184, !185, !186, !187, !188, !190, !192, !194, !196, !198, !200, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !222, !224, !226, !228, !230, !232, !234, !236}
!llvm.named.register.sp = !{!238}
!llvm.module.flags = !{!239, !240, !241, !242, !243, !244, !245, !246}
!llvm.ident = !{!247}

!0 = !{ptr @__initcall__kmod_selinux__519_2248_init_sel_fs6, !1, !"__initcall__kmod_selinux__519_2248_init_sel_fs6", i1 false, i1 false}
!1 = !{!"../security/selinux/selinuxfs.c", i32 2248, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/selinux/selinuxfs.c", i32 2253, i32 36}
!4 = !{ptr @selinuxfs_mount, !5, !"selinuxfs_mount", i1 false, i1 false}
!5 = !{!"../security/selinux/selinuxfs.c", i32 2209, i32 25}
!6 = !{ptr @selinux_null, !7, !"selinux_null", i1 false, i1 false}
!7 = !{!"../security/selinux/selinuxfs.c", i32 2210, i32 13}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/selinux/selinuxfs.c", i32 2214, i32 26}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/selinux/selinuxfs.c", i32 2233, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @init_sel_fs._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @init_sel_fs._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/selinux/selinuxfs.c", i32 2240, i32 3}
!18 = !{ptr @init_sel_fs._entry.5, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @init_sel_fs._entry_ptr.7, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/selinux/selinuxfs.c", i32 2204, i32 11}
!22 = !{ptr @sel_fs_type, !23, !"sel_fs_type", i1 false, i1 false}
!23 = !{!"../security/selinux/selinuxfs.c", i32 2203, i32 32}
!24 = !{ptr @sel_context_ops, !25, !"sel_context_ops", i1 false, i1 false}
!25 = !{!"../security/selinux/selinuxfs.c", i32 2187, i32 43}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/selinux/selinuxfs.c", i32 2064, i32 17}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../security/selinux/selinuxfs.c", i32 2065, i32 20}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/selinux/selinuxfs.c", i32 2066, i32 20}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/selinux/selinuxfs.c", i32 2067, i32 19}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/selinux/selinuxfs.c", i32 2068, i32 19}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/selinux/selinuxfs.c", i32 2069, i32 20}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/selinux/selinuxfs.c", i32 2070, i32 17}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../security/selinux/selinuxfs.c", i32 2071, i32 23}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/selinux/selinuxfs.c", i32 2072, i32 25}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../security/selinux/selinuxfs.c", i32 2073, i32 16}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/selinux/selinuxfs.c", i32 2074, i32 20}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../security/selinux/selinuxfs.c", i32 2075, i32 19}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/selinux/selinuxfs.c", i32 2076, i32 25}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../security/selinux/selinuxfs.c", i32 2077, i32 27}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../security/selinux/selinuxfs.c", i32 2078, i32 25}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../security/selinux/selinuxfs.c", i32 2079, i32 19}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../security/selinux/selinuxfs.c", i32 2080, i32 19}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../security/selinux/selinuxfs.c", i32 2081, i32 27}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../security/selinux/selinuxfs.c", i32 2083, i32 19}
!64 = !{ptr @sel_fill_super.selinux_files, !65, !"selinux_files", i1 false, i1 false}
!65 = !{!"../security/selinux/selinuxfs.c", i32 2063, i32 33}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/selinux/selinuxfs.c", i32 2095, i32 43}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/selinux/selinuxfs.c", i32 2123, i32 36}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../security/selinux/selinuxfs.c", i32 2131, i32 36}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../security/selinux/selinuxfs.c", i32 2141, i32 36}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../security/selinux/selinuxfs.c", i32 2151, i32 44}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../security/selinux/selinuxfs.c", i32 2158, i32 48}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../security/selinux/selinuxfs.c", i32 2168, i32 3}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @sel_fill_super._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @sel_fill_super._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../security/selinux/selinuxfs.c", i32 2174, i32 2}
!85 = !{ptr @sel_fill_super._entry.36, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @sel_fill_super._entry_ptr.38, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @sel_load_ops, !88, !"sel_load_ops", i1 false, i1 false}
!88 = !{!"../security/selinux/selinuxfs.c", i32 671, i32 37}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../security/selinux/selinuxfs.c", i32 646, i32 3}
!91 = !{ptr @sel_write_load._rs, !90, !"_rs", i1 false, i1 false}
!92 = !{ptr @__func__.sel_write_load, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @sel_write_load._entry, !90, !"_entry", i1 false, i1 false}
!95 = !{ptr @sel_write_load._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @sel_write_load._rs.41, !97, !"_rs", i1 false, i1 false}
!97 = !{!"../security/selinux/selinuxfs.c", i32 652, i32 3}
!98 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @sel_write_load._entry.42, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @sel_write_load._entry_ptr.44, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../security/selinux/selinuxfs.c", i32 662, i32 3}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../security/selinux/include/objsec.h", i32 186, i32 57}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!107 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../security/selinux/selinuxfs.c", i32 1457, i32 35}
!114 = !{ptr @sel_make_bools._rs, !115, !"_rs", i1 false, i1 false}
!115 = !{!"../security/selinux/selinuxfs.c", i32 1468, i32 4}
!116 = !{ptr @__func__.sel_make_bools, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @sel_make_bools._entry, !115, !"_entry", i1 false, i1 false}
!119 = !{ptr @sel_make_bools._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @sel_bool_ops, !121, !"sel_bool_ops", i1 false, i1 false}
!121 = !{!"../security/selinux/selinuxfs.c", i32 1356, i32 37}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../security/selinux/selinuxfs.c", i32 1292, i32 38}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../security/selinux/selinuxfs.c", i32 1341, i32 19}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../security/selinux/selinuxfs.c", i32 1918, i32 29}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../security/selinux/selinuxfs.c", i32 1932, i32 29}
!130 = !{ptr @sel_class_ops, !131, !"sel_class_ops", i1 false, i1 false}
!131 = !{!"../security/selinux/selinuxfs.c", i32 1829, i32 37}
!132 = !{ptr @sel_perm_ops, !133, !"sel_perm_ops", i1 false, i1 false}
!133 = !{!"../security/selinux/selinuxfs.c", i32 1843, i32 37}
!134 = !{ptr @sel_enforce_ops, !135, !"sel_enforce_ops", i1 false, i1 false}
!135 = !{!"../security/selinux/selinuxfs.c", i32 198, i32 37}
!136 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../security/selinux/selinuxfs.c", i32 174, i32 4}
!138 = !{ptr @transaction_ops, !139, !"transaction_ops", i1 false, i1 false}
!139 = !{!"../security/selinux/selinuxfs.c", i32 895, i32 37}
!140 = !{ptr @write_op, !141, !"write_op", i1 false, i1 false}
!141 = !{!"../security/selinux/selinuxfs.c", i32 865, i32 24}
!142 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../security/selinux/selinuxfs.c", i32 700, i32 3}
!144 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @sel_write_context._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @sel_write_context._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../security/selinux/selinuxfs.c", i32 935, i32 18}
!149 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../security/selinux/selinuxfs.c", i32 949, i32 6}
!151 = !{ptr @.str.60, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../security/selinux/selinuxfs.c", i32 995, i32 22}
!153 = !{ptr @.str.61, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../security/selinux/selinuxfs.c", i32 1048, i32 3}
!155 = !{ptr @sel_write_create._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @sel_write_create._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../security/selinux/selinuxfs.c", i32 1153, i32 18}
!159 = !{ptr @.str.63, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../security/selinux/selinuxfs.c", i32 1164, i32 24}
!161 = !{ptr @.str.64, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../security/selinux/selinuxfs.c", i32 1239, i32 3}
!163 = !{ptr @sel_write_member._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @sel_write_member._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @sel_policyvers_ops, !166, !"sel_policyvers_ops", i1 false, i1 false}
!166 = !{!"../security/selinux/selinuxfs.c", i32 349, i32 37}
!167 = !{ptr @sel_commit_bools_ops, !168, !"sel_commit_bools_ops", i1 false, i1 false}
!168 = !{!"../security/selinux/selinuxfs.c", i32 1409, i32 37}
!169 = !{ptr @sel_mls_ops, !170, !"sel_mls_ops", i1 false, i1 false}
!170 = !{!"../security/selinux/selinuxfs.c", i32 385, i32 37}
!171 = !{ptr @sel_disable_ops, !172, !"sel_disable_ops", i1 false, i1 false}
!172 = !{!"../security/selinux/selinuxfs.c", i32 334, i32 37}
!173 = !{ptr @.str.65, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../security/selinux/selinuxfs.c", i32 295, i32 2}
!175 = !{ptr @.str.66, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @sel_write_disable._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @sel_write_disable._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.67, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../security/selinux/selinuxfs.c", i32 318, i32 4}
!180 = !{ptr @sel_checkreqprot_ops, !181, !"sel_checkreqprot_ops", i1 false, i1 false}
!181 = !{!"../security/selinux/selinuxfs.c", i32 771, i32 37}
!182 = distinct !{null, !183, !"__already_done", i1 false, i1 false}
!183 = !{!"../security/selinux/selinuxfs.c", i32 758, i32 3}
!184 = !{ptr @.str.68, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.69, !183, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @sel_write_checkreqprot._entry, !183, !"_entry", i1 false, i1 false}
!187 = !{ptr @sel_write_checkreqprot._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @sel_handle_unknown_ops, !189, !"sel_handle_unknown_ops", i1 false, i1 false}
!189 = !{!"../security/selinux/selinuxfs.c", i32 220, i32 37}
!190 = !{ptr @sel_handle_status_ops, !191, !"sel_handle_status_ops", i1 false, i1 false}
!191 = !{!"../security/selinux/selinuxfs.c", i32 272, i32 37}
!192 = !{ptr @sel_policy_ops, !193, !"sel_policy_ops", i1 false, i1 false}
!193 = !{!"../security/selinux/selinuxfs.c", i32 519, i32 37}
!194 = !{ptr @sel_mmap_policy_ops, !195, !"sel_mmap_policy_ops", i1 false, i1 false}
!195 = !{!"../security/selinux/selinuxfs.c", i32 498, i32 42}
!196 = !{ptr @.str.70, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!198 = distinct !{null, !199, !"__already_done", i1 false, i1 false}
!199 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!200 = !{ptr @.str.71, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @sel_transition_ops, !202, !"sel_transition_ops", i1 false, i1 false}
!202 = !{!"../security/selinux/selinuxfs.c", i32 851, i32 37}
!203 = !{ptr @.str.72, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../security/selinux/selinuxfs.c", i32 1687, i32 5}
!205 = !{ptr @.str.73, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../security/selinux/selinuxfs.c", i32 1689, i32 5}
!207 = !{ptr @.str.74, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../security/selinux/selinuxfs.c", i32 1691, i32 5}
!209 = !{ptr @sel_make_avc_files.files, !210, !"files", i1 false, i1 false}
!210 = !{!"../security/selinux/selinuxfs.c", i32 1686, i32 33}
!211 = !{ptr @sel_avc_cache_threshold_ops, !212, !"sel_avc_cache_threshold_ops", i1 false, i1 false}
!212 = !{!"../security/selinux/selinuxfs.c", i32 1599, i32 37}
!213 = !{ptr @sel_avc_hash_stats_ops, !214, !"sel_avc_hash_stats_ops", i1 false, i1 false}
!214 = !{!"../security/selinux/selinuxfs.c", i32 1605, i32 37}
!215 = !{ptr @sel_avc_cache_stats_ops, !216, !"sel_avc_cache_stats_ops", i1 false, i1 false}
!216 = !{!"../security/selinux/selinuxfs.c", i32 1673, i32 37}
!217 = !{ptr @sel_avc_cache_stats_seq_ops, !218, !"sel_avc_cache_stats_seq_ops", i1 false, i1 false}
!218 = !{!"../security/selinux/selinuxfs.c", i32 1661, i32 36}
!219 = distinct !{null, !220, !"__already_done", i1 false, i1 false}
!220 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!221 = distinct !{null, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.76, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../security/selinux/selinuxfs.c", i32 1646, i32 5}
!224 = !{ptr @.str.77, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../security/selinux/selinuxfs.c", i32 1651, i32 19}
!226 = !{ptr @.str.78, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../security/selinux/selinuxfs.c", i32 1723, i32 5}
!228 = distinct !{null, !229, !"files", i1 false, i1 false}
!229 = !{!"../security/selinux/selinuxfs.c", i32 1722, i32 27}
!230 = !{ptr @sel_sidtab_hash_stats_ops, !231, !"sel_sidtab_hash_stats_ops", i1 false, i1 false}
!231 = !{!"../security/selinux/selinuxfs.c", i32 1594, i32 37}
!232 = !{ptr @sel_initcon_ops, !233, !"sel_initcon_ops", i1 false, i1 false}
!233 = !{!"../security/selinux/selinuxfs.c", i32 1766, i32 37}
!234 = distinct !{null, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../security/selinux/selinuxfs.c", i32 1991, i32 46}
!236 = !{ptr @sel_policycap_ops, !237, !"sel_policycap_ops", i1 false, i1 false}
!237 = !{!"../security/selinux/selinuxfs.c", i32 1863, i32 37}
!238 = !{!"sp"}
!239 = !{i32 1, !"wchar_size", i32 2}
!240 = !{i32 1, !"min_enum_size", i32 4}
!241 = !{i32 8, !"branch-target-enforcement", i32 0}
!242 = !{i32 8, !"sign-return-address", i32 0}
!243 = !{i32 8, !"sign-return-address-all", i32 0}
!244 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!245 = !{i32 7, !"uwtable", i32 1}
!246 = !{i32 7, !"frame-pointer", i32 2}
!247 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!248 = !{!"branch_weights", i32 1, i32 2000}
!249 = !{!"auto-init"}
!250 = !{!"branch_weights", i32 2000, i32 1}
!251 = !{i64 2152817084, i64 2152817109}
!252 = !{i64 5312639}
!253 = !{i64 5312836}
!254 = !{i64 2152798069}
!255 = !{i8 0, i8 2}
!256 = !{i64 2158368792, i64 2158369285, i64 2158368829, i64 2158368885, i64 2158368919, i64 2158368943, i64 2158368984, i64 2158369005, i64 2158369033, i64 2158369067}
!257 = !{i64 2158370389, i64 2158370882, i64 2158370426, i64 2158370482, i64 2158370516, i64 2158370540, i64 2158370581, i64 2158370602, i64 2158370630, i64 2158370664}
!258 = !{i64 2158374569, i64 2158375062, i64 2158374606, i64 2158374662, i64 2158374696, i64 2158374720, i64 2158374761, i64 2158374782, i64 2158374810, i64 2158374844}
!259 = !{i64 655050, i64 655111}
!260 = !{i64 657782}
!261 = !{i64 658067}
!262 = !{i64 2153147436}
!263 = !{i64 2153147278}
!264 = !{i64 2153147606}
!265 = !{i64 2149934715}
!266 = !{i64 2158376428, i64 2158376921, i64 2158376465, i64 2158376521, i64 2158376555, i64 2158376579, i64 2158376620, i64 2158376641, i64 2158376669, i64 2158376703}
!267 = !{i64 2153226823, i64 2153227307, i64 2153226860, i64 2153226916, i64 2153226950, i64 2153226974, i64 2153227015, i64 2153227036, i64 2153227064, i64 2153227098}
!268 = !{i64 2148262569, i64 2148262595, i64 2148262624, i64 2148262658, i64 2148262689, i64 2148262712}
!269 = !{i64 2148744384, i64 2148744389, i64 2148744402, i64 2148744446, i64 2148744480, i64 2148744501}
!270 = !{i64 2153149367}
!271 = !{i64 2149827047}
!272 = !{i64 2149831979}
!273 = !{i64 2149853691}
!274 = !{i64 2149858583}
!275 = !{i64 2149935040}
!276 = !{i64 2149935365}
!277 = !{i64 2153161229}
