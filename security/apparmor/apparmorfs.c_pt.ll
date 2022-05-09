; ModuleID = '/llk/IR_all_yes/security/apparmor/apparmorfs.c_pt.bc'
source_filename = "../security/apparmor/apparmorfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.aa_sfs_entry = type { ptr, ptr, i16, i32, %union.anon.150, ptr }
%union.anon.150 = type { ptr }
%struct.path = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_descr = type { ptr, ptr, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.aa_perms = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.aa_ns = type { %struct.aa_policy, ptr, %struct.mutex, %struct.aa_ns_acct, ptr, %struct.list_head, %struct.atomic_t, i32, i32, i32, %struct.wait_queue_head, %struct.aa_labelset, %struct.list_head, [13 x ptr] }
%struct.aa_policy = type { ptr, ptr, %struct.list_head, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.aa_ns_acct = type { i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.aa_labelset = type { %struct.rwlock_t, %struct.rb_root }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.141, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.142, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.143, ptr, %struct.address_space, %struct.list_head, %union.anon.144, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.141 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.142 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.143 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.144 = type { ptr }
%struct.aa_loaddata = type { %struct.kref, %struct.list_head, %struct.work_struct, [6 x ptr], ptr, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.aa_profile = type { %struct.aa_policy, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, %struct.aa_policydb, %struct.aa_file_rules, %struct.aa_caps, i32, ptr, %struct.aa_rlimit, i32, ptr, ptr, ptr, ptr, [9 x ptr], ptr, %struct.aa_label }
%struct.aa_policydb = type { ptr, [17 x i32] }
%struct.aa_file_rules = type { i32, ptr, %struct.aa_domain }
%struct.aa_domain = type { i32, ptr }
%struct.aa_caps = type { %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.aa_rlimit = type { i32, [16 x %struct.rlimit] }
%struct.rlimit = type { i32, i32 }
%struct.aa_label = type { %struct.kref, %struct.rb_node, %struct.callback_head, ptr, ptr, i32, i32, i32, [0 x ptr] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.147, %struct.list_head, %struct.list_head, %union.anon.148 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.145 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { %struct.spinlock, i32 }
%union.anon.147 = type { %struct.list_head }
%union.anon.148 = type { %struct.hlist_node }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
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
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.rawdata_f_data = type { ptr }
%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.aa_proxy = type { %struct.kref, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.delayed_call = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.aa_revision = type { ptr, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.50 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%union.anon.37 = type { %struct.callback_head }
%struct.multi_transaction = type { %struct.kref, i32, [0 x i8] }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.aa_data = type { ptr, i32, ptr, %struct.rhash_head }
%struct.rhash_head = type { ptr }
%struct.path_cond = type { %struct.kuid_t, i16 }

@aa_sfs_seq_file_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @aa_sfs_seq_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"security/apparmor/apparmorfs.c\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"AppArmor WARN %s: ((rawdata->ns && !mutex_is_locked(&rawdata->ns->lock))): \00", [52 x i8] zeroinitializer }, align 32
@__func__.__aa_fs_remove_rawdata = private unnamed_addr constant [23 x i8] c"__aa_fs_remove_rawdata\00", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AppArmor WARN %s: ((!ns)): \00", [36 x i8] zeroinitializer }, align 32
@__func__.__aa_fs_create_rawdata = private unnamed_addr constant [23 x i8] c"__aa_fs_create_rawdata\00", align 1
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AppArmor WARN %s: ((!rawdata)): \00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"AppArmor WARN %s: ((!mutex_is_locked(&ns->lock))): \00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"AppArmor WARN %s: ((!((ns)->dents[AAFS_NS_RAW_DATA]))): \00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%ld\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"abi\00", [28 x i8] zeroinitializer }, align 32
@seq_rawdata_abi_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @seq_rawdata_abi_open, ptr null, ptr @seq_rawdata_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"revision\00", [23 x i8] zeroinitializer }, align 32
@seq_rawdata_revision_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @seq_rawdata_revision_open, ptr null, ptr @seq_rawdata_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@aa_g_hash_policy = external dso_local local_unnamed_addr global i8, align 1
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@seq_rawdata_hash_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @seq_rawdata_hash_open, ptr null, ptr @seq_rawdata_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"compressed_size\00", [16 x i8] zeroinitializer }, align 32
@seq_rawdata_compressed_size_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @seq_rawdata_compressed_size_open, ptr null, ptr @seq_rawdata_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"raw_data\00", [23 x i8] zeroinitializer }, align 32
@rawdata_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rawdata_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rawdata_open, ptr null, ptr @rawdata_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!old)): \00", [35 x i8] zeroinitializer }, align 32
@__func__.__aafs_profile_migrate_dents = private unnamed_addr constant [29 x i8] c"__aafs_profile_migrate_dents\00", align 1
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!new)): \00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"AppArmor WARN %s: ((!mutex_is_locked(&((old)->ns)->lock))): \00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AppArmor WARN %s: ((!profile)): \00", [63 x i8] zeroinitializer }, align 32
@__func__.__aafs_profile_mkdir = private unnamed_addr constant [21 x i8] c"__aafs_profile_mkdir\00", align 1
@.str.16 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"AppArmor WARN %s: ((!mutex_is_locked(&((profile)->ns)->lock))): \00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"profiles\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c".%ld\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@seq_profile_name_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @seq_profile_name_open, ptr null, ptr @seq_profile_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@seq_profile_mode_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @seq_profile_mode_open, ptr null, ptr @seq_profile_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"attach\00", [25 x i8] zeroinitializer }, align 32
@seq_profile_attach_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @seq_profile_attach_open, ptr null, ptr @seq_profile_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@seq_profile_hash_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @seq_profile_hash_open, ptr null, ptr @seq_profile_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"raw_sha1\00", [23 x i8] zeroinitializer }, align 32
@rawdata_link_sha1_iops = internal constant %struct.inode_operations { ptr null, ptr @rawdata_get_link_sha1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"raw_abi\00", [24 x i8] zeroinitializer }, align 32
@rawdata_link_abi_iops = internal constant %struct.inode_operations { ptr null, ptr @rawdata_get_link_abi, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@rawdata_link_data_iops = internal constant %struct.inode_operations { ptr null, ptr @rawdata_get_link_data, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@__func__.__aafs_ns_rmdir = private unnamed_addr constant [16 x i8] c"__aafs_ns_rmdir\00", align 1
@__func__.__aafs_ns_mkdir = private unnamed_addr constant [16 x i8] c"__aafs_ns_mkdir\00", align 1
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AppArmor WARN %s: ((!parent)): \00", [32 x i8] zeroinitializer }, align 32
@aa_sfs_entry = internal global { %struct.aa_sfs_entry, [40 x i8] } { %struct.aa_sfs_entry { ptr @.str.70, ptr null, i16 0, i32 4, %union.anon.150 { ptr @aa_sfs_entry_apparmor }, ptr null }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_apparmor__565_2667_aa_create_aafs5 = internal global ptr @aa_create_aafs, section ".initcall5.init", align 4
@aa_null = dso_local global { %struct.path, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%#08lx\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"AppArmor WARN %s: ((file->private_data && ((struct seq_file *)file->private_data)->private)): \00", [33 x i8] zeroinitializer }, align 32
@__func__.seq_rawdata_open = private unnamed_addr constant [17 x i8] c"seq_rawdata_open\00", align 1
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v%d\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%.2x\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%zu\0A\00", [27 x i8] zeroinitializer }, align 32
@aa_g_rawdata_compression_level = external dso_local local_unnamed_addr global i32, align 4
@aafs_mnt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@aafs_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@aa_deref_parent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"security/apparmor/include/policy_ns.h\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"._-\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"/._-\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@aa_get_label_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"security/apparmor/include/label.h\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@aa_profile_mode_names = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"<unknown>\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!name)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.aafs_create = private unnamed_addr constant [12 x i8] c"aafs_create\00", align 1
@aafs_ops = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.45, i32 0, ptr @apparmorfs_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apparmorfs\00", [21 x i8] zeroinitializer }, align 32
@apparmorfs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr null, ptr null, ptr null, ptr null, ptr @apparmorfs_get_tree, ptr null }, [40 x i8] zeroinitializer }, align 32
@apparmorfs_fill_super.files = internal global { [1 x %struct.tree_descr], [20 x i8] } { [1 x %struct.tree_descr] [%struct.tree_descr { ptr @.str.46, ptr null, i32 0 }], [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@aafs_super_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr null, ptr null, ptr @aafs_free_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr @aafs_show_path, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s:[%lu]\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!dir)): \00", [35 x i8] zeroinitializer }, align 32
@__func__.__aafs_setup_d_inode = private unnamed_addr constant [21 x i8] c"__aafs_setup_d_inode\00", align 1
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AppArmor WARN %s: ((!dentry)): \00", [32 x i8] zeroinitializer }, align 32
@simple_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@simple_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"../../\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"raw_data/%s/%s\00", [17 x i8] zeroinitializer }, align 32
@__func__.__aa_fs_list_remove_rawdata = private unnamed_addr constant [28 x i8] c"__aa_fs_list_remove_rawdata\00", align 1
@__func__.__aafs_ns_mkdir_entries = private unnamed_addr constant [24 x i8] c"__aafs_ns_mkdir_entries\00", align 1
@aa_fs_ns_revision_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ns_revision_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ns_revision_poll, ptr null, ptr null, ptr null, i32 0, ptr @ns_revision_open, ptr null, ptr @ns_revision_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c".load\00", [26 x i8] zeroinitializer }, align 32
@aa_fs_profile_load = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @profile_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c".replace\00", [23 x i8] zeroinitializer }, align 32
@aa_fs_profile_replace = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @profile_replace, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c".remove\00", [24 x i8] zeroinitializer }, align 32
@aa_fs_profile_remove = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @profile_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"namespaces\00", [21 x i8] zeroinitializer }, align 32
@ns_dir_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ns_mkdir_op, ptr @ns_rmdir_op, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"security/apparmor/include/cred.h\00", [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AppArmor WARN %s: ((!label)): \00", [33 x i8] zeroinitializer }, align 32
@__func__.aa_cred_raw_label = private unnamed_addr constant [18 x i8] c"aa_cred_raw_label\00", align 1
@apparmor_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!blob)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.cred_label = private unnamed_addr constant [11 x i8] c"cred_label\00", align 1
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AppArmor WARN %s: ((!l->proxy)): \00", [62 x i8] zeroinitializer }, align 32
@__func__.aa_get_newest_label = private unnamed_addr constant [20 x i8] c"aa_get_newest_label\00", align 1
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AppArmor WARN %s: ((!l->proxy->label)): \00", [55 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!tmp)): \00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"AppArmor WARN %s: ((copy_size > alloc_size)): \00", [49 x i8] zeroinitializer }, align 32
@__func__.aa_simple_write_to_buffer = private unnamed_addr constant [26 x i8] c"aa_simple_write_to_buffer\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"AppArmor WARN %s: ((d_inode(((parent)->dents[AAFS_NS_NS])) != dir)): \00", [58 x i8] zeroinitializer }, align 32
@__func__.ns_mkdir_op = private unnamed_addr constant [12 x i8] c"ns_mkdir_op\00", align 1
@.str.67 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"AppArmor WARN %s: ((((ns)->dents[AAFS_NS_DIR]) != dentry)): \00", [35 x i8] zeroinitializer }, align 32
@__func__.ns_rmdir_op = private unnamed_addr constant [12 x i8] c"ns_rmdir_op\00", align 1
@__policy_strn_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"security/apparmor/include/lib.h\00", [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apparmor\00", [23 x i8] zeroinitializer }, align 32
@aa_sfs_entry_apparmor = internal global { [8 x %struct.aa_sfs_entry], [32 x i8] } { [8 x %struct.aa_sfs_entry] [%struct.aa_sfs_entry { ptr @.str.71, ptr null, i16 438, i32 3, %union.anon.150 zeroinitializer, ptr @aa_sfs_access }, %struct.aa_sfs_entry { ptr @.str.72, ptr null, i16 292, i32 3, %union.anon.150 zeroinitializer, ptr @seq_ns_stacked_fops }, %struct.aa_sfs_entry { ptr @.str.73, ptr null, i16 292, i32 3, %union.anon.150 zeroinitializer, ptr @seq_ns_nsstacked_fops }, %struct.aa_sfs_entry { ptr @.str.74, ptr null, i16 292, i32 3, %union.anon.150 zeroinitializer, ptr @seq_ns_level_fops }, %struct.aa_sfs_entry { ptr @.str.75, ptr null, i16 292, i32 3, %union.anon.150 zeroinitializer, ptr @seq_ns_name_fops }, %struct.aa_sfs_entry { ptr @.str.17, ptr null, i16 292, i32 3, %union.anon.150 zeroinitializer, ptr @aa_sfs_profiles_fops }, %struct.aa_sfs_entry { ptr @.str.76, ptr null, i16 0, i32 4, %union.anon.150 { ptr @aa_sfs_entry_features }, ptr null }, %struct.aa_sfs_entry zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c".access\00", [24 x i8] zeroinitializer }, align 32
@aa_sfs_access = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @multi_transaction_read, ptr @aa_write_access, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @multi_transaction_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c".stacked\00", [23 x i8] zeroinitializer }, align 32
@seq_ns_stacked_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @seq_ns_stacked_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c".ns_stacked\00", [20 x i8] zeroinitializer }, align 32
@seq_ns_nsstacked_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @seq_ns_nsstacked_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c".ns_level\00", [22 x i8] zeroinitializer }, align 32
@seq_ns_level_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @seq_ns_level_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c".ns_name\00", [23 x i8] zeroinitializer }, align 32
@seq_ns_name_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @seq_ns_name_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@aa_sfs_profiles_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @profiles_open, ptr null, ptr @profiles_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"features\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"profile\00\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"label\00\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"labelall\00\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"data\00\00", [26 x i8] zeroinitializer }, align 32
@allperms = external dso_local local_unnamed_addr global %struct.aa_perms, align 4
@.str.81 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"allow 0x%08x\0Adeny 0x%08x\0Aaudit 0x%08x\0Aquiet 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.83 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.84 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"AppArmor WARN %s: ((n > (((1UL) << 12) - sizeof(struct multi_transaction)))): \00", [49 x i8] zeroinitializer }, align 32
@__func__.multi_transaction_set = private unnamed_addr constant [22 x i8] c"multi_transaction_set\00", align 1
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@aa_sfs_profiles_op = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @p_start, ptr @p_stop, ptr @p_next, ptr @seq_show_profile }, [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!root)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.__first_profile = private unnamed_addr constant [16 x i8] c"__first_profile\00", align 1
@.str.87 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"AppArmor WARN %s: ((ns && !mutex_is_locked(&ns->lock))): \00", [38 x i8] zeroinitializer }, align 32
@__func__.__next_ns = private unnamed_addr constant [10 x i8] c"__next_ns\00", align 1
@.str.88 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"AppArmor WARN %s: ((ns != root && !mutex_is_locked(&ns->parent->lock))): \00", [54 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"AppArmor WARN %s: ((!mutex_is_locked(&((p)->ns)->lock))): \00", [37 x i8] zeroinitializer }, align 32
@__func__.__next_profile = private unnamed_addr constant [15 x i8] c"__next_profile\00", align 1
@__next_profile.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__next_profile.__warned.90 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"policy\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"domain\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"file\00", [27 x i8] zeroinitializer }, align 32
@aa_sfs_entry_file = internal global { [2 x %struct.aa_sfs_entry], [48 x i8] } { [2 x %struct.aa_sfs_entry] [%struct.aa_sfs_entry { ptr @.str.126, ptr null, i16 292, i32 1, %union.anon.150 { ptr @.str.127 }, ptr @aa_sfs_seq_file_ops }, %struct.aa_sfs_entry zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"network_v8\00", [21 x i8] zeroinitializer }, align 32
@aa_sfs_entry_network = external dso_local global [0 x %struct.aa_sfs_entry], align 4
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mount\00", [26 x i8] zeroinitializer }, align 32
@aa_sfs_entry_mount = internal global { [2 x %struct.aa_sfs_entry], [48 x i8] } { [2 x %struct.aa_sfs_entry] [%struct.aa_sfs_entry { ptr @.str.126, ptr null, i16 292, i32 1, %union.anon.150 { ptr @.str.128 }, ptr @aa_sfs_seq_file_ops }, %struct.aa_sfs_entry zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"capability\00", [21 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rlimit\00", [25 x i8] zeroinitializer }, align 32
@aa_sfs_entry_rlimit = external dso_local global [0 x %struct.aa_sfs_entry], align 4
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"caps\00", [27 x i8] zeroinitializer }, align 32
@aa_sfs_entry_caps = external dso_local global [0 x %struct.aa_sfs_entry], align 4
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ptrace\00", [25 x i8] zeroinitializer }, align 32
@aa_sfs_entry_ptrace = internal global { [2 x %struct.aa_sfs_entry], [48 x i8] } { [2 x %struct.aa_sfs_entry] [%struct.aa_sfs_entry { ptr @.str.126, ptr null, i16 292, i32 1, %union.anon.150 { ptr @.str.132 }, ptr @aa_sfs_seq_file_ops }, %struct.aa_sfs_entry zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"signal\00", [25 x i8] zeroinitializer }, align 32
@aa_sfs_entry_signal = internal global { [2 x %struct.aa_sfs_entry], [48 x i8] } { [2 x %struct.aa_sfs_entry] [%struct.aa_sfs_entry { ptr @.str.126, ptr null, i16 292, i32 1, %union.anon.150 { ptr @.str.133 }, ptr @aa_sfs_seq_file_ops }, %struct.aa_sfs_entry zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"query\00", [26 x i8] zeroinitializer }, align 32
@aa_sfs_entry_query = internal global { [2 x %struct.aa_sfs_entry], [48 x i8] } { [2 x %struct.aa_sfs_entry] [%struct.aa_sfs_entry { ptr @.str.134, ptr null, i16 0, i32 4, %union.anon.150 { ptr @aa_sfs_entry_query_label }, ptr null }, %struct.aa_sfs_entry zeroinitializer], [48 x i8] zeroinitializer }, align 32
@aa_sfs_entry_features = internal global { <{ %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry, { ptr, ptr, i16, i32, { i32 }, ptr }, %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry }>, [72 x i8] } { <{ %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry, { ptr, ptr, i16, i32, { i32 }, ptr }, %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry }> <{ %struct.aa_sfs_entry { ptr @.str.91, ptr null, i16 0, i32 4, %union.anon.150 { ptr @aa_sfs_entry_policy }, ptr null }, %struct.aa_sfs_entry { ptr @.str.92, ptr null, i16 0, i32 4, %union.anon.150 { ptr @aa_sfs_entry_domain }, ptr null }, %struct.aa_sfs_entry { ptr @.str.93, ptr null, i16 0, i32 4, %union.anon.150 { ptr @aa_sfs_entry_file }, ptr null }, %struct.aa_sfs_entry { ptr @.str.94, ptr null, i16 0, i32 4, %union.anon.150 { ptr @aa_sfs_entry_network }, ptr null }, %struct.aa_sfs_entry { ptr @.str.95, ptr null, i16 0, i32 4, %union.anon.150 { ptr @aa_sfs_entry_mount }, ptr null }, %struct.aa_sfs_entry { ptr @.str.55, ptr null, i16 0, i32 4, %union.anon.150 { ptr @aa_sfs_entry_ns }, ptr null }, { ptr, ptr, i16, i32, { i32 }, ptr } { ptr @.str.96, ptr null, i16 292, i32 2, { i32 } { i32 16777215 }, ptr @aa_sfs_seq_file_ops }, %struct.aa_sfs_entry { ptr @.str.97, ptr null, i16 0, i32 4, %union.anon.150 { ptr @aa_sfs_entry_rlimit }, ptr null }, %struct.aa_sfs_entry { ptr @.str.98, ptr null, i16 0, i32 4, %union.anon.150 { ptr @aa_sfs_entry_caps }, ptr null }, %struct.aa_sfs_entry { ptr @.str.99, ptr null, i16 0, i32 4, %union.anon.150 { ptr @aa_sfs_entry_ptrace }, ptr null }, %struct.aa_sfs_entry { ptr @.str.100, ptr null, i16 0, i32 4, %union.anon.150 { ptr @aa_sfs_entry_signal }, ptr null }, %struct.aa_sfs_entry { ptr @.str.101, ptr null, i16 0, i32 4, %union.anon.150 { ptr @aa_sfs_entry_query }, ptr null }, %struct.aa_sfs_entry zeroinitializer }>, [72 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"versions\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"set_load\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"outofband\00", [22 x i8] zeroinitializer }, align 32
@aa_sfs_entry_policy = internal global { <{ %struct.aa_sfs_entry, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i32 }, ptr }, %struct.aa_sfs_entry }>, [32 x i8] } { <{ %struct.aa_sfs_entry, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i32 }, ptr }, %struct.aa_sfs_entry }> <{ %struct.aa_sfs_entry { ptr @.str.103, ptr null, i16 0, i32 4, %union.anon.150 { ptr @aa_sfs_entry_versions }, ptr null }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.104, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, { ptr, ptr, i16, i32, { i32 }, ptr } { ptr @.str.105, ptr null, i16 292, i32 2, { i32 } { i32 1 }, ptr @aa_sfs_seq_file_ops }, %struct.aa_sfs_entry zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v5\00", [29 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v6\00", [29 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v7\00", [29 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v8\00", [29 x i8] zeroinitializer }, align 32
@aa_sfs_entry_versions = internal global { <{ { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, %struct.aa_sfs_entry }>, [40 x i8] } { <{ { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, %struct.aa_sfs_entry }> <{ { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.107, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.108, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.109, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.110, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, %struct.aa_sfs_entry zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"change_hat\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"change_hatv\00", [20 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"change_onexec\00", [18 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"change_profile\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stack\00", [26 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fix_binfmt_elf_mmap\00", [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"post_nnp_subset\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"computed_longest_left\00", [42 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"attach_conditions\00", [46 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.2\00", [28 x i8] zeroinitializer }, align 32
@aa_sfs_entry_domain = internal global { <{ { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry }>, [88 x i8] } { <{ { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, %struct.aa_sfs_entry, %struct.aa_sfs_entry, %struct.aa_sfs_entry }> <{ { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.112, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.113, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.114, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.115, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.116, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.117, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.118, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.119, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, %struct.aa_sfs_entry { ptr @.str.120, ptr null, i16 0, i32 4, %union.anon.150 { ptr @aa_sfs_entry_attach }, ptr null }, %struct.aa_sfs_entry { ptr @.str.121, ptr null, i16 292, i32 1, %union.anon.150 { ptr @.str.122 }, ptr @aa_sfs_seq_file_ops }, %struct.aa_sfs_entry zeroinitializer }>, [88 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xattr\00", [26 x i8] zeroinitializer }, align 32
@aa_sfs_entry_attach = internal global { <{ { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, %struct.aa_sfs_entry }>, [48 x i8] } { <{ { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, %struct.aa_sfs_entry }> <{ { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.124, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, %struct.aa_sfs_entry zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mask\00", [27 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"create read write exec append mmap_exec link lock\00", [46 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mount umount pivot_root\00", [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"profile\00", [24 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pivot_root\00", [21 x i8] zeroinitializer }, align 32
@aa_sfs_entry_ns = internal global { <{ { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, %struct.aa_sfs_entry }>, [56 x i8] } { <{ { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, %struct.aa_sfs_entry }> <{ { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.129, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.130, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 0, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, %struct.aa_sfs_entry zeroinitializer }>, [56 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read trace\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [158 x i8], [34 x i8] } { [158 x i8] c"hup int quit ill trap abrt bus fpe kill usr1 segv usr2 pipe alrm term stkflt chld cont stop stp ttin ttou urg xcpu xfsz vtalrm prof winch io pwr sys emt lost\00", [34 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"perms\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"allow deny audit quiet\00", [41 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"multi_transaction\00", [46 x i8] zeroinitializer }, align 32
@aa_sfs_entry_query_label = internal global { <{ %struct.aa_sfs_entry, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, %struct.aa_sfs_entry }>, [32 x i8] } { <{ %struct.aa_sfs_entry, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr }, %struct.aa_sfs_entry }> <{ %struct.aa_sfs_entry { ptr @.str.135, ptr null, i16 292, i32 1, %union.anon.150 { ptr @.str.136 }, ptr @aa_sfs_seq_file_ops }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.137, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, { ptr, ptr, i16, i32, { i8, [3 x i8] }, ptr } { ptr @.str.138, ptr null, i16 292, i32 0, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, ptr @aa_sfs_seq_file_ops }, %struct.aa_sfs_entry zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@apparmor_initialized = external dso_local local_unnamed_addr global i32, align 4
@aa_create_aafs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.140, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.aa_create_aafs = private unnamed_addr constant [15 x i8] c"aa_create_aafs\00", align 1
@aa_create_aafs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @__func__.aa_create_aafs, ptr @.str, i32 2596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013AppArmor: %s: AppArmor securityfs already exists\0A\00", [44 x i8] zeroinitializer }, align 32
@aa_create_aafs._entry_ptr = internal global ptr @aa_create_aafs._entry, section ".printk_index", align 4
@.str.142 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't set apparmorfs up\0A\00", [39 x i8] zeroinitializer }, align 32
@root_ns = external dso_local local_unnamed_addr global ptr, align 4
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c".policy\00", [24 x i8] zeroinitializer }, align 32
@policy_link_iops = internal constant %struct.inode_operations { ptr null, ptr @policy_get_link, ptr null, ptr null, ptr @policy_readlink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@.str.144 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AppArmor Filesystem Enabled\00", [36 x i8] zeroinitializer }, align 32
@aa_create_aafs._rs.145 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.140, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@aa_create_aafs._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @__func__.aa_create_aafs, ptr @.str, i32 2663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013AppArmor: Error creating AppArmor securityfs\0A\00", [48 x i8] zeroinitializer }, align 32
@aa_create_aafs._entry_ptr.148 = internal global ptr @aa_create_aafs._entry.146, section ".printk_index", align 4
@.str.149 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c".null\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c"aa_sfs_seq_file_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1014, i32 30 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1416, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1430, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1431, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1432, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1433, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1440, i32 40 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1450, i32 26 }
@___asan_gen_.179 = private unnamed_addr constant [21 x i8] c"seq_rawdata_abi_fops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1290, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1456, i32 26 }
@___asan_gen_.185 = private unnamed_addr constant [26 x i8] c"seq_rawdata_revision_fops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1291, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1463, i32 27 }
@___asan_gen_.191 = private unnamed_addr constant [22 x i8] c"seq_rawdata_hash_fops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1292, i32 1 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1470, i32 26 }
@___asan_gen_.197 = private unnamed_addr constant [33 x i8] c"seq_rawdata_compressed_size_fops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1293, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1477, i32 26 }
@___asan_gen_.203 = private unnamed_addr constant [13 x i8] c"rawdata_fops\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1394, i32 37 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1534, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1535, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1536, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1672, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1673, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1680, i32 26 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1689, i32 30 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1706, i32 34 }
@___asan_gen_.230 = private unnamed_addr constant [22 x i8] c"seq_profile_name_fops\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1118, i32 1 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1712, i32 34 }
@___asan_gen_.236 = private unnamed_addr constant [22 x i8] c"seq_profile_mode_fops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1119, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1718, i32 34 }
@___asan_gen_.242 = private unnamed_addr constant [24 x i8] c"seq_profile_attach_fops\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1120, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant [22 x i8] c"seq_profile_hash_fops\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1121, i32 1 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1733, i32 22 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1741, i32 22 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2004, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [13 x i8] c"aa_sfs_entry\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2386, i32 28 }
@___asan_gen_.260 = private unnamed_addr constant [8 x i8] c"aa_null\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2492, i32 13 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 993, i32 19 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 993, i32 48 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 993, i32 56 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 999, i32 19 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1231, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1253, i32 18 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1262, i32 18 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1274, i32 20 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1285, i32 18 }
@___asan_gen_.290 = private unnamed_addr constant [9 x i8] c"aafs_mnt\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 143, i32 25 }
@___asan_gen_.293 = private unnamed_addr constant [11 x i8] c"aafs_count\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 144, i32 12 }
@___asan_gen_.300 = private unnamed_addr constant [41 x i8] c"../security/apparmor/include/policy_ns.h\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 101, i32 9 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 118, i32 38 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 127, i32 15 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 401, i32 7 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 695, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 723, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1093, i32 17 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 270, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant [9 x i8] c"aafs_ops\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 194, i32 32 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 196, i32 10 }
@___asan_gen_.335 = private unnamed_addr constant [23 x i8] c"apparmorfs_context_ops\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 184, i32 43 }
@___asan_gen_.338 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 168, i32 27 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 168, i32 40 }
@___asan_gen_.344 = private unnamed_addr constant [15 x i8] c"aafs_super_ops\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 160, i32 38 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 149, i32 18 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 218, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 219, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1583, i32 13 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1588, i32 28 }
@___asan_gen_.362 = private unnamed_addr constant [23 x i8] c"aa_fs_ns_revision_fops\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 599, i32 37 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1960, i32 26 }
@___asan_gen_.368 = private unnamed_addr constant [19 x i8] c"aa_fs_profile_load\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 451, i32 37 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1967, i32 26 }
@___asan_gen_.374 = private unnamed_addr constant [22 x i8] c"aa_fs_profile_replace\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 468, i32 37 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1974, i32 26 }
@___asan_gen_.380 = private unnamed_addr constant [21 x i8] c"aa_fs_profile_remove\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 508, i32 37 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1982, i32 21 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 51, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [36 x i8] c"../security/apparmor/include/cred.h\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 26, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 424, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 425, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant [37 x i8] c"../security/apparmor/include/label.h\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 431, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 391, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 230, i32 6 }
@___asan_gen_.411 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 214, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 156, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1790, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1853, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant [35 x i8] c"../security/apparmor/include/lib.h\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 196, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2387, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant [22 x i8] c"aa_sfs_entry_apparmor\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2375, i32 28 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2376, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant [14 x i8] c"aa_sfs_access\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 977, i32 37 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2377, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant [20 x i8] c"seq_ns_stacked_fops\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1197, i32 1 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2378, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant [22 x i8] c"seq_ns_nsstacked_fops\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1198, i32 1 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2379, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant [18 x i8] c"seq_ns_level_fops\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1199, i32 1 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2380, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant [17 x i8] c"seq_ns_name_fops\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1200, i32 1 }
@___asan_gen_.464 = private unnamed_addr constant [21 x i8] c"aa_sfs_profiles_fops\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2278, i32 37 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2382, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 944, i32 23 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 949, i32 23 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 954, i32 23 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 960, i32 23 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 797, i32 9 }
@___asan_gen_.486 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 594, i32 8 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 845, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1182, i32 18 }
@___asan_gen_.494 = private unnamed_addr constant [19 x i8] c"aa_sfs_profiles_op\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2258, i32 36 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2103, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2104, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2067, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2128, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2360, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2361, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2362, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [18 x i8] c"aa_sfs_entry_file\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2287, i32 28 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2363, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2364, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant [19 x i8] c"aa_sfs_entry_mount\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2337, i32 28 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2366, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2367, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2368, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2369, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant [20 x i8] c"aa_sfs_entry_ptrace\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2293, i32 28 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2370, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant [20 x i8] c"aa_sfs_entry_signal\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2298, i32 28 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2371, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant [19 x i8] c"aa_sfs_entry_query\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2355, i32 28 }
@___asan_gen_.557 = private unnamed_addr constant [22 x i8] c"aa_sfs_entry_features\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2359, i32 28 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2330, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2331, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2333, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant [20 x i8] c"aa_sfs_entry_policy\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2329, i32 28 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2322, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2323, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2324, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2325, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant [22 x i8] c"aa_sfs_entry_versions\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2321, i32 28 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2308, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2309, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2310, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2311, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2312, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2313, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2314, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2315, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2316, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2317, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant [20 x i8] c"aa_sfs_entry_domain\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2307, i32 28 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2304, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant [20 x i8] c"aa_sfs_entry_attach\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2303, i32 28 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2288, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2338, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2343, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2344, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant [16 x i8] c"aa_sfs_entry_ns\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2342, i32 28 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2294, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2299, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2356, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2349, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2350, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2351, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant [25 x i8] c"aa_sfs_entry_query_label\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2348, i32 28 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2596, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2603, i32 9 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2637, i32 55 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2656, i32 18 }
@___asan_gen_.692 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.695 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2663, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.702 = private constant [34 x i8] c"../security/apparmor/apparmorfs.c\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2506, i32 26 }
@llvm.compiler.used = appending global [187 x ptr] [ptr @__initcall__kmod_apparmor__565_2667_aa_create_aafs5, ptr @aa_create_aafs._entry, ptr @aa_create_aafs._entry.146, ptr @aa_create_aafs._entry_ptr, ptr @aa_create_aafs._entry_ptr.148, ptr @aa_sfs_seq_file_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @seq_rawdata_abi_fops, ptr @.str.8, ptr @seq_rawdata_revision_fops, ptr @.str.9, ptr @seq_rawdata_hash_fops, ptr @.str.10, ptr @seq_rawdata_compressed_size_fops, ptr @.str.11, ptr @rawdata_fops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @seq_profile_name_fops, ptr @.str.20, ptr @seq_profile_mode_fops, ptr @.str.21, ptr @seq_profile_attach_fops, ptr @seq_profile_hash_fops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @aa_sfs_entry, ptr @aa_null, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @aafs_mnt, ptr @aafs_count, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @aafs_ops, ptr @.str.45, ptr @apparmorfs_context_ops, ptr @apparmorfs_fill_super.files, ptr @.str.46, ptr @aafs_super_ops, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @aa_fs_ns_revision_fops, ptr @.str.52, ptr @aa_fs_profile_load, ptr @.str.53, ptr @aa_fs_profile_replace, ptr @.str.54, ptr @aa_fs_profile_remove, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @aa_sfs_entry_apparmor, ptr @.str.71, ptr @aa_sfs_access, ptr @.str.72, ptr @seq_ns_stacked_fops, ptr @.str.73, ptr @seq_ns_nsstacked_fops, ptr @.str.74, ptr @seq_ns_level_fops, ptr @.str.75, ptr @seq_ns_name_fops, ptr @aa_sfs_profiles_fops, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @aa_sfs_profiles_op, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @aa_sfs_entry_file, ptr @.str.94, ptr @.str.95, ptr @aa_sfs_entry_mount, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @aa_sfs_entry_ptrace, ptr @.str.100, ptr @aa_sfs_entry_signal, ptr @.str.101, ptr @aa_sfs_entry_query, ptr @aa_sfs_entry_features, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @aa_sfs_entry_policy, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @aa_sfs_entry_versions, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @aa_sfs_entry_domain, ptr @.str.124, ptr @aa_sfs_entry_attach, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @aa_sfs_entry_ns, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @aa_sfs_entry_query_label, ptr @aa_create_aafs._rs, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @aa_create_aafs._rs.145, ptr @.str.147, ptr @.str.149], section "llvm.metadata"
@0 = internal global [184 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_seq_file_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_rawdata_abi_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_rawdata_revision_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_rawdata_hash_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_rawdata_compressed_size_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rawdata_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_profile_name_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_profile_mode_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_profile_attach_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_profile_hash_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_null to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aafs_mnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aafs_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aafs_ops to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmorfs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmorfs_fill_super.files to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aafs_super_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_fs_ns_revision_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_fs_profile_load to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_fs_profile_replace to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_fs_profile_remove to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_entry_apparmor to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_access to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_ns_stacked_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_ns_nsstacked_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_ns_level_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_ns_name_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_profiles_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_profiles_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_entry_file to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_entry_mount to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_entry_ptrace to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_entry_signal to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_entry_query to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_entry_features to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_entry_policy to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_entry_versions to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_entry_domain to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_entry_attach to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_entry_ns to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 158, i32 192, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_entry_query_label to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_create_aafs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_create_aafs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_create_aafs._rs.145 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_create_aafs._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__aa_bump_ns_revision(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %revision = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 9
  %0 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %revision, align 4
  %add = add i32 %1, 1
  store volatile i32 %add, ptr %revision, align 4
  %wait = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aa_sfs_seq_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @aa_sfs_seq_show, ptr noundef %1) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__aa_fs_remove_rawdata(ptr noundef %rawdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ns = getelementptr inbounds %struct.aa_loaddata, ptr %rawdata, i32 0, i32 4
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %land.rhs

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #16
  br i1 %call, label %land.rhs.if.end_crit_edge, label %do.end, !prof !422

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1416, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.__aa_fs_remove_rawdata) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  %2 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load ptr, ptr %ns, align 4
  %tobool26.not = icmp eq ptr %.pr, null
  br i1 %tobool26.not, label %if.end.if.end30_crit_edge, label %if.then27

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then27:                                        ; preds = %if.end
  tail call fastcc void @remove_rawdata_dents(ptr noundef %rawdata)
  %list = getelementptr inbounds %struct.aa_loaddata, ptr %rawdata, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.then27.list_del_init.exit_crit_edge

if.then27.list_del_init.exit_crit_edge:           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.aa_loaddata, ptr %rawdata, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then27.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.aa_loaddata, ptr %rawdata, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i3.i, align 4
  %11 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ns, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %list_del_init.exit.aa_put_ns.exit_crit_edge, label %if.then.i

list_del_init.exit.aa_put_ns.exit_crit_edge:      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then.i:                                        ; preds = %list_del_init.exit
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.then.i.aa_put_ns.exit_crit_edge, label %if.then.i.i

if.then.i.aa_put_ns.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %14, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #16
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef 3) #16
  br label %aa_put_ns.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef %label.i.i) #16, !callees !426
  br label %aa_put_ns.exit

aa_put_ns.exit:                                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, %if.then.i.aa_put_ns.exit_crit_edge, %list_del_init.exit.aa_put_ns.exit_crit_edge
  %16 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ns, align 4
  br label %if.end30

if.end30:                                         ; preds = %aa_put_ns.exit, %if.end.if.end30_crit_edge, %entry.if.end30_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remove_rawdata_dents(ptr nocapture noundef %rawdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.aa_loaddata, ptr %rawdata, i32 0, i32 3, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @aafs_remove(ptr noundef nonnull %1)
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.aa_loaddata, ptr %rawdata, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.i.1 = icmp eq ptr %4, null
  %cmp.i.1 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1 = or i1 %tobool.not.i.1, %cmp.i.1
  br i1 %spec.select.i.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @aafs_remove(ptr noundef nonnull %4)
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.aa_loaddata, ptr %rawdata, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.i.2 = icmp eq ptr %7, null
  %cmp.i.2 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i.2 = or i1 %tobool.not.i.2, %cmp.i.2
  br i1 %spec.select.i.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @aafs_remove(ptr noundef nonnull %7)
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.aa_loaddata, ptr %rawdata, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.i.3 = icmp eq ptr %10, null
  %cmp.i.3 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %spec.select.i.3 = or i1 %tobool.not.i.3, %cmp.i.3
  br i1 %spec.select.i.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @aafs_remove(ptr noundef nonnull %10)
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.aa_loaddata, ptr %rawdata, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.i.4 = icmp eq ptr %13, null
  %cmp.i.4 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %spec.select.i.4 = or i1 %tobool.not.i.4, %cmp.i.4
  br i1 %spec.select.i.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @aafs_remove(ptr noundef nonnull %13)
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.aa_loaddata, ptr %rawdata, i32 0, i32 3, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.i.5 = icmp eq ptr %16, null
  %cmp.i.5 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %spec.select.i.5 = or i1 %tobool.not.i.5, %cmp.i.5
  br i1 %spec.select.i.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @aafs_remove(ptr noundef nonnull %16)
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__aa_fs_create_rawdata(ptr noundef %ns, ptr noundef %rawdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ns, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !427

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1430, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.__aa_fs_create_rawdata) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %rawdata, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !427

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1431, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.__aa_fs_create_rawdata) #16
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %lock = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #16
  br i1 %call, label %if.end50.if.end85_crit_edge, label %do.end79, !prof !422

if.end50.if.end85_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

do.end79:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1432, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.__aa_fs_create_rawdata) #16
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %if.end50.if.end85_crit_edge
  %arrayidx = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool97.not = icmp eq ptr %1, null
  br i1 %tobool97.not, label %do.end115, label %if.end85.if.end121_crit_edge, !prof !427

if.end85.if.end121_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end121

do.end115:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1433, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.__aa_fs_create_rawdata) #16
  br label %if.end121

if.end121:                                        ; preds = %do.end115, %if.end85.if.end121_crit_edge
  %revision = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 9
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision, align 4
  %call131 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6, i32 noundef %3) #16
  %name = getelementptr inbounds %struct.aa_loaddata, ptr %rawdata, i32 0, i32 5
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call131, ptr %name, align 4
  %tobool133.not = icmp eq ptr %call131, null
  br i1 %tobool133.not, label %if.end121.cleanup_crit_edge, label %if.end135

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end135:                                        ; preds = %if.end121
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call fastcc ptr @aafs_create(ptr noundef nonnull %call131, i16 noundef zeroext 16877, ptr noundef %6, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then141, label %if.end143

if.then141:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end143:                                        ; preds = %if.end135
  %arrayidx145 = getelementptr %struct.aa_loaddata, ptr %rawdata, i32 0, i32 3, i32 5
  %8 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %arrayidx145, align 4
  %call.i230 = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.7, i16 noundef zeroext -32476, ptr noundef %call.i, ptr noundef %rawdata, ptr noundef nonnull @seq_rawdata_abi_fops, ptr noundef null) #16
  %cmp.i231 = icmp ugt ptr %call.i230, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231, label %if.end143.fail_crit_edge, label %if.end149

if.end143.fail_crit_edge:                         ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end149:                                        ; preds = %if.end143
  %dents144 = getelementptr inbounds %struct.aa_loaddata, ptr %rawdata, i32 0, i32 3
  %9 = ptrtoint ptr %dents144 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i230, ptr %dents144, align 4
  %call.i232 = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.8, i16 noundef zeroext -32476, ptr noundef %call.i, ptr noundef %rawdata, ptr noundef nonnull @seq_rawdata_revision_fops, ptr noundef null) #16
  %cmp.i233 = icmp ugt ptr %call.i232, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i233, label %if.end149.fail_crit_edge, label %if.end155

if.end149.fail_crit_edge:                         ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end155:                                        ; preds = %if.end149
  %arrayidx157 = getelementptr %struct.aa_loaddata, ptr %rawdata, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i232, ptr %arrayidx157, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_hash_policy to i32))
  %11 = load i8, ptr @aa_g_hash_policy, align 1, !range !428
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool158.not = icmp eq i8 %11, 0
  br i1 %tobool158.not, label %if.end155.if.end166_crit_edge, label %if.then159

if.end155.if.end166_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end166

if.then159:                                       ; preds = %if.end155
  %call.i234 = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.9, i16 noundef zeroext -32476, ptr noundef %call.i, ptr noundef %rawdata, ptr noundef nonnull @seq_rawdata_hash_fops, ptr noundef null) #16
  %cmp.i235 = icmp ugt ptr %call.i234, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i235, label %if.then159.fail_crit_edge, label %if.end163

if.then159.fail_crit_edge:                        ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end163:                                        ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx165 = getelementptr %struct.aa_loaddata, ptr %rawdata, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i234, ptr %arrayidx165, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.end163, %if.end155.if.end166_crit_edge
  %call.i236 = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.10, i16 noundef zeroext -32476, ptr noundef %call.i, ptr noundef %rawdata, ptr noundef nonnull @seq_rawdata_compressed_size_fops, ptr noundef null) #16
  %cmp.i237 = icmp ugt ptr %call.i236, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i237, label %if.end166.fail_crit_edge, label %if.end170

if.end166.fail_crit_edge:                         ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end170:                                        ; preds = %if.end166
  %arrayidx172 = getelementptr %struct.aa_loaddata, ptr %rawdata, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i236, ptr %arrayidx172, align 4
  %call.i238 = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.11, i16 noundef zeroext -32476, ptr noundef %call.i, ptr noundef %rawdata, ptr noundef nonnull @rawdata_fops, ptr noundef null) #16
  %cmp.i239 = icmp ugt ptr %call.i238, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i239, label %if.end170.fail_crit_edge, label %if.end176

if.end170.fail_crit_edge:                         ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end176:                                        ; preds = %if.end170
  %arrayidx178 = getelementptr %struct.aa_loaddata, ptr %rawdata, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i238, ptr %arrayidx178, align 4
  %size = getelementptr inbounds %struct.aa_loaddata, ptr %rawdata, i32 0, i32 6
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %conv = zext i32 %16 to i64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call.i238, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %i_size, align 8
  %call180 = tail call fastcc ptr @aa_get_ns(ptr noundef %ns)
  %ns181 = getelementptr inbounds %struct.aa_loaddata, ptr %rawdata, i32 0, i32 4
  %20 = ptrtoint ptr %ns181 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ns, ptr %ns181, align 4
  %list = getelementptr inbounds %struct.aa_loaddata, ptr %rawdata, i32 0, i32 1
  %rawdata_list = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 12
  %21 = ptrtoint ptr %rawdata_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rawdata_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %rawdata_list, ptr noundef %22) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end176.cleanup_crit_edge

if.end176.cleanup_crit_edge:                      ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list, ptr %prev1.i.i, align 4
  %24 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.aa_loaddata, ptr %rawdata, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %rawdata_list, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %rawdata_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %list, ptr %rawdata_list, align 4
  br label %cleanup

fail:                                             ; preds = %if.end170.fail_crit_edge, %if.end166.fail_crit_edge, %if.then159.fail_crit_edge, %if.end149.fail_crit_edge, %if.end143.fail_crit_edge
  %dent.0 = phi ptr [ %call.i230, %if.end143.fail_crit_edge ], [ %call.i232, %if.end149.fail_crit_edge ], [ %call.i234, %if.then159.fail_crit_edge ], [ %call.i236, %if.end166.fail_crit_edge ], [ %call.i238, %if.end170.fail_crit_edge ]
  tail call fastcc void @remove_rawdata_dents(ptr noundef %rawdata)
  %27 = ptrtoint ptr %dent.0 to i32
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end.i.i, %if.end176.cleanup_crit_edge, %if.then141, %if.end121.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then141 ], [ %27, %fail ], [ -12, %if.end121.cleanup_crit_edge ], [ 0, %if.end176.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_ns(ptr noundef readonly returned %ns) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %tobool.not = icmp eq ptr %ns, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %unconfined = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 4
  %0 = ptrtoint ptr %unconfined to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unconfined, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %1, i32 0, i32 25
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #16, !srcloc !429
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !427

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !422

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef %.sink.i.i.i.i.i) #16
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %ns
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__aafs_profile_rmdir(ptr noundef %profile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %profile, null
  br i1 %tobool.not, label %entry.cleanup24_crit_edge, label %if.end

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup24

if.end:                                           ; preds = %entry
  %profiles = getelementptr inbounds %struct.aa_policy, ptr %profile, i32 0, i32 3
  %0 = ptrtoint ptr %profiles to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn41 = load ptr, ptr %profiles, align 4
  %cmp.not42 = icmp eq ptr %.pn41, %profiles
  br i1 %cmp.not42, label %if.end.for.body12.preheader_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.body12.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body12.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn43 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn41, %if.end.for.body_crit_edge ]
  %child.0 = getelementptr i8, ptr %.pn43, i32 -8
  tail call void @__aafs_profile_rmdir(ptr noundef %child.0)
  %1 = ptrtoint ptr %.pn43 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn43, align 4
  %cmp.not = icmp eq ptr %.pn, %profiles
  br i1 %cmp.not, label %for.body.for.body12.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.body12.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body12.preheader

for.body12.preheader:                             ; preds = %for.body.for.body12.preheader_crit_edge, %if.end.for.body12.preheader_crit_edge
  br label %for.body12

for.body12:                                       ; preds = %cleanup.for.body12_crit_edge, %for.body12.preheader
  %i.044 = phi i32 [ %dec, %cleanup.for.body12_crit_edge ], [ 8, %for.body12.preheader ]
  %arrayidx = getelementptr %struct.aa_profile, ptr %profile, i32 0, i32 23, i32 %i.044
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %3, null
  br i1 %tobool13.not, label %for.body12.cleanup_crit_edge, label %if.end15

for.body12.cleanup_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %for.body12
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_private, align 4
  tail call fastcc void @aafs_remove(ptr noundef nonnull %3)
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end15.aa_put_proxy.exit_crit_edge, label %if.then.i

if.end15.aa_put_proxy.exit_crit_edge:             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_proxy.exit

if.then.i:                                        ; preds = %if.end15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #16
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_proxy.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.aa_put_proxy.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_proxy.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #16
  br label %aa_put_proxy.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_proxy_kref(ptr noundef nonnull %7) #16, !callees !426
  br label %aa_put_proxy.exit

aa_put_proxy.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_proxy.exit_crit_edge, %if.end15.aa_put_proxy.exit_crit_edge
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %aa_put_proxy.exit, %for.body12.cleanup_crit_edge
  %dec = add nsw i32 %i.044, -1
  %cmp11.not = icmp eq i32 %i.044, 0
  br i1 %cmp11.not, label %cleanup.cleanup24_crit_edge, label %cleanup.for.body12_crit_edge

cleanup.for.body12_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body12

cleanup.cleanup24_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup24

cleanup24:                                        ; preds = %cleanup.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aafs_remove(ptr noundef %dentry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dentry, null
  %cmp.i = icmp ugt ptr %dentry, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #16
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %5, null
  br i1 %cmp.i.not.i, label %if.end.if.end10_crit_edge, label %simple_positive.exit

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

simple_positive.exit:                             ; preds = %if.end
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i.not, label %simple_positive.exit.if.end10_crit_edge, label %if.then4

simple_positive.exit.if.end10_crit_edge:          ; preds = %simple_positive.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then4:                                         ; preds = %simple_positive.exit
  %8 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dentry, align 8
  %10 = and i32 %9, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %10)
  %11 = icmp eq i32 %10, 2097152
  br i1 %11, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = tail call i32 @simple_rmdir(ptr noundef %3, ptr noundef nonnull %dentry) #16
  br label %if.end9

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  %call8 = tail call i32 @simple_unlink(ptr noundef %3, ptr noundef nonnull %dentry) #16
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  tail call void @d_delete(ptr noundef nonnull %dentry) #16
  tail call void @dput(ptr noundef nonnull %dentry) #16
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %simple_positive.exit.if.end10_crit_edge, %if.end.if.end10_crit_edge
  tail call void @up_write(ptr noundef %i_rwsem.i) #16
  tail call void @simple_release_fs(ptr noundef nonnull @aafs_mnt, ptr noundef nonnull @aafs_count) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__aafs_profile_migrate_dents(ptr noundef %old, ptr noundef %new) local_unnamed_addr #0 align 64 {
entry:
  %tmp103 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %old, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !427

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1534, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.__aafs_profile_migrate_dents) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %new, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !427

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1535, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.__aafs_profile_migrate_dents) #16
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %ns = getelementptr inbounds %struct.aa_profile, ptr %old, i32 0, i32 2
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 4
  %lock = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #16
  br i1 %call, label %if.end50.for.body.preheader_crit_edge, label %do.end79, !prof !422

if.end50.for.body.preheader_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.preheader

do.end79:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1536, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.__aafs_profile_migrate_dents) #16
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end79, %if.end50.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end107.for.body_crit_edge, %for.body.preheader
  %i.0127 = phi i32 [ %inc, %if.end107.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.aa_profile, ptr %old, i32 0, i32 23, i32 %i.0127
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx96 = getelementptr %struct.aa_profile, ptr %new, i32 0, i32 23, i32 %i.0127
  %4 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %arrayidx96, align 4
  %tobool99.not = icmp eq ptr %3, null
  br i1 %tobool99.not, label %for.body.if.end107_crit_edge, label %if.then100

for.body.if.end107_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end107

if.then100:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %d_inode = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp103) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp103, ptr noundef %6) #16
  %7 = call ptr @memcpy(ptr %i_mtime, ptr %tmp103, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp103) #16
  br label %if.end107

if.end107:                                        ; preds = %if.then100, %for.body.if.end107_crit_edge
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0127, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %if.end107.for.body_crit_edge

if.end107.for.body_crit_edge:                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__aafs_profile_mkdir(ptr noundef %profile, ptr noundef %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %profile, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !427

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1672, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.__aafs_profile_mkdir) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ns = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 2
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 4
  %lock = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #16
  br i1 %call, label %if.end.if.end49_crit_edge, label %do.end43, !prof !422

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1673, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.__aafs_profile_mkdir) #16
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end.if.end49_crit_edge
  %tobool59.not = icmp eq ptr %parent, null
  br i1 %tobool59.not, label %if.then60, label %if.end49.if.end68_crit_edge

if.end49.if.end68_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68

if.then60:                                        ; preds = %if.end49
  %2 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns, align 4
  %lock.i = getelementptr inbounds %struct.aa_ns, ptr %3, i32 0, i32 2
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock.i) #16
  br i1 %call.i, label %if.then60.aa_deref_parent.exit_crit_edge, label %land.lhs.true.i

if.then60.aa_deref_parent.exit_crit_edge:         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_deref_parent.exit

land.lhs.true.i:                                  ; preds = %if.then60
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.aa_deref_parent.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.aa_deref_parent.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_deref_parent.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b5.i = load i1, ptr @aa_deref_parent.__warned, align 1
  br i1 %.b5.i, label %land.lhs.true2.i.aa_deref_parent.exit_crit_edge, label %if.then.i257

land.lhs.true2.i.aa_deref_parent.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_deref_parent.exit

if.then.i257:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @aa_deref_parent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 102, ptr noundef nonnull @.str.35) #16
  br label %aa_deref_parent.exit

aa_deref_parent.exit:                             ; preds = %if.then.i257, %land.lhs.true2.i.aa_deref_parent.exit_crit_edge, %land.lhs.true.i.aa_deref_parent.exit_crit_edge, %if.then60.aa_deref_parent.exit_crit_edge
  %parent.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  %dents = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %dents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dents, align 4
  %call.i258 = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.17, i16 noundef zeroext 16877, ptr noundef %7, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %cmp.i259 = icmp ugt ptr %call.i258, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i259, label %aa_deref_parent.exit.fail_crit_edge, label %cleanup.thread

aa_deref_parent.exit.fail_crit_edge:              ; preds = %aa_deref_parent.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

cleanup.thread:                                   ; preds = %aa_deref_parent.exit
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx67 = getelementptr %struct.aa_profile, ptr %5, i32 0, i32 23, i32 1
  %8 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i258, ptr %arrayidx67, align 4
  br label %if.end68

if.end68:                                         ; preds = %cleanup.thread, %if.end49.if.end68_crit_edge
  %parent.addr.1 = phi ptr [ %parent, %if.end49.if.end68_crit_edge ], [ %call.i258, %cleanup.thread ]
  %dirname = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 22
  %9 = ptrtoint ptr %dirname to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dirname, align 4
  %tobool69.not = icmp eq ptr %10, null
  br i1 %tobool69.not, label %if.then70, label %if.end68.if.end93_crit_edge

if.end68.if.end93_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93

if.then70:                                        ; preds = %if.end68
  %11 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %profile, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then70
  %name.addr.0.i = phi ptr [ %12, %if.then70 ], [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ]
  %13 = ptrtoint ptr %name.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %name.addr.0.i, align 1
  %15 = and i8 %14, -2
  %switch.i = icmp eq i8 %15, 46
  %incdec.ptr.i = getelementptr i8, ptr %name.addr.0.i, i32 1
  br i1 %switch.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool33.not86.i = icmp eq i8 %14, 0
  br i1 %tobool33.not86.i, label %while.end.i.mangle_name.exit_crit_edge, label %while.end.i.for.body34.i_crit_edge

while.end.i.for.body34.i_crit_edge:               ; preds = %while.end.i
  br label %for.body34.i

while.end.i.mangle_name.exit_crit_edge:           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mangle_name.exit

for.body34.i:                                     ; preds = %for.inc54.i.for.body34.i_crit_edge, %while.end.i.for.body34.i_crit_edge
  %len.088.i = phi i32 [ %len.1.i, %for.inc54.i.for.body34.i_crit_edge ], [ 0, %while.end.i.for.body34.i_crit_edge ]
  %name.addr.287.i = phi ptr [ %incdec.ptr55.i, %for.inc54.i.for.body34.i_crit_edge ], [ %name.addr.0.i, %while.end.i.for.body34.i_crit_edge ]
  %16 = phi i8 [ %.pr81.i, %for.inc54.i.for.body34.i_crit_edge ], [ %14, %while.end.i.for.body34.i_crit_edge ]
  %conv35.i = zext i8 %16 to i32
  %arrayidx36.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv35.i
  %17 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx36.i, align 1
  %19 = and i8 %18, 39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %lor.lhs.false48.i, label %for.body34.i.if.then52.i_crit_edge

for.body34.i.if.then52.i_crit_edge:               ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then52.i

lor.lhs.false48.i:                                ; preds = %for.body34.i
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull @.str.37, i32 %conv35.i, i32 5) #19
  %tobool51.not.i = icmp eq ptr %memchr.i, null
  br i1 %tobool51.not.i, label %lor.lhs.false48.i.for.inc54.i_crit_edge, label %lor.lhs.false48.i.if.then52.i_crit_edge

lor.lhs.false48.i.if.then52.i_crit_edge:          ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then52.i

lor.lhs.false48.i.for.inc54.i_crit_edge:          ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc54.i

if.then52.i:                                      ; preds = %lor.lhs.false48.i.if.then52.i_crit_edge, %for.body34.i.if.then52.i_crit_edge
  %inc.i = add i32 %len.088.i, 1
  br label %for.inc54.i

for.inc54.i:                                      ; preds = %if.then52.i, %lor.lhs.false48.i.for.inc54.i_crit_edge
  %len.1.i = phi i32 [ %inc.i, %if.then52.i ], [ %len.088.i, %lor.lhs.false48.i.for.inc54.i_crit_edge ]
  %incdec.ptr55.i = getelementptr i8, ptr %name.addr.287.i, i32 1
  %21 = ptrtoint ptr %incdec.ptr55.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr81.i = load i8, ptr %incdec.ptr55.i, align 1
  %tobool33.not.i = icmp eq i8 %.pr81.i, 0
  br i1 %tobool33.not.i, label %for.inc54.i.mangle_name.exit_crit_edge, label %for.inc54.i.for.body34.i_crit_edge

for.inc54.i.for.body34.i_crit_edge:               ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body34.i

for.inc54.i.mangle_name.exit_crit_edge:           ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mangle_name.exit

mangle_name.exit:                                 ; preds = %for.inc54.i.mangle_name.exit_crit_edge, %while.end.i.mangle_name.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %while.end.i.mangle_name.exit_crit_edge ], [ %len.1.i, %for.inc54.i.mangle_name.exit_crit_edge ]
  %22 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ns, align 4
  %uniq_id = getelementptr inbounds %struct.aa_ns, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %uniq_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %uniq_id, align 4
  %call73 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.18, i32 noundef %25)
  %add = add i32 %call73, %retval.0.i
  %add74 = add i32 %add, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add74, i32 noundef 3264) #20
  %26 = ptrtoint ptr %dirname to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call9.i, ptr %dirname, align 4
  %tobool78.not = icmp eq ptr %call9.i, null
  br i1 %tobool78.not, label %mangle_name.exit.fail2_crit_edge, label %if.end80

mangle_name.exit.fail2_crit_edge:                 ; preds = %mangle_name.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail2

if.end80:                                         ; preds = %mangle_name.exit
  %27 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %profile, align 4
  br label %while.cond.i263

while.cond.i263:                                  ; preds = %while.cond.i263.while.cond.i263_crit_edge, %if.end80
  %name.addr.0.i260 = phi ptr [ %28, %if.end80 ], [ %incdec.ptr.i262, %while.cond.i263.while.cond.i263_crit_edge ]
  %29 = ptrtoint ptr %name.addr.0.i260 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %name.addr.0.i260, align 1
  %31 = and i8 %30, -2
  %switch.i261 = icmp eq i8 %31, 46
  %incdec.ptr.i262 = getelementptr i8, ptr %name.addr.0.i260, i32 1
  br i1 %switch.i261, label %while.cond.i263.while.cond.i263_crit_edge, label %for.cond.preheader.i

while.cond.i263.while.cond.i263_crit_edge:        ; preds = %while.cond.i263
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i263

for.cond.preheader.i:                             ; preds = %while.cond.i263
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool33.not86.i265 = icmp eq i8 %30, 0
  br i1 %tobool33.not86.i265, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %t.084.i = phi ptr [ %t.1.i, %for.inc.i.for.body.i_crit_edge ], [ %call9.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %name.addr.183.i = phi ptr [ %incdec.ptr30.i, %for.inc.i.for.body.i_crit_edge ], [ %name.addr.0.i260, %for.cond.preheader.i.for.body.i_crit_edge ]
  %32 = phi i8 [ %.pr.i, %for.inc.i.for.body.i_crit_edge ], [ %30, %for.cond.preheader.i.for.body.i_crit_edge ]
  %conv6.i = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %32)
  %cmp7.i = icmp eq i8 %32, 47
  br i1 %cmp7.i, label %for.body.i.for.inc.sink.split.i_crit_edge, label %if.else.i

for.body.i.for.inc.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.sink.split.i

if.else.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv6.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  %conv12.i = zext i8 %34 to i32
  %and.i = and i32 %conv12.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp13.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp13.not.i, label %if.else17.i, label %if.else.i.for.inc.sink.split.i_crit_edge

if.else.i.for.inc.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.sink.split.i

if.else17.i:                                      ; preds = %if.else.i
  %and21.i = and i32 %conv12.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %cmp22.not.i = icmp eq i32 %and21.i, 0
  br i1 %cmp22.not.i, label %lor.lhs.false.i, label %if.else17.i.for.inc.sink.split.i_crit_edge

if.else17.i.for.inc.sink.split.i_crit_edge:       ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.sink.split.i

lor.lhs.false.i:                                  ; preds = %if.else17.i
  %memchr80.i = tail call ptr @memchr(ptr noundef nonnull @.str.36, i32 %conv6.i, i32 4) #19
  %tobool25.not.i = icmp eq ptr %memchr80.i, null
  br i1 %tobool25.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false.i.for.inc.sink.split.i_crit_edge

lor.lhs.false.i.for.inc.sink.split.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.sink.split.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

for.inc.sink.split.i:                             ; preds = %lor.lhs.false.i.for.inc.sink.split.i_crit_edge, %if.else17.i.for.inc.sink.split.i_crit_edge, %if.else.i.for.inc.sink.split.i_crit_edge, %for.body.i.for.inc.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 46, %for.body.i.for.inc.sink.split.i_crit_edge ], [ 95, %if.else.i.for.inc.sink.split.i_crit_edge ], [ %32, %lor.lhs.false.i.for.inc.sink.split.i_crit_edge ], [ %32, %if.else17.i.for.inc.sink.split.i_crit_edge ]
  %incdec.ptr10.i = getelementptr i8, ptr %t.084.i, i32 1
  %35 = ptrtoint ptr %t.084.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink.i, ptr %t.084.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %t.1.i = phi ptr [ %t.084.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %incdec.ptr10.i, %for.inc.sink.split.i ]
  %incdec.ptr30.i = getelementptr i8, ptr %name.addr.183.i, i32 1
  %36 = ptrtoint ptr %incdec.ptr30.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %.pr.i = load i8, ptr %incdec.ptr30.i, align 1
  %tobool5.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool5.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %t.0.lcssa.i = phi ptr [ %call9.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %t.1.i, %for.inc.i.for.end.i_crit_edge ]
  %37 = ptrtoint ptr %t.0.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %t.0.lcssa.i, align 1
  %38 = ptrtoint ptr %dirname to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dirname, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 %retval.0.i
  %40 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ns, align 4
  %uniq_id87 = getelementptr inbounds %struct.aa_ns, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %uniq_id87 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %uniq_id87, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %uniq_id87, align 4
  %call88 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.18, i32 noundef %43)
  br label %if.end93

if.end93:                                         ; preds = %for.end.i, %if.end68.if.end93_crit_edge
  %44 = ptrtoint ptr %dirname to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dirname, align 4
  %call.i284 = tail call fastcc ptr @aafs_create(ptr noundef %45, i16 noundef zeroext 16877, ptr noundef %parent.addr.1, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %cmp.i285 = icmp ugt ptr %call.i284, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i285, label %if.end93.fail_crit_edge, label %if.end98

if.end93.fail_crit_edge:                          ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end98:                                         ; preds = %if.end93
  %dents99 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 23
  %46 = ptrtoint ptr %dents99 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i284, ptr %dents99, align 4
  %call101 = tail call fastcc ptr @create_profile_file(ptr noundef %call.i284, ptr noundef nonnull @.str.19, ptr noundef %profile, ptr noundef nonnull @seq_profile_name_fops)
  %cmp.i286 = icmp ugt ptr %call101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i286, label %if.end98.fail_crit_edge, label %if.end104

if.end98.fail_crit_edge:                          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end104:                                        ; preds = %if.end98
  %arrayidx106 = getelementptr %struct.aa_profile, ptr %profile, i32 0, i32 23, i32 2
  %47 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call101, ptr %arrayidx106, align 4
  %call107 = tail call fastcc ptr @create_profile_file(ptr noundef %call.i284, ptr noundef nonnull @.str.20, ptr noundef %profile, ptr noundef nonnull @seq_profile_mode_fops)
  %cmp.i287 = icmp ugt ptr %call107, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i287, label %if.end104.fail_crit_edge, label %if.end110

if.end104.fail_crit_edge:                         ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end110:                                        ; preds = %if.end104
  %arrayidx112 = getelementptr %struct.aa_profile, ptr %profile, i32 0, i32 23, i32 3
  %48 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call107, ptr %arrayidx112, align 4
  %call113 = tail call fastcc ptr @create_profile_file(ptr noundef %call.i284, ptr noundef nonnull @.str.21, ptr noundef %profile, ptr noundef nonnull @seq_profile_attach_fops)
  %cmp.i288 = icmp ugt ptr %call113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i288, label %if.end110.fail_crit_edge, label %if.end116

if.end110.fail_crit_edge:                         ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end116:                                        ; preds = %if.end110
  %arrayidx118 = getelementptr %struct.aa_profile, ptr %profile, i32 0, i32 23, i32 4
  %49 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call113, ptr %arrayidx118, align 4
  %hash = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 21
  %50 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hash, align 4
  %tobool119.not = icmp eq ptr %51, null
  br i1 %tobool119.not, label %if.end116.if.end127_crit_edge, label %if.then120

if.end116.if.end127_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end127

if.then120:                                       ; preds = %if.end116
  %call121 = tail call fastcc ptr @create_profile_file(ptr noundef %call.i284, ptr noundef nonnull @.str.9, ptr noundef %profile, ptr noundef nonnull @seq_profile_hash_fops)
  %cmp.i289 = icmp ugt ptr %call121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i289, label %if.then120.fail_crit_edge, label %if.end124

if.then120.fail_crit_edge:                        ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end124:                                        ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx126 = getelementptr %struct.aa_profile, ptr %profile, i32 0, i32 23, i32 5
  %52 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call121, ptr %arrayidx126, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.end124, %if.end116.if.end127_crit_edge
  %rawdata = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 20
  %53 = ptrtoint ptr %rawdata to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rawdata, align 4
  %tobool128.not = icmp eq ptr %54, null
  br i1 %tobool128.not, label %if.end127.if.end161_crit_edge, label %if.then129

if.end127.if.end161_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end161

if.then129:                                       ; preds = %if.end127
  %proxy = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25, i32 3
  %55 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %proxy, align 4
  %call130 = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.22, i16 noundef zeroext -24284, ptr noundef %call.i284, ptr noundef %56, ptr noundef null, ptr noundef nonnull @rawdata_link_sha1_iops)
  %cmp.i290 = icmp ugt ptr %call130, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i290, label %if.then129.fail_crit_edge, label %if.end133

if.then129.fail_crit_edge:                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end133:                                        ; preds = %if.then129
  %57 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %proxy, align 4
  %call136 = tail call fastcc ptr @aa_get_proxy(ptr noundef %58)
  %arrayidx138 = getelementptr %struct.aa_profile, ptr %profile, i32 0, i32 23, i32 7
  %59 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call130, ptr %arrayidx138, align 4
  %60 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %proxy, align 4
  %call141 = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.23, i16 noundef zeroext -24284, ptr noundef %call.i284, ptr noundef %61, ptr noundef null, ptr noundef nonnull @rawdata_link_abi_iops)
  %cmp.i291 = icmp ugt ptr %call141, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i291, label %if.end133.fail_crit_edge, label %if.end144

if.end133.fail_crit_edge:                         ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end144:                                        ; preds = %if.end133
  %62 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %proxy, align 4
  %call147 = tail call fastcc ptr @aa_get_proxy(ptr noundef %63)
  %arrayidx149 = getelementptr %struct.aa_profile, ptr %profile, i32 0, i32 23, i32 8
  %64 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call141, ptr %arrayidx149, align 4
  %65 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %proxy, align 4
  %call152 = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.11, i16 noundef zeroext -24284, ptr noundef %call.i284, ptr noundef %66, ptr noundef null, ptr noundef nonnull @rawdata_link_data_iops)
  %cmp.i292 = icmp ugt ptr %call152, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i292, label %if.end144.fail_crit_edge, label %if.end155

if.end144.fail_crit_edge:                         ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end155:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #18
  %67 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %proxy, align 4
  %call158 = tail call fastcc ptr @aa_get_proxy(ptr noundef %68)
  %arrayidx160 = getelementptr %struct.aa_profile, ptr %profile, i32 0, i32 23, i32 6
  %69 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call152, ptr %arrayidx160, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.end155, %if.end127.if.end161_crit_edge
  %profiles = getelementptr inbounds %struct.aa_policy, ptr %profile, i32 0, i32 3
  %arrayidx171 = getelementptr %struct.aa_profile, ptr %profile, i32 0, i32 23, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end161
  %.pn.in = phi ptr [ %profiles, %if.end161 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %70 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %profiles
  br i1 %cmp.not, label %for.cond.cleanup183_crit_edge, label %for.body

for.cond.cleanup183_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup183

for.body:                                         ; preds = %for.cond
  %child.0 = getelementptr i8, ptr %.pn, i32 -8
  %71 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx171, align 4
  %call172 = tail call i32 @__aafs_profile_mkdir(ptr noundef %child.0, ptr noundef %72)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %for.body.for.cond_crit_edge, label %for.body.fail2_crit_edge

for.body.fail2_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail2

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

fail:                                             ; preds = %if.end144.fail_crit_edge, %if.end133.fail_crit_edge, %if.then129.fail_crit_edge, %if.then120.fail_crit_edge, %if.end110.fail_crit_edge, %if.end104.fail_crit_edge, %if.end98.fail_crit_edge, %if.end93.fail_crit_edge, %aa_deref_parent.exit.fail_crit_edge
  %dent.0 = phi ptr [ %call.i284, %if.end93.fail_crit_edge ], [ %call101, %if.end98.fail_crit_edge ], [ %call107, %if.end104.fail_crit_edge ], [ %call113, %if.end110.fail_crit_edge ], [ %call121, %if.then120.fail_crit_edge ], [ %call130, %if.then129.fail_crit_edge ], [ %call141, %if.end133.fail_crit_edge ], [ %call152, %if.end144.fail_crit_edge ], [ %call.i258, %aa_deref_parent.exit.fail_crit_edge ]
  %73 = ptrtoint ptr %dent.0 to i32
  br label %fail2

fail2:                                            ; preds = %fail, %for.body.fail2_crit_edge, %mangle_name.exit.fail2_crit_edge
  %error.1 = phi i32 [ %73, %fail ], [ -12, %mangle_name.exit.fail2_crit_edge ], [ %call172, %for.body.fail2_crit_edge ]
  tail call void @__aafs_profile_rmdir(ptr noundef %profile)
  br label %cleanup183

cleanup183:                                       ; preds = %fail2, %for.cond.cleanup183_crit_edge
  %retval.0 = phi i32 [ %error.1, %fail2 ], [ 0, %for.cond.cleanup183_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_profile_file(ptr noundef %dir, ptr noundef %name, ptr nocapture noundef readonly %profile, ptr noundef %fops) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %proxy1 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25, i32 3
  %0 = ptrtoint ptr %proxy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proxy1, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %aa_get_proxy.exit.thread, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #16, !srcloc !429
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !427

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_proxy.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !422

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_proxy.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_proxy.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef %.sink.i.i.i.i.i) #16
  br label %aa_get_proxy.exit

aa_get_proxy.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_proxy.exit_crit_edge
  %call.i = tail call fastcc ptr @aafs_create(ptr noundef %name, i16 noundef zeroext -32476, ptr noundef %dir, ptr noundef nonnull %1, ptr noundef %fops, ptr noundef null) #16
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.i8.critedge, label %aa_get_proxy.exit.if.end_crit_edge

aa_get_proxy.exit.if.end_crit_edge:               ; preds = %aa_get_proxy.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

aa_get_proxy.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call.i10 = tail call fastcc ptr @aafs_create(ptr noundef %name, i16 noundef zeroext -32476, ptr noundef %dir, ptr noundef null, ptr noundef %fops, ptr noundef null) #16
  br label %if.end

if.then.i8.critedge:                              ; preds = %aa_get_proxy.exit
  %call.i.i.i.i.i.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i8.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i9 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i9, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #16
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i8.critedge
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_proxy_kref(ptr noundef nonnull %1) #16, !callees !426
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %aa_get_proxy.exit.thread, %aa_get_proxy.exit.if.end_crit_edge
  %call.i12 = phi ptr [ %call.i, %aa_get_proxy.exit.if.end_crit_edge ], [ %call.i, %if.end5.i.i.i.i.i.if.end_crit_edge ], [ %call.i, %if.then10.i.i.i.i.i ], [ %call.i, %if.then.i.i ], [ %call.i10, %aa_get_proxy.exit.thread ]
  ret ptr %call.i12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aafs_create(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %data, ptr noundef %fops, ptr noundef %iops) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !427

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 270, i32 noundef 9, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.aafs_create) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %parent, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !427

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.aafs_create) #16
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %mode)
  %tobool60.not = icmp ult i16 %mode, 4096
  %and63 = and i16 %mode, 4095
  %or = or i16 %and63, -32768
  %mode.addr.0 = select i1 %tobool60.not, i16 %or, i16 %mode
  %call = tail call i32 @simple_pin_fs(ptr noundef nonnull @aafs_ops, ptr noundef nonnull @aafs_mnt, ptr noundef nonnull @aafs_count) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool66.not = icmp eq i32 %call, 0
  br i1 %tobool66.not, label %if.end69, label %if.then67

if.then67:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  %0 = inttoptr i32 %call to ptr
  br label %cleanup

if.end69:                                         ; preds = %if.end50
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #16
  %call71 = tail call i32 @strlen(ptr noundef %name) #21
  %call72 = tail call ptr @lookup_one_len(ptr noundef %name, ptr noundef %parent, i32 noundef %call71) #16
  %cmp.i = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %call72 to i32
  br label %fail_lock

if.end76:                                         ; preds = %if.end69
  %d_inode.i1 = getelementptr inbounds %struct.dentry, ptr %call72, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i1, align 8
  %cmp.i2.not = icmp eq ptr %5, null
  br i1 %cmp.i2.not, label %if.end79, label %if.end76.fail_dentry_crit_edge

if.end76.fail_dentry_crit_edge:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail_dentry

if.end79:                                         ; preds = %if.end76
  %call80 = tail call fastcc i32 @__aafs_setup_d_inode(ptr noundef %2, ptr noundef %call72, i16 noundef zeroext %mode.addr.0, ptr noundef %data, ptr noundef %fops, ptr noundef %iops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end79.fail_dentry_crit_edge

if.end79.fail_dentry_crit_edge:                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail_dentry

if.end83:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @up_write(ptr noundef %i_rwsem.i) #16
  br label %cleanup

fail_dentry:                                      ; preds = %if.end79.fail_dentry_crit_edge, %if.end76.fail_dentry_crit_edge
  %error.0 = phi i32 [ %call80, %if.end79.fail_dentry_crit_edge ], [ -17, %if.end76.fail_dentry_crit_edge ]
  tail call void @dput(ptr noundef %call72) #16
  br label %fail_lock

fail_lock:                                        ; preds = %fail_dentry, %if.then74
  %error.1 = phi i32 [ %3, %if.then74 ], [ %error.0, %fail_dentry ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #16
  tail call void @simple_release_fs(ptr noundef nonnull @aafs_mnt, ptr noundef nonnull @aafs_count) #16
  %6 = inttoptr i32 %error.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %fail_lock, %if.end83, %if.then67
  %retval.0 = phi ptr [ %0, %if.then67 ], [ %6, %fail_lock ], [ %call72, %if.end83 ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_proxy(ptr noundef returned %proxy) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %tobool.not = icmp eq ptr %proxy, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %proxy, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull %proxy, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %proxy, ptr nonnull %proxy, i32 1, ptr nonnull elementtype(i32) %proxy) #16, !srcloc !429
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !427

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !422

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %proxy, i32 noundef %.sink.i.i.i.i) #16
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %proxy
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__aafs_ns_rmdir(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ns, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #16
  br i1 %call, label %do.body.if.end17_crit_edge, label %do.end, !prof !422

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1895, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.__aafs_ns_rmdir) #16
  br label %if.end17

if.end17:                                         ; preds = %do.end, %do.body.if.end17_crit_edge
  %profiles = getelementptr inbounds %struct.aa_policy, ptr %ns, i32 0, i32 3
  %0 = ptrtoint ptr %profiles to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn217 = load ptr, ptr %profiles, align 4
  %cmp.not218 = icmp eq ptr %.pn217, %profiles
  br i1 %cmp.not218, label %if.end17.for.end_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  br label %for.body

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end17.for.body_crit_edge
  %.pn219 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn217, %if.end17.for.body_crit_edge ]
  %child.0 = getelementptr i8, ptr %.pn219, i32 -8
  tail call void @__aafs_profile_rmdir(ptr noundef %child.0)
  %1 = ptrtoint ptr %.pn219 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn219, align 4
  %cmp.not = icmp eq ptr %.pn, %profiles
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end17.for.end_crit_edge
  %sub_ns = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 5
  %2 = ptrtoint ptr %sub_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn151220 = load ptr, ptr %sub_ns, align 4
  %cmp46.not221 = icmp eq ptr %.pn151220, %sub_ns
  br i1 %cmp46.not221, label %for.end.for.end59_crit_edge, label %for.end.for.body49_crit_edge

for.end.for.body49_crit_edge:                     ; preds = %for.end
  br label %for.body49

for.end.for.end59_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end59

for.body49:                                       ; preds = %for.body49.for.body49_crit_edge, %for.end.for.body49_crit_edge
  %.pn151222 = phi ptr [ %.pn151, %for.body49.for.body49_crit_edge ], [ %.pn151220, %for.end.for.body49_crit_edge ]
  %sub.0 = getelementptr i8, ptr %.pn151222, i32 -8
  %lock50 = getelementptr i8, ptr %.pn151222, i32 20
  %level = getelementptr i8, ptr %.pn151222, i32 148
  %3 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %level, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock50, i32 noundef %4) #16
  tail call void @__aafs_ns_rmdir(ptr noundef %sub.0)
  tail call void @mutex_unlock(ptr noundef %lock50) #16
  %5 = ptrtoint ptr %.pn151222 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn151 = load ptr, ptr %.pn151222, align 4
  %cmp46.not = icmp eq ptr %.pn151, %sub_ns
  br i1 %cmp46.not, label %for.body49.for.end59_crit_edge, label %for.body49.for.body49_crit_edge

for.body49.for.body49_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body49

for.body49.for.end59_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end59

for.end59:                                        ; preds = %for.body49.for.end59_crit_edge, %for.end.for.end59_crit_edge
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #16
  br i1 %call.i, label %for.end59.if.end.i_crit_edge, label %do.end.i, !prof !422

for.end59.if.end.i_crit_edge:                     ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1877, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.__aa_fs_list_remove_rawdata) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.end59.if.end.i_crit_edge
  %rawdata_list.i = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 12
  %6 = ptrtoint ptr %rawdata_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rawdata_list.i, align 4
  %cmp.not45.i = icmp eq ptr %7, %rawdata_list.i
  br i1 %cmp.not45.i, label %if.end.i.__aa_fs_list_remove_rawdata.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.__aa_fs_list_remove_rawdata.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__aa_fs_list_remove_rawdata.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn.in46.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %7, %if.end.i.for.body.i_crit_edge ]
  %ent.0.i = getelementptr i8, ptr %.pn.in46.i, i32 -4
  %8 = ptrtoint ptr %.pn.in46.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn.in46.i, align 4
  tail call void @__aa_fs_remove_rawdata(ptr noundef %ent.0.i) #16
  %cmp.not.i = icmp eq ptr %.pn.i, %rawdata_list.i
  br i1 %cmp.not.i, label %for.body.i.__aa_fs_list_remove_rawdata.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.__aa_fs_list_remove_rawdata.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__aa_fs_list_remove_rawdata.exit

__aa_fs_list_remove_rawdata.exit:                 ; preds = %for.body.i.__aa_fs_list_remove_rawdata.exit_crit_edge, %if.end.i.__aa_fs_list_remove_rawdata.exit_crit_edge
  %arrayidx = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool60.not = icmp eq ptr %10, null
  br i1 %tobool60.not, label %__aa_fs_list_remove_rawdata.exit.if.end65_crit_edge, label %if.then61

__aa_fs_list_remove_rawdata.exit.if.end65_crit_edge: ; preds = %__aa_fs_list_remove_rawdata.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then61:                                        ; preds = %__aa_fs_list_remove_rawdata.exit
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 54
  %13 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_private, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then61.if.end65_crit_edge, label %if.then.i

if.then61.if.end65_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then.i:                                        ; preds = %if.then61
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end65_crit_edge, label %if.then.i.i

if.then.i.if.end65_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %16, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #16
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end65_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.i.if.end65_crit_edge:           ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef 3) #16
  br label %if.end65

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef %label.i.i) #16, !callees !426
  br label %if.end65

if.end65:                                         ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end65_crit_edge, %if.then.i.if.end65_crit_edge, %if.then61.if.end65_crit_edge, %__aa_fs_list_remove_rawdata.exit.if.end65_crit_edge
  %arrayidx67 = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 4
  %18 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx67, align 4
  %tobool68.not = icmp eq ptr %19, null
  br i1 %tobool68.not, label %if.end65.if.end74_crit_edge, label %if.then69

if.end65.if.end74_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

if.then69:                                        ; preds = %if.end65
  %d_inode.i153 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %d_inode.i153 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i153, align 8
  %i_private73 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 54
  %22 = ptrtoint ptr %i_private73 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_private73, align 4
  %tobool.not.i154 = icmp eq ptr %23, null
  br i1 %tobool.not.i154, label %if.then69.if.end74_crit_edge, label %if.then.i157

if.then69.if.end74_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

if.then.i157:                                     ; preds = %if.then69
  %unconfined.i155 = getelementptr inbounds %struct.aa_ns, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %unconfined.i155 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %unconfined.i155, align 4
  %tobool.not.i.i156 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i156, label %if.then.i157.if.end74_crit_edge, label %if.then.i.i162

if.then.i157.if.end74_crit_edge:                  ; preds = %if.then.i157
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

if.then.i.i162:                                   ; preds = %if.then.i157
  %label.i.i158 = getelementptr inbounds %struct.aa_profile, ptr %25, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i159 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i158, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr %label.i.i158, i32 1, i32 3, i32 1) #16
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i158, ptr %label.i.i158, i32 1, ptr elementtype(i32) %label.i.i158) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i160 = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i160)
  %cmp.i.i.i.i.i.i161 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i160, 1
  br i1 %cmp.i.i.i.i.i.i161, label %if.then.i.i.i166, label %if.end5.i.i.i.i.i.i164

if.end5.i.i.i.i.i.i164:                           ; preds = %if.then.i.i162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i160)
  %.not.i.i.i.i.i.i163 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i160, 0
  br i1 %.not.i.i.i.i.i.i163, label %if.end5.i.i.i.i.i.i164.if.end74_crit_edge, label %if.then10.i.i.i.i.i.i165, !prof !422

if.end5.i.i.i.i.i.i164.if.end74_crit_edge:        ; preds = %if.end5.i.i.i.i.i.i164
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

if.then10.i.i.i.i.i.i165:                         ; preds = %if.end5.i.i.i.i.i.i164
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i158, i32 noundef 3) #16
  br label %if.end74

if.then.i.i.i166:                                 ; preds = %if.then.i.i162
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef %label.i.i158) #16, !callees !426
  br label %if.end74

if.end74:                                         ; preds = %if.then.i.i.i166, %if.then10.i.i.i.i.i.i165, %if.end5.i.i.i.i.i.i164.if.end74_crit_edge, %if.then.i157.if.end74_crit_edge, %if.then69.if.end74_crit_edge, %if.end65.if.end74_crit_edge
  %arrayidx76 = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 5
  %27 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx76, align 4
  %tobool77.not = icmp eq ptr %28, null
  br i1 %tobool77.not, label %if.end74.if.end83_crit_edge, label %if.then78

if.end74.if.end83_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end83

if.then78:                                        ; preds = %if.end74
  %d_inode.i169 = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %d_inode.i169 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_inode.i169, align 8
  %i_private82 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 54
  %31 = ptrtoint ptr %i_private82 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_private82, align 4
  %tobool.not.i170 = icmp eq ptr %32, null
  br i1 %tobool.not.i170, label %if.then78.if.end83_crit_edge, label %if.then.i173

if.then78.if.end83_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end83

if.then.i173:                                     ; preds = %if.then78
  %unconfined.i171 = getelementptr inbounds %struct.aa_ns, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %unconfined.i171 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %unconfined.i171, align 4
  %tobool.not.i.i172 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i172, label %if.then.i173.if.end83_crit_edge, label %if.then.i.i178

if.then.i173.if.end83_crit_edge:                  ; preds = %if.then.i173
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end83

if.then.i.i178:                                   ; preds = %if.then.i173
  %label.i.i174 = getelementptr inbounds %struct.aa_profile, ptr %34, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i175 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i174, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr %label.i.i174, i32 1, i32 3, i32 1) #16
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i174, ptr %label.i.i174, i32 1, ptr elementtype(i32) %label.i.i174) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i176 = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i176)
  %cmp.i.i.i.i.i.i177 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i176, 1
  br i1 %cmp.i.i.i.i.i.i177, label %if.then.i.i.i182, label %if.end5.i.i.i.i.i.i180

if.end5.i.i.i.i.i.i180:                           ; preds = %if.then.i.i178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i176)
  %.not.i.i.i.i.i.i179 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i176, 0
  br i1 %.not.i.i.i.i.i.i179, label %if.end5.i.i.i.i.i.i180.if.end83_crit_edge, label %if.then10.i.i.i.i.i.i181, !prof !422

if.end5.i.i.i.i.i.i180.if.end83_crit_edge:        ; preds = %if.end5.i.i.i.i.i.i180
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end83

if.then10.i.i.i.i.i.i181:                         ; preds = %if.end5.i.i.i.i.i.i180
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i174, i32 noundef 3) #16
  br label %if.end83

if.then.i.i.i182:                                 ; preds = %if.then.i.i178
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef %label.i.i174) #16, !callees !426
  br label %if.end83

if.end83:                                         ; preds = %if.then.i.i.i182, %if.then10.i.i.i.i.i.i181, %if.end5.i.i.i.i.i.i180.if.end83_crit_edge, %if.then.i173.if.end83_crit_edge, %if.then78.if.end83_crit_edge, %if.end74.if.end83_crit_edge
  %arrayidx85 = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 6
  %36 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx85, align 4
  %tobool86.not = icmp eq ptr %37, null
  br i1 %tobool86.not, label %if.end83.if.end92_crit_edge, label %if.then87

if.end83.if.end92_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92

if.then87:                                        ; preds = %if.end83
  %d_inode.i185 = getelementptr inbounds %struct.dentry, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %d_inode.i185 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d_inode.i185, align 8
  %i_private91 = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 54
  %40 = ptrtoint ptr %i_private91 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_private91, align 4
  %tobool.not.i186 = icmp eq ptr %41, null
  br i1 %tobool.not.i186, label %if.then87.if.end92_crit_edge, label %if.then.i189

if.then87.if.end92_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92

if.then.i189:                                     ; preds = %if.then87
  %unconfined.i187 = getelementptr inbounds %struct.aa_ns, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %unconfined.i187 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %unconfined.i187, align 4
  %tobool.not.i.i188 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i188, label %if.then.i189.if.end92_crit_edge, label %if.then.i.i194

if.then.i189.if.end92_crit_edge:                  ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92

if.then.i.i194:                                   ; preds = %if.then.i189
  %label.i.i190 = getelementptr inbounds %struct.aa_profile, ptr %43, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i191 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i190, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr %label.i.i190, i32 1, i32 3, i32 1) #16
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i190, ptr %label.i.i190, i32 1, ptr elementtype(i32) %label.i.i190) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i192 = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i192)
  %cmp.i.i.i.i.i.i193 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i192, 1
  br i1 %cmp.i.i.i.i.i.i193, label %if.then.i.i.i198, label %if.end5.i.i.i.i.i.i196

if.end5.i.i.i.i.i.i196:                           ; preds = %if.then.i.i194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i192)
  %.not.i.i.i.i.i.i195 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i192, 0
  br i1 %.not.i.i.i.i.i.i195, label %if.end5.i.i.i.i.i.i196.if.end92_crit_edge, label %if.then10.i.i.i.i.i.i197, !prof !422

if.end5.i.i.i.i.i.i196.if.end92_crit_edge:        ; preds = %if.end5.i.i.i.i.i.i196
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92

if.then10.i.i.i.i.i.i197:                         ; preds = %if.end5.i.i.i.i.i.i196
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i190, i32 noundef 3) #16
  br label %if.end92

if.then.i.i.i198:                                 ; preds = %if.then.i.i194
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef %label.i.i190) #16, !callees !426
  br label %if.end92

if.end92:                                         ; preds = %if.then.i.i.i198, %if.then10.i.i.i.i.i.i197, %if.end5.i.i.i.i.i.i196.if.end92_crit_edge, %if.then.i189.if.end92_crit_edge, %if.then87.if.end92_crit_edge, %if.end83.if.end92_crit_edge
  %arrayidx94 = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 7
  %45 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx94, align 4
  %tobool95.not = icmp eq ptr %46, null
  br i1 %tobool95.not, label %if.end92.if.end101_crit_edge, label %if.then96

if.end92.if.end101_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101

if.then96:                                        ; preds = %if.end92
  %d_inode.i201 = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %d_inode.i201 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %d_inode.i201, align 8
  %i_private100 = getelementptr inbounds %struct.inode, ptr %48, i32 0, i32 54
  %49 = ptrtoint ptr %i_private100 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_private100, align 4
  %tobool.not.i202 = icmp eq ptr %50, null
  br i1 %tobool.not.i202, label %if.then96.if.end101_crit_edge, label %if.then.i205

if.then96.if.end101_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101

if.then.i205:                                     ; preds = %if.then96
  %unconfined.i203 = getelementptr inbounds %struct.aa_ns, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %unconfined.i203 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %unconfined.i203, align 4
  %tobool.not.i.i204 = icmp eq ptr %52, null
  br i1 %tobool.not.i.i204, label %if.then.i205.if.end101_crit_edge, label %if.then.i.i210

if.then.i205.if.end101_crit_edge:                 ; preds = %if.then.i205
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101

if.then.i.i210:                                   ; preds = %if.then.i205
  %label.i.i206 = getelementptr inbounds %struct.aa_profile, ptr %52, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i207 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i206, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr %label.i.i206, i32 1, i32 3, i32 1) #16
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i206, ptr %label.i.i206, i32 1, ptr elementtype(i32) %label.i.i206) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i208 = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i208)
  %cmp.i.i.i.i.i.i209 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i208, 1
  br i1 %cmp.i.i.i.i.i.i209, label %if.then.i.i.i214, label %if.end5.i.i.i.i.i.i212

if.end5.i.i.i.i.i.i212:                           ; preds = %if.then.i.i210
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i208)
  %.not.i.i.i.i.i.i211 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i208, 0
  br i1 %.not.i.i.i.i.i.i211, label %if.end5.i.i.i.i.i.i212.if.end101_crit_edge, label %if.then10.i.i.i.i.i.i213, !prof !422

if.end5.i.i.i.i.i.i212.if.end101_crit_edge:       ; preds = %if.end5.i.i.i.i.i.i212
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101

if.then10.i.i.i.i.i.i213:                         ; preds = %if.end5.i.i.i.i.i.i212
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i206, i32 noundef 3) #16
  br label %if.end101

if.then.i.i.i214:                                 ; preds = %if.then.i.i210
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef %label.i.i206) #16, !callees !426
  br label %if.end101

if.end101:                                        ; preds = %if.then.i.i.i214, %if.then10.i.i.i.i.i.i213, %if.end5.i.i.i.i.i.i212.if.end101_crit_edge, %if.then.i205.if.end101_crit_edge, %if.then96.if.end101_crit_edge, %if.end92.if.end101_crit_edge
  %arrayidx106 = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 12
  %54 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx106, align 4
  tail call fastcc void @aafs_remove(ptr noundef %55)
  %56 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx106, align 4
  %arrayidx106.1 = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 11
  %57 = ptrtoint ptr %arrayidx106.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx106.1, align 4
  tail call fastcc void @aafs_remove(ptr noundef %58)
  %59 = ptrtoint ptr %arrayidx106.1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %arrayidx106.1, align 4
  %arrayidx106.2 = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 10
  %60 = ptrtoint ptr %arrayidx106.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx106.2, align 4
  tail call fastcc void @aafs_remove(ptr noundef %61)
  %62 = ptrtoint ptr %arrayidx106.2 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %arrayidx106.2, align 4
  %arrayidx106.3 = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 9
  %63 = ptrtoint ptr %arrayidx106.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx106.3, align 4
  tail call fastcc void @aafs_remove(ptr noundef %64)
  %65 = ptrtoint ptr %arrayidx106.3 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx106.3, align 4
  %arrayidx106.4 = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 8
  %66 = ptrtoint ptr %arrayidx106.4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx106.4, align 4
  tail call fastcc void @aafs_remove(ptr noundef %67)
  %68 = ptrtoint ptr %arrayidx106.4 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %arrayidx106.4, align 4
  %69 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx94, align 4
  tail call fastcc void @aafs_remove(ptr noundef %70)
  %71 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %arrayidx94, align 4
  %72 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx85, align 4
  tail call fastcc void @aafs_remove(ptr noundef %73)
  %74 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %arrayidx85, align 4
  %75 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx76, align 4
  tail call fastcc void @aafs_remove(ptr noundef %76)
  %77 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %arrayidx76, align 4
  %78 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx67, align 4
  tail call fastcc void @aafs_remove(ptr noundef %79)
  %80 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %arrayidx67, align 4
  %arrayidx106.9 = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 3
  %81 = ptrtoint ptr %arrayidx106.9 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx106.9, align 4
  tail call fastcc void @aafs_remove(ptr noundef %82)
  %83 = ptrtoint ptr %arrayidx106.9 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %arrayidx106.9, align 4
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @aafs_remove(ptr noundef %85)
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx106.11 = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 1
  %87 = ptrtoint ptr %arrayidx106.11 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx106.11, align 4
  tail call fastcc void @aafs_remove(ptr noundef %88)
  %89 = ptrtoint ptr %arrayidx106.11 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %arrayidx106.11, align 4
  %arrayidx106.12 = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 0
  %90 = ptrtoint ptr %arrayidx106.12 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx106.12, align 4
  tail call fastcc void @aafs_remove(ptr noundef %91)
  %92 = ptrtoint ptr %arrayidx106.12 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %arrayidx106.12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__aafs_ns_mkdir(ptr noundef %ns, ptr noundef %parent, ptr noundef %name, ptr noundef %dent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ns, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !427

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2003, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.__aafs_ns_mkdir) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %parent, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !427

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2004, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.__aafs_ns_mkdir) #16
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %lock = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #16
  br i1 %call, label %if.end50.if.end85_crit_edge, label %do.end79, !prof !422

if.end50.if.end85_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

do.end79:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2005, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.__aafs_ns_mkdir) #16
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %if.end50.if.end85_crit_edge
  %tobool95.not = icmp eq ptr %name, null
  br i1 %tobool95.not, label %if.then96, label %if.end85.if.end98_crit_edge

if.end85.if.end98_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98

if.then96:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end85.if.end98_crit_edge
  %name.addr.0 = phi ptr [ %name, %if.end85.if.end98_crit_edge ], [ %1, %if.then96 ]
  %tobool99.not = icmp eq ptr %dent, null
  br i1 %tobool99.not, label %if.then100, label %dget.exit

if.then100:                                       ; preds = %if.end98
  %call.i = tail call fastcc ptr @aafs_create(ptr noundef %name.addr.0, i16 noundef zeroext 16877, ptr noundef %parent, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %fail, label %if.then100.if.end106_crit_edge

if.then100.if.end106_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end106

dget.exit:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dent, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #16
  br label %if.end106

if.end106:                                        ; preds = %dget.exit, %if.then100.if.end106_crit_edge
  %dent.addr.0 = phi ptr [ %dent, %dget.exit ], [ %call.i, %if.then100.if.end106_crit_edge ]
  %dents = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 13
  %2 = ptrtoint ptr %dents to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dent.addr.0, ptr %dents, align 4
  br i1 %tobool.not, label %do.end.i, label %if.end106.if.end.i_crit_edge, !prof !427

if.end106.if.end.i_crit_edge:                     ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1940, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.__aafs_ns_mkdir_entries) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end106.if.end.i_crit_edge
  %tobool26.not.i = icmp eq ptr %dent.addr.0, null
  br i1 %tobool26.not.i, label %do.end44.i, label %if.end.i.if.end50.i_crit_edge, !prof !427

if.end.i.if.end50.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i

do.end44.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1941, i32 noundef 9, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.__aafs_ns_mkdir_entries) #16
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end44.i, %if.end.i.if.end50.i_crit_edge
  %call.i.i = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.17, i16 noundef zeroext 16877, ptr noundef %dent.addr.0, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end50.i.__aafs_ns_mkdir_entries.exit_crit_edge, label %if.end63.i

if.end50.i.__aafs_ns_mkdir_entries.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__aafs_ns_mkdir_entries.exit

if.end63.i:                                       ; preds = %if.end50.i
  %arrayidx.i = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %call.i157.i = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.11, i16 noundef zeroext 16877, ptr noundef %dent.addr.0, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %cmp.i158.i = icmp ugt ptr %call.i157.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158.i, label %if.end63.i.__aafs_ns_mkdir_entries.exit_crit_edge, label %if.end68.i

if.end63.i.__aafs_ns_mkdir_entries.exit_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__aafs_ns_mkdir_entries.exit

if.end68.i:                                       ; preds = %if.end63.i
  %arrayidx70.i = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 3
  %4 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i157.i, ptr %arrayidx70.i, align 4
  %call.i159.i = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef %dent.addr.0, ptr noundef %ns, ptr noundef nonnull @aa_fs_ns_revision_fops, ptr noundef null) #16
  %cmp.i160.i = icmp ugt ptr %call.i159.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160.i, label %if.end68.i.__aafs_ns_mkdir_entries.exit_crit_edge, label %if.end75.i

if.end68.i.__aafs_ns_mkdir_entries.exit_crit_edge: ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__aafs_ns_mkdir_entries.exit

if.end75.i:                                       ; preds = %if.end68.i
  br i1 %tobool.not, label %aa_get_ns.exit.thread.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end75.i
  %unconfined.i.i = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 4
  %5 = ptrtoint ptr %unconfined.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unconfined.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.aa_get_ns.exit.i_crit_edge, label %if.then.i.i.i

if.then.i.i.aa_get_ns.exit.i_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %label.i.i.i = getelementptr inbounds %struct.aa_profile, ptr %6, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %label.i.i.i, i32 1, i32 3, i32 1) #16
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i.i, ptr %label.i.i.i, i32 1, ptr elementtype(i32) %label.i.i.i) #16, !srcloc !429
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !427

if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.aa_get_ns.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !422

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.aa_get_ns.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #16
  br label %aa_get_ns.exit.i

aa_get_ns.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.aa_get_ns.exit.i_crit_edge, %if.then.i.i.aa_get_ns.exit.i_crit_edge
  %arrayidx78.i = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 7
  %9 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i159.i, ptr %arrayidx78.i, align 4
  %call.i161.i = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.52, i16 noundef zeroext 416, ptr noundef %dent.addr.0, ptr noundef nonnull %ns, ptr noundef nonnull @aa_fs_profile_load, ptr noundef null) #16
  %cmp.i162.i = icmp ugt ptr %call.i161.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162.i, label %aa_get_ns.exit.i.__aafs_ns_mkdir_entries.exit_crit_edge, label %if.then.i166.i

aa_get_ns.exit.i.__aafs_ns_mkdir_entries.exit_crit_edge: ; preds = %aa_get_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__aafs_ns_mkdir_entries.exit

aa_get_ns.exit.thread.i:                          ; preds = %if.end75.i
  call void @__asan_store4_noabort(i32 300)
  store ptr %call.i159.i, ptr inttoptr (i32 300 to ptr), align 4
  %call.i161199.i = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.52, i16 noundef zeroext 416, ptr noundef %dent.addr.0, ptr noundef null, ptr noundef nonnull @aa_fs_profile_load, ptr noundef null) #16
  %cmp.i162200.i = icmp ugt ptr %call.i161199.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162200.i, label %aa_get_ns.exit.thread.i.__aafs_ns_mkdir_entries.exit_crit_edge, label %aa_get_ns.exit177.thread.i

aa_get_ns.exit.thread.i.__aafs_ns_mkdir_entries.exit_crit_edge: ; preds = %aa_get_ns.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__aafs_ns_mkdir_entries.exit

if.then.i166.i:                                   ; preds = %aa_get_ns.exit.i
  %10 = ptrtoint ptr %unconfined.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unconfined.i.i, align 4
  %tobool.not.i.i165.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i165.i, label %if.then.i166.i.aa_get_ns.exit177.i_crit_edge, label %if.then.i.i171.i

if.then.i166.i.aa_get_ns.exit177.i_crit_edge:     ; preds = %if.then.i166.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit177.i

if.then.i.i171.i:                                 ; preds = %if.then.i166.i
  %label.i.i167.i = getelementptr inbounds %struct.aa_profile, ptr %11, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i168.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i167.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %label.i.i167.i, i32 1, i32 3, i32 1) #16
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i167.i, ptr %label.i.i167.i, i32 1, ptr elementtype(i32) %label.i.i167.i) #16, !srcloc !429
  %asmresult.i.i.i.i.i.i.i.i169.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i169.i)
  %tobool1.not.i.i.i.i.i.i170.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i169.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i170.i, label %if.then.i.i171.i.if.end15.sink.split.i.i.i.i.i.i176.i_crit_edge, label %if.else.i.i.i.i.i.i174.i, !prof !427

if.then.i.i171.i.if.end15.sink.split.i.i.i.i.i.i176.i_crit_edge: ; preds = %if.then.i.i171.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i176.i

if.else.i.i.i.i.i.i174.i:                         ; preds = %if.then.i.i171.i
  %add.i.i.i.i.i.i172.i = add i32 %asmresult.i.i.i.i.i.i.i.i169.i, 1
  %13 = or i32 %add.i.i.i.i.i.i172.i, %asmresult.i.i.i.i.i.i.i.i169.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i.i173.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i.i173.i, label %if.else.i.i.i.i.i.i174.i.aa_get_ns.exit177.i_crit_edge, label %if.else.i.i.i.i.i.i174.i.if.end15.sink.split.i.i.i.i.i.i176.i_crit_edge, !prof !422

if.else.i.i.i.i.i.i174.i.if.end15.sink.split.i.i.i.i.i.i176.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i174.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i176.i

if.else.i.i.i.i.i.i174.i.aa_get_ns.exit177.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i174.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit177.i

if.end15.sink.split.i.i.i.i.i.i176.i:             ; preds = %if.else.i.i.i.i.i.i174.i.if.end15.sink.split.i.i.i.i.i.i176.i_crit_edge, %if.then.i.i171.i.if.end15.sink.split.i.i.i.i.i.i176.i_crit_edge
  %.sink.i.i.i.i.i.i175.i = phi i32 [ 2, %if.then.i.i171.i.if.end15.sink.split.i.i.i.i.i.i176.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i174.i.if.end15.sink.split.i.i.i.i.i.i176.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i167.i, i32 noundef %.sink.i.i.i.i.i.i175.i) #16
  br label %aa_get_ns.exit177.i

aa_get_ns.exit177.i:                              ; preds = %if.end15.sink.split.i.i.i.i.i.i176.i, %if.else.i.i.i.i.i.i174.i.aa_get_ns.exit177.i_crit_edge, %if.then.i166.i.aa_get_ns.exit177.i_crit_edge
  %arrayidx86.i = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 4
  %14 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i161.i, ptr %arrayidx86.i, align 4
  %call.i178.i = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.53, i16 noundef zeroext 416, ptr noundef %dent.addr.0, ptr noundef nonnull %ns, ptr noundef nonnull @aa_fs_profile_replace, ptr noundef null) #16
  %cmp.i179.i = icmp ugt ptr %call.i178.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179.i, label %aa_get_ns.exit177.i.__aafs_ns_mkdir_entries.exit_crit_edge, label %if.then.i183.i

aa_get_ns.exit177.i.__aafs_ns_mkdir_entries.exit_crit_edge: ; preds = %aa_get_ns.exit177.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__aafs_ns_mkdir_entries.exit

aa_get_ns.exit177.thread.i:                       ; preds = %aa_get_ns.exit.thread.i
  call void @__asan_store4_noabort(i32 288)
  store ptr %call.i161199.i, ptr inttoptr (i32 288 to ptr), align 32
  %call.i178207.i = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.53, i16 noundef zeroext 416, ptr noundef %dent.addr.0, ptr noundef null, ptr noundef nonnull @aa_fs_profile_replace, ptr noundef null) #16
  %cmp.i179208.i = icmp ugt ptr %call.i178207.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179208.i, label %aa_get_ns.exit177.thread.i.__aafs_ns_mkdir_entries.exit_crit_edge, label %aa_get_ns.exit177.thread.i.aa_get_ns.exit194.i_crit_edge

aa_get_ns.exit177.thread.i.aa_get_ns.exit194.i_crit_edge: ; preds = %aa_get_ns.exit177.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit194.i

aa_get_ns.exit177.thread.i.__aafs_ns_mkdir_entries.exit_crit_edge: ; preds = %aa_get_ns.exit177.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__aafs_ns_mkdir_entries.exit

if.then.i183.i:                                   ; preds = %aa_get_ns.exit177.i
  %15 = ptrtoint ptr %unconfined.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unconfined.i.i, align 4
  %tobool.not.i.i182.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i182.i, label %if.then.i183.i.aa_get_ns.exit194.i_crit_edge, label %if.then.i.i188.i

if.then.i183.i.aa_get_ns.exit194.i_crit_edge:     ; preds = %if.then.i183.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit194.i

if.then.i.i188.i:                                 ; preds = %if.then.i183.i
  %label.i.i184.i = getelementptr inbounds %struct.aa_profile, ptr %16, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i185.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i184.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %label.i.i184.i, i32 1, i32 3, i32 1) #16
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i184.i, ptr %label.i.i184.i, i32 1, ptr elementtype(i32) %label.i.i184.i) #16, !srcloc !429
  %asmresult.i.i.i.i.i.i.i.i186.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i186.i)
  %tobool1.not.i.i.i.i.i.i187.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i186.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i187.i, label %if.then.i.i188.i.if.end15.sink.split.i.i.i.i.i.i193.i_crit_edge, label %if.else.i.i.i.i.i.i191.i, !prof !427

if.then.i.i188.i.if.end15.sink.split.i.i.i.i.i.i193.i_crit_edge: ; preds = %if.then.i.i188.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i193.i

if.else.i.i.i.i.i.i191.i:                         ; preds = %if.then.i.i188.i
  %add.i.i.i.i.i.i189.i = add i32 %asmresult.i.i.i.i.i.i.i.i186.i, 1
  %18 = or i32 %add.i.i.i.i.i.i189.i, %asmresult.i.i.i.i.i.i.i.i186.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i.i.i190.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i.i.i190.i, label %if.else.i.i.i.i.i.i191.i.aa_get_ns.exit194.i_crit_edge, label %if.else.i.i.i.i.i.i191.i.if.end15.sink.split.i.i.i.i.i.i193.i_crit_edge, !prof !422

if.else.i.i.i.i.i.i191.i.if.end15.sink.split.i.i.i.i.i.i193.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i191.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i193.i

if.else.i.i.i.i.i.i191.i.aa_get_ns.exit194.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i191.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit194.i

if.end15.sink.split.i.i.i.i.i.i193.i:             ; preds = %if.else.i.i.i.i.i.i191.i.if.end15.sink.split.i.i.i.i.i.i193.i_crit_edge, %if.then.i.i188.i.if.end15.sink.split.i.i.i.i.i.i193.i_crit_edge
  %.sink.i.i.i.i.i.i192.i = phi i32 [ 2, %if.then.i.i188.i.if.end15.sink.split.i.i.i.i.i.i193.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i191.i.if.end15.sink.split.i.i.i.i.i.i193.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i184.i, i32 noundef %.sink.i.i.i.i.i.i192.i) #16
  br label %aa_get_ns.exit194.i

aa_get_ns.exit194.i:                              ; preds = %if.end15.sink.split.i.i.i.i.i.i193.i, %if.else.i.i.i.i.i.i191.i.aa_get_ns.exit194.i_crit_edge, %if.then.i183.i.aa_get_ns.exit194.i_crit_edge, %aa_get_ns.exit177.thread.i.aa_get_ns.exit194.i_crit_edge
  %call.i178209212.i = phi ptr [ %call.i178.i, %if.then.i183.i.aa_get_ns.exit194.i_crit_edge ], [ %call.i178.i, %if.else.i.i.i.i.i.i191.i.aa_get_ns.exit194.i_crit_edge ], [ %call.i178.i, %if.end15.sink.split.i.i.i.i.i.i193.i ], [ %call.i178207.i, %aa_get_ns.exit177.thread.i.aa_get_ns.exit194.i_crit_edge ]
  %arrayidx94.i = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 5
  %19 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i178209212.i, ptr %arrayidx94.i, align 4
  %call.i195.i = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.54, i16 noundef zeroext 416, ptr noundef %dent.addr.0, ptr noundef %ns, ptr noundef nonnull @aa_fs_profile_remove, ptr noundef null) #16
  %cmp.i196.i = icmp ugt ptr %call.i195.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196.i, label %aa_get_ns.exit194.i.__aafs_ns_mkdir_entries.exit_crit_edge, label %if.end99.i

aa_get_ns.exit194.i.__aafs_ns_mkdir_entries.exit_crit_edge: ; preds = %aa_get_ns.exit194.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__aafs_ns_mkdir_entries.exit

if.end99.i:                                       ; preds = %aa_get_ns.exit194.i
  %call100.i = tail call fastcc ptr @aa_get_ns(ptr noundef %ns) #16
  %arrayidx102.i = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 6
  %20 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i195.i, ptr %arrayidx102.i, align 4
  %call103.i = tail call fastcc ptr @aafs_create(ptr noundef nonnull @.str.55, i16 noundef zeroext 16877, ptr noundef %dent.addr.0, ptr noundef %ns, ptr noundef null, ptr noundef nonnull @ns_dir_inode_operations) #16
  %cmp.i197.i = icmp ugt ptr %call103.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197.i, label %if.end99.i.__aafs_ns_mkdir_entries.exit_crit_edge, label %__aafs_ns_mkdir_entries.exit.thread

if.end99.i.__aafs_ns_mkdir_entries.exit_crit_edge: ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__aafs_ns_mkdir_entries.exit

__aafs_ns_mkdir_entries.exit.thread:              ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #18
  %call108.i = tail call fastcc ptr @aa_get_ns(ptr noundef %ns) #16
  %arrayidx110.i = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 2
  %21 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call103.i, ptr %arrayidx110.i, align 4
  br label %if.end110

__aafs_ns_mkdir_entries.exit:                     ; preds = %if.end99.i.__aafs_ns_mkdir_entries.exit_crit_edge, %aa_get_ns.exit194.i.__aafs_ns_mkdir_entries.exit_crit_edge, %aa_get_ns.exit177.thread.i.__aafs_ns_mkdir_entries.exit_crit_edge, %aa_get_ns.exit177.i.__aafs_ns_mkdir_entries.exit_crit_edge, %aa_get_ns.exit.thread.i.__aafs_ns_mkdir_entries.exit_crit_edge, %aa_get_ns.exit.i.__aafs_ns_mkdir_entries.exit_crit_edge, %if.end68.i.__aafs_ns_mkdir_entries.exit_crit_edge, %if.end63.i.__aafs_ns_mkdir_entries.exit_crit_edge, %if.end50.i.__aafs_ns_mkdir_entries.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call.i.i, %if.end50.i.__aafs_ns_mkdir_entries.exit_crit_edge ], [ %call.i157.i, %if.end63.i.__aafs_ns_mkdir_entries.exit_crit_edge ], [ %call.i159.i, %if.end68.i.__aafs_ns_mkdir_entries.exit_crit_edge ], [ %call.i161199.i, %aa_get_ns.exit.thread.i.__aafs_ns_mkdir_entries.exit_crit_edge ], [ %call.i161.i, %aa_get_ns.exit.i.__aafs_ns_mkdir_entries.exit_crit_edge ], [ %call.i178207.i, %aa_get_ns.exit177.thread.i.__aafs_ns_mkdir_entries.exit_crit_edge ], [ %call.i178.i, %aa_get_ns.exit177.i.__aafs_ns_mkdir_entries.exit_crit_edge ], [ %call.i195.i, %aa_get_ns.exit194.i.__aafs_ns_mkdir_entries.exit_crit_edge ], [ %call103.i, %if.end99.i.__aafs_ns_mkdir_entries.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool108.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool108.not, label %__aafs_ns_mkdir_entries.exit.if.end110_crit_edge, label %__aafs_ns_mkdir_entries.exit.fail2_crit_edge

__aafs_ns_mkdir_entries.exit.fail2_crit_edge:     ; preds = %__aafs_ns_mkdir_entries.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail2

__aafs_ns_mkdir_entries.exit.if.end110_crit_edge: ; preds = %__aafs_ns_mkdir_entries.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end110

if.end110:                                        ; preds = %__aafs_ns_mkdir_entries.exit.if.end110_crit_edge, %__aafs_ns_mkdir_entries.exit.thread
  %profiles = getelementptr inbounds %struct.aa_policy, ptr %ns, i32 0, i32 3
  %arrayidx119 = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end110
  %.pn.in = phi ptr [ %profiles, %if.end110 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %22 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %profiles
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %child.0 = getelementptr i8, ptr %.pn, i32 -8
  %23 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx119, align 4
  %call120 = tail call i32 @__aafs_profile_mkdir(ptr noundef %child.0, ptr noundef %24)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %for.body.for.cond_crit_edge, label %for.body.fail2_crit_edge

for.body.fail2_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail2

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %sub_ns = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 5
  %arrayidx144 = getelementptr %struct.aa_ns, ptr %ns, i32 0, i32 13, i32 2
  br label %for.cond134

for.cond134:                                      ; preds = %for.body141.for.cond134_crit_edge, %for.end
  %.pn192.in = phi ptr [ %sub_ns, %for.end ], [ %.pn192, %for.body141.for.cond134_crit_edge ]
  %25 = ptrtoint ptr %.pn192.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn192 = load ptr, ptr %.pn192.in, align 4
  %cmp138.not = icmp eq ptr %.pn192, %sub_ns
  br i1 %cmp138.not, label %for.cond134.cleanup_crit_edge, label %for.body141

for.cond134.cleanup_crit_edge:                    ; preds = %for.cond134
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body141:                                      ; preds = %for.cond134
  %sub.0 = getelementptr i8, ptr %.pn192, i32 -8
  %lock142 = getelementptr i8, ptr %.pn192, i32 20
  %level = getelementptr i8, ptr %.pn192, i32 148
  %26 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %level, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock142, i32 noundef %27) #16
  %28 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx144, align 4
  %call145 = tail call i32 @__aafs_ns_mkdir(ptr noundef %sub.0, ptr noundef %29, ptr noundef null, ptr noundef null)
  tail call void @mutex_unlock(ptr noundef %lock142) #16
  %tobool147.not = icmp eq i32 %call145, 0
  br i1 %tobool147.not, label %for.body141.for.cond134_crit_edge, label %for.body141.fail2_crit_edge

for.body141.fail2_crit_edge:                      ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail2

for.body141.for.cond134_crit_edge:                ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond134

fail:                                             ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %call.i to i32
  br label %fail2

fail2:                                            ; preds = %fail, %for.body141.fail2_crit_edge, %for.body.fail2_crit_edge, %__aafs_ns_mkdir_entries.exit.fail2_crit_edge
  %error.0 = phi i32 [ %retval.0.i, %__aafs_ns_mkdir_entries.exit.fail2_crit_edge ], [ %30, %fail ], [ %call145, %for.body141.fail2_crit_edge ], [ %call120, %for.body.fail2_crit_edge ]
  tail call void @__aafs_ns_rmdir(ptr noundef %ns)
  br label %cleanup

cleanup:                                          ; preds = %fail2, %for.cond134.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %fail2 ], [ 0, %for.cond134.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_destroy_aafs() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @entry_remove_dir(ptr noundef nonnull @aa_sfs_entry) #22
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @entry_remove_dir(ptr nocapture noundef %fs_dir) unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %v = getelementptr inbounds %struct.aa_sfs_entry, ptr %fs_dir, i32 0, i32 4
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v, align 4
  %tobool.not12 = icmp eq ptr %1, null
  br i1 %tobool.not12, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %fs_file.013 = phi ptr [ %incdec.ptr, %for.inc.land.rhs_crit_edge ], [ %1, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %fs_file.013 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_file.013, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %v_type = getelementptr inbounds %struct.aa_sfs_entry, ptr %fs_file.013, i32 0, i32 3
  %4 = ptrtoint ptr %v_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp eq i32 %5, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @entry_remove_dir(ptr noundef nonnull %fs_file.013) #22
  br label %for.inc

if.else:                                          ; preds = %for.body
  %dentry.i = getelementptr inbounds %struct.aa_sfs_entry, ptr %fs_file.013, i32 0, i32 1
  %6 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else.for.inc_crit_edge, label %if.end.i

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @securityfs_remove(ptr noundef nonnull %7) #16
  %8 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dentry.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i, %if.else.for.inc_crit_edge, %if.then
  %incdec.ptr = getelementptr %struct.aa_sfs_entry, ptr %fs_file.013, i32 1
  %tobool.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  %dentry.i8 = getelementptr inbounds %struct.aa_sfs_entry, ptr %fs_dir, i32 0, i32 1
  %9 = ptrtoint ptr %dentry.i8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry.i8, align 4
  %tobool.not.i9 = icmp eq ptr %10, null
  br i1 %tobool.not.i9, label %for.end.entry_remove_file.exit11_crit_edge, label %if.end.i10

for.end.entry_remove_file.exit11_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %entry_remove_file.exit11

if.end.i10:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @securityfs_remove(ptr noundef nonnull %10) #16
  %11 = ptrtoint ptr %dentry.i8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %dentry.i8, align 4
  br label %entry_remove_file.exit11

entry_remove_file.exit11:                         ; preds = %if.end.i10, %for.end.entry_remove_file.exit11_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aa_create_aafs() #5 section ".init.text" align 64 {
entry:
  %mount.i = alloca ptr, align 4
  %count.i = alloca i32, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_initialized to i32))
  %0 = load i32, ptr @apparmor_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.aa_sfs_entry, ptr @aa_sfs_entry, i32 0, i32 1), align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @aa_create_aafs._rs, ptr noundef nonnull @__func__.aa_create_aafs) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @__func__.aa_create_aafs) #23
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @kern_mount(ptr noundef nonnull @aafs_ops) #16
  store ptr %call8, ptr @aafs_mnt, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.142) #24
  unreachable

if.end11:                                         ; preds = %if.end7
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %call8, i32 0, i32 1
  %2 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mnt_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %and = and i32 %5, 2147483647
  store i32 %and, ptr %s_flags, align 4
  %call12 = tail call fastcc i32 @entry_create_dir(ptr noundef nonnull @aa_sfs_entry, ptr noundef null) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.error53_crit_edge

if.end11.error53_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %error53

if.end15:                                         ; preds = %if.end11
  %6 = load ptr, ptr getelementptr inbounds (%struct.aa_sfs_entry, ptr @aa_sfs_entry, i32 0, i32 1), align 4
  %call16 = tail call ptr @securityfs_create_file(ptr noundef nonnull @.str.52, i16 noundef zeroext 438, ptr noundef %6, ptr noundef null, ptr noundef nonnull @aa_fs_profile_load) #16
  %cmp.i76 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %if.end15.dent_error_crit_edge, label %if.end19

if.end15.dent_error_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %dent_error

if.end19:                                         ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_ns to i32))
  %7 = load ptr, ptr @root_ns, align 4
  %arrayidx = getelementptr %struct.aa_ns, ptr %7, i32 0, i32 13, i32 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16, ptr %arrayidx, align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.aa_sfs_entry, ptr @aa_sfs_entry, i32 0, i32 1), align 4
  %call20 = tail call ptr @securityfs_create_file(ptr noundef nonnull @.str.53, i16 noundef zeroext 438, ptr noundef %9, ptr noundef null, ptr noundef nonnull @aa_fs_profile_replace) #16
  %cmp.i77 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %if.end19.dent_error_crit_edge, label %if.end23

if.end19.dent_error_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %dent_error

if.end23:                                         ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_ns to i32))
  %10 = load ptr, ptr @root_ns, align 4
  %arrayidx25 = getelementptr %struct.aa_ns, ptr %10, i32 0, i32 13, i32 5
  %11 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call20, ptr %arrayidx25, align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.aa_sfs_entry, ptr @aa_sfs_entry, i32 0, i32 1), align 4
  %call26 = tail call ptr @securityfs_create_file(ptr noundef nonnull @.str.54, i16 noundef zeroext 438, ptr noundef %12, ptr noundef null, ptr noundef nonnull @aa_fs_profile_remove) #16
  %cmp.i78 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %if.end23.dent_error_crit_edge, label %if.end29

if.end23.dent_error_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %dent_error

if.end29:                                         ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_ns to i32))
  %13 = load ptr, ptr @root_ns, align 4
  %arrayidx31 = getelementptr %struct.aa_ns, ptr %13, i32 0, i32 13, i32 6
  %14 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call26, ptr %arrayidx31, align 4
  %15 = load ptr, ptr getelementptr inbounds (%struct.aa_sfs_entry, ptr @aa_sfs_entry, i32 0, i32 1), align 4
  %call32 = tail call ptr @securityfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef %15, ptr noundef null, ptr noundef nonnull @aa_fs_ns_revision_fops) #16
  %cmp.i79 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.end29.dent_error_crit_edge, label %if.end35

if.end29.dent_error_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %dent_error

if.end35:                                         ; preds = %if.end29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_ns to i32))
  %16 = load ptr, ptr @root_ns, align 4
  %arrayidx37 = getelementptr %struct.aa_ns, ptr %16, i32 0, i32 13, i32 7
  %17 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call32, ptr %arrayidx37, align 4
  %18 = load ptr, ptr @root_ns, align 4
  %lock = getelementptr inbounds %struct.aa_ns, ptr %18, i32 0, i32 2
  %level = getelementptr inbounds %struct.aa_ns, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %level, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef %20) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_ns to i32))
  %21 = load ptr, ptr @root_ns, align 4
  %22 = load ptr, ptr @aafs_mnt, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call39 = tail call i32 @__aafs_ns_mkdir(ptr noundef %21, ptr noundef %24, ptr noundef nonnull @.str.143, ptr noundef %24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_ns to i32))
  %25 = load ptr, ptr @root_ns, align 4
  %lock40 = getelementptr inbounds %struct.aa_ns, ptr %25, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock40) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool41.not = icmp eq i32 %call39, 0
  br i1 %tobool41.not, label %if.end43, label %if.end35.error53_crit_edge

if.end35.error53_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %error53

if.end43:                                         ; preds = %if.end35
  %26 = load ptr, ptr getelementptr inbounds (%struct.aa_sfs_entry, ptr @aa_sfs_entry, i32 0, i32 1), align 4
  %call44 = tail call ptr @securityfs_create_symlink(ptr noundef nonnull @.str.91, ptr noundef %26, ptr noundef null, ptr noundef nonnull @policy_link_iops) #16
  %cmp.i80 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %if.end43.dent_error_crit_edge, label %if.end47

if.end43.dent_error_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %dent_error

if.end47:                                         ; preds = %if.end43
  %27 = load ptr, ptr getelementptr inbounds (%struct.aa_sfs_entry, ptr @aa_sfs_entry, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mount.i) #16
  %28 = ptrtoint ptr %mount.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %mount.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i) #16
  %29 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %count.i, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 9
  %30 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_sb.i, align 4
  %s_type.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %s_type.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_type.i, align 32
  %call.i = call i32 @simple_pin_fs(ptr noundef %33, ptr noundef nonnull %mount.i, ptr noundef nonnull %count.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %aa_mk_null_file.exit.thread

aa_mk_null_file.exit.thread:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mount.i) #16
  br label %error53

if.end.i:                                         ; preds = %if.end47
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 5
  %34 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i) #16
  %call2.i = call ptr @lookup_one_len(ptr noundef nonnull @.str.149, ptr noundef %27, i32 noundef 5) #16
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %call2.i to i32
  br label %aa_mk_null_file.exit

if.end6.i:                                        ; preds = %if.end.i
  %37 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb.i, align 4
  %call7.i = call ptr @new_inode(ptr noundef %40) #16
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end6.i.out1.i_crit_edge, label %if.end10.i

if.end6.i.out1.i_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out1.i

if.end10.i:                                       ; preds = %if.end6.i
  %call11.i = call i32 @get_next_ino() #16
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call7.i, i32 0, i32 11
  %41 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call11.i, ptr %i_ino.i, align 8
  %42 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 8630, ptr %call7.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call7.i, i32 0, i32 15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call7.i, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call7.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %call7.i) #16
  %43 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #16
  %44 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %45 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  call void @init_special_inode(ptr noundef nonnull %call7.i, i16 noundef zeroext 8630, i32 noundef 1048579) #16
  call void @d_instantiate(ptr noundef %call2.i, ptr noundef nonnull %call7.i) #16
  %tobool.not.i.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i.i, label %if.end10.i.dget.exit.i_crit_edge, label %if.then.i.i

if.end10.i.dget.exit.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dget.exit.i

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %call2.i, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i.i) #16
  br label %dget.exit.i

dget.exit.i:                                      ; preds = %if.then.i.i, %if.end10.i.dget.exit.i_crit_edge
  store ptr %call2.i, ptr getelementptr inbounds (%struct.path, ptr @aa_null, i32 0, i32 1), align 4
  %46 = ptrtoint ptr %mount.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mount.i, align 4
  %call13.i = call ptr @mntget(ptr noundef %47) #16
  store ptr %call13.i, ptr @aa_null, align 4
  br label %out1.i

out1.i:                                           ; preds = %dget.exit.i, %if.end6.i.out1.i_crit_edge
  %error.0.i = phi i32 [ 0, %dget.exit.i ], [ -12, %if.end6.i.out1.i_crit_edge ]
  call void @dput(ptr noundef %call2.i) #16
  br label %aa_mk_null_file.exit

aa_mk_null_file.exit:                             ; preds = %out1.i, %if.then4.i
  %error.1.i = phi i32 [ %36, %if.then4.i ], [ %error.0.i, %out1.i ]
  %48 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i38.i = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i38.i) #16
  call void @simple_release_fs(ptr noundef nonnull %mount.i, ptr noundef nonnull %count.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mount.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1.i)
  %tobool49.not = icmp eq i32 %error.1.i, 0
  br i1 %tobool49.not, label %if.end51, label %aa_mk_null_file.exit.error53_crit_edge

aa_mk_null_file.exit.error53_crit_edge:           ; preds = %aa_mk_null_file.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %error53

if.end51:                                         ; preds = %aa_mk_null_file.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @aa_info_message(ptr noundef nonnull @.str.144) #16
  br label %cleanup

dent_error:                                       ; preds = %if.end43.dent_error_crit_edge, %if.end29.dent_error_crit_edge, %if.end23.dent_error_crit_edge, %if.end19.dent_error_crit_edge, %if.end15.dent_error_crit_edge
  %dent.0 = phi ptr [ %call16, %if.end15.dent_error_crit_edge ], [ %call20, %if.end19.dent_error_crit_edge ], [ %call26, %if.end23.dent_error_crit_edge ], [ %call32, %if.end29.dent_error_crit_edge ], [ %call44, %if.end43.dent_error_crit_edge ]
  %50 = ptrtoint ptr %dent.0 to i32
  br label %error53

error53:                                          ; preds = %dent_error, %aa_mk_null_file.exit.error53_crit_edge, %aa_mk_null_file.exit.thread, %if.end35.error53_crit_edge, %if.end11.error53_crit_edge
  %error.0 = phi i32 [ %call12, %if.end11.error53_crit_edge ], [ %50, %dent_error ], [ %call39, %if.end35.error53_crit_edge ], [ %error.1.i, %aa_mk_null_file.exit.error53_crit_edge ], [ %call.i, %aa_mk_null_file.exit.thread ]
  call fastcc void @entry_remove_dir(ptr noundef nonnull @aa_sfs_entry) #23
  %call54 = call i32 @___ratelimit(ptr noundef nonnull @aa_create_aafs._rs.145, ptr noundef nonnull @__func__.aa_create_aafs) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %error53.cleanup_crit_edge, label %do.end59

error53.cleanup_crit_edge:                        ; preds = %error53
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end59:                                         ; preds = %error53
  call void @__sanitizer_cov_trace_pc() #18
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #23
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %error53.cleanup_crit_edge, %if.end51, %do.end, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ 0, %entry.cleanup_crit_edge ], [ -17, %do.end ], [ -17, %if.then2.cleanup_crit_edge ], [ %error.0, %do.end59 ], [ %error.0, %error53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aa_sfs_seq_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %v_type = getelementptr inbounds %struct.aa_sfs_entry, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %v_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %v1 = getelementptr inbounds %struct.aa_sfs_entry, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %v1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %v1, align 4, !range !428
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool2.not, ptr @.str.27, ptr @.str.26
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond) #16
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %v4 = getelementptr inbounds %struct.aa_sfs_entry, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %v4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %v4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, ptr noundef %8) #16
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %v6 = getelementptr inbounds %struct.aa_sfs_entry, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %v6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %v6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.28, i32 noundef %10) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb3, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_kref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_rawdata_abi_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @seq_rawdata_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @seq_rawdata_abi_show)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_rawdata_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #16
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_loaddata_kref(ptr noundef nonnull %3) #16, !callees !426
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @seq_rawdata_open(ptr nocapture noundef readonly %inode, ptr noundef %file, ptr noundef %show) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #16
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %1, i32 noundef 4) #16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i
  %4 = phi i32 [ %3, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #16
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #16
  %6 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 %7, i32 %add.i.i.i.i.i, ptr nonnull elementtype(i32) %1) #16, !srcloc !430
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !422

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 0) #16
  %12 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %13 = phi i32 [ %10, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #16
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.cleanup_crit_edge, label %if.end

kref_get_unless_zero.exit.i.cleanup_crit_edge:    ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %kref_get_unless_zero.exit.i
  %call1 = call i32 @single_open(ptr noundef %file, ptr noundef %show, ptr noundef nonnull %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %if.end
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %14 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %do.body.if.then.i_crit_edge, label %land.rhs

do.body.if.then.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

land.rhs:                                         ; preds = %do.body
  %private = getelementptr inbounds %struct.seq_file, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private, align 8
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %land.rhs.if.then.i_crit_edge, label %do.end, !prof !422

land.rhs.if.then.i_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1232, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.seq_rawdata_open) #16
  br label %if.then.i

if.then.i:                                        ; preds = %do.end, %land.rhs.if.then.i_crit_edge, %do.body.if.then.i_crit_edge
  %call.i.i.i.i.i.i.i40 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #16
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i41 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i41)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i41, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i41)
  %.not.i.i.i.i.i42 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i41, 0
  br i1 %.not.i.i.i.i.i42, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i43, !prof !422

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i.i43:                            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #16
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  call void @aa_loaddata_kref(ptr noundef nonnull %1) #16, !callees !426
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i43, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %kref_get_unless_zero.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call1, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %call1, %if.then10.i.i.i.i.i43 ], [ %call1, %if.then.i.i ], [ -2, %entry.cleanup_crit_edge ], [ -2, %kref_get_unless_zero.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_rawdata_abi_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %abi = getelementptr inbounds %struct.aa_loaddata, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %abi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %abi, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.30, i32 noundef %3) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_loaddata_kref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_rawdata_revision_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @seq_rawdata_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @seq_rawdata_revision_show)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_rawdata_revision_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %revision = getelementptr inbounds %struct.aa_loaddata, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.31, i32 noundef %3) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_rawdata_hash_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @seq_rawdata_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @seq_rawdata_hash_show)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_rawdata_hash_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %call = tail call i32 @aa_hash_size() #16
  %hash = getelementptr inbounds %struct.aa_loaddata, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hash, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7.not = icmp eq i32 %call, 0
  br i1 %cmp7.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hash, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 %i.08
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.32, i32 noundef %conv) #16
  %inc = add nuw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #16
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_hash_size() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_rawdata_compressed_size_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @seq_rawdata_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @seq_rawdata_compressed_size_show)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_rawdata_compressed_size_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %compressed_size = getelementptr inbounds %struct.aa_loaddata, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %compressed_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %compressed_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.33, i32 noundef %3) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rawdata_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr %struct.rawdata_f_data, ptr %1, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %size1 = getelementptr inbounds %struct.aa_loaddata, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size1, align 4
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %size, ptr noundef %ppos, ptr noundef %add.ptr, i32 noundef %5) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rawdata_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  %strm.i = alloca %struct.z_stream_s, align 4
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @aa_current_policy_view_capable(ptr noundef null) #16
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %land.lhs.true.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #16
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %1, i32 noundef 4) #16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i
  %4 = phi i32 [ %3, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #16
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #16
  %6 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 %7, i32 %add.i.i.i.i.i, ptr nonnull elementtype(i32) %1) #16, !srcloc !430
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !422

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 0) #16
  %12 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %13 = phi i32 [ %10, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #16
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.cleanup_crit_edge, label %if.end3

kref_get_unless_zero.exit.i.cleanup_crit_edge:    ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %kref_get_unless_zero.exit.i
  %size = getelementptr inbounds %struct.aa_loaddata, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %15)
  %cmp.i = icmp ugt i32 %15, -5
  br i1 %cmp.i, label %if.end3.if.then.i_crit_edge, label %if.end.i31

if.end3.if.then.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.end.i31:                                       ; preds = %if.end3
  %add.i = add nuw i32 %15, 4
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %add.i, i32 noundef 3520, i32 noundef -1) #20
  %tobool.not.i30 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i30, label %if.end.i31.if.then.i_crit_edge, label %rawdata_f_data_alloc.exit

if.end.i31.if.then.i_crit_edge:                   ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

rawdata_f_data_alloc.exit:                        ; preds = %if.end.i31
  %cmp.i33 = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %rawdata_f_data_alloc.exit.if.then.i_crit_edge, label %if.end8

rawdata_f_data_alloc.exit.if.then.i_crit_edge:    ; preds = %rawdata_f_data_alloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i:                                        ; preds = %rawdata_f_data_alloc.exit.if.then.i_crit_edge, %if.end.i31.if.then.i_crit_edge, %if.end3.if.then.i_crit_edge
  %retval.0.i3253 = phi ptr [ %call.i.i.i, %rawdata_f_data_alloc.exit.if.then.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end3.if.then.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i31.if.then.i_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i3253 to i32
  %call.i.i.i.i.i.i.i35 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #16
  %17 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i36 = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i36)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i36, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i36)
  %.not.i.i.i.i.i37 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i36, 0
  br i1 %.not.i.i.i.i.i37, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i38, !prof !422

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i.i38:                            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #16
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  call void @aa_loaddata_kref(ptr noundef nonnull %1) #16, !callees !426
  br label %cleanup

if.end8:                                          ; preds = %rawdata_f_data_alloc.exit
  %18 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %call.i.i.i, align 4
  %data = getelementptr inbounds %struct.aa_loaddata, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %compressed_size = getelementptr inbounds %struct.aa_loaddata, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %compressed_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %compressed_size, align 4
  %add.ptr = getelementptr %struct.rawdata_f_data, ptr %call.i.i.i, i32 1
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %strm.i) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_rawdata_compression_level to i32))
  %25 = load i32, ptr @aa_g_rawdata_compression_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i40 = icmp eq i32 %25, 0
  br i1 %cmp.i40, label %if.then.i41, label %if.end3.i

if.then.i41:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp1.i = icmp ult i32 %24, %22
  br i1 %cmp1.i, label %if.then.i41.deflate_decompress.exit.thread_crit_edge, label %deflate_decompress.exit.thread57

if.then.i41.deflate_decompress.exit.thread_crit_edge: ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #18
  br label %deflate_decompress.exit.thread

deflate_decompress.exit.thread57:                 ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #18
  %26 = call ptr @memcpy(ptr %add.ptr, ptr %20, i32 %22)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %strm.i) #16
  br label %if.end14

if.end3.i:                                        ; preds = %if.end8
  %27 = getelementptr inbounds i8, ptr %strm.i, i32 8
  %28 = call ptr @memset(ptr %27, i32 0, i32 40)
  %call.i = call i32 @zlib_inflate_workspacesize() #16
  %call.i.i.i43 = call noalias ptr @kvmalloc_node(i32 noundef %call.i, i32 noundef 3520, i32 noundef -1) #20
  %workspace.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i32 0, i32 8
  %29 = ptrtoint ptr %workspace.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i.i43, ptr %workspace.i, align 4
  %tobool.not.i44 = icmp eq ptr %call.i.i.i43, null
  br i1 %tobool.not.i44, label %if.end3.i.deflate_decompress.exit.thread_crit_edge, label %if.end7.i

if.end3.i.deflate_decompress.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %deflate_decompress.exit.thread

if.end7.i:                                        ; preds = %if.end3.i
  %30 = ptrtoint ptr %strm.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %20, ptr %strm.i, align 4
  %avail_in.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i32 0, i32 1
  %31 = ptrtoint ptr %avail_in.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %22, ptr %avail_in.i, align 4
  %call8.i = call i32 @zlib_inflateInit2(ptr noundef nonnull %strm.i, i32 noundef 15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.not.i, label %if.end11.i, label %if.end7.i.deflate_decompress.exit.thread62_crit_edge

if.end7.i.deflate_decompress.exit.thread62_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %deflate_decompress.exit.thread62

if.end11.i:                                       ; preds = %if.end7.i
  %next_out.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i32 0, i32 3
  %32 = ptrtoint ptr %next_out.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr, ptr %next_out.i, align 4
  %avail_out.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i32 0, i32 4
  %33 = ptrtoint ptr %avail_out.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %24, ptr %avail_out.i, align 4
  %call12.i = call i32 @zlib_inflate(ptr noundef nonnull %strm.i, i32 noundef 5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 1
  %call16.i = call i32 @zlib_inflateEnd(ptr noundef nonnull %strm.i) #16
  br i1 %cmp13.not.i, label %deflate_decompress.exit, label %if.end11.i.deflate_decompress.exit.thread62_crit_edge

if.end11.i.deflate_decompress.exit.thread62_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %deflate_decompress.exit.thread62

deflate_decompress.exit.thread:                   ; preds = %if.end3.i.deflate_decompress.exit.thread_crit_edge, %if.then.i41.deflate_decompress.exit.thread_crit_edge
  %retval.0.i45.ph = phi i32 [ -12, %if.end3.i.deflate_decompress.exit.thread_crit_edge ], [ -22, %if.then.i41.deflate_decompress.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %strm.i) #16
  br label %fail_decompress

deflate_decompress.exit.thread62:                 ; preds = %if.end11.i.deflate_decompress.exit.thread62_crit_edge, %if.end7.i.deflate_decompress.exit.thread62_crit_edge
  %error.1.i.ph = phi i32 [ -12, %if.end7.i.deflate_decompress.exit.thread62_crit_edge ], [ -22, %if.end11.i.deflate_decompress.exit.thread62_crit_edge ]
  %34 = ptrtoint ptr %workspace.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %workspace.i, align 4
  call void @kvfree(ptr noundef %35) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %strm.i) #16
  br label %fail_decompress

deflate_decompress.exit:                          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %workspace.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %workspace.i, align 4
  call void @kvfree(ptr noundef %37) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %strm.i) #16
  br label %if.end14

if.end14:                                         ; preds = %deflate_decompress.exit, %deflate_decompress.exit.thread57
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %38 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i.i.i, ptr %private_data, align 4
  br label %cleanup

fail_decompress:                                  ; preds = %deflate_decompress.exit.thread62, %deflate_decompress.exit.thread
  %retval.0.i4556 = phi i32 [ %retval.0.i45.ph, %deflate_decompress.exit.thread ], [ %error.1.i.ph, %deflate_decompress.exit.thread62 ]
  %39 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %fail_decompress.rawdata_f_data_free.exit_crit_edge, label %if.then.i.i48

fail_decompress.rawdata_f_data_free.exit_crit_edge: ; preds = %fail_decompress
  call void @__sanitizer_cov_trace_pc() #18
  br label %rawdata_f_data_free.exit

if.then.i.i48:                                    ; preds = %fail_decompress
  %call.i.i.i.i.i.i.i.i47 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %40, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  call void @llvm.prefetch.p0(ptr nonnull %40, i32 1, i32 3, i32 1) #16
  %41 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %40, ptr nonnull %40, i32 1, ptr nonnull elementtype(i32) %40) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.rawdata_f_data_free.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.i.rawdata_f_data_free.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rawdata_f_data_free.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %40, i32 noundef 3) #16
  br label %rawdata_f_data_free.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i48
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  call void @aa_loaddata_kref(ptr noundef nonnull %40) #16, !callees !426
  br label %rawdata_f_data_free.exit

rawdata_f_data_free.exit:                         ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.rawdata_f_data_free.exit_crit_edge, %fail_decompress.rawdata_f_data_free.exit_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %rawdata_f_data_free.exit, %if.end14, %if.then.i.i, %if.then10.i.i.i.i.i38, %if.end5.i.i.i.i.i.cleanup_crit_edge, %kref_get_unless_zero.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i4556, %rawdata_f_data_free.exit ], [ 0, %if.end14 ], [ -13, %entry.cleanup_crit_edge ], [ %16, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %16, %if.then10.i.i.i.i.i38 ], [ %16, %if.then.i.i ], [ -2, %if.end.cleanup_crit_edge ], [ -2, %kref_get_unless_zero.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rawdata_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.rawdata_f_data_free.exit_crit_edge, label %if.end.i

entry.rawdata_f_data_free.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rawdata_f_data_free.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.aa_put_loaddata.exit.i_crit_edge, label %if.then.i.i

if.end.i.aa_put_loaddata.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_loaddata.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.aa_put_loaddata.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.i.aa_put_loaddata.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_loaddata.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #16
  br label %aa_put_loaddata.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_loaddata_kref(ptr noundef nonnull %3) #16, !callees !426
  br label %aa_put_loaddata.exit.i

aa_put_loaddata.exit.i:                           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_loaddata.exit.i_crit_edge, %if.end.i.aa_put_loaddata.exit.i_crit_edge
  tail call void @kvfree(ptr noundef nonnull %1) #16
  br label %rawdata_f_data_free.exit

rawdata_f_data_free.exit:                         ; preds = %aa_put_loaddata.exit.i, %entry.rawdata_f_data_free.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aa_current_policy_view_capable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_workspacesize() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_rmdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_release_fs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_proxy_kref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_profile_name_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @seq_profile_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @seq_profile_name_show)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_profile_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #16
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_proxy_kref(ptr noundef nonnull %3) #16, !callees !426
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @seq_profile_open(ptr nocapture noundef readonly %inode, ptr noundef %file, ptr noundef %show) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %aa_get_proxy.exit.thread, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #16, !srcloc !429
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !427

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_proxy.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !422

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_proxy.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_proxy.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef %.sink.i.i.i.i.i) #16
  br label %aa_get_proxy.exit

aa_get_proxy.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_proxy.exit_crit_edge
  %call1 = tail call i32 @single_open(ptr noundef %file, ptr noundef %show, ptr noundef nonnull %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %aa_get_proxy.exit.if.end_crit_edge, label %if.then.i7.critedge

aa_get_proxy.exit.if.end_crit_edge:               ; preds = %aa_get_proxy.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

aa_get_proxy.exit.thread:                         ; preds = %entry
  %call19 = tail call i32 @single_open(ptr noundef %file, ptr noundef %show, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not10 = icmp eq i32 %call19, 0
  br i1 %tobool.not10, label %aa_get_proxy.exit.thread.if.end_crit_edge, label %if.then.thread

aa_get_proxy.exit.thread.if.end_crit_edge:        ; preds = %aa_get_proxy.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.thread:                                   ; preds = %aa_get_proxy.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  %private_data14 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %private_data14, align 4
  br label %if.end

if.then.i7.critedge:                              ; preds = %aa_get_proxy.exit
  %private_data.c = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data.c to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %private_data.c, align 4
  %call.i.i.i.i.i.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i7.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i8 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i8, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #16
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i7.critedge
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_proxy_kref(ptr noundef nonnull %1) #16, !callees !426
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %if.then.thread, %aa_get_proxy.exit.thread.if.end_crit_edge, %aa_get_proxy.exit.if.end_crit_edge
  %call112 = phi i32 [ 0, %aa_get_proxy.exit.thread.if.end_crit_edge ], [ 0, %aa_get_proxy.exit.if.end_crit_edge ], [ %call19, %if.then.thread ], [ %call1, %if.end5.i.i.i.i.i.if.end_crit_edge ], [ %call1, %if.then10.i.i.i.i.i ], [ %call1, %if.then.i.i ]
  ret i32 %call112
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_profile_name_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %label1 = getelementptr inbounds %struct.aa_proxy, ptr %1, i32 0, i32 1
  %call = tail call fastcc ptr @aa_get_label_rcu(ptr noundef %label1)
  %size = getelementptr inbounds %struct.aa_label, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %sub = add i32 %3, -1
  %arrayidx = getelementptr %struct.aa_label, ptr %call, i32 0, i32 8, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, ptr noundef %7) #16
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %entry.aa_put_label.exit_crit_edge, label %if.then.i

entry.aa_put_label.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #16
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #16
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef nonnull %call) #16, !callees !426
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %entry.aa_put_label.exit_crit_edge
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_label_rcu(ptr noundef %l) unnamed_addr #3 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !431
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.do.body.preheader_crit_edge, label %land.lhs.true.i

entry.do.body.preheader_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.body.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.body.preheader_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.do.body.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.do.body.preheader_crit_edge:     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 696, ptr noundef nonnull @.str.41) #16
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then.i, %land.lhs.true2.i.do.body.preheader_crit_edge, %land.lhs.true.i.do.body.preheader_crit_edge, %entry.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %kref_get_unless_zero.exit.do.body_crit_edge, %do.body.preheader
  %4 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %l, align 4
  %call = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end8_crit_edge

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

land.lhs.true:                                    ; preds = %do.body
  %call3 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b17 = load i1, ptr @aa_get_label_rcu.__warned, align 1
  br i1 %.b17, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @aa_get_label_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 401, ptr noundef nonnull @.str.39) #16
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %do.body.do.end8_crit_edge
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %do.end8.do.end14_crit_edge, label %land.rhs

do.end8.do.end14_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end14

land.rhs:                                         ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #16
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %5, i32 noundef 4) #16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.rhs
  %8 = phi i32 [ %7, %land.rhs ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #16
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #16
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 %11, i32 %add.i.i.i.i, ptr nonnull elementtype(i32) %5) #16, !srcloc !430
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !422

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !422

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 0) #16
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  %tobool12.i.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #16
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.do.body_crit_edge, label %kref_get_unless_zero.exit.do.end14_crit_edge

kref_get_unless_zero.exit.do.end14_crit_edge:     ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end14

kref_get_unless_zero.exit.do.body_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.end14:                                         ; preds = %kref_get_unless_zero.exit.do.end14_crit_edge, %do.end8.do.end14_crit_edge
  %call.i18 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i18, label %do.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i21

do.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i21:                                ; preds = %do.end14
  %call1.i19 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i23

land.lhs.true.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i23:                               ; preds = %land.lhs.true.i21
  %.b4.i22 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22, label %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, label %if.then.i24

land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i24:                                      ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 724, ptr noundef nonnull @.str.42) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i24, %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, %do.end14.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !432
  %18 = call i32 @llvm.read_register.i32(metadata !412) #16
  %and.i.i.i.i.i25 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i25 to ptr
  %preempt_count.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i26, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i26, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_profile_mode_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @seq_profile_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @seq_profile_mode_show)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_profile_mode_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %label1 = getelementptr inbounds %struct.aa_proxy, ptr %1, i32 0, i32 1
  %call = tail call fastcc ptr @aa_get_label_rcu(ptr noundef %label1)
  %size = getelementptr inbounds %struct.aa_label, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %sub = add i32 %3, -1
  %arrayidx = getelementptr %struct.aa_label, ptr %call, i32 0, i32 8, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %mode = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  %arrayidx2 = getelementptr [0 x ptr], ptr @aa_profile_mode_names, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, ptr noundef %9) #16
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %entry.aa_put_label.exit_crit_edge, label %if.then.i

entry.aa_put_label.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #16
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef nonnull %call) #16, !callees !426
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %entry.aa_put_label.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_profile_attach_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @seq_profile_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @seq_profile_attach_show)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_profile_attach_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %label1 = getelementptr inbounds %struct.aa_proxy, ptr %1, i32 0, i32 1
  %call = tail call fastcc ptr @aa_get_label_rcu(ptr noundef %label1)
  %size = getelementptr inbounds %struct.aa_label, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %sub = add i32 %3, -1
  %arrayidx = getelementptr %struct.aa_label, ptr %call, i32 0, i32 8, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %attach = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attach, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, ptr noundef nonnull %7) #16
  br label %if.end6

if.else:                                          ; preds = %entry
  %xmatch = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %xmatch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xmatch, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.else5, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.43) #16
  br label %if.end6

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, ptr noundef %11) #16
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.then4, %if.then
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.end6.aa_put_label.exit_crit_edge, label %if.then.i

if.end6.aa_put_label.exit_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %if.end6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #16
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #16
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef nonnull %call) #16, !callees !426
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %if.end6.aa_put_label.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_profile_hash_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @seq_profile_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @seq_profile_hash_show)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_profile_hash_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %label1 = getelementptr inbounds %struct.aa_proxy, ptr %1, i32 0, i32 1
  %call = tail call fastcc ptr @aa_get_label_rcu(ptr noundef %label1)
  %size = getelementptr inbounds %struct.aa_label, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %sub = add i32 %3, -1
  %arrayidx = getelementptr %struct.aa_label, ptr %call, i32 0, i32 8, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 @aa_hash_size() #16
  %hash = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hash, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp13.not = icmp eq i32 %call3, 0
  br i1 %cmp13.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hash, align 4
  %arrayidx5 = getelementptr i8, ptr %9, i32 %i.014
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5, align 1
  %conv = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.32, i32 noundef %conv) #16
  %inc = add nuw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %call3
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #16
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.end.aa_put_label.exit_crit_edge, label %if.then.i

if.end.aa_put_label.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %if.end
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #16
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #16
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef nonnull %call) #16, !callees !426
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %if.end.aa_put_label.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_pin_fs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__aafs_setup_d_inode(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef %data, ptr noundef %fops, ptr noundef %iops) unnamed_addr #0 align 64 {
entry:
  %tmp64 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call = tail call ptr @new_inode(ptr noundef %1) #16
  %tobool.not = icmp eq ptr %dir, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !427

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 218, i32 noundef 9, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.__aafs_setup_d_inode) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %dentry, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !427

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.__aafs_setup_d_inode) #16
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %tobool60.not = icmp eq ptr %call, null
  br i1 %tobool60.not, label %if.end50.cleanup_crit_edge, label %if.end62

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end62:                                         ; preds = %if.end50
  %call63 = tail call i32 @get_next_ino() #16
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call63, ptr %i_ino, align 8
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %mode, ptr %call, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp64) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp64, ptr noundef nonnull %call) #16
  %4 = call ptr @memcpy(ptr %i_ctime, ptr %tmp64, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp64) #16
  %5 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %6 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %i_private = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 54
  %7 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %i_private, align 4
  %8 = and i16 %mode, -4096
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.150)
  switch i16 %8, label %if.else79 [
    i16 16384, label %if.then66
    i16 -24576, label %if.then72
  ]

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  %tobool67.not = icmp eq ptr %iops, null
  %spec.select = select i1 %tobool67.not, ptr @simple_dir_inode_operations, ptr %iops
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %10 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %spec.select, ptr %i_op, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @simple_dir_operations, ptr %11, align 8
  call void @inc_nlink(ptr noundef nonnull %call) #16
  call void @inc_nlink(ptr noundef %dir) #16
  br label %if.end81

if.then72:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  %tobool73.not = icmp eq ptr %iops, null
  %spec.select1 = select i1 %tobool73.not, ptr @simple_symlink_inode_operations, ptr %iops
  %i_op78 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %13 = ptrtoint ptr %i_op78 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %spec.select1, ptr %i_op78, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 48
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %14, align 4
  br label %if.end81

if.else79:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  %16 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %fops, ptr %16, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.else79, %if.then72, %if.then66
  call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call) #16
  br i1 %tobool26.not, label %if.end81.cleanup_crit_edge, label %if.then.i

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end81.cleanup_crit_edge, %if.end50.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end50.cleanup_crit_edge ], [ 0, %if.end81.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @apparmorfs_init_fs_context(ptr nocapture noundef writeonly %fc) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @apparmorfs_context_ops, ptr %fc, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmorfs_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_single(ptr noundef %fc, ptr noundef nonnull @apparmorfs_fill_super) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_single(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmorfs_fill_super(ptr noundef %sb, ptr nocapture noundef readnone %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_fill_super(ptr noundef %sb, i32 noundef 1513908720, ptr noundef nonnull @apparmorfs_fill_super.files) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %0 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @aafs_super_ops, ptr %s_op, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_fill_super(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aafs_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %2)
  %cmp = icmp eq i16 %2, -24576
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %3 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %5) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @free_inode_nonrcu(ptr noundef %inode) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aafs_show_path(ptr noundef %seq, ptr nocapture noundef readonly %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef %3) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_inode_nonrcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rawdata_get_link_sha1(ptr noundef %dentry, ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %done) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @rawdata_get_link_base(ptr noundef %dentry, ptr noundef %inode, ptr noundef %done, ptr noundef nonnull @.str.9)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rawdata_get_link_base(ptr noundef readnone %dentry, ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %done, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dentry, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %label1 = getelementptr inbounds %struct.aa_proxy, ptr %1, i32 0, i32 1
  %call2 = tail call fastcc ptr @aa_get_label_rcu(ptr noundef %label1)
  %size = getelementptr inbounds %struct.aa_label, ptr %call2, i32 0, i32 7
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %sub = add i32 %3, -1
  %arrayidx = getelementptr %struct.aa_label, ptr %call2, i32 0, i32 8, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !412) #16
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !431
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %if.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.rcu_read_lock.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 696, ptr noundef nonnull @.str.41) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.rcu_read_lock.exit.i_crit_edge
  %tobool.not13.i = icmp eq ptr %5, null
  br i1 %tobool.not13.i, label %rcu_read_lock.exit.i.for.end.i_crit_edge, label %rcu_read_lock.exit.i.for.body.i_crit_edge

rcu_read_lock.exit.i.for.body.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  br label %for.body.i

rcu_read_lock.exit.i.for.end.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %rcu_read_lock.exit.i.for.body.i_crit_edge
  %profile.addr.015.i = phi ptr [ %11, %for.body.i.for.body.i_crit_edge ], [ %5, %rcu_read_lock.exit.i.for.body.i_crit_edge ]
  %depth.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %rcu_read_lock.exit.i.for.body.i_crit_edge ]
  %inc.i = add i32 %depth.014.i, 1
  %parent.i = getelementptr inbounds %struct.aa_profile, ptr %profile.addr.015.i, i32 0, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %rcu_read_lock.exit.i.for.end.i_crit_edge
  %depth.0.lcssa.i = phi i32 [ 0, %rcu_read_lock.exit.i.for.end.i_crit_edge ], [ %inc.i, %for.body.i.for.end.i_crit_edge ]
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i4.i, label %for.end.i.profile_depth.exit_crit_edge, label %land.lhs.true.i7.i

for.end.i.profile_depth.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %profile_depth.exit

land.lhs.true.i7.i:                               ; preds = %for.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.profile_depth.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.profile_depth.exit_crit_edge:  ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %profile_depth.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.profile_depth.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.profile_depth.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %profile_depth.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 724, ptr noundef nonnull @.str.42) #16
  br label %profile_depth.exit

profile_depth.exit:                               ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.profile_depth.exit_crit_edge, %land.lhs.true.i7.i.profile_depth.exit_crit_edge, %for.end.i.profile_depth.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !432
  %12 = tail call i32 @llvm.read_register.i32(metadata !412) #16
  %and.i.i.i.i.i11.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %rawdata = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 20
  %16 = ptrtoint ptr %rawdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rawdata, align 4
  %name4 = getelementptr inbounds %struct.aa_loaddata, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name4, align 4
  %mul.i = mul i32 %depth.0.lcssa.i, 6
  %call.i = tail call i32 @strlen(ptr noundef %19) #19
  %call1.i = tail call i32 @strlen(ptr noundef %name) #19
  %add.i = add i32 %call1.i, %call.i
  %add2.i = add i32 %add.i, %mul.i
  %add3.i = add i32 %add2.i, 11
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add3.i, i32 noundef 3264) #20
  %tobool.not.i21 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i21, label %profile_depth.exit.gen_symlink_name.exit_crit_edge, label %for.cond.preheader.i

profile_depth.exit.gen_symlink_name.exit_crit_edge: ; preds = %profile_depth.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %gen_symlink_name.exit

for.cond.preheader.i:                             ; preds = %profile_depth.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth.0.lcssa.i)
  %cmp28.i = icmp sgt i32 %depth.0.lcssa.i, 0
  br i1 %cmp28.i, label %for.cond.preheader.i.for.body.i22_crit_edge, label %for.cond.preheader.i.for.end.i23_crit_edge

for.cond.preheader.i.for.end.i23_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i23

for.cond.preheader.i.for.body.i22_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i22

for.body.i22:                                     ; preds = %for.body.i22.for.body.i22_crit_edge, %for.cond.preheader.i.for.body.i22_crit_edge
  %s.030.i = phi ptr [ %add.ptr.i, %for.body.i22.for.body.i22_crit_edge ], [ %call9.i.i, %for.cond.preheader.i.for.body.i22_crit_edge ]
  %depth.addr.029.i = phi i32 [ %dec.i, %for.body.i22.for.body.i22_crit_edge ], [ %depth.0.lcssa.i, %for.cond.preheader.i.for.body.i22_crit_edge ]
  %20 = call ptr @memcpy(ptr %s.030.i, ptr @.str.50, i32 7)
  %add.ptr.i = getelementptr i8, ptr %s.030.i, i32 6
  %dec.i = add nsw i32 %depth.addr.029.i, -1
  %cmp.i = icmp ugt i32 %depth.addr.029.i, 1
  br i1 %cmp.i, label %for.body.i22.for.body.i22_crit_edge, label %for.end.loopexit.i

for.body.i22.for.body.i22_crit_edge:              ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i22

for.end.loopexit.i:                               ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #18
  %21 = add i32 %add.i, 11
  br label %for.end.i23

for.end.i23:                                      ; preds = %for.end.loopexit.i, %for.cond.preheader.i.for.end.i23_crit_edge
  %s.0.lcssa.i = phi ptr [ %call9.i.i, %for.cond.preheader.i.for.end.i23_crit_edge ], [ %add.ptr.i, %for.end.loopexit.i ]
  %size.0.lcssa.i = phi i32 [ %add3.i, %for.cond.preheader.i.for.end.i23_crit_edge ], [ %21, %for.end.loopexit.i ]
  %call7.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %s.0.lcssa.i, i32 noundef %size.0.lcssa.i, ptr noundef nonnull @.str.51, ptr noundef %19, ptr noundef %name) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %size.0.lcssa.i)
  %cmp8.not.i = icmp sge i32 %call7.i, %size.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp9.i = icmp slt i32 %call7.i, 0
  %or.cond.i = or i1 %cmp8.not.i, %cmp9.i
  br i1 %or.cond.i, label %if.then10.i, label %for.end.i23.gen_symlink_name.exit_crit_edge

for.end.i23.gen_symlink_name.exit_crit_edge:      ; preds = %for.end.i23
  call void @__sanitizer_cov_trace_pc() #18
  br label %gen_symlink_name.exit

if.then10.i:                                      ; preds = %for.end.i23
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #16
  br label %gen_symlink_name.exit

gen_symlink_name.exit:                            ; preds = %if.then10.i, %for.end.i23.gen_symlink_name.exit_crit_edge, %profile_depth.exit.gen_symlink_name.exit_crit_edge
  %retval.0.i = phi ptr [ inttoptr (i32 -36 to ptr), %if.then10.i ], [ %call9.i.i, %for.end.i23.gen_symlink_name.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %profile_depth.exit.gen_symlink_name.exit_crit_edge ]
  %tobool.not.i24 = icmp eq ptr %call2, null
  br i1 %tobool.not.i24, label %gen_symlink_name.exit.aa_put_label.exit_crit_edge, label %if.then.i

gen_symlink_name.exit.aa_put_label.exit_crit_edge: ; preds = %gen_symlink_name.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %gen_symlink_name.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call2, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr nonnull %call2, i32 1, i32 3, i32 1) #16
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call2, ptr nonnull %call2, i32 1, ptr nonnull elementtype(i32) %call2) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i25, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call2, i32 noundef 3) #16
  br label %aa_put_label.exit

if.then.i.i25:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef nonnull %call2) #16, !callees !426
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i25, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %gen_symlink_name.exit.aa_put_label.exit_crit_edge
  %cmp.i26 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26, label %aa_put_label.exit.cleanup_crit_edge, label %if.end8

aa_put_label.exit.cleanup_crit_edge:              ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @rawdata_link_cb, ptr %done, align 4
  %arg2.i = getelementptr inbounds %struct.delayed_call, ptr %done, i32 0, i32 1
  %24 = ptrtoint ptr %arg2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i, ptr %arg2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %aa_put_label.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %if.end8 ], [ %retval.0.i, %aa_put_label.exit.cleanup_crit_edge ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rawdata_link_cb(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %arg) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rawdata_get_link_abi(ptr noundef %dentry, ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %done) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @rawdata_get_link_base(ptr noundef %dentry, ptr noundef %inode, ptr noundef %done, ptr noundef nonnull @.str.7)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rawdata_get_link_data(ptr noundef %dentry, ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %done) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @rawdata_get_link_base(ptr noundef %dentry, ptr noundef %inode, ptr noundef %done, ptr noundef nonnull @.str.11)
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_revision_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size, ptr noundef %ppos) #0 align 64 {
entry:
  %buffer = alloca [32 x i8], align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buffer) #16
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 32)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %lock = getelementptr inbounds %struct.aa_ns, ptr %4, i32 0, i32 2
  %level = getelementptr inbounds %struct.aa_ns, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %level, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef %6) #16
  %last_read2 = getelementptr inbounds %struct.aa_revision, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %last_read2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_read2, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %revision = getelementptr inbounds %struct.aa_ns, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %12)
  %cmp = icmp eq i32 %8, %12
  br i1 %cmp, label %if.then, label %entry.if.end43_crit_edge

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then:                                          ; preds = %entry
  %lock5 = getelementptr inbounds %struct.aa_ns, ptr %10, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock5) #16
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %13 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_flags, align 4
  %and = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup59_crit_edge

if.then.cleanup59_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup59

if.end:                                           ; preds = %if.then
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 547) #16
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %revision14 = getelementptr inbounds %struct.aa_ns, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %revision14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %revision14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %18)
  %cmp15.not = icmp eq i32 %8, %18
  br i1 %cmp15.not, label %if.then16, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.then16:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %wait97 = getelementptr inbounds %struct.aa_ns, ptr %21, i32 0, i32 10
  %call98 = call i32 @prepare_to_wait_event(ptr noundef %wait97, ptr noundef nonnull %__wq_entry, i32 noundef 1) #16
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %revision2499 = getelementptr inbounds %struct.aa_ns, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %revision2499 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %revision2499, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %25)
  %cmp25.not100 = icmp eq i32 %8, %25
  br i1 %cmp25.not100, label %if.then16.if.end27_crit_edge, label %if.then16.if.end34.thread94_crit_edge

if.then16.if.end34.thread94_crit_edge:            ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.thread94

if.then16.if.end27_crit_edge:                     ; preds = %if.then16
  br label %if.end27

if.end27:                                         ; preds = %cleanup.if.end27_crit_edge, %if.then16.if.end27_crit_edge
  %call101 = phi i32 [ %call, %cleanup.if.end27_crit_edge ], [ %call98, %if.then16.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool28.not = icmp eq i32 %call101, 0
  br i1 %tobool28.not, label %cleanup, label %if.end34

cleanup:                                          ; preds = %if.end27
  call void @schedule() #16
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %wait = getelementptr inbounds %struct.aa_ns, ptr %27, i32 0, i32 10
  %call = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #16
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %revision24 = getelementptr inbounds %struct.aa_ns, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %revision24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %revision24, align 4
  %cmp25.not = icmp eq i32 %8, %31
  br i1 %cmp25.not, label %cleanup.if.end27_crit_edge, label %cleanup.if.end34.thread94_crit_edge

cleanup.if.end34.thread94_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.thread94

cleanup.if.end27_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.end34.thread94:                                ; preds = %cleanup.if.end34.thread94_crit_edge, %if.then16.if.end34.thread94_crit_edge
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %wait32 = getelementptr inbounds %struct.aa_ns, ptr %33, i32 0, i32 10
  call void @finish_wait(ptr noundef %wait32, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %if.end38

if.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %cleanup59

if.end38:                                         ; preds = %if.end34.thread94, %if.end.if.end38_crit_edge
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %lock40 = getelementptr inbounds %struct.aa_ns, ptr %35, i32 0, i32 2
  %level42 = getelementptr inbounds %struct.aa_ns, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %level42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %level42, align 4
  call void @mutex_lock_nested(ptr noundef %lock40, i32 noundef %37) #16
  br label %if.end43

if.end43:                                         ; preds = %if.end38, %entry.if.end43_crit_edge
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %revision45 = getelementptr inbounds %struct.aa_ns, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %revision45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %revision45, align 4
  %call46 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull @.str.31, i32 noundef %41)
  %42 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ppos, align 8
  %conv = zext i32 %size to i64
  %add = add i64 %43, %conv
  %conv47 = sext i32 %call46 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv47)
  %cmp48 = icmp sgt i64 %add, %conv47
  br i1 %cmp48, label %if.then50, label %if.end43.if.end54_crit_edge

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54

if.then50:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %revision52 = getelementptr inbounds %struct.aa_ns, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %revision52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %revision52, align 4
  %48 = ptrtoint ptr %last_read2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %last_read2, align 4
  %49 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %ppos, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.end43.if.end54_crit_edge
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %lock56 = getelementptr inbounds %struct.aa_ns, ptr %51, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock56) #16
  %call58 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %size, ptr noundef %ppos, ptr noundef nonnull %buffer, i32 noundef %call46) #16
  br label %cleanup59

cleanup59:                                        ; preds = %if.end54, %if.end34, %if.then.cleanup59_crit_edge
  %retval.0 = phi i32 [ %call58, %if.end54 ], [ -11, %if.then.cleanup59_crit_edge ], [ -512, %if.end34 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buffer) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_revision_poll(ptr noundef %file, ptr noundef %pt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %lock = getelementptr inbounds %struct.aa_ns, ptr %3, i32 0, i32 2
  %level = getelementptr inbounds %struct.aa_ns, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %level, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef %5) #16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %wait = getelementptr inbounds %struct.aa_ns, ptr %7, i32 0, i32 10
  %tobool.not.i = icmp eq ptr %pt, null
  br i1 %tobool.not.i, label %if.then.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.then.poll_wait.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.then
  %8 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pt, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  %tobool3.not.i = icmp eq ptr %wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %9(ptr noundef %file, ptr noundef nonnull %wait, ptr noundef nonnull %pt) #16
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.then.poll_wait.exit_crit_edge
  %last_read = getelementptr inbounds %struct.aa_revision, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %last_read to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_read, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %revision = getelementptr inbounds %struct.aa_ns, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp = icmp slt i32 %11, %15
  %spec.select = select i1 %cmp, i32 65, i32 0
  %lock6 = getelementptr inbounds %struct.aa_ns, ptr %13, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock6) #16
  br label %if.end7

if.end7:                                          ; preds = %poll_wait.exit, %entry.if.end7_crit_edge
  %mask.1 = phi i32 [ %spec.select, %poll_wait.exit ], [ 0, %entry.if.end7_crit_edge ]
  ret i32 %mask.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_revision_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #25
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %1 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_private, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then4, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end7_crit_edge, label %if.then.i.i

if.then.i.if.end7_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %4, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #16
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #16, !srcloc !429
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !427

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end7_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !422

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end7_crit_edge:            ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #16
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call5 = tail call fastcc ptr @aa_get_current_ns()
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end7_crit_edge, %if.then.i.if.end7_crit_edge
  %storemerge = phi ptr [ %call5, %if.then4 ], [ %2, %if.then.i.if.end7_crit_edge ], [ %2, %if.else.i.i.i.i.i.i.if.end7_crit_edge ], [ %2, %if.end15.sink.split.i.i.i.i.i.i ]
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %storemerge, ptr %call7.i.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_revision_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.aa_put_ns.exit_crit_edge, label %if.then.i

if.then.aa_put_ns.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then.i:                                        ; preds = %if.then
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.i.aa_put_ns.exit_crit_edge, label %if.then.i.i

if.then.i.aa_put_ns.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef 3) #16
  br label %aa_put_ns.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef %label.i.i) #16, !callees !426
  br label %aa_put_ns.exit

aa_put_ns.exit:                                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, %if.then.i.aa_put_ns.exit_crit_edge, %if.then.aa_put_ns.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #16
  br label %if.end

if.end:                                           ; preds = %aa_put_ns.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_current_ns() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #16
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i, label %entry.cred_label.exit.i.i.i_crit_edge, !prof !427

entry.cred_label.exit.i.i.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cred_label.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.cred_label) #16
  br label %cred_label.exit.i.i.i

cred_label.exit.i.i.i:                            ; preds = %do.end.i.i.i.i, %entry.cred_label.exit.i.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge, !prof !427

cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge: ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_current_raw_label.exit.i

do.end.i.i.i:                                     ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.aa_cred_raw_label) #16
  br label %aa_current_raw_label.exit.i

aa_current_raw_label.exit.i:                      ; preds = %do.end.i.i.i, %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge
  %flags.i = getelementptr inbounds %struct.aa_label, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge, label %if.then.i

aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge: ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__begin_current_label_crit_section.exit

if.then.i:                                        ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %10) #16
  br label %__begin_current_label_crit_section.exit

__begin_current_label_crit_section.exit:          ; preds = %if.then.i, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge
  %label.0.i = phi ptr [ %call1.i, %if.then.i ], [ %10, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge ]
  %vec = getelementptr inbounds %struct.aa_label, ptr %label.0.i, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %label.0.i, i32 0, i32 7
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  %sub = add i32 %14, -1
  %arrayidx1 = getelementptr ptr, ptr %vec, i32 %sub
  %15 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx1, align 4
  %ns2 = getelementptr inbounds %struct.aa_profile, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %ns2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ns2, align 4
  %tobool.not.i6 = icmp eq ptr %18, null
  br i1 %tobool.not.i6, label %__begin_current_label_crit_section.exit.aa_get_ns.exit_crit_edge, label %if.then.i7

__begin_current_label_crit_section.exit.aa_get_ns.exit_crit_edge: ; preds = %__begin_current_label_crit_section.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit

if.then.i7:                                       ; preds = %__begin_current_label_crit_section.exit
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.then.i7.aa_get_ns.exit_crit_edge, label %if.then.i.i

if.then.i7.aa_get_ns.exit_crit_edge:              ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit

if.then.i.i:                                      ; preds = %if.then.i7
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %20, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #16
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #16, !srcloc !429
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !427

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %22 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !422

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #16
  br label %aa_get_ns.exit

aa_get_ns.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, %if.then.i7.aa_get_ns.exit_crit_edge, %__begin_current_label_crit_section.exit.aa_get_ns.exit_crit_edge
  tail call fastcc void @end_current_label_crit_section(ptr noundef %label.0.i)
  ret ptr %18
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @end_current_label_crit_section(ptr noundef %label) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #16
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
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %entry.cred_label.exit.i.i_crit_edge, !prof !427

entry.cred_label.exit.i.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cred_label.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.cred_label) #16
  br label %cred_label.exit.i.i

cred_label.exit.i.i:                              ; preds = %do.end.i.i.i, %entry.cred_label.exit.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge, !prof !427

cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge: ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_current_raw_label.exit

do.end.i.i:                                       ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.aa_cred_raw_label) #16
  br label %aa_current_raw_label.exit

aa_current_raw_label.exit:                        ; preds = %do.end.i.i, %cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge
  %cmp.not = icmp eq ptr %10, %label
  %tobool.not.i = icmp eq ptr %label, null
  %or.cond = or i1 %tobool.not.i, %cmp.not
  br i1 %or.cond, label %aa_current_raw_label.exit.if.end_crit_edge, label %if.then.i

aa_current_raw_label.exit.if.end_crit_edge:       ; preds = %aa_current_raw_label.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i:                                        ; preds = %aa_current_raw_label.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr nonnull %label, i32 1, i32 3, i32 1) #16
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label, ptr nonnull %label, i32 1, ptr nonnull elementtype(i32) %label) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %label, i32 noundef 3) #16
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef nonnull %label) #16, !callees !426
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %aa_current_raw_label.exit.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_newest_label(ptr noundef %l) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %tobool.not = icmp eq ptr %l, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.aa_label, ptr %l, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.i, label %if.then2

if.then2:                                         ; preds = %if.end
  %proxy = getelementptr inbounds %struct.aa_label, ptr %l, i32 0, i32 3
  %2 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proxy, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end, label %if.then2.if.end20_crit_edge, !prof !427

if.then2.if.end20_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 424, i32 noundef 9, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.aa_get_newest_label) #16
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.then2.if.end20_crit_edge
  %4 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proxy, align 4
  %label = getelementptr inbounds %struct.aa_proxy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %label, align 4
  %tobool33.not = icmp eq ptr %7, null
  br i1 %tobool33.not, label %do.end51, label %if.end20.if.end57_crit_edge, !prof !427

if.end20.if.end57_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

do.end51:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 425, i32 noundef 9, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.aa_get_newest_label) #16
  br label %if.end57

if.end57:                                         ; preds = %do.end51, %if.end20.if.end57_crit_edge
  %8 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proxy, align 4
  %label68 = getelementptr inbounds %struct.aa_proxy, ptr %9, i32 0, i32 1
  %call = tail call fastcc ptr @aa_get_label_rcu(ptr noundef %label68)
  %tobool71.not = icmp eq ptr %call, null
  br i1 %tobool71.not, label %do.end89, label %if.end57.return_crit_edge, !prof !427

if.end57.return_crit_edge:                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

do.end89:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 431, i32 noundef 9, ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.aa_get_newest_label) #16
  br label %return

if.then.i:                                        ; preds = %if.end
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %l, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull %l, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %l, ptr nonnull %l, i32 1, ptr nonnull elementtype(i32) %l) #16, !srcloc !429
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !427

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.return_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !422

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.return_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %l, i32 noundef %.sink.i.i.i.i.i) #16
  br label %return

return:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.return_crit_edge, %do.end89, %if.end57.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ null, %do.end89 ], [ %call, %if.end57.return_crit_edge ], [ %l, %if.else.i.i.i.i.i.return_crit_edge ], [ %l, %if.end15.sink.split.i.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @profile_load(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %aa_get_ns.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.i.if.then.i6_crit_edge, label %if.then.i.i

if.then.i.if.then.i6_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i6

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #16, !srcloc !429
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !427

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.then.i6_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !422

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.then.i6_crit_edge:         ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i6

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #16
  br label %if.then.i6

aa_get_ns.exit:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call fastcc i32 @policy_update(i32 noundef 8, ptr noundef %buf, i32 noundef %size, ptr noundef %pos, ptr noundef null)
  br label %aa_put_ns.exit

if.then.i6:                                       ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.then.i6_crit_edge, %if.then.i.if.then.i6_crit_edge
  %call111 = tail call fastcc i32 @policy_update(i32 noundef 8, ptr noundef %buf, i32 noundef %size, ptr noundef %pos, ptr noundef nonnull %3)
  %8 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i5 = icmp eq ptr %9, null
  br i1 %tobool.not.i.i5, label %if.then.i6.aa_put_ns.exit_crit_edge, label %if.then.i.i9

if.then.i6.aa_put_ns.exit_crit_edge:              ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then.i.i9:                                     ; preds = %if.then.i6
  %label.i.i7 = getelementptr inbounds %struct.aa_profile, ptr %9, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i7, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr %label.i.i7, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i7, ptr %label.i.i7, i32 1, ptr elementtype(i32) %label.i.i7) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i10 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i10, label %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i7, i32 noundef 3) #16
  br label %aa_put_ns.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i9
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef %label.i.i7) #16, !callees !426
  br label %aa_put_ns.exit

aa_put_ns.exit:                                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, %if.then.i6.aa_put_ns.exit_crit_edge, %aa_get_ns.exit
  %call113 = phi i32 [ %call1, %aa_get_ns.exit ], [ %call111, %if.then.i6.aa_put_ns.exit_crit_edge ], [ %call111, %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge ], [ %call111, %if.then10.i.i.i.i.i.i ], [ %call111, %if.then.i.i.i ]
  ret i32 %call113
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @policy_update(i32 noundef %mask, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readonly %pos, ptr noundef %ns) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @begin_current_label_crit_section()
  %call1 = tail call i32 @aa_may_manage_policy(ptr noundef %call, ptr noundef %ns, i32 noundef %mask) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.end_section_crit_edge

entry.end_section_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %end_section

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @aa_simple_write_to_buffer(ptr noundef %buf, i32 noundef %size, i32 noundef %size, ptr noundef %pos)
  %0 = ptrtoint ptr %call2 to i32
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.end_section_crit_edge, label %if.then5

if.end.end_section_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %end_section

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @aa_replace_profiles(ptr noundef %ns, ptr noundef %call, i32 noundef %mask, ptr noundef %call2) #16
  %tobool.not.i = icmp eq ptr %call2, null
  br i1 %tobool.not.i, label %if.then5.end_section_crit_edge, label %if.then.i

if.then5.end_section_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %end_section

if.then.i:                                        ; preds = %if.then5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call2, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr nonnull %call2, i32 1, i32 3, i32 1) #16
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call2, ptr nonnull %call2, i32 1, ptr nonnull elementtype(i32) %call2) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.end_section_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.end_section_crit_edge:          ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %end_section

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call2, i32 noundef 3) #16
  br label %end_section

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_loaddata_kref(ptr noundef nonnull %call2) #16, !callees !426
  br label %end_section

end_section:                                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.end_section_crit_edge, %if.then5.end_section_crit_edge, %if.end.end_section_crit_edge, %entry.end_section_crit_edge
  %error.0 = phi i32 [ %call1, %entry.end_section_crit_edge ], [ %0, %if.end.end_section_crit_edge ], [ %call6, %if.then5.end_section_crit_edge ], [ %call6, %if.end5.i.i.i.i.i.end_section_crit_edge ], [ %call6, %if.then10.i.i.i.i.i ], [ %call6, %if.then.i.i ]
  tail call fastcc void @end_current_label_crit_section(ptr noundef %call)
  ret i32 %error.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @begin_current_label_crit_section() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #16
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
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %entry.cred_label.exit.i.i_crit_edge, !prof !427

entry.cred_label.exit.i.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cred_label.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.cred_label) #16
  br label %cred_label.exit.i.i

cred_label.exit.i.i:                              ; preds = %do.end.i.i.i, %entry.cred_label.exit.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge, !prof !427

cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge: ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_current_raw_label.exit

do.end.i.i:                                       ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.aa_cred_raw_label) #16
  br label %aa_current_raw_label.exit

aa_current_raw_label.exit:                        ; preds = %do.end.i.i, %cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.56, i32 noundef 164) #16
  %flags = getelementptr inbounds %struct.aa_label, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %aa_current_raw_label.exit.if.end7_crit_edge, label %if.then

aa_current_raw_label.exit.if.end7_crit_edge:      ; preds = %aa_current_raw_label.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then:                                          ; preds = %aa_current_raw_label.exit
  %call4 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %10)
  %call5 = tail call i32 @aa_replace_current_label(ptr noundef %call4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then6:                                         ; preds = %if.then
  %tobool.not.i = icmp eq ptr %call4, null
  br i1 %tobool.not.i, label %if.then6.if.end7_crit_edge, label %if.then.i

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then.i:                                        ; preds = %if.then6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call4, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr nonnull %call4, i32 1, i32 3, i32 1) #16
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call4, ptr nonnull %call4, i32 1, ptr nonnull elementtype(i32) %call4) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end7_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.if.end7_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call4, i32 noundef 3) #16
  br label %if.end7

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef nonnull %call4) #16, !callees !426
  br label %if.end7

if.end7:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end7_crit_edge, %if.then6.if.end7_crit_edge, %if.then.if.end7_crit_edge, %aa_current_raw_label.exit.if.end7_crit_edge
  %label.0 = phi ptr [ %call4, %if.then.if.end7_crit_edge ], [ %10, %aa_current_raw_label.exit.if.end7_crit_edge ], [ null, %if.then6.if.end7_crit_edge ], [ %call4, %if.end5.i.i.i.i.i.if.end7_crit_edge ], [ %call4, %if.then10.i.i.i.i.i ], [ %call4, %if.then.i.i ]
  ret ptr %label.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_may_manage_policy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_simple_write_to_buffer(ptr noundef %userbuf, i32 noundef %alloc_size, i32 noundef %copy_size, ptr nocapture noundef readonly %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %copy_size, i32 %alloc_size)
  %cmp = icmp ugt i32 %copy_size, %alloc_size
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !427

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.aa_simple_write_to_buffer) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp22.not = icmp eq i64 %1, 0
  br i1 %cmp22.not, label %if.end24, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %call25 = tail call ptr @aa_loaddata_alloc(i32 noundef %alloc_size) #16
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %size = getelementptr inbounds %struct.aa_loaddata, ptr %call25, i32 0, i32 6
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %copy_size, ptr %size, align 4
  %data29 = getelementptr inbounds %struct.aa_loaddata, ptr %call25, i32 0, i32 11
  %3 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copy_size)
  %cmp9.i.i = icmp slt i32 %copy_size, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end28
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.then32_crit_edge, label %if.then27.i.i, !prof !422

land.rhs16.i.i.if.then32_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then32

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %if.then32

if.then.i.i.i:                                    ; preds = %if.end28
  tail call void @__check_object_size(ptr noundef %4, i32 noundef %copy_size, i1 noundef zeroext false) #16
  tail call void @__might_fault(ptr noundef nonnull @.str.65, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuf, i32 %copy_size, i32 -1226833920) #26, !srcloc !433
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !422

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef %copy_size) #16
  %6 = tail call i32 @llvm.read_register.i32(metadata !412) #16
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !434
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !435
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !436
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %4, ptr noundef %userbuf, i32 noundef %copy_size) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #16, !srcloc !435
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !436
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %copy_size, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %copy_size, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !422

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = sub i32 %copy_size, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.then32

if.then32:                                        ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.then32_crit_edge
  tail call void @kvfree(ptr noundef %call25) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end.i.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -14 to ptr), %if.then32 ], [ %call25, %if.end24.cleanup_crit_edge ], [ inttoptr (i32 -29 to ptr), %if.end.cleanup_crit_edge ], [ %call25, %if.end.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_replace_profiles(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_replace_current_label(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_loaddata_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @profile_replace(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %aa_get_ns.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.i.if.then.i6_crit_edge, label %if.then.i.i

if.then.i.if.then.i6_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i6

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #16, !srcloc !429
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !427

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.then.i6_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !422

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.then.i6_crit_edge:         ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i6

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #16
  br label %if.then.i6

aa_get_ns.exit:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call fastcc i32 @policy_update(i32 noundef 10, ptr noundef %buf, i32 noundef %size, ptr noundef %pos, ptr noundef null)
  br label %aa_put_ns.exit

if.then.i6:                                       ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.then.i6_crit_edge, %if.then.i.if.then.i6_crit_edge
  %call111 = tail call fastcc i32 @policy_update(i32 noundef 10, ptr noundef %buf, i32 noundef %size, ptr noundef %pos, ptr noundef nonnull %3)
  %8 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i5 = icmp eq ptr %9, null
  br i1 %tobool.not.i.i5, label %if.then.i6.aa_put_ns.exit_crit_edge, label %if.then.i.i9

if.then.i6.aa_put_ns.exit_crit_edge:              ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then.i.i9:                                     ; preds = %if.then.i6
  %label.i.i7 = getelementptr inbounds %struct.aa_profile, ptr %9, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i7, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr %label.i.i7, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i7, ptr %label.i.i7, i32 1, ptr elementtype(i32) %label.i.i7) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i10 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i10, label %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i7, i32 noundef 3) #16
  br label %aa_put_ns.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i9
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef %label.i.i7) #16, !callees !426
  br label %aa_put_ns.exit

aa_put_ns.exit:                                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, %if.then.i6.aa_put_ns.exit_crit_edge, %aa_get_ns.exit
  %call113 = phi i32 [ %call1, %aa_get_ns.exit ], [ %call111, %if.then.i6.aa_put_ns.exit_crit_edge ], [ %call111, %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge ], [ %call111, %if.then10.i.i.i.i.i.i ], [ %call111, %if.then.i.i.i ]
  ret i32 %call113
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @profile_remove(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.aa_get_ns.exit_crit_edge, label %if.then.i

entry.aa_get_ns.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit

if.then.i:                                        ; preds = %entry
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.i.aa_get_ns.exit_crit_edge, label %if.then.i.i

if.then.i.aa_get_ns.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #16, !srcloc !429
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !427

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !422

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #16
  br label %aa_get_ns.exit

aa_get_ns.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, %if.then.i.aa_get_ns.exit_crit_edge, %entry.aa_get_ns.exit_crit_edge
  %call1 = tail call fastcc ptr @begin_current_label_crit_section()
  %call2 = tail call i32 @aa_may_manage_policy(ptr noundef %call1, ptr noundef %3, i32 noundef 32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %aa_get_ns.exit.out_crit_edge

aa_get_ns.exit.out_crit_edge:                     ; preds = %aa_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %aa_get_ns.exit
  %add = add i32 %size, 1
  %call3 = tail call fastcc ptr @aa_simple_write_to_buffer(ptr noundef %buf, i32 noundef %add, i32 noundef %size, ptr noundef %pos)
  %8 = ptrtoint ptr %call3 to i32
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.out_crit_edge, label %if.then6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then6:                                         ; preds = %if.end
  %data7 = getelementptr inbounds %struct.aa_loaddata, ptr %call3, i32 0, i32 11
  %9 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data7, align 4
  %arrayidx = getelementptr i8, ptr %10, i32 %size
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx, align 1
  %12 = load ptr, ptr %data7, align 4
  %call9 = tail call i32 @aa_remove_profiles(ptr noundef %3, ptr noundef %call1, ptr noundef %12, i32 noundef %size) #16
  %tobool.not.i23 = icmp eq ptr %call3, null
  br i1 %tobool.not.i23, label %if.then6.out_crit_edge, label %if.then.i25

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then.i25:                                      ; preds = %if.then6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call3, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr nonnull %call3, i32 1, i32 3, i32 1) #16
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call3, ptr nonnull %call3, i32 1, ptr nonnull elementtype(i32) %call3) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i24 = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i24)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i24, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i26, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i24)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i24, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.out_crit_edge:                  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call3, i32 noundef 3) #16
  br label %out

if.then.i.i26:                                    ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_loaddata_kref(ptr noundef nonnull %call3) #16, !callees !426
  br label %out

out:                                              ; preds = %if.then.i.i26, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.out_crit_edge, %if.then6.out_crit_edge, %if.end.out_crit_edge, %aa_get_ns.exit.out_crit_edge
  %error.0 = phi i32 [ %call2, %aa_get_ns.exit.out_crit_edge ], [ %8, %if.end.out_crit_edge ], [ %call9, %if.then6.out_crit_edge ], [ %call9, %if.end5.i.i.i.i.i.out_crit_edge ], [ %call9, %if.then10.i.i.i.i.i ], [ %call9, %if.then.i.i26 ]
  tail call fastcc void @end_current_label_crit_section(ptr noundef %call1)
  br i1 %tobool.not.i, label %out.aa_put_ns.exit_crit_edge, label %if.then.i30

out.aa_put_ns.exit_crit_edge:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then.i30:                                      ; preds = %out
  %unconfined.i28 = getelementptr inbounds %struct.aa_ns, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %unconfined.i28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unconfined.i28, align 4
  %tobool.not.i.i29 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i29, label %if.then.i30.aa_put_ns.exit_crit_edge, label %if.then.i.i33

if.then.i30.aa_put_ns.exit_crit_edge:             ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then.i.i33:                                    ; preds = %if.then.i30
  %label.i.i31 = getelementptr inbounds %struct.aa_profile, ptr %15, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i32 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i31, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr %label.i.i31, i32 1, i32 3, i32 1) #16
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i31, ptr %label.i.i31, i32 1, ptr elementtype(i32) %label.i.i31) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i34 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i34, label %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i31, i32 noundef 3) #16
  br label %aa_put_ns.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i33
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef %label.i.i31) #16, !callees !426
  br label %aa_put_ns.exit

aa_put_ns.exit:                                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, %if.then.i30.aa_put_ns.exit_crit_edge, %out.aa_put_ns.exit_crit_edge
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_remove_profiles(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_mkdir_op(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @begin_current_label_crit_section()
  %call1 = tail call i32 @aa_may_manage_policy(ptr noundef %call, ptr noundef null, i32 noundef 8) #16
  tail call fastcc void @end_current_label_crit_section(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.aa_get_ns.exit_crit_edge, label %if.then.i

if.end.aa_get_ns.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit

if.then.i:                                        ; preds = %if.end
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.aa_get_ns.exit_crit_edge, label %if.then.i.i

if.then.i.aa_get_ns.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #16, !srcloc !429
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !427

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !422

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #16
  br label %aa_get_ns.exit

aa_get_ns.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, %if.then.i.aa_get_ns.exit_crit_edge, %if.end.aa_get_ns.exit_crit_edge
  %arrayidx = getelementptr %struct.aa_ns, ptr %1, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %cmp.not = icmp eq ptr %9, %dir
  br i1 %cmp.not, label %aa_get_ns.exit.if.end19_crit_edge, label %do.end, !prof !422

aa_get_ns.exit.if.end19_crit_edge:                ; preds = %aa_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

do.end:                                           ; preds = %aa_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1790, i32 noundef 9, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.ns_mkdir_op) #16
  br label %if.end19

if.end19:                                         ; preds = %do.end, %aa_get_ns.exit.if.end19_crit_edge
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #16
  %call28 = tail call i32 @simple_pin_fs(ptr noundef nonnull @aafs_ops, ptr noundef nonnull @aafs_mnt, ptr noundef nonnull @aafs_count) #16
  %lock = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 2
  %level = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef %11) #16
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end31:                                         ; preds = %if.end19
  %12 = or i16 %mode, 16384
  %call33 = tail call fastcc i32 @__aafs_setup_d_inode(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %12, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.if.then47_crit_edge

if.end31.if.then47_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then47

if.end36:                                         ; preds = %if.end31
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %name, align 8
  %call41 = tail call ptr @__aa_find_or_create_ns(ptr noundef %1, ptr noundef %14, ptr noundef %dentry) #16
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out_pin, label %if.end45

if.end45:                                         ; preds = %if.end36
  %tobool.not.i74 = icmp eq ptr %call41, null
  br i1 %tobool.not.i74, label %if.end45.out_crit_edge, label %if.then.i77

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then.i77:                                      ; preds = %if.end45
  %unconfined.i75 = getelementptr inbounds %struct.aa_ns, ptr %call41, i32 0, i32 4
  %15 = ptrtoint ptr %unconfined.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unconfined.i75, align 4
  %tobool.not.i.i76 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i76, label %if.then.i77.out_crit_edge, label %if.then.i.i80

if.then.i77.out_crit_edge:                        ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then.i.i80:                                    ; preds = %if.then.i77
  %label.i.i78 = getelementptr inbounds %struct.aa_profile, ptr %16, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i78, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr %label.i.i78, i32 1, i32 3, i32 1) #16
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i78, ptr %label.i.i78, i32 1, ptr elementtype(i32) %label.i.i78) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i81 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i81, label %if.end5.i.i.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.i.out_crit_edge:                ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i78, i32 noundef 3) #16
  br label %out

if.then.i.i.i:                                    ; preds = %if.then.i.i80
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef %label.i.i78) #16, !callees !426
  br label %out

out_pin:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %call41 to i32
  br label %if.then47

if.then47:                                        ; preds = %out_pin, %if.end31.if.then47_crit_edge
  %error.1105 = phi i32 [ %18, %out_pin ], [ %call33, %if.end31.if.then47_crit_edge ]
  tail call void @simple_release_fs(ptr noundef nonnull @aafs_mnt, ptr noundef nonnull @aafs_count) #16
  br label %out

out:                                              ; preds = %if.then47, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.out_crit_edge, %if.then.i77.out_crit_edge, %if.end45.out_crit_edge, %if.end19.out_crit_edge
  %error.2 = phi i32 [ %call28, %if.end19.out_crit_edge ], [ %error.1105, %if.then47 ], [ 0, %if.end45.out_crit_edge ], [ 0, %if.then.i77.out_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.out_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #16
  br i1 %tobool.not.i, label %out.cleanup_crit_edge, label %if.then.i85

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i85:                                      ; preds = %out
  %unconfined.i83 = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %unconfined.i83 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %unconfined.i83, align 4
  %tobool.not.i.i84 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i84, label %if.then.i85.cleanup_crit_edge, label %if.then.i.i90

if.then.i85.cleanup_crit_edge:                    ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i.i90:                                    ; preds = %if.then.i85
  %label.i.i86 = getelementptr inbounds %struct.aa_profile, ptr %20, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i87 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i86, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr %label.i.i86, i32 1, i32 3, i32 1) #16
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i86, ptr %label.i.i86, i32 1, ptr elementtype(i32) %label.i.i86) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i88 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i88)
  %cmp.i.i.i.i.i.i89 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i88, 1
  br i1 %cmp.i.i.i.i.i.i89, label %if.then.i.i.i94, label %if.end5.i.i.i.i.i.i92

if.end5.i.i.i.i.i.i92:                            ; preds = %if.then.i.i90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i88)
  %.not.i.i.i.i.i.i91 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i88, 0
  br i1 %.not.i.i.i.i.i.i91, label %if.end5.i.i.i.i.i.i92.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i93, !prof !422

if.end5.i.i.i.i.i.i92.cleanup_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i92
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i.i.i93:                          ; preds = %if.end5.i.i.i.i.i.i92
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i86, i32 noundef 3) #16
  br label %cleanup

if.then.i.i.i94:                                  ; preds = %if.then.i.i90
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef %label.i.i86) #16, !callees !426
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i94, %if.then10.i.i.i.i.i.i93, %if.end5.i.i.i.i.i.i92.cleanup_crit_edge, %if.then.i85.cleanup_crit_edge, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %error.2, %out.cleanup_crit_edge ], [ %error.2, %if.then.i85.cleanup_crit_edge ], [ %error.2, %if.end5.i.i.i.i.i.i92.cleanup_crit_edge ], [ %error.2, %if.then10.i.i.i.i.i.i93 ], [ %error.2, %if.then.i.i.i94 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_rmdir_op(ptr noundef %dir, ptr noundef readonly %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @begin_current_label_crit_section()
  %call1 = tail call i32 @aa_may_manage_policy(ptr noundef %call, ptr noundef null, i32 noundef 8) #16
  tail call fastcc void @end_current_label_crit_section(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.aa_get_ns.exit_crit_edge, label %if.then.i

if.end.aa_get_ns.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit

if.then.i:                                        ; preds = %if.end
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.aa_get_ns.exit_crit_edge, label %if.then.i.i

if.then.i.aa_get_ns.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #16, !srcloc !429
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !427

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !422

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_get_ns.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #16
  br label %aa_get_ns.exit

aa_get_ns.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, %if.then.i.aa_get_ns.exit_crit_edge, %if.end.aa_get_ns.exit_crit_edge
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #16
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i55 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i55) #16
  %lock = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 2
  %level = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %level, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef %9) #16
  %sub_ns = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 5
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 8
  %12 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %d_name, align 8
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i56 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i56, label %land.lhs.true.i.i, label %aa_get_ns.exit.do.end.i.i_crit_edge

aa_get_ns.exit.do.end.i.i_crit_edge:              ; preds = %aa_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %aa_get_ns.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b25.i.i = load i1, ptr @__policy_strn_find.__warned, align 1
  br i1 %.b25.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i57

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

if.then.i.i57:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__policy_strn_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.68, i32 noundef 196, ptr noundef nonnull @.str.69) #16
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i57, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %aa_get_ns.exit.do.end.i.i_crit_edge
  %14 = ptrtoint ptr %sub_ns to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn26.i.i = load volatile ptr, ptr %sub_ns, align 4
  %cmp.not28.i.i = icmp eq ptr %.pn26.i.i, %sub_ns
  br i1 %cmp.not28.i.i, label %do.end.i.i.out_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.out_crit_edge:                         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.body.i.i:                                     ; preds = %for.cond.backedge.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %.pn29.i.i = phi ptr [ %.pn.i.i, %for.cond.backedge.i.i.for.body.i.i_crit_edge ], [ %.pn26.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %policy.030.i.i = getelementptr i8, ptr %.pn29.i.i, i32 -8
  %15 = ptrtoint ptr %policy.030.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %policy.030.i.i, align 4
  %call.i.i.i = tail call i32 @strncmp(ptr noundef %16, ptr noundef %11, i32 noundef %13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %for.body.i.i.for.cond.backedge.i.i_crit_edge

for.body.i.i.for.cond.backedge.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.backedge.i.i

land.rhs.i.i.i:                                   ; preds = %for.body.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %16, i32 %13
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i.i.i = icmp eq i8 %18, 0
  br i1 %tobool1.not.i.i.i, label %__aa_findn_ns.exit, label %land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge

land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.backedge.i.i

for.cond.backedge.i.i:                            ; preds = %land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge, %for.body.i.i.for.cond.backedge.i.i_crit_edge
  %19 = ptrtoint ptr %.pn29.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i.i = load volatile ptr, ptr %.pn29.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %sub_ns
  br i1 %cmp.not.i.i, label %for.cond.backedge.i.i.out_crit_edge, label %for.cond.backedge.i.i.for.body.i.i_crit_edge

for.cond.backedge.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.cond.backedge.i.i.out_crit_edge:              ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

__aa_findn_ns.exit:                               ; preds = %land.rhs.i.i.i
  %policy.030.i.i.le = getelementptr i8, ptr %.pn29.i.i, i32 -8
  %tobool.not.i58 = icmp eq ptr %policy.030.i.i.le, null
  br i1 %tobool.not.i58, label %__aa_findn_ns.exit.out_crit_edge, label %if.then.i61

__aa_findn_ns.exit.out_crit_edge:                 ; preds = %__aa_findn_ns.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then.i61:                                      ; preds = %__aa_findn_ns.exit
  %unconfined.i59 = getelementptr i8, ptr %.pn29.i.i, i32 128
  %20 = ptrtoint ptr %unconfined.i59 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unconfined.i59, align 4
  %tobool.not.i.i60 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i60, label %if.then.i61.do.body_crit_edge, label %if.then.i.i66

if.then.i61.do.body_crit_edge:                    ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then.i.i66:                                    ; preds = %if.then.i61
  %label.i.i62 = getelementptr inbounds %struct.aa_profile, ptr %21, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i63 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i62, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %label.i.i62, i32 1, i32 3, i32 1) #16
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i62, ptr %label.i.i62, i32 1, ptr elementtype(i32) %label.i.i62) #16, !srcloc !429
  %asmresult.i.i.i.i.i.i.i.i64 = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i64)
  %tobool1.not.i.i.i.i.i.i65 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i64, 0
  br i1 %tobool1.not.i.i.i.i.i.i65, label %if.then.i.i66.if.end15.sink.split.i.i.i.i.i.i71_crit_edge, label %if.else.i.i.i.i.i.i69, !prof !427

if.then.i.i66.if.end15.sink.split.i.i.i.i.i.i71_crit_edge: ; preds = %if.then.i.i66
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i71

if.else.i.i.i.i.i.i69:                            ; preds = %if.then.i.i66
  %add.i.i.i.i.i.i67 = add i32 %asmresult.i.i.i.i.i.i.i.i64, 1
  %23 = or i32 %add.i.i.i.i.i.i67, %asmresult.i.i.i.i.i.i.i.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i.i.i68 = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i.i.i68, label %if.else.i.i.i.i.i.i69.do.body_crit_edge, label %if.else.i.i.i.i.i.i69.if.end15.sink.split.i.i.i.i.i.i71_crit_edge, !prof !422

if.else.i.i.i.i.i.i69.if.end15.sink.split.i.i.i.i.i.i71_crit_edge: ; preds = %if.else.i.i.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i71

if.else.i.i.i.i.i.i69.do.body_crit_edge:          ; preds = %if.else.i.i.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.end15.sink.split.i.i.i.i.i.i71:                ; preds = %if.else.i.i.i.i.i.i69.if.end15.sink.split.i.i.i.i.i.i71_crit_edge, %if.then.i.i66.if.end15.sink.split.i.i.i.i.i.i71_crit_edge
  %.sink.i.i.i.i.i.i70 = phi i32 [ 2, %if.then.i.i66.if.end15.sink.split.i.i.i.i.i.i71_crit_edge ], [ 1, %if.else.i.i.i.i.i.i69.if.end15.sink.split.i.i.i.i.i.i71_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i62, i32 noundef %.sink.i.i.i.i.i.i70) #16
  br label %do.body

do.body:                                          ; preds = %if.end15.sink.split.i.i.i.i.i.i71, %if.else.i.i.i.i.i.i69.do.body_crit_edge, %if.then.i61.do.body_crit_edge
  %dents = getelementptr i8, ptr %.pn29.i.i, i32 264
  %24 = ptrtoint ptr %dents to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dents, align 4
  %cmp.not = icmp eq ptr %25, %dentry
  br i1 %cmp.not, label %do.body.if.then.i76_crit_edge, label %do.end, !prof !422

do.body.if.then.i76_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i76

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1853, i32 noundef 9, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.ns_rmdir_op) #16
  br label %if.then.i76

if.then.i76:                                      ; preds = %do.end, %do.body.if.then.i76_crit_edge
  tail call void @__aa_remove_ns(ptr noundef nonnull %policy.030.i.i.le) #16
  %26 = ptrtoint ptr %unconfined.i59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %unconfined.i59, align 4
  %tobool.not.i.i75 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i75, label %if.then.i76.out_crit_edge, label %if.then.i.i79

if.then.i76.out_crit_edge:                        ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then.i.i79:                                    ; preds = %if.then.i76
  %label.i.i77 = getelementptr inbounds %struct.aa_profile, ptr %27, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i77, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr %label.i.i77, i32 1, i32 3, i32 1) #16
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i77, ptr %label.i.i77, i32 1, ptr elementtype(i32) %label.i.i77) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i80 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i80, label %if.end5.i.i.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.i.out_crit_edge:                ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i77, i32 noundef 3) #16
  br label %out

if.then.i.i.i:                                    ; preds = %if.then.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef %label.i.i77) #16, !callees !426
  br label %out

out:                                              ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.out_crit_edge, %if.then.i76.out_crit_edge, %__aa_findn_ns.exit.out_crit_edge, %for.cond.backedge.i.i.out_crit_edge, %do.end.i.i.out_crit_edge
  %error.0 = phi i32 [ -2, %__aa_findn_ns.exit.out_crit_edge ], [ 0, %if.then.i76.out_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.out_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ], [ -2, %do.end.i.i.out_crit_edge ], [ -2, %for.cond.backedge.i.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #16
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #16
  %29 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i82 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i82) #16
  br i1 %tobool.not.i, label %out.cleanup_crit_edge, label %if.then.i86

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i86:                                      ; preds = %out
  %unconfined.i84 = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %unconfined.i84 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %unconfined.i84, align 4
  %tobool.not.i.i85 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i85, label %if.then.i86.cleanup_crit_edge, label %if.then.i.i91

if.then.i86.cleanup_crit_edge:                    ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i.i91:                                    ; preds = %if.then.i86
  %label.i.i87 = getelementptr inbounds %struct.aa_profile, ptr %32, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i88 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i87, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr %label.i.i87, i32 1, i32 3, i32 1) #16
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i87, ptr %label.i.i87, i32 1, ptr elementtype(i32) %label.i.i87) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i89 = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i89)
  %cmp.i.i.i.i.i.i90 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i89, 1
  br i1 %cmp.i.i.i.i.i.i90, label %if.then.i.i.i95, label %if.end5.i.i.i.i.i.i93

if.end5.i.i.i.i.i.i93:                            ; preds = %if.then.i.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i89)
  %.not.i.i.i.i.i.i92 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i89, 0
  br i1 %.not.i.i.i.i.i.i92, label %if.end5.i.i.i.i.i.i93.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i94, !prof !422

if.end5.i.i.i.i.i.i93.cleanup_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i93
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i.i.i94:                          ; preds = %if.end5.i.i.i.i.i.i93
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i87, i32 noundef 3) #16
  br label %cleanup

if.then.i.i.i95:                                  ; preds = %if.then.i.i91
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef %label.i.i87) #16, !callees !426
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i95, %if.then10.i.i.i.i.i.i94, %if.end5.i.i.i.i.i.i93.cleanup_crit_edge, %if.then.i86.cleanup_crit_edge, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %error.0, %out.cleanup_crit_edge ], [ %error.0, %if.then.i86.cleanup_crit_edge ], [ %error.0, %if.end5.i.i.i.i.i.i93.cleanup_crit_edge ], [ %error.0, %if.then10.i.i.i.i.i.i94 ], [ %error.0, %if.then.i.i.i95 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__aa_find_or_create_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aa_remove_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @securityfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multi_transaction_read(ptr noundef %file, ptr noundef %buf, i32 noundef %size, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %f_lock = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock) #16
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %get_multi_transaction.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #16, !srcloc !429
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !427

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.then.i12_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !422

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.then.i12_crit_edge:          ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i12

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef %.sink.i.i.i.i.i) #16
  br label %if.then.i12

get_multi_transaction.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %f_lock) #16
  br label %cleanup

if.then.i12:                                      ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.then.i12_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %f_lock) #16
  %data = getelementptr inbounds %struct.multi_transaction, ptr %1, i32 0, i32 2
  %size2 = getelementptr inbounds %struct.multi_transaction, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size2, align 4
  %call3 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %size, ptr noundef %pos, ptr noundef %data, i32 noundef %5) #16
  %call.i.i.i.i.i.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i13 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i13, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #16
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  %7 = ptrtoint ptr %1 to i32
  tail call void @free_pages(i32 noundef %7, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %get_multi_transaction.exit
  %retval.0 = phi i32 [ 0, %get_multi_transaction.exit ], [ %call3, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %call3, %if.then10.i.i.i.i.i ], [ %call3, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aa_write_access(ptr noundef %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  %arg.i.i.i.i = alloca %struct.rhashtable_compare_arg, align 4
  %key.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4087, i32 %count)
  %cmp.i = icmp ugt i32 %count, 4087
  br i1 %cmp.i, label %if.end.if.then2_crit_edge, label %if.end.i

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then2

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @get_zeroed_page(i32 noundef 3264) #16
  %2 = inttoptr i32 %call1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.then2_crit_edge, label %if.end4.i

if.end.i.if.then2_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then2

if.end4.i:                                        ; preds = %if.end.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 4) #16
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %2, align 4
  %data.i = getelementptr inbounds %struct.multi_transaction, ptr %2, i32 0, i32 2
  tail call void @__check_object_size(ptr noundef %data.i, i32 noundef %count, i1 noundef zeroext false) #16
  tail call void @__might_fault(ptr noundef nonnull @.str.65, i32 noundef 156) #16
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i.i, label %if.end4.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end4.i.if.end.i.i.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end4.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %count, i32 -1226833920) #26, !srcloc !433
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !422

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data.i, i32 noundef %count) #16
  %5 = tail call i32 @llvm.read_register.i32(metadata !412) #16
  %and.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #9, !srcloc !434
  %and.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #16, !srcloc !435
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !436
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %data.i, ptr noundef %ubuf, i32 noundef %count) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #16, !srcloc !435
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !436
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end4.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %count, %if.end4.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %count, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %multi_transaction_new.exit, label %if.then11.i.i.i, !prof !422

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i = sub i32 %count, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i, i32 %sub.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %if.then2

multi_transaction_new.exit:                       ; preds = %if.end.i.i.i
  %cmp.i96 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %multi_transaction_new.exit.if.then2_crit_edge, label %if.end4

multi_transaction_new.exit.if.then2_crit_edge:    ; preds = %multi_transaction_new.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then2

if.then2:                                         ; preds = %multi_transaction_new.exit.if.then2_crit_edge, %if.then11.i.i.i, %if.end.i.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %retval.0.i127 = phi ptr [ %2, %multi_transaction_new.exit.if.then2_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.then11.i.i.i ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then2_crit_edge ], [ inttoptr (i32 -27 to ptr), %if.end.if.then2_crit_edge ]
  %9 = ptrtoint ptr %retval.0.i127 to i32
  br label %cleanup

if.end4:                                          ; preds = %multi_transaction_new.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count)
  %cmp = icmp ugt i32 %count, 8
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end4
  %bcmp95 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %data.i, ptr noundef nonnull dereferenceable(8) @.str.77, i32 8) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp95)
  %tobool6.not = icmp eq i32 %bcmp95, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.land.lhs.true14_crit_edge

land.lhs.true.land.lhs.true14_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true14

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr %struct.multi_transaction, ptr %2, i32 2
  %sub = add nsw i32 %count, -8
  %call12 = tail call fastcc i32 @query_label(ptr noundef %data.i, ptr noundef %add.ptr, i32 noundef %sub, i1 noundef zeroext true)
  br label %if.end61

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %count)
  %cmp13 = icmp ugt i32 %count, 6
  br i1 %cmp13, label %if.else.land.lhs.true14_crit_edge, label %if.else42

if.else.land.lhs.true14_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.else.land.lhs.true14_crit_edge, %land.lhs.true.land.lhs.true14_crit_edge
  %bcmp94 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %data.i, ptr noundef nonnull dereferenceable(6) @.str.78, i32 6) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp94)
  %tobool18.not = icmp eq i32 %bcmp94, 0
  br i1 %tobool18.not, label %if.then19, label %if.else27

if.then19:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr24 = getelementptr i8, ptr %data.i, i32 6
  %sub25 = add nsw i32 %count, -6
  %call26 = tail call fastcc i32 @query_label(ptr noundef %data.i, ptr noundef %add.ptr24, i32 noundef %sub25, i1 noundef zeroext true)
  br label %if.end61

if.else27:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %count)
  %cmp28 = icmp ugt i32 %count, 9
  br i1 %cmp28, label %land.lhs.true29, label %if.else27.land.lhs.true44_crit_edge

if.else27.land.lhs.true44_crit_edge:              ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true44

land.lhs.true29:                                  ; preds = %if.else27
  %bcmp93 = tail call i32 @bcmp(ptr noundef dereferenceable(9) %data.i, ptr noundef nonnull dereferenceable(9) @.str.79, i32 9) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp93)
  %tobool33.not = icmp eq i32 %bcmp93, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true29.land.lhs.true44_crit_edge

land.lhs.true29.land.lhs.true44_crit_edge:        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true44

if.then34:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr39 = getelementptr i8, ptr %data.i, i32 9
  %sub40 = add nsw i32 %count, -9
  %call41 = tail call fastcc i32 @query_label(ptr noundef %data.i, ptr noundef %add.ptr39, i32 noundef %sub40, i1 noundef zeroext false)
  br label %if.end61

if.else42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %count)
  %cmp43 = icmp eq i32 %count, 6
  br i1 %cmp43, label %if.else42.land.lhs.true44_crit_edge, label %if.else42.if.then.i_crit_edge

if.else42.if.then.i_crit_edge:                    ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.else42.land.lhs.true44_crit_edge:              ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true44

land.lhs.true44:                                  ; preds = %if.else42.land.lhs.true44_crit_edge, %land.lhs.true29.land.lhs.true44_crit_edge, %if.else27.land.lhs.true44_crit_edge
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(5) %data.i, ptr noundef nonnull dereferenceable(5) @.str.80, i32 5) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool48.not = icmp eq i32 %bcmp, 0
  br i1 %tobool48.not, label %if.then49, label %land.lhs.true44.if.then.i_crit_edge

land.lhs.true44.if.then.i_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then49:                                        ; preds = %land.lhs.true44
  %add.ptr54 = getelementptr i8, ptr %data.i, i32 5
  %sub55 = add nsw i32 %count, -5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i) #16
  %call.i = tail call i32 @strnlen(ptr noundef %add.ptr54, i32 noundef %sub55) #19
  %add.ptr.i = getelementptr i8, ptr %add.ptr54, i32 %call.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %10 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr1.i, ptr %key.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 1
  %add.ptr3.i = getelementptr i8, ptr %data.i, i32 %count
  %cmp.not.i = icmp ult ptr %add.ptr2.i, %add.ptr3.i
  br i1 %cmp.not.i, label %if.end5.i, label %if.then49.query_data.exit_crit_edge

if.then49.query_data.exit_crit_edge:              ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #18
  br label %query_data.exit

if.end5.i:                                        ; preds = %if.then49
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr3.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call7.i = tail call i32 @strnlen(ptr noundef %add.ptr1.i, i32 noundef %sub.ptr.sub.i) #19
  %add.ptr8.i = getelementptr i8, ptr %add.ptr1.i, i32 %call7.i
  %cmp10.not.i = icmp ult ptr %add.ptr8.i, %add.ptr3.i
  br i1 %cmp10.not.i, label %if.end15.i, label %if.end5.i.query_data.exit_crit_edge

if.end5.i.query_data.exit_crit_edge:              ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %query_data.exit

if.end15.i:                                       ; preds = %if.end5.i
  %call16.i = tail call fastcc ptr @begin_current_label_crit_section() #16
  %call17.i = tail call ptr @aa_label_parse(ptr noundef %call16.i, ptr noundef %add.ptr54, i32 noundef 3264, i1 noundef zeroext false, i1 noundef zeroext false) #16
  tail call fastcc void @end_current_label_crit_section(ptr noundef %call16.i) #16
  %cmp.i.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then19.i, label %if.end21.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %call17.i to i32
  br label %query_data.exit

if.end21.i:                                       ; preds = %if.end15.i
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 0, ptr %data.i, align 1
  %add.ptr22.i = getelementptr %struct.multi_transaction, ptr %2, i32 1, i32 1
  %add.ptr23.i = getelementptr %struct.multi_transaction, ptr %2, i32 2
  %call24.i = tail call i32 @aa_label_next_confined(ptr noundef %call17.i, i32 noundef 0) #16
  %arrayidx27.i = getelementptr %struct.aa_label, ptr %call17.i, i32 0, i32 8, i32 %call24.i
  %13 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx27.i, align 4
  %tobool27.not28.i = icmp eq ptr %14, null
  br i1 %tobool27.not28.i, label %if.end21.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end21.i.for.end.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end21.i
  %15 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i.i.i, i32 0, i32 1
  %add.ptr39.i = getelementptr %struct.multi_transaction, ptr %2, i32 512
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %16 = phi ptr [ %14, %for.body.lr.ph.i ], [ %78, %for.inc.i.for.body.i_crit_edge ]
  %blocks.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %blocks.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.sroa.0.030.i = phi i32 [ %call24.i, %for.body.lr.ph.i ], [ %call51.i, %for.inc.i.for.body.i_crit_edge ]
  %out.029.i = phi ptr [ %add.ptr23.i, %for.body.lr.ph.i ], [ %out.1.i, %for.inc.i.for.body.i_crit_edge ]
  %data28.i = getelementptr inbounds %struct.aa_profile, ptr %16, i32 0, i32 24
  %17 = ptrtoint ptr %data28.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data28.i, align 4
  %tobool29.not.i = icmp eq ptr %18, null
  br i1 %tobool29.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end31.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end31.i:                                       ; preds = %for.body.i
  %.elt7.i = getelementptr inbounds %struct.rhashtable, ptr %18, i32 0, i32 3, i32 7
  %.elt11.i = getelementptr inbounds %struct.rhashtable, ptr %18, i32 0, i32 3, i32 9
  %19 = ptrtoint ptr %.elt11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack12.i = load i32, ptr %.elt11.i, align 4
  %20 = call i32 @llvm.read_register.i32(metadata !412) #16
  %and.i.i.i.i.i.i.i97 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i.i97 to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !431
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i.i98 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i.i98, label %if.end31.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i99

if.end31.i.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i99:                            ; preds = %if.end31.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i99.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i99.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i99
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i99
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i100

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i100:                                 ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 696, ptr noundef nonnull @.str.41) #16
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i100, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i99.rcu_read_lock.exit.i.i_crit_edge, %if.end31.i.rcu_read_lock.exit.i.i_crit_edge
  %24 = inttoptr i32 %.unpack12.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i.i.i) #16
  %25 = ptrtoint ptr %arg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %18, ptr %arg.i.i.i.i, align 4
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %key.i, ptr %15, align 4
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %18, align 4
  %call.i.i.i.i101 = call i32 @lockdep_rht_mutex_is_held(ptr noundef nonnull %18) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i101)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i101, 0
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i.i.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i.i)
  %tobool6.not.i.i.i.i = icmp eq i32 %call5.i.i.i.i, 0
  br i1 %tobool6.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %lor.lhs.false.i.i.i.i.do.end12.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.do.end12.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %lor.lhs.false.i.i.i.i
  %call7.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i.i)
  %tobool8.not.i.i.i.i = icmp eq i32 %call7.i.i.i.i, 0
  br i1 %tobool8.not.i.i.i.i, label %land.lhs.true.i.i.i.i.do.end12.i.i.i.i_crit_edge, label %land.lhs.true9.i.i.i.i

land.lhs.true.i.i.i.i.do.end12.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12.i.i.i.i

land.lhs.true9.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b92.i.i.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i.i.i, label %land.lhs.true9.i.i.i.i.do.end12.i.i.i.i_crit_edge, label %if.then.i.i.i.i102

land.lhs.true9.i.i.i.i.do.end12.i.i.i.i_crit_edge: ; preds = %land.lhs.true9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12.i.i.i.i

if.then.i.i.i.i102:                               ; preds = %land.lhs.true9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.82, i32 noundef 594, ptr noundef nonnull @.str.39) #16
  br label %do.end12.i.i.i.i

do.end12.i.i.i.i:                                 ; preds = %if.then.i.i.i.i102, %land.lhs.true9.i.i.i.i.do.end12.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.do.end12.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.do.end12.i.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i.i.i_crit_edge
  %key_len1.i.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %18, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack12.i)
  %tobool19.not.i.i.i.i = icmp eq i32 %.unpack12.i, 0
  %head_offset.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %18, i32 0, i32 3, i32 3
  br label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %do.end60.i.i.i.i.if.then.i.i.i.i.i.i_crit_edge, %do.end12.i.i.i.i
  %tbl.0.i.i.i.i = phi ptr [ %28, %do.end12.i.i.i.i ], [ %59, %do.end60.i.i.i.i.if.then.i.i.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %31 = ptrtoint ptr %.elt7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %.elt7.i, align 4
  %33 = ptrtoint ptr %key_len1.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %key_len1.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call i32 %32(ptr noundef nonnull %key.i, i32 noundef %34, i32 noundef %30) #16
  %35 = ptrtoint ptr %tbl.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tbl.0.i.i.i.i, align 128
  %sub.i.i.i.i.i.i = add i32 %36, -1
  %and.i3.i.i.i.i.i = and i32 %sub.i.i.i.i.i.i, %call.i.i.i.i.i.i
  %nest.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %nest.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nest.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i.i.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.false.i.i.i.i.i, label %cond.true.i.i.i.i.i, !prof !422

cond.true.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i.i103 = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i.i.i, i32 noundef %and.i3.i.i.i.i.i) #16
  br label %rht_bucket.exit.i.i.i.i

cond.false.i.i.i.i.i:                             ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket.exit.i.i.i.i

rht_bucket.exit.i.i.i.i:                          ; preds = %cond.false.i.i.i.i.i, %cond.true.i.i.i.i.i
  %cond.i.i.i.i.i = phi ptr [ %call.i.i.i.i.i103, %cond.true.i.i.i.i.i ], [ %arrayidx.i.i.i.i.i, %cond.false.i.i.i.i.i ]
  %39 = ptrtoint ptr %cond.i.i.i.i.i to i32
  %or.i.i.i.i.i.i = or i32 %39, 1
  %40 = inttoptr i32 %or.i.i.i.i.i.i to ptr
  br label %do.body16.i.i.i.i

do.body16.i.i.i.i:                                ; preds = %do.cond34.i.i.i.i.do.body16.i.i.i.i_crit_edge, %rht_bucket.exit.i.i.i.i
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !437
  %41 = ptrtoint ptr %cond.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %cond.i.i.i.i.i, align 4
  %call.i93.i.i.i.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i.i.i)
  %tobool.not.i94.i.i.i.i = icmp eq i32 %call.i93.i.i.i.i, 0
  br i1 %tobool.not.i94.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %do.body16.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge

do.body16.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge: ; preds = %do.body16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr_rcu.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %do.body16.i.i.i.i
  %call2.i.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i.i)
  %tobool3.not.i.i.i.i.i = icmp eq i32 %call2.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr_rcu.exit.i.i.i.i

land.lhs.true4.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b11.i.i.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i.i.i, label %land.lhs.true4.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true4.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr_rcu.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.82, i32 noundef 369, ptr noundef nonnull @.str.39) #16
  br label %rht_ptr_rcu.exit.i.i.i.i

rht_ptr_rcu.exit.i.i.i.i:                         ; preds = %if.then.i.i.i.i.i, %land.lhs.true4.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge, %do.body16.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge
  %43 = ptrtoint ptr %42 to i32
  %and.i.i95.i.i.i.i = and i32 %43, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i.i.i)
  %tobool.not.i.i96.i.i.i.i = icmp eq i32 %and.i.i95.i.i.i.i, 0
  %cond.i.i.i.i.i.i = select i1 %tobool.not.i.i96.i.i.i.i, i32 %or.i.i.i.i.i.i, i32 %and.i.i95.i.i.i.i
  %44 = inttoptr i32 %cond.i.i.i.i.i.i to ptr
  %and.i106.i.i.i.i = and i32 %cond.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i.i.i)
  %tobool.i.not107.i.i.i.i = icmp eq i32 %and.i106.i.i.i.i, 0
  br i1 %tobool.i.not107.i.i.i.i, label %rht_ptr_rcu.exit.i.i.i.i.for.body.i.i.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.i.i.do.cond34.i.i.i.i_crit_edge

rht_ptr_rcu.exit.i.i.i.i.do.cond34.i.i.i.i_crit_edge: ; preds = %rht_ptr_rcu.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond34.i.i.i.i

rht_ptr_rcu.exit.i.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %rht_ptr_rcu.exit.i.i.i.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.i.for.body.i.i.i.i_crit_edge
  %he.0108.i.i.i.i = phi ptr [ %56, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %44, %rht_ptr_rcu.exit.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %45 = ptrtoint ptr %head_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %head_offset.i.i.i.i.i, align 2
  %conv.i98.i.i.i.i = zext i16 %46 to i32
  %idx.neg.i99.i.i.i.i = sub nsw i32 0, %conv.i98.i.i.i.i
  %add.ptr.i100.i.i.i.i = getelementptr i8, ptr %he.0108.i.i.i.i, i32 %idx.neg.i99.i.i.i.i
  br i1 %tobool19.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i

cond.true.i.i.i.i:                                ; preds = %for.body.i.i.i.i
  %call22.i.i.i.i = call i32 %24(ptr noundef nonnull %arg.i.i.i.i, ptr noundef %add.ptr.i100.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i.i.i)
  %tobool23.not.i.i.i.i = icmp eq i32 %call22.i.i.i.i, 0
  br i1 %tobool23.not.i.i.i.i, label %cond.true.i.i.i.i.__rhashtable_lookup.exit.i.i.i_crit_edge, label %cond.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

cond.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:      ; preds = %cond.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i.i

cond.true.i.i.i.i.__rhashtable_lookup.exit.i.i.i_crit_edge: ; preds = %cond.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_lookup.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %for.body.i.i.i.i
  %47 = ptrtoint ptr %arg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arg.i.i.i.i, align 4
  %key_offset.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %48, i32 0, i32 3, i32 2
  %49 = ptrtoint ptr %key_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %key_offset.i.i.i.i.i, align 4
  %conv.i101.i.i.i.i = zext i16 %50 to i32
  %add.ptr.i102.i.i.i.i = getelementptr i8, ptr %add.ptr.i100.i.i.i.i, i32 %conv.i101.i.i.i.i
  %51 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %15, align 4
  %key_len.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %48, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %key_len.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %key_len.i.i.i.i.i, align 2
  %conv3.i.i.i.i.i = zext i16 %54 to i32
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i.i.i, ptr %52, i32 %conv3.i.i.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i)
  %tobool26.not.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %tobool26.not.i.i.i.i, label %cond.false.i.i.i.i.__rhashtable_lookup.exit.i.i.i_crit_edge, label %cond.false.i.i.i.i.for.inc.i.i.i.i_crit_edge

cond.false.i.i.i.i.for.inc.i.i.i.i_crit_edge:     ; preds = %cond.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i.i

cond.false.i.i.i.i.__rhashtable_lookup.exit.i.i.i_crit_edge: ; preds = %cond.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_lookup.exit.i.i.i

for.inc.i.i.i.i:                                  ; preds = %cond.false.i.i.i.i.for.inc.i.i.i.i_crit_edge, %cond.true.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %55 = ptrtoint ptr %he.0108.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %he.0108.i.i.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  %and.i.i.i.i.i104 = and i32 %57, 1
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i104, 0
  br i1 %tobool.i.not.i.i.i.i, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.do.cond34.i.i.i.i_crit_edge

for.inc.i.i.i.i.do.cond34.i.i.i.i_crit_edge:      ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond34.i.i.i.i

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i.i

do.cond34.i.i.i.i:                                ; preds = %for.inc.i.i.i.i.do.cond34.i.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.i.do.cond34.i.i.i.i_crit_edge
  %he.0.lcssa.i.i.i.i = phi ptr [ %44, %rht_ptr_rcu.exit.i.i.i.i.do.cond34.i.i.i.i_crit_edge ], [ %56, %for.inc.i.i.i.i.do.cond34.i.i.i.i_crit_edge ]
  %cmp.not.i.i.i.i = icmp eq ptr %he.0.lcssa.i.i.i.i, %40
  br i1 %cmp.not.i.i.i.i, label %do.end39.i.i.i.i, label %do.cond34.i.i.i.i.do.body16.i.i.i.i_crit_edge

do.cond34.i.i.i.i.do.body16.i.i.i.i_crit_edge:    ; preds = %do.cond34.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body16.i.i.i.i

do.end39.i.i.i.i:                                 ; preds = %do.cond34.i.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !438
  %future_tbl.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i.i, i32 0, i32 5
  %58 = ptrtoint ptr %future_tbl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %future_tbl.i.i.i.i, align 4
  %call47.i.i.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef nonnull %18) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i.i)
  %tobool48.not.i.i.i.i = icmp eq i32 %call47.i.i.i.i, 0
  br i1 %tobool48.not.i.i.i.i, label %lor.lhs.false49.i.i.i.i, label %do.end39.i.i.i.i.do.end60.i.i.i.i_crit_edge

do.end39.i.i.i.i.do.end60.i.i.i.i_crit_edge:      ; preds = %do.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end60.i.i.i.i

lor.lhs.false49.i.i.i.i:                          ; preds = %do.end39.i.i.i.i
  %call50.i.i.i.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i.i.i)
  %tobool51.not.i.i.i.i = icmp eq i32 %call50.i.i.i.i, 0
  br i1 %tobool51.not.i.i.i.i, label %land.lhs.true52.i.i.i.i, label %lor.lhs.false49.i.i.i.i.do.end60.i.i.i.i_crit_edge

lor.lhs.false49.i.i.i.i.do.end60.i.i.i.i_crit_edge: ; preds = %lor.lhs.false49.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end60.i.i.i.i

land.lhs.true52.i.i.i.i:                          ; preds = %lor.lhs.false49.i.i.i.i
  %call53.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i.i.i)
  %tobool54.not.i.i.i.i = icmp eq i32 %call53.i.i.i.i, 0
  br i1 %tobool54.not.i.i.i.i, label %land.lhs.true52.i.i.i.i.do.end60.i.i.i.i_crit_edge, label %land.lhs.true55.i.i.i.i

land.lhs.true52.i.i.i.i.do.end60.i.i.i.i_crit_edge: ; preds = %land.lhs.true52.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end60.i.i.i.i

land.lhs.true55.i.i.i.i:                          ; preds = %land.lhs.true52.i.i.i.i
  %.b9091.i.i.i.i = load i1, ptr @__rhashtable_lookup.__warned.83, align 1
  br i1 %.b9091.i.i.i.i, label %land.lhs.true55.i.i.i.i.do.end60.i.i.i.i_crit_edge, label %if.then57.i.i.i.i

land.lhs.true55.i.i.i.i.do.end60.i.i.i.i_crit_edge: ; preds = %land.lhs.true55.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end60.i.i.i.i

if.then57.i.i.i.i:                                ; preds = %land.lhs.true55.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_lookup.__warned.83, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.82, i32 noundef 614, ptr noundef nonnull @.str.39) #16
  br label %do.end60.i.i.i.i

do.end60.i.i.i.i:                                 ; preds = %if.then57.i.i.i.i, %land.lhs.true55.i.i.i.i.do.end60.i.i.i.i_crit_edge, %land.lhs.true52.i.i.i.i.do.end60.i.i.i.i_crit_edge, %lor.lhs.false49.i.i.i.i.do.end60.i.i.i.i_crit_edge, %do.end39.i.i.i.i.do.end60.i.i.i.i_crit_edge
  %tobool62.not.i.i.i.i = icmp eq ptr %59, null
  br i1 %tobool62.not.i.i.i.i, label %__rhashtable_lookup.exit.thread.i.i.i, label %do.end60.i.i.i.i.if.then.i.i.i.i.i.i_crit_edge, !prof !422

do.end60.i.i.i.i.if.then.i.i.i.i.i.i_crit_edge:   ; preds = %do.end60.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i.i.i.i

__rhashtable_lookup.exit.thread.i.i.i:            ; preds = %do.end60.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i.i.i) #16
  br label %rhashtable_lookup.exit.i.i

__rhashtable_lookup.exit.i.i.i:                   ; preds = %cond.false.i.i.i.i.__rhashtable_lookup.exit.i.i.i_crit_edge, %cond.true.i.i.i.i.__rhashtable_lookup.exit.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i.i.i) #16
  %tobool.not.i1.i.i = icmp eq ptr %he.0108.i.i.i.i, null
  br i1 %tobool.not.i1.i.i, label %__rhashtable_lookup.exit.i.i.i.rhashtable_lookup.exit.i.i_crit_edge, label %cond.true.i.i.i

__rhashtable_lookup.exit.i.i.i.rhashtable_lookup.exit.i.i_crit_edge: ; preds = %__rhashtable_lookup.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rhashtable_lookup.exit.i.i

cond.true.i.i.i:                                  ; preds = %__rhashtable_lookup.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %60 = ptrtoint ptr %head_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %head_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %61 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %he.0108.i.i.i.i, i32 %idx.neg.i.i.i.i
  br label %rhashtable_lookup.exit.i.i

rhashtable_lookup.exit.i.i:                       ; preds = %cond.true.i.i.i, %__rhashtable_lookup.exit.i.i.i.rhashtable_lookup.exit.i.i_crit_edge, %__rhashtable_lookup.exit.thread.i.i.i
  %cond.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %cond.true.i.i.i ], [ null, %__rhashtable_lookup.exit.i.i.i.rhashtable_lookup.exit.i.i_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i.i.i ]
  %call.i2.i.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i2.i.i, label %rhashtable_lookup.exit.i.i.rhashtable_lookup_fast.exit.i_crit_edge, label %land.lhs.true.i5.i.i

rhashtable_lookup.exit.i.i.rhashtable_lookup_fast.exit.i_crit_edge: ; preds = %rhashtable_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rhashtable_lookup_fast.exit.i

land.lhs.true.i5.i.i:                             ; preds = %rhashtable_lookup.exit.i.i
  %call1.i3.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i.i)
  %tobool.not.i4.i.i = icmp eq i32 %call1.i3.i.i, 0
  br i1 %tobool.not.i4.i.i, label %land.lhs.true.i5.i.i.rhashtable_lookup_fast.exit.i_crit_edge, label %land.lhs.true2.i7.i.i

land.lhs.true.i5.i.i.rhashtable_lookup_fast.exit.i_crit_edge: ; preds = %land.lhs.true.i5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rhashtable_lookup_fast.exit.i

land.lhs.true2.i7.i.i:                            ; preds = %land.lhs.true.i5.i.i
  %.b4.i6.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i.i, label %land.lhs.true2.i7.i.i.rhashtable_lookup_fast.exit.i_crit_edge, label %if.then.i8.i.i

land.lhs.true2.i7.i.i.rhashtable_lookup_fast.exit.i_crit_edge: ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rhashtable_lookup_fast.exit.i

if.then.i8.i.i:                                   ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 724, ptr noundef nonnull @.str.42) #16
  br label %rhashtable_lookup_fast.exit.i

rhashtable_lookup_fast.exit.i:                    ; preds = %if.then.i8.i.i, %land.lhs.true2.i7.i.i.rhashtable_lookup_fast.exit.i_crit_edge, %land.lhs.true.i5.i.i.rhashtable_lookup_fast.exit.i_crit_edge, %rhashtable_lookup.exit.i.i.rhashtable_lookup_fast.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !432
  %62 = call i32 @llvm.read_register.i32(metadata !412) #16
  %and.i.i.i.i.i9.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i9.i.i to ptr
  %preempt_count.i.i.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i.i10.i.i, align 4
  %sub.i.i.i.i.i = add i32 %65, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i10.i.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %tobool35.not.i = icmp eq ptr %cond.i.i.i, null
  br i1 %tobool35.not.i, label %rhashtable_lookup_fast.exit.i.for.inc.i_crit_edge, label %if.then36.i

rhashtable_lookup_fast.exit.i.for.inc.i_crit_edge: ; preds = %rhashtable_lookup_fast.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then36.i:                                      ; preds = %rhashtable_lookup_fast.exit.i
  %add.ptr37.i = getelementptr i8, ptr %out.029.i, i32 4
  %size.i = getelementptr inbounds %struct.aa_data, ptr %cond.i.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %add.ptr37.i, i32 %67
  %cmp40.i = icmp ugt ptr %add.ptr38.i, %add.ptr39.i
  br i1 %cmp40.i, label %if.then41.i, label %if.end42.i

if.then41.i:                                      ; preds = %if.then36.i
  %tobool.not.i.i = icmp eq ptr %call17.i, null
  br i1 %tobool.not.i.i, label %if.then41.i.query_data.exit_crit_edge, label %if.then.i.i105

if.then41.i.query_data.exit_crit_edge:            ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %query_data.exit

if.then.i.i105:                                   ; preds = %if.then41.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call17.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  call void @llvm.prefetch.p0(ptr nonnull %call17.i, i32 1, i32 3, i32 1) #16
  %68 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call17.i, ptr nonnull %call17.i, i32 1, ptr nonnull elementtype(i32) %call17.i) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i13.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.query_data.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.i.query_data.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %query_data.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %call17.i, i32 noundef 3) #16
  br label %query_data.exit

if.then.i.i13.i:                                  ; preds = %if.then.i.i105
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  call void @aa_label_kref(ptr noundef nonnull %call17.i) #16, !callees !426
  br label %query_data.exit

if.end42.i:                                       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #18
  %69 = call i32 @llvm.bswap.i32(i32 %67) #16
  %70 = ptrtoint ptr %out.029.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %69, ptr %out.029.i, align 1
  %data45.i = getelementptr inbounds %struct.aa_data, ptr %cond.i.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data45.i, align 4
  %73 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size.i, align 4
  %75 = call ptr @memcpy(ptr %add.ptr37.i, ptr %72, i32 %74)
  %76 = load i32, ptr %size.i, align 4
  %add.ptr48.i = getelementptr i8, ptr %add.ptr37.i, i32 %76
  %inc.i = add i32 %blocks.031.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end42.i, %rhashtable_lookup_fast.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %out.1.i = phi ptr [ %add.ptr48.i, %if.end42.i ], [ %out.029.i, %rhashtable_lookup_fast.exit.i.for.inc.i_crit_edge ], [ %out.029.i, %for.body.i.for.inc.i_crit_edge ]
  %blocks.1.i = phi i32 [ %inc.i, %if.end42.i ], [ %blocks.031.i, %rhashtable_lookup_fast.exit.i.for.inc.i_crit_edge ], [ %blocks.031.i, %for.body.i.for.inc.i_crit_edge ]
  %add.i = add i32 %i.sroa.0.030.i, 1
  %call51.i = call i32 @aa_label_next_confined(ptr noundef %call17.i, i32 noundef %add.i) #16
  %arrayidx.i = getelementptr %struct.aa_label, ptr %call17.i, i32 0, i32 8, i32 %call51.i
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i, align 4
  %tobool27.not.i = icmp eq ptr %78, null
  br i1 %tobool27.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end21.i.for.end.i_crit_edge
  %out.0.lcssa.i = phi ptr [ %add.ptr23.i, %if.end21.i.for.end.i_crit_edge ], [ %out.1.i, %for.inc.i.for.end.i_crit_edge ]
  %blocks.0.lcssa.i = phi i32 [ 0, %if.end21.i.for.end.i_crit_edge ], [ %blocks.1.i, %for.inc.i.for.end.i_crit_edge ]
  %tobool.not.i14.i = icmp eq ptr %call17.i, null
  br i1 %tobool.not.i14.i, label %for.end.i.aa_put_label.exit23.i_crit_edge, label %if.then.i18.i

for.end.i.aa_put_label.exit23.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_label.exit23.i

if.then.i18.i:                                    ; preds = %for.end.i
  %call.i.i.i.i.i.i.i15.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call17.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  call void @llvm.prefetch.p0(ptr nonnull %call17.i, i32 1, i32 3, i32 1) #16
  %79 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call17.i, ptr nonnull %call17.i, i32 1, ptr nonnull elementtype(i32) %call17.i) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i16.i = extractvalue { i32, i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i16.i)
  %cmp.i.i.i.i.i17.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i16.i, 1
  br i1 %cmp.i.i.i.i.i17.i, label %if.then.i.i22.i, label %if.end5.i.i.i.i.i20.i

if.end5.i.i.i.i.i20.i:                            ; preds = %if.then.i18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i16.i)
  %.not.i.i.i.i.i19.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i16.i, 0
  br i1 %.not.i.i.i.i.i19.i, label %if.end5.i.i.i.i.i20.i.aa_put_label.exit23.i_crit_edge, label %if.then10.i.i.i.i.i21.i, !prof !422

if.end5.i.i.i.i.i20.i.aa_put_label.exit23.i_crit_edge: ; preds = %if.end5.i.i.i.i.i20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_label.exit23.i

if.then10.i.i.i.i.i21.i:                          ; preds = %if.end5.i.i.i.i.i20.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %call17.i, i32 noundef 3) #16
  br label %aa_put_label.exit23.i

if.then.i.i22.i:                                  ; preds = %if.then.i18.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  call void @aa_label_kref(ptr noundef nonnull %call17.i) #16, !callees !426
  br label %aa_put_label.exit23.i

aa_put_label.exit23.i:                            ; preds = %if.then.i.i22.i, %if.then10.i.i.i.i.i21.i, %if.end5.i.i.i.i.i20.i.aa_put_label.exit23.i_crit_edge, %for.end.i.aa_put_label.exit23.i_crit_edge
  %sub.ptr.lhs.cast53.i = ptrtoint ptr %out.0.lcssa.i to i32
  %sub.ptr.rhs.cast54.i = ptrtoint ptr %data.i to i32
  %sub.ptr.sub55.i = sub i32 %sub.ptr.lhs.cast53.i, %sub.ptr.rhs.cast54.i
  %sub.i = add i32 %sub.ptr.sub55.i, -4
  %80 = call i32 @llvm.bswap.i32(i32 %sub.i) #16
  %81 = ptrtoint ptr %data.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %80, ptr %data.i, align 1
  %82 = call i32 @llvm.bswap.i32(i32 %blocks.0.lcssa.i) #16
  %83 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %82, ptr %add.ptr22.i, align 1
  br label %query_data.exit

query_data.exit:                                  ; preds = %aa_put_label.exit23.i, %if.then.i.i13.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.query_data.exit_crit_edge, %if.then41.i.query_data.exit_crit_edge, %if.then19.i, %if.end5.i.query_data.exit_crit_edge, %if.then49.query_data.exit_crit_edge
  %retval.0.i106 = phi i32 [ %11, %if.then19.i ], [ %sub.ptr.sub55.i, %aa_put_label.exit23.i ], [ -22, %if.then49.query_data.exit_crit_edge ], [ -22, %if.end5.i.query_data.exit_crit_edge ], [ -22, %if.then41.i.query_data.exit_crit_edge ], [ -22, %if.end5.i.i.i.i.i.i.query_data.exit_crit_edge ], [ -22, %if.then10.i.i.i.i.i.i ], [ -22, %if.then.i.i13.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i) #16
  br label %if.end61

if.end61:                                         ; preds = %query_data.exit, %if.then34, %if.then19, %if.then7
  %len.0 = phi i32 [ %retval.0.i106, %query_data.exit ], [ %call41, %if.then34 ], [ %call26, %if.then19 ], [ %call12, %if.then7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp62 = icmp slt i32 %len.0, 0
  br i1 %cmp62, label %if.end61.if.then.i_crit_edge, label %if.end64

if.end61.if.then.i_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i:                                        ; preds = %if.end61.if.then.i_crit_edge, %land.lhs.true44.if.then.i_crit_edge, %if.else42.if.then.i_crit_edge
  %len.0141 = phi i32 [ %len.0, %if.end61.if.then.i_crit_edge ], [ -22, %land.lhs.true44.if.then.i_crit_edge ], [ -22, %if.else42.if.then.i_crit_edge ]
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  call void @llvm.prefetch.p0(ptr nonnull %2, i32 1, i32 3, i32 1) #16
  %84 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i108, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %2, i32 noundef 3) #16
  br label %cleanup

if.then.i.i108:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  call void @free_pages(i32 noundef %call1.i, i32 noundef 0) #16
  br label %cleanup

if.end64:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 4088, i32 %len.0)
  %cmp.i110 = icmp ugt i32 %len.0, 4088
  br i1 %cmp.i110, label %do.end.i, label %if.end64.if.end.i113_crit_edge, !prof !427

if.end64.if.end.i113_crit_edge:                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i113

do.end.i:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 845, i32 noundef 9, ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.multi_transaction_set) #16
  br label %if.end.i113

if.end.i113:                                      ; preds = %do.end.i, %if.end64.if.end.i113_crit_edge
  %size.i111 = getelementptr inbounds %struct.multi_transaction, ptr %2, i32 0, i32 1
  %85 = ptrtoint ptr %size.i111 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %len.0, ptr %size.i111, align 4
  %f_lock.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %f_lock.i) #16
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %86 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %private_data.i, align 4
  store ptr %2, ptr %private_data.i, align 4
  call void @_raw_spin_unlock(ptr noundef %f_lock.i) #16
  %tobool.not.i.i112 = icmp eq ptr %87, null
  br i1 %tobool.not.i.i112, label %if.end.i113.cleanup_crit_edge, label %if.then.i.i117

if.end.i113.cleanup_crit_edge:                    ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i.i117:                                   ; preds = %if.end.i113
  %call.i.i.i.i.i.i.i.i114 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %87, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  call void @llvm.prefetch.p0(ptr nonnull %87, i32 1, i32 3, i32 1) #16
  %88 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %87, ptr nonnull %87, i32 1, ptr nonnull elementtype(i32) %87) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i115 = extractvalue { i32, i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i115)
  %cmp.i.i.i.i.i.i116 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i115, 1
  br i1 %cmp.i.i.i.i.i.i116, label %if.then.i.i.i121, label %if.end5.i.i.i.i.i.i119

if.end5.i.i.i.i.i.i119:                           ; preds = %if.then.i.i117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i115)
  %.not.i.i.i.i.i.i118 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i115, 0
  br i1 %.not.i.i.i.i.i.i118, label %if.end5.i.i.i.i.i.i119.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i120, !prof !422

if.end5.i.i.i.i.i.i119.cleanup_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i119
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i.i.i120:                         ; preds = %if.end5.i.i.i.i.i.i119
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %87, i32 noundef 3) #16
  br label %cleanup

if.then.i.i.i121:                                 ; preds = %if.then.i.i117
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  %89 = ptrtoint ptr %87 to i32
  call void @free_pages(i32 noundef %89, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i121, %if.then10.i.i.i.i.i.i120, %if.end5.i.i.i.i.i.i119.cleanup_crit_edge, %if.end.i113.cleanup_crit_edge, %if.then.i.i108, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then2 ], [ -29, %entry.cleanup_crit_edge ], [ %len.0141, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %len.0141, %if.then10.i.i.i.i.i ], [ %len.0141, %if.then.i.i108 ], [ %count, %if.end.i113.cleanup_crit_edge ], [ %count, %if.end5.i.i.i.i.i.i119.cleanup_crit_edge ], [ %count, %if.then10.i.i.i.i.i.i120 ], [ %count, %if.then.i.i.i121 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multi_transaction_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.put_multi_transaction.exit_crit_edge, label %if.then.i

entry.put_multi_transaction.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_multi_transaction.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.put_multi_transaction.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.put_multi_transaction.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_multi_transaction.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #16
  br label %put_multi_transaction.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  %3 = ptrtoint ptr %1 to i32
  tail call void @free_pages(i32 noundef %3, i32 noundef 0) #16
  br label %put_multi_transaction.exit

put_multi_transaction.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.put_multi_transaction.exit_crit_edge, %entry.put_multi_transaction.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @query_label(ptr noundef %buf, ptr noundef %query, i32 noundef %query_len, i1 noundef zeroext %view_only) unnamed_addr #0 align 64 {
entry:
  %perms = alloca %struct.aa_perms, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %perms) #16
  %call = tail call i32 @strnlen(ptr noundef %query, i32 noundef %query_len) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %query_len)
  %cmp = icmp eq i32 %call, %query_len
  %or.cond = or i1 %tobool1.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %query, i32 %call
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 1
  %0 = xor i32 %call, -1
  %sub5 = add i32 %0, %query_len
  %call6 = tail call fastcc ptr @begin_current_label_crit_section()
  %call7 = tail call ptr @aa_label_parse(ptr noundef %call6, ptr noundef %query, i32 noundef 3264, i1 noundef zeroext false, i1 noundef zeroext false) #16
  tail call fastcc void @end_current_label_crit_section(ptr noundef %call6)
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  %2 = call ptr @memcpy(ptr %perms, ptr @allperms, i32 44)
  br i1 %view_only, label %while.cond.preheader, label %for.cond52.preheader

for.cond52.preheader:                             ; preds = %if.end11
  %arrayidx552 = getelementptr %struct.aa_label, ptr %call7, i32 0, i32 8, i32 0
  %3 = ptrtoint ptr %arrayidx552 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx552, align 4
  %tobool56.not3 = icmp eq ptr %4, null
  br i1 %tobool56.not3, label %for.cond52.preheader.if.end62_crit_edge, label %for.cond52.preheader.for.body57_crit_edge

for.cond52.preheader.for.body57_crit_edge:        ; preds = %for.cond52.preheader
  br label %for.body57

for.cond52.preheader.if.end62_crit_edge:          ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

while.cond.preheader:                             ; preds = %if.end11
  %vec = getelementptr %struct.aa_label, ptr %call7, i32 0, i32 8
  %5 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vec, align 4
  %tobool14.not6 = icmp eq ptr %6, null
  br i1 %tobool14.not6, label %while.cond.preheader.while.end_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %size = getelementptr inbounds %struct.aa_label, ptr %call7, i32 0, i32 7
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %sub19 = add i32 %8, -1
  %arrayidx20 = getelementptr ptr, ptr %vec, i32 %sub19
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx20, align 4
  %ns21 = getelementptr inbounds %struct.aa_profile, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ns21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ns21, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %13 = phi ptr [ %6, %land.rhs.lr.ph ], [ %17, %while.body.land.rhs_crit_edge ]
  %___i.07 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %while.body.land.rhs_crit_edge ]
  %ns = getelementptr inbounds %struct.aa_profile, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ns, align 4
  %cmp22.not = icmp eq ptr %15, %12
  br i1 %cmp22.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add i32 %___i.07, 1
  %arrayidx = getelementptr %struct.aa_label, ptr %call7, i32 0, i32 8, i32 %inc
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %___i.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ], [ %___i.07, %land.rhs.while.end_crit_edge ]
  %arrayidx2611 = getelementptr %struct.aa_label, ptr %call7, i32 0, i32 8, i32 %___i.0.lcssa
  %18 = ptrtoint ptr %arrayidx2611 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx2611, align 4
  %tobool27.not12 = icmp eq ptr %19, null
  br i1 %tobool27.not12, label %while.end.if.end62_crit_edge, label %for.body.lr.ph

while.end.if.end62_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

for.body.lr.ph:                                   ; preds = %while.end
  %size40 = getelementptr inbounds %struct.aa_label, ptr %call7, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %while.end48.for.body_crit_edge, %for.body.lr.ph
  %20 = phi ptr [ %19, %for.body.lr.ph ], [ %.pr, %while.end48.for.body_crit_edge ]
  %i.sroa.0.013 = phi i32 [ %___i.0.lcssa, %for.body.lr.ph ], [ %___i28.0, %while.end48.for.body_crit_edge ]
  call fastcc void @profile_query_cb(ptr noundef nonnull %20, ptr noundef nonnull %perms, ptr noundef %add.ptr4, i32 noundef %sub5)
  br label %while.cond30

while.cond30:                                     ; preds = %land.rhs34.while.cond30_crit_edge, %for.body
  %___i28.0.in = phi i32 [ %i.sroa.0.013, %for.body ], [ %___i28.0, %land.rhs34.while.cond30_crit_edge ]
  %___i28.0 = add i32 %___i28.0.in, 1
  %arrayidx32 = getelementptr %struct.aa_label, ptr %call7, i32 0, i32 8, i32 %___i28.0
  %21 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx32, align 4
  %tobool33.not = icmp eq ptr %22, null
  br i1 %tobool33.not, label %while.cond30.if.end62_crit_edge, label %land.rhs34

while.cond30.if.end62_crit_edge:                  ; preds = %while.cond30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

land.rhs34:                                       ; preds = %while.cond30
  %ns37 = getelementptr inbounds %struct.aa_profile, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ns37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ns37, align 4
  %25 = ptrtoint ptr %size40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size40, align 4
  %sub41 = add i32 %26, -1
  %arrayidx42 = getelementptr ptr, ptr %vec, i32 %sub41
  %27 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx42, align 4
  %ns43 = getelementptr inbounds %struct.aa_profile, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %ns43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ns43, align 4
  %cmp44.not = icmp eq ptr %24, %30
  br i1 %cmp44.not, label %while.end48, label %land.rhs34.while.cond30_crit_edge

land.rhs34.while.cond30_crit_edge:                ; preds = %land.rhs34
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond30

while.end48:                                      ; preds = %land.rhs34
  %31 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load ptr, ptr %arrayidx32, align 4
  %tobool27.not = icmp eq ptr %.pr, null
  br i1 %tobool27.not, label %while.end48.if.end62_crit_edge, label %while.end48.for.body_crit_edge

while.end48.for.body_crit_edge:                   ; preds = %while.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

while.end48.if.end62_crit_edge:                   ; preds = %while.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %for.cond52.preheader.for.body57_crit_edge
  %32 = phi ptr [ %34, %for.body57.for.body57_crit_edge ], [ %4, %for.cond52.preheader.for.body57_crit_edge ]
  %i.sroa.0.14 = phi i32 [ %inc60, %for.body57.for.body57_crit_edge ], [ 0, %for.cond52.preheader.for.body57_crit_edge ]
  call fastcc void @profile_query_cb(ptr noundef nonnull %32, ptr noundef nonnull %perms, ptr noundef %add.ptr4, i32 noundef %sub5)
  %inc60 = add i32 %i.sroa.0.14, 1
  %arrayidx55 = getelementptr %struct.aa_label, ptr %call7, i32 0, i32 8, i32 %inc60
  %33 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx55, align 4
  %tobool56.not = icmp eq ptr %34, null
  br i1 %tobool56.not, label %for.body57.if.end62_crit_edge, label %for.body57.for.body57_crit_edge

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body57

for.body57.if.end62_crit_edge:                    ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

if.end62:                                         ; preds = %for.body57.if.end62_crit_edge, %while.end48.if.end62_crit_edge, %while.cond30.if.end62_crit_edge, %while.end.if.end62_crit_edge, %for.cond52.preheader.if.end62_crit_edge
  %tobool.not.i = icmp eq ptr %call7, null
  br i1 %tobool.not.i, label %if.end62.aa_put_label.exit_crit_edge, label %if.then.i

if.end62.aa_put_label.exit_crit_edge:             ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %if.end62
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  call void @llvm.prefetch.p0(ptr nonnull %call7, i32 1, i32 3, i32 1) #16
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7, ptr nonnull %call7, i32 1, ptr nonnull elementtype(i32) %call7) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %call7, i32 noundef 3) #16
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  call void @aa_label_kref(ptr noundef nonnull %call7) #16, !callees !426
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %if.end62.aa_put_label.exit_crit_edge
  %36 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %perms, align 4
  %deny = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 2
  %38 = ptrtoint ptr %deny to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %deny, align 4
  %audit = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 1
  %40 = ptrtoint ptr %audit to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %audit, align 4
  %quiet = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 3
  %42 = ptrtoint ptr %quiet to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %quiet, align 4
  %call63 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4088, ptr noundef nonnull @.str.81, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43) #16
  br label %cleanup

cleanup:                                          ; preds = %aa_put_label.exit, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then9 ], [ %call63, %aa_put_label.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_label_parse(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @profile_query_cb(ptr noundef %profile, ptr noundef %perms, ptr noundef %match_str, i32 noundef %match_len) unnamed_addr #0 align 64 {
entry:
  %class.addr.i = alloca i8, align 1
  %tmp = alloca %struct.aa_perms, align 4
  %cond = alloca %struct.path_cond, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp) #16
  %0 = call ptr @memset(ptr %tmp, i32 0, i32 44)
  %mode = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 8
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %file = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13
  %dfa1 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %dfa1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dfa1, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %match_str to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %match_str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp2 = icmp eq i8 %6, 2
  br i1 %cmp2, label %if.then4, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true
  %7 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %file, align 4
  %add.ptr = getelementptr i8, ptr %match_str, i32 1
  %sub = add i32 %match_len, -1
  %call = tail call i32 @aa_dfa_match_len(ptr noundef nonnull %4, i32 noundef %8, ptr noundef %add.ptr, i32 noundef %sub) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then4.if.end28_crit_edge, label %if.then9

if.then4.if.end28_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then9:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cond) #16
  %9 = ptrtoint ptr %cond to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %cond, align 8
  call void @aa_compute_fperms(ptr nonnull sret(%struct.aa_perms) align 4 %tmp, ptr noundef nonnull %4, i32 noundef %call, ptr noundef nonnull %cond) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cond) #16
  br label %if.end28

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %policy = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 12
  %10 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %policy, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.else.if.end28_crit_edge, label %if.then14

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then14:                                        ; preds = %if.else
  %12 = ptrtoint ptr %match_str to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %match_str, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %class.addr.i)
  %14 = ptrtoint ptr %class.addr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %class.addr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %13)
  %cmp.i = icmp ult i8 %13, 17
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i = zext i8 %13 to i32
  %arrayidx.i = getelementptr %struct.aa_profile, ptr %profile, i32 0, i32 12, i32 1, i32 %conv.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  br label %PROFILE_MEDIATES.exit

if.else.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  %start4.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 12, i32 1
  %17 = ptrtoint ptr %start4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start4.i, align 4
  %call.i = call i32 @aa_dfa_match_len(ptr noundef nonnull %11, i32 noundef %18, ptr noundef nonnull %class.addr.i, i32 noundef 1) #16
  br label %PROFILE_MEDIATES.exit

PROFILE_MEDIATES.exit:                            ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %16, %if.then.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %class.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool16.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool16.not, label %PROFILE_MEDIATES.exit.cleanup_crit_edge, label %if.end18

PROFILE_MEDIATES.exit.cleanup_crit_edge:          ; preds = %PROFILE_MEDIATES.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end18:                                         ; preds = %PROFILE_MEDIATES.exit
  %19 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %policy, align 4
  %start22 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 12, i32 1
  %21 = ptrtoint ptr %start22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %start22, align 4
  %call23 = call i32 @aa_dfa_match_len(ptr noundef %20, i32 noundef %22, ptr noundef %match_str, i32 noundef %match_len) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end18.if.end28_crit_edge, label %if.then25

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  call void @aa_compute_perms(ptr noundef %20, i32 noundef %call23, ptr noundef nonnull %tmp) #16
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end18.if.end28_crit_edge, %if.else.if.end28_crit_edge, %if.then9, %if.then4.if.end28_crit_edge
  call void @aa_apply_modes_to_perms(ptr noundef %profile, ptr noundef nonnull %tmp) #16
  call void @aa_perms_accum_raw(ptr noundef %perms, ptr noundef nonnull %tmp) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %PROFILE_MEDIATES.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_dfa_match_len(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_compute_fperms(ptr sret(%struct.aa_perms) align 4, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_compute_perms(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_apply_modes_to_perms(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_perms_accum_raw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_label_next_confined(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_ns_stacked_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @seq_ns_stacked_show, ptr noundef %1) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_ns_stacked_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @begin_current_label_crit_section()
  %size = getelementptr inbounds %struct.aa_label, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  %cond = select i1 %cmp, ptr @.str.26, ptr @.str.27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond) #16
  tail call fastcc void @end_current_label_crit_section(ptr noundef %call)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_ns_nsstacked_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @seq_ns_nsstacked_show, ptr noundef %1) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_ns_nsstacked_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @begin_current_label_crit_section()
  %size = getelementptr inbounds %struct.aa_label, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

for.cond.preheader:                               ; preds = %entry
  %arrayidx19 = getelementptr %struct.aa_label, ptr %call, i32 0, i32 8, i32 0
  %2 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx19, align 4
  %tobool.not20 = icmp eq ptr %3, null
  br i1 %tobool.not20, label %for.cond.preheader.if.end11_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end11_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = add nsw i32 %1, -1
  %arrayidx5 = getelementptr %struct.aa_label, ptr %call, i32 0, i32 8, i32 %sub
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  %ns6 = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ns6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns6, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc10 = add i32 %it.sroa.0.021, 1
  %arrayidx = getelementptr %struct.aa_label, ptr %call, i32 0, i32 8, i32 %inc10
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.cond.if.end11_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.cond.if.end11_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %10 = phi ptr [ %3, %for.body.lr.ph ], [ %9, %for.cond.for.body_crit_edge ]
  %it.sroa.0.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc10, %for.cond.for.body_crit_edge ]
  %ns = getelementptr inbounds %struct.aa_profile, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ns, align 4
  %cmp7.not = icmp eq ptr %12, %7
  br i1 %cmp7.not, label %for.cond, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end11:                                         ; preds = %for.body.if.end11_crit_edge, %for.cond.if.end11_crit_edge, %for.cond.preheader.if.end11_crit_edge, %entry.if.end11_crit_edge
  %cmp12 = phi ptr [ @.str.27, %entry.if.end11_crit_edge ], [ @.str.27, %for.cond.preheader.if.end11_crit_edge ], [ @.str.27, %for.cond.if.end11_crit_edge ], [ @.str.26, %for.body.if.end11_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, ptr noundef nonnull %cmp12) #16
  tail call fastcc void @end_current_label_crit_section(ptr noundef %call)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_ns_level_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @seq_ns_level_show, ptr noundef %1) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_ns_level_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @begin_current_label_crit_section()
  %vec = getelementptr inbounds %struct.aa_label, ptr %call, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %sub = add i32 %1, -1
  %arrayidx1 = getelementptr ptr, ptr %vec, i32 %sub
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns, align 4
  %level = getelementptr inbounds %struct.aa_ns, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %level, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.85, i32 noundef %7) #16
  tail call fastcc void @end_current_label_crit_section(ptr noundef %call)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_ns_name_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @seq_ns_name_show, ptr noundef %1) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_ns_name_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @begin_current_label_crit_section()
  %vec = getelementptr inbounds %struct.aa_label, ptr %call, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %sub = add i32 %1, -1
  %arrayidx1 = getelementptr ptr, ptr %vec, i32 %sub
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, ptr noundef %7) #16
  tail call fastcc void @end_current_label_crit_section(ptr noundef %call)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @profiles_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @aa_current_policy_view_capable(ptr noundef null) #16
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @aa_sfs_profiles_op) #16
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -13, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @profiles_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_release(ptr noundef %inode, ptr noundef %file) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @p_start(ptr nocapture noundef writeonly %f, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @aa_get_current_ns()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %private, align 8
  %lock = getelementptr inbounds %struct.aa_ns, ptr %call, i32 0, i32 2
  %level = getelementptr inbounds %struct.aa_ns, ptr %call, i32 0, i32 8
  %3 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %level, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef %4) #16
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.end.i.thread, label %land.rhs.i, !prof !427

if.end.i.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2103, i32 noundef 9, ptr noundef nonnull @.str.86, ptr noundef nonnull @__func__.__first_profile) #16
  br label %for.end

land.rhs.i:                                       ; preds = %entry
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #16
  br i1 %call.i, label %land.rhs.i.for.body.i.preheader_crit_edge, label %do.end44.i, !prof !422

land.rhs.i.for.body.i.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.preheader

do.end44.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2104, i32 noundef 9, ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.__first_profile) #16
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end44.i, %land.rhs.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %ns.addr.078.i = phi ptr [ %call68.i, %for.inc.i.for.body.i_crit_edge ], [ %call, %for.body.i.preheader ]
  %profiles.i = getelementptr inbounds %struct.aa_policy, ptr %ns.addr.078.i, i32 0, i32 3
  %5 = ptrtoint ptr %profiles.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %profiles.i, align 4
  %cmp.i.not.i = icmp eq ptr %6, %profiles.i
  br i1 %cmp.i.not.i, label %for.inc.i, label %__first_profile.exit

for.inc.i:                                        ; preds = %for.body.i
  %call68.i = tail call fastcc ptr @__next_ns(ptr noundef nonnull %call, ptr noundef nonnull %ns.addr.078.i) #16
  %tobool60.not.i = icmp eq ptr %call68.i, null
  br i1 %tobool60.not.i, label %for.inc.i.for.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.for.end_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

__first_profile.exit:                             ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %6, i32 -8
  %tobool.not12 = icmp ne ptr %add.ptr.i, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp13 = icmp sgt i64 %1, 0
  %or.cond14 = select i1 %tobool.not12, i1 %cmp13, i1 false
  br i1 %or.cond14, label %__first_profile.exit.for.body_crit_edge, label %__first_profile.exit.for.end_crit_edge

__first_profile.exit.for.end_crit_edge:           ; preds = %__first_profile.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

__first_profile.exit.for.body_crit_edge:          ; preds = %__first_profile.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %__first_profile.exit.for.body_crit_edge
  %l.016 = phi i64 [ %dec, %for.body.for.body_crit_edge ], [ %1, %__first_profile.exit.for.body_crit_edge ]
  %profile.015 = phi ptr [ %call2, %for.body.for.body_crit_edge ], [ %add.ptr.i, %__first_profile.exit.for.body_crit_edge ]
  %call2 = tail call fastcc ptr @next_profile(ptr noundef nonnull %call, ptr noundef nonnull %profile.015)
  %dec = add nsw i64 %l.016, -1
  %tobool.not = icmp ne ptr %call2, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %l.016)
  %cmp = icmp ugt i64 %l.016, 1
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %__first_profile.exit.for.end_crit_edge, %for.inc.i.for.end_crit_edge, %if.end.i.thread
  %profile.0.lcssa = phi ptr [ %add.ptr.i, %__first_profile.exit.for.end_crit_edge ], [ null, %if.end.i.thread ], [ %call2, %for.body.for.end_crit_edge ], [ null, %for.inc.i.for.end_crit_edge ]
  ret ptr %profile.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p_stop(ptr nocapture noundef readonly %f, ptr noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %ns1 = getelementptr inbounds %struct.aa_profile, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %ns1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %ns.010 = load ptr, ptr %ns1, align 4
  %tobool2.not11 = icmp eq ptr %ns.010, null
  %cmp.not12 = icmp eq ptr %ns.010, %1
  %or.cond13 = select i1 %tobool2.not11, i1 true, i1 %cmp.not12
  br i1 %or.cond13, label %if.then.if.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %ns.014 = phi ptr [ %ns.0, %for.body.for.body_crit_edge ], [ %ns.010, %if.then.for.body_crit_edge ]
  %lock = getelementptr inbounds %struct.aa_ns, ptr %ns.014, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock) #16
  %parent = getelementptr inbounds %struct.aa_ns, ptr %ns.014, i32 0, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %ns.0 = load ptr, ptr %parent, align 4
  %tobool2.not = icmp eq ptr %ns.0, null
  %cmp.not = icmp eq ptr %ns.0, %1
  %or.cond = select i1 %tobool2.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %lock3 = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock3) #16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.aa_put_ns.exit_crit_edge, label %if.then.i

if.end.aa_put_ns.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then.i:                                        ; preds = %if.end
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.i.aa_put_ns.exit_crit_edge, label %if.then.i.i

if.then.i.aa_put_ns.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef 3) #16
  br label %aa_put_ns.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @aa_label_kref(ptr noundef %label.i.i) #16, !callees !426
  br label %aa_put_ns.exit

aa_put_ns.exit:                                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, %if.then.i.aa_put_ns.exit_crit_edge, %if.end.aa_put_ns.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @p_next(ptr nocapture noundef readonly %f, ptr noundef %p, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %pos, align 8
  %call = tail call fastcc ptr @next_profile(ptr noundef %1, ptr noundef %p)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_show_profile(ptr noundef %f, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %label = getelementptr inbounds %struct.aa_profile, ptr %p, i32 0, i32 25
  tail call void @aa_label_seq_xprint(ptr noundef %f, ptr noundef %1, ptr noundef %label, i32 noundef 3, i32 noundef 3264) #16
  tail call void @seq_putc(ptr noundef %f, i8 noundef zeroext 10) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @next_profile(ptr noundef %root, ptr noundef %profile) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ns1.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 2
  %0 = ptrtoint ptr %ns1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns1.i, align 4
  %lock.i = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 2
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock.i) #16
  br i1 %call.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !422

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2128, i32 noundef 9, ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.__next_profile) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %profiles.i = getelementptr inbounds %struct.aa_policy, ptr %profile, i32 0, i32 3
  %2 = ptrtoint ptr %profiles.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %profiles.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %profiles.i
  br i1 %cmp.i.not.i, label %do.body32.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %3, i32 -8
  br label %__next_profile.exit

do.body32.i:                                      ; preds = %if.end.i
  %4 = ptrtoint ptr %ns1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns1.i, align 4
  %lock34.i = getelementptr inbounds %struct.aa_ns, ptr %5, i32 0, i32 2
  %call35.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock34.i) #16
  br i1 %call35.i, label %do.body32.i.do.end43.i_crit_edge, label %land.lhs.true.i

do.body32.i.do.end43.i_crit_edge:                 ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end43.i

land.lhs.true.i:                                  ; preds = %do.body32.i
  %call36.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %land.lhs.true.i.do.end43.i_crit_edge, label %land.lhs.true38.i

land.lhs.true.i.do.end43.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end43.i

land.lhs.true38.i:                                ; preds = %land.lhs.true.i
  %.b105.i = load i1, ptr @__next_profile.__warned, align 1
  br i1 %.b105.i, label %land.lhs.true38.i.do.end43.i_crit_edge, label %if.then40.i

land.lhs.true38.i.do.end43.i_crit_edge:           ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end43.i

if.then40.i:                                      ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__next_profile.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2137, ptr noundef nonnull @.str.35) #16
  br label %do.end43.i

do.end43.i:                                       ; preds = %if.then40.i, %land.lhs.true38.i.do.end43.i_crit_edge, %land.lhs.true.i.do.end43.i_crit_edge, %do.body32.i.do.end43.i_crit_edge
  %parent.0.in107.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 1
  %6 = ptrtoint ptr %parent.0.in107.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %parent.0108.i = load ptr, ptr %parent.0.in107.i, align 4
  %tobool46.not109.i = icmp eq ptr %parent.0108.i, null
  br i1 %tobool46.not109.i, label %do.end43.i.while.end.i_crit_edge, label %do.end43.i.while.body.i_crit_edge

do.end43.i.while.body.i_crit_edge:                ; preds = %do.end43.i
  br label %while.body.i

do.end43.i.while.end.i_crit_edge:                 ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i:                                     ; preds = %do.end70.i.while.body.i_crit_edge, %do.end43.i.while.body.i_crit_edge
  %parent.0111.i = phi ptr [ %parent.0.i, %do.end70.i.while.body.i_crit_edge ], [ %parent.0108.i, %do.end43.i.while.body.i_crit_edge ]
  %p.addr.0110.i = phi ptr [ %parent.0111.i, %do.end70.i.while.body.i_crit_edge ], [ %profile, %do.end43.i.while.body.i_crit_edge ]
  %list.i = getelementptr inbounds %struct.aa_policy, ptr %p.addr.0110.i, i32 0, i32 2
  %7 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list.i, align 4
  %profiles55.i = getelementptr inbounds %struct.aa_policy, ptr %parent.0111.i, i32 0, i32 3
  %cmp.i = icmp eq ptr %8, %profiles55.i
  br i1 %cmp.i, label %if.end57.i, label %if.then56.i

if.then56.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr51.i = getelementptr i8, ptr %8, i32 -8
  br label %__next_profile.exit

if.end57.i:                                       ; preds = %while.body.i
  %ns59.i = getelementptr inbounds %struct.aa_profile, ptr %parent.0111.i, i32 0, i32 2
  %9 = ptrtoint ptr %ns59.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ns59.i, align 4
  %lock60.i = getelementptr inbounds %struct.aa_ns, ptr %10, i32 0, i32 2
  %call61.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock60.i) #16
  br i1 %call61.i, label %if.end57.i.do.end70.i_crit_edge, label %land.lhs.true62.i

if.end57.i.do.end70.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end70.i

land.lhs.true62.i:                                ; preds = %if.end57.i
  %call63.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %land.lhs.true62.i.do.end70.i_crit_edge, label %land.lhs.true65.i

land.lhs.true62.i.do.end70.i_crit_edge:           ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end70.i

land.lhs.true65.i:                                ; preds = %land.lhs.true62.i
  %.b103104.i = load i1, ptr @__next_profile.__warned.90, align 1
  br i1 %.b103104.i, label %land.lhs.true65.i.do.end70.i_crit_edge, label %if.then67.i

land.lhs.true65.i.do.end70.i_crit_edge:           ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end70.i

if.then67.i:                                      ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__next_profile.__warned.90, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2144, ptr noundef nonnull @.str.35) #16
  br label %do.end70.i

do.end70.i:                                       ; preds = %if.then67.i, %land.lhs.true65.i.do.end70.i_crit_edge, %land.lhs.true62.i.do.end70.i_crit_edge, %if.end57.i.do.end70.i_crit_edge
  %parent.0.in.i = getelementptr inbounds %struct.aa_profile, ptr %parent.0111.i, i32 0, i32 1
  %11 = ptrtoint ptr %parent.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %parent.0.i = load ptr, ptr %parent.0.in.i, align 4
  %tobool46.not.i = icmp eq ptr %parent.0.i, null
  br i1 %tobool46.not.i, label %do.end70.i.while.end.i_crit_edge, label %do.end70.i.while.body.i_crit_edge

do.end70.i.while.body.i_crit_edge:                ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

do.end70.i.while.end.i_crit_edge:                 ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %do.end70.i.while.end.i_crit_edge, %do.end43.i.while.end.i_crit_edge
  %p.addr.0.lcssa.i = phi ptr [ %profile, %do.end43.i.while.end.i_crit_edge ], [ %parent.0111.i, %do.end70.i.while.end.i_crit_edge ]
  %list75.i = getelementptr inbounds %struct.aa_policy, ptr %p.addr.0.lcssa.i, i32 0, i32 2
  %12 = ptrtoint ptr %list75.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list75.i, align 4
  %profiles82.i = getelementptr inbounds %struct.aa_policy, ptr %1, i32 0, i32 3
  %cmp83.i = icmp eq ptr %13, %profiles82.i
  %add.ptr78.i = getelementptr i8, ptr %13, i32 -8
  br i1 %cmp83.i, label %while.end.i.if.end_crit_edge, label %while.end.i.__next_profile.exit_crit_edge

while.end.i.__next_profile.exit_crit_edge:        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__next_profile.exit

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

__next_profile.exit:                              ; preds = %while.end.i.__next_profile.exit_crit_edge, %if.then56.i, %if.then27.i
  %retval.0.i = phi ptr [ %add.ptr51.i, %if.then56.i ], [ %add.ptr.i, %if.then27.i ], [ %add.ptr78.i, %while.end.i.__next_profile.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__next_profile.exit.if.end_crit_edge, label %__next_profile.exit.cleanup_crit_edge

__next_profile.exit.cleanup_crit_edge:            ; preds = %__next_profile.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

__next_profile.exit.if.end_crit_edge:             ; preds = %__next_profile.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %__next_profile.exit.if.end_crit_edge, %while.end.i.if.end_crit_edge
  %14 = ptrtoint ptr %ns1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ns1.i, align 4
  %call1 = tail call fastcc ptr @__next_ns(ptr noundef %root, ptr noundef %15)
  %tobool.not.i = icmp eq ptr %root, null
  br i1 %tobool.not.i, label %do.end.i6, label %if.end.if.end.i7_crit_edge, !prof !427

if.end.if.end.i7_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i7

do.end.i6:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2103, i32 noundef 9, ptr noundef nonnull @.str.86, ptr noundef nonnull @__func__.__first_profile) #16
  br label %if.end.i7

if.end.i7:                                        ; preds = %do.end.i6, %if.end.if.end.i7_crit_edge
  %cond.i = icmp eq ptr %call1, null
  br i1 %cond.i, label %if.end.i7.cleanup_crit_edge, label %land.rhs.i

if.end.i7.cleanup_crit_edge:                      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.rhs.i:                                       ; preds = %if.end.i7
  %lock.i8 = getelementptr inbounds %struct.aa_ns, ptr %call1, i32 0, i32 2
  %call.i9 = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock.i8) #16
  br i1 %call.i9, label %land.rhs.i.for.body.i.preheader_crit_edge, label %do.end44.i, !prof !422

land.rhs.i.for.body.i.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.preheader

do.end44.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2104, i32 noundef 9, ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.__first_profile) #16
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end44.i, %land.rhs.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %ns.addr.078.i = phi ptr [ %call68.i, %for.inc.i.for.body.i_crit_edge ], [ %call1, %for.body.i.preheader ]
  %profiles.i10 = getelementptr inbounds %struct.aa_policy, ptr %ns.addr.078.i, i32 0, i32 3
  %16 = ptrtoint ptr %profiles.i10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %profiles.i10, align 4
  %cmp.i.not.i11 = icmp eq ptr %17, %profiles.i10
  br i1 %cmp.i.not.i11, label %for.inc.i, label %if.then63.i

if.then63.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i12 = getelementptr i8, ptr %17, i32 -8
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %call68.i = tail call fastcc ptr @__next_ns(ptr noundef %root, ptr noundef nonnull %ns.addr.078.i) #16
  %tobool60.not.i = icmp eq ptr %call68.i, null
  br i1 %tobool60.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.then63.i, %if.end.i7.cleanup_crit_edge, %__next_profile.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %__next_profile.exit.cleanup_crit_edge ], [ %add.ptr.i12, %if.then63.i ], [ null, %if.end.i7.cleanup_crit_edge ], [ null, %for.inc.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__next_ns(ptr noundef readnone %root, ptr noundef %ns) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %root, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !427

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2065, i32 noundef 9, ptr noundef nonnull @.str.86, ptr noundef nonnull @__func__.__next_ns) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %ns, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !427

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2066, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.__next_ns) #16
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %cmp.not = icmp eq ptr %ns, %root
  br i1 %cmp.not, label %if.end50.if.end86_crit_edge, label %land.rhs

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

land.rhs:                                         ; preds = %if.end50
  %parent62 = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 1
  %0 = ptrtoint ptr %parent62 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent62, align 4
  %lock = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #16
  br i1 %call, label %land.rhs.if.end86_crit_edge, label %do.end80, !prof !422

land.rhs.if.end86_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

do.end80:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2067, i32 noundef 9, ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.__next_ns) #16
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %land.rhs.if.end86_crit_edge, %if.end50.if.end86_crit_edge
  %sub_ns = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 5
  %2 = ptrtoint ptr %sub_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %sub_ns, align 4
  %cmp.i.not = icmp eq ptr %3, %sub_ns
  br i1 %cmp.i.not, label %if.end86.while.cond_crit_edge, label %if.end86.cleanup.sink.split_crit_edge

if.end86.cleanup.sink.split_crit_edge:            ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end86.while.cond_crit_edge:                    ; preds = %if.end86
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end86.while.cond_crit_edge
  %ns.addr.0 = phi ptr [ %parent.0, %while.body.while.cond_crit_edge ], [ %ns, %if.end86.while.cond_crit_edge ]
  %cmp105.not = icmp eq ptr %ns.addr.0, %root
  br i1 %cmp105.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %parent.0.in = getelementptr inbounds %struct.aa_ns, ptr %ns.addr.0, i32 0, i32 1
  %4 = ptrtoint ptr %parent.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %parent.0 = load ptr, ptr %parent.0.in, align 4
  %lock106 = getelementptr inbounds %struct.aa_ns, ptr %ns.addr.0, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock106) #16
  %list = getelementptr inbounds %struct.aa_policy, ptr %ns.addr.0, i32 0, i32 2
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list, align 4
  %sub_ns113 = getelementptr inbounds %struct.aa_ns, ptr %parent.0, i32 0, i32 5
  %cmp114 = icmp eq ptr %6, %sub_ns113
  br i1 %cmp114, label %while.body.while.cond_crit_edge, label %while.body.cleanup.sink.split_crit_edge

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

cleanup.sink.split:                               ; preds = %while.body.cleanup.sink.split_crit_edge, %if.end86.cleanup.sink.split_crit_edge
  %.lcssa.sink143 = phi ptr [ %3, %if.end86.cleanup.sink.split_crit_edge ], [ %6, %while.body.cleanup.sink.split_crit_edge ]
  %add.ptr110 = getelementptr i8, ptr %.lcssa.sink143, i32 -8
  %lock116 = getelementptr i8, ptr %.lcssa.sink143, i32 20
  %level117 = getelementptr i8, ptr %.lcssa.sink143, i32 148
  %7 = ptrtoint ptr %level117 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level117, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock116, i32 noundef %8) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr110, %cleanup.sink.split ], [ null, %while.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_seq_xprint(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @entry_create_dir(ptr nocapture noundef %fs_dir, ptr noundef %parent) unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_dir, align 4
  %call = tail call ptr @securityfs_create_dir(ptr noundef %1, ptr noundef %parent) #16
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.aa_sfs_entry, ptr %fs_dir, i32 0, i32 1
  %3 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %dentry, align 4
  %v = getelementptr inbounds %struct.aa_sfs_entry, ptr %fs_dir, i32 0, i32 4
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v, align 4
  %tobool.not29 = icmp eq ptr %5, null
  br i1 %tobool.not29, label %if.end.cleanup_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond:                                         ; preds = %if.end10
  %incdec.ptr = getelementptr %struct.aa_sfs_entry, ptr %fs_file.030, i32 1
  %tobool.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool.not, label %for.cond.cleanup_crit_edge, label %for.cond.land.rhs_crit_edge

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.rhs:                                         ; preds = %for.cond.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %fs_file.030 = phi ptr [ %incdec.ptr, %for.cond.land.rhs_crit_edge ], [ %5, %if.end.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %fs_file.030 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_file.030, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %land.rhs.cleanup_crit_edge, label %for.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %land.rhs
  %v_type = getelementptr inbounds %struct.aa_sfs_entry, ptr %fs_file.030, i32 0, i32 3
  %8 = ptrtoint ptr %v_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %v_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp = icmp eq i32 %9, 4
  %10 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry, align 4
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = tail call fastcc i32 @entry_create_dir(ptr noundef nonnull %fs_file.030, ptr noundef %11) #22
  br label %if.end10

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %call9 = tail call fastcc i32 @entry_create_file(ptr noundef nonnull %fs_file.030, ptr noundef %11) #22
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %error.0 = phi i32 [ %call7, %if.then5 ], [ %call9, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool11.not = icmp eq i32 %error.0, 0
  br i1 %tobool11.not, label %for.cond, label %failed

failed:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @entry_remove_dir(ptr noundef %fs_dir) #22
  br label %cleanup

cleanup:                                          ; preds = %failed, %land.rhs.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %error.0, %failed ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @securityfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @securityfs_create_symlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_info_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @securityfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @entry_create_file(ptr noundef %fs_file, ptr noundef %parent) unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fs_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_file, align 4
  %mode = getelementptr inbounds %struct.aa_sfs_entry, ptr %fs_file, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 4
  %4 = or i16 %3, -32768
  %file_ops = getelementptr inbounds %struct.aa_sfs_entry, ptr %fs_file, i32 0, i32 5
  %5 = ptrtoint ptr %file_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %file_ops, align 4
  %call = tail call ptr @securityfs_create_file(ptr noundef %1, i16 noundef zeroext %4, ptr noundef %parent, ptr noundef %fs_file, ptr noundef %6) #16
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call to i32
  %spec.select = select i1 %cmp.i, ptr null, ptr %call
  %spec.select14 = select i1 %cmp.i, i32 %7, i32 0
  %dentry = getelementptr inbounds %struct.aa_sfs_entry, ptr %fs_file, i32 0, i32 1
  %8 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spec.select, ptr %dentry, align 4
  ret i32 %spec.select14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @policy_get_link(ptr noundef readnone %dentry, ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %done) #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #16
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %tobool.not = icmp eq ptr %dentry, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @aa_get_current_ns()
  %1 = load ptr, ptr @aafs_mnt, align 4
  %call2 = tail call ptr @mntget(ptr noundef %1) #16
  %2 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %path, align 4
  %dents = getelementptr inbounds %struct.aa_ns, ptr %call1, i32 0, i32 13
  %3 = ptrtoint ptr %dents to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dents, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.dget.exit_crit_edge, label %if.then.i

if.end.dget.exit_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %dget.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #16
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end.dget.exit_crit_edge
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %0, align 4
  %call5 = call i32 @nd_jump_link(ptr noundef nonnull %path) #16
  %tobool.not.i10 = icmp eq ptr %call1, null
  br i1 %tobool.not.i10, label %dget.exit.aa_put_ns.exit_crit_edge, label %if.then.i11

dget.exit.aa_put_ns.exit_crit_edge:               ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then.i11:                                      ; preds = %dget.exit
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %call1, i32 0, i32 4
  %6 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.i11.aa_put_ns.exit_crit_edge, label %if.then.i.i

if.then.i11.aa_put_ns.exit_crit_edge:             ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then.i.i:                                      ; preds = %if.then.i11
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !423
  call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #16
  %8 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #16, !srcloc !424
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !422

if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %aa_put_ns.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef 3) #16
  br label %aa_put_ns.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !425
  call void @aa_label_kref(ptr noundef %label.i.i) #16, !callees !426
  br label %aa_put_ns.exit

aa_put_ns.exit:                                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, %if.then.i11.aa_put_ns.exit_crit_edge, %dget.exit.aa_put_ns.exit_crit_edge
  %9 = inttoptr i32 %call5 to ptr
  br label %cleanup

cleanup:                                          ; preds = %aa_put_ns.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %aa_put_ns.exit ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #16
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @policy_readlink(ptr nocapture noundef readonly %dentry, ptr noundef %buffer, i32 noundef %buflen) #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_ino, align 8
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef %4)
  %5 = add i32 %call1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %5)
  %6 = icmp ult i32 %5, 31
  br i1 %6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = call i32 @readlink_copy(ptr noundef %buffer, i32 noundef %buflen, ptr noundef nonnull %name) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %res.0 = phi i32 [ %call4, %if.then ], [ -2, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #16
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nd_jump_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @readlink_copy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i32) local_unnamed_addr #15

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 184)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 184)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nobuiltin }
attributes #22 = { cold }
attributes #23 = { cold nounwind }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { nounwind allocsize(2) }
attributes #26 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !102, !104, !106, !108, !109, !110, !112, !113, !114, !116, !117, !119, !121, !123, !125, !127, !128, !130, !132, !134, !136, !138, !140, !142, !144, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !176, !177, !179, !180, !182, !183, !185, !187, !189, !191, !192, !194, !195, !197, !199, !201, !203, !205, !207, !208, !210, !211, !213, !214, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !248, !250, !252, !254, !255, !257, !259, !261, !263, !265, !267, !269, !271, !272, !274, !276, !278, !280, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !348, !350, !352, !354, !356, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !384, !386, !388, !390, !392, !393, !394, !395, !396, !397, !399, !401, !403, !405, !406, !407, !408, !410}
!llvm.named.register.sp = !{!412}
!llvm.module.flags = !{!413, !414, !415, !416, !417, !418, !419, !420}
!llvm.ident = !{!421}

!0 = !{ptr @aa_sfs_seq_file_ops, !1, !"aa_sfs_seq_file_ops", i1 false, i1 false}
!1 = !{!"../security/apparmor/apparmorfs.c", i32 1014, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/apparmor/apparmorfs.c", i32 1416, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__func__.__aa_fs_remove_rawdata, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/apparmor/apparmorfs.c", i32 1430, i32 2}
!8 = !{ptr @__func__.__aa_fs_create_rawdata, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../security/apparmor/apparmorfs.c", i32 1431, i32 2}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../security/apparmor/apparmorfs.c", i32 1432, i32 2}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../security/apparmor/apparmorfs.c", i32 1433, i32 2}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../security/apparmor/apparmorfs.c", i32 1440, i32 40}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../security/apparmor/apparmorfs.c", i32 1450, i32 26}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../security/apparmor/apparmorfs.c", i32 1456, i32 26}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../security/apparmor/apparmorfs.c", i32 1463, i32 27}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../security/apparmor/apparmorfs.c", i32 1470, i32 26}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../security/apparmor/apparmorfs.c", i32 1477, i32 26}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../security/apparmor/apparmorfs.c", i32 1534, i32 2}
!29 = !{ptr @__func__.__aafs_profile_migrate_dents, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/apparmor/apparmorfs.c", i32 1535, i32 2}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/apparmor/apparmorfs.c", i32 1536, i32 2}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/apparmor/apparmorfs.c", i32 1672, i32 2}
!36 = !{ptr @__func__.__aafs_profile_mkdir, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../security/apparmor/apparmorfs.c", i32 1673, i32 2}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../security/apparmor/apparmorfs.c", i32 1680, i32 26}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../security/apparmor/apparmorfs.c", i32 1689, i32 30}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../security/apparmor/apparmorfs.c", i32 1706, i32 34}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../security/apparmor/apparmorfs.c", i32 1712, i32 34}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../security/apparmor/apparmorfs.c", i32 1718, i32 34}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../security/apparmor/apparmorfs.c", i32 1733, i32 22}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../security/apparmor/apparmorfs.c", i32 1741, i32 22}
!53 = !{ptr @__func__.__aafs_ns_rmdir, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../security/apparmor/apparmorfs.c", i32 1895, i32 2}
!55 = !{ptr @__func__.__aafs_ns_mkdir, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../security/apparmor/apparmorfs.c", i32 2003, i32 2}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../security/apparmor/apparmorfs.c", i32 2004, i32 2}
!59 = !{ptr @__initcall__kmod_apparmor__565_2667_aa_create_aafs5, !60, !"__initcall__kmod_apparmor__565_2667_aa_create_aafs5", i1 false, i1 false}
!60 = !{!"../security/apparmor/apparmorfs.c", i32 2667, i32 1}
!61 = !{ptr @aa_null, !62, !"aa_null", i1 false, i1 false}
!62 = !{!"../security/apparmor/apparmorfs.c", i32 2492, i32 13}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../security/apparmor/apparmorfs.c", i32 993, i32 19}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../security/apparmor/apparmorfs.c", i32 993, i32 48}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../security/apparmor/apparmorfs.c", i32 993, i32 56}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../security/apparmor/apparmorfs.c", i32 999, i32 19}
!71 = !{ptr @seq_rawdata_abi_fops, !72, !"seq_rawdata_abi_fops", i1 false, i1 false}
!72 = !{!"../security/apparmor/apparmorfs.c", i32 1290, i32 1}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../security/apparmor/apparmorfs.c", i32 1231, i32 3}
!75 = !{ptr @__func__.seq_rawdata_open, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../security/apparmor/apparmorfs.c", i32 1253, i32 18}
!78 = !{ptr @seq_rawdata_revision_fops, !79, !"seq_rawdata_revision_fops", i1 false, i1 false}
!79 = !{!"../security/apparmor/apparmorfs.c", i32 1291, i32 1}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../security/apparmor/apparmorfs.c", i32 1262, i32 18}
!82 = !{ptr @seq_rawdata_hash_fops, !83, !"seq_rawdata_hash_fops", i1 false, i1 false}
!83 = !{!"../security/apparmor/apparmorfs.c", i32 1292, i32 1}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../security/apparmor/apparmorfs.c", i32 1274, i32 20}
!86 = !{ptr @seq_rawdata_compressed_size_fops, !87, !"seq_rawdata_compressed_size_fops", i1 false, i1 false}
!87 = !{!"../security/apparmor/apparmorfs.c", i32 1293, i32 1}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../security/apparmor/apparmorfs.c", i32 1285, i32 18}
!90 = !{ptr @rawdata_fops, !91, !"rawdata_fops", i1 false, i1 false}
!91 = !{!"../security/apparmor/apparmorfs.c", i32 1394, i32 37}
!92 = !{ptr @aafs_mnt, !93, !"aafs_mnt", i1 false, i1 false}
!93 = !{!"../security/apparmor/apparmorfs.c", i32 143, i32 25}
!94 = !{ptr @aafs_count, !95, !"aafs_count", i1 false, i1 false}
!95 = !{!"../security/apparmor/apparmorfs.c", i32 144, i32 12}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../security/apparmor/include/policy_ns.h", i32 101, i32 9}
!98 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../security/apparmor/apparmorfs.c", i32 118, i32 38}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../security/apparmor/apparmorfs.c", i32 127, i32 15}
!104 = !{ptr @seq_profile_name_fops, !105, !"seq_profile_name_fops", i1 false, i1 false}
!105 = !{!"../security/apparmor/apparmorfs.c", i32 1118, i32 1}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../security/apparmor/include/label.h", i32 401, i32 7}
!108 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!112 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!114 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!115 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!116 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @seq_profile_mode_fops, !118, !"seq_profile_mode_fops", i1 false, i1 false}
!118 = !{!"../security/apparmor/apparmorfs.c", i32 1119, i32 1}
!119 = !{ptr @seq_profile_attach_fops, !120, !"seq_profile_attach_fops", i1 false, i1 false}
!120 = !{!"../security/apparmor/apparmorfs.c", i32 1120, i32 1}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../security/apparmor/apparmorfs.c", i32 1093, i32 17}
!123 = !{ptr @seq_profile_hash_fops, !124, !"seq_profile_hash_fops", i1 false, i1 false}
!124 = !{!"../security/apparmor/apparmorfs.c", i32 1121, i32 1}
!125 = !{ptr @.str.44, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../security/apparmor/apparmorfs.c", i32 270, i32 2}
!127 = !{ptr @__func__.aafs_create, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../security/apparmor/apparmorfs.c", i32 196, i32 10}
!130 = !{ptr @aafs_ops, !131, !"aafs_ops", i1 false, i1 false}
!131 = !{!"../security/apparmor/apparmorfs.c", i32 194, i32 32}
!132 = !{ptr @apparmorfs_context_ops, !133, !"apparmorfs_context_ops", i1 false, i1 false}
!133 = !{!"../security/apparmor/apparmorfs.c", i32 184, i32 43}
!134 = !{ptr @.str.46, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../security/apparmor/apparmorfs.c", i32 168, i32 40}
!136 = !{ptr @apparmorfs_fill_super.files, !137, !"files", i1 false, i1 false}
!137 = !{!"../security/apparmor/apparmorfs.c", i32 168, i32 27}
!138 = !{ptr @aafs_super_ops, !139, !"aafs_super_ops", i1 false, i1 false}
!139 = !{!"../security/apparmor/apparmorfs.c", i32 160, i32 38}
!140 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../security/apparmor/apparmorfs.c", i32 149, i32 18}
!142 = !{ptr @.str.48, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../security/apparmor/apparmorfs.c", i32 218, i32 2}
!144 = !{ptr @__func__.__aafs_setup_d_inode, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.49, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../security/apparmor/apparmorfs.c", i32 219, i32 2}
!147 = !{ptr @rawdata_link_sha1_iops, !148, !"rawdata_link_sha1_iops", i1 false, i1 false}
!148 = !{!"../security/apparmor/apparmorfs.c", i32 1651, i32 38}
!149 = !{ptr @.str.50, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../security/apparmor/apparmorfs.c", i32 1583, i32 13}
!151 = !{ptr @.str.51, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../security/apparmor/apparmorfs.c", i32 1588, i32 28}
!153 = !{ptr @rawdata_link_abi_iops, !154, !"rawdata_link_abi_iops", i1 false, i1 false}
!154 = !{!"../security/apparmor/apparmorfs.c", i32 1655, i32 38}
!155 = !{ptr @rawdata_link_data_iops, !156, !"rawdata_link_data_iops", i1 false, i1 false}
!156 = !{!"../security/apparmor/apparmorfs.c", i32 1658, i32 38}
!157 = !{ptr @__func__.__aa_fs_list_remove_rawdata, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../security/apparmor/apparmorfs.c", i32 1877, i32 2}
!159 = !{ptr @__func__.__aafs_ns_mkdir_entries, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../security/apparmor/apparmorfs.c", i32 1940, i32 2}
!161 = !{ptr @.str.52, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../security/apparmor/apparmorfs.c", i32 1960, i32 26}
!163 = !{ptr @.str.53, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../security/apparmor/apparmorfs.c", i32 1967, i32 26}
!165 = !{ptr @.str.54, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../security/apparmor/apparmorfs.c", i32 1974, i32 26}
!167 = !{ptr @.str.55, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../security/apparmor/apparmorfs.c", i32 1982, i32 21}
!169 = !{ptr @aa_fs_ns_revision_fops, !170, !"aa_fs_ns_revision_fops", i1 false, i1 false}
!170 = !{!"../security/apparmor/apparmorfs.c", i32 599, i32 37}
!171 = distinct !{null, !172, !"__warned", i1 false, i1 false}
!172 = !{!"../security/apparmor/include/cred.h", i32 89, i32 27}
!173 = !{ptr @.str.56, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../security/apparmor/include/cred.h", i32 51, i32 2}
!175 = !{ptr @.str.57, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @__func__.aa_cred_raw_label, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.58, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../security/apparmor/include/cred.h", i32 26, i32 2}
!179 = !{ptr @__func__.cred_label, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.59, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../security/apparmor/include/label.h", i32 424, i32 3}
!182 = !{ptr @__func__.aa_get_newest_label, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.60, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../security/apparmor/include/label.h", i32 425, i32 3}
!185 = !{ptr @.str.61, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../security/apparmor/include/label.h", i32 431, i32 3}
!187 = !{ptr @aa_fs_profile_load, !188, !"aa_fs_profile_load", i1 false, i1 false}
!188 = !{!"../security/apparmor/apparmorfs.c", i32 451, i32 37}
!189 = !{ptr @.str.62, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../security/apparmor/apparmorfs.c", i32 391, i32 2}
!191 = !{ptr @__func__.aa_simple_write_to_buffer, !190, !"<string literal>", i1 false, i1 false}
!192 = distinct !{null, !193, !"__already_done", i1 false, i1 false}
!193 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!194 = !{ptr @.str.63, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.64, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!197 = !{ptr @.str.65, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!199 = !{ptr @aa_fs_profile_replace, !200, !"aa_fs_profile_replace", i1 false, i1 false}
!200 = !{!"../security/apparmor/apparmorfs.c", i32 468, i32 37}
!201 = !{ptr @aa_fs_profile_remove, !202, !"aa_fs_profile_remove", i1 false, i1 false}
!202 = !{!"../security/apparmor/apparmorfs.c", i32 508, i32 37}
!203 = !{ptr @ns_dir_inode_operations, !204, !"ns_dir_inode_operations", i1 false, i1 false}
!204 = !{!"../security/apparmor/apparmorfs.c", i32 1867, i32 38}
!205 = !{ptr @.str.66, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../security/apparmor/apparmorfs.c", i32 1790, i32 2}
!207 = !{ptr @__func__.ns_mkdir_op, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.67, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../security/apparmor/apparmorfs.c", i32 1853, i32 2}
!210 = !{ptr @__func__.ns_rmdir_op, !209, !"<string literal>", i1 false, i1 false}
!211 = distinct !{null, !212, !"__warned", i1 false, i1 false}
!212 = !{!"../security/apparmor/include/lib.h", i32 196, i32 2}
!213 = !{ptr @.str.68, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.69, !212, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.70, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../security/apparmor/apparmorfs.c", i32 2387, i32 2}
!217 = !{ptr @aa_sfs_entry, !218, !"aa_sfs_entry", i1 false, i1 false}
!218 = !{!"../security/apparmor/apparmorfs.c", i32 2386, i32 28}
!219 = !{ptr @.str.71, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../security/apparmor/apparmorfs.c", i32 2376, i32 2}
!221 = !{ptr @.str.72, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../security/apparmor/apparmorfs.c", i32 2377, i32 2}
!223 = !{ptr @.str.73, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../security/apparmor/apparmorfs.c", i32 2378, i32 2}
!225 = !{ptr @.str.74, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../security/apparmor/apparmorfs.c", i32 2379, i32 2}
!227 = !{ptr @.str.75, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../security/apparmor/apparmorfs.c", i32 2380, i32 2}
!229 = !{ptr @.str.76, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../security/apparmor/apparmorfs.c", i32 2382, i32 2}
!231 = !{ptr @aa_sfs_entry_apparmor, !232, !"aa_sfs_entry_apparmor", i1 false, i1 false}
!232 = !{!"../security/apparmor/apparmorfs.c", i32 2375, i32 28}
!233 = !{ptr @aa_sfs_access, !234, !"aa_sfs_access", i1 false, i1 false}
!234 = !{!"../security/apparmor/apparmorfs.c", i32 977, i32 37}
!235 = !{ptr @.str.77, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../security/apparmor/apparmorfs.c", i32 944, i32 23}
!237 = !{ptr @.str.78, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../security/apparmor/apparmorfs.c", i32 949, i32 23}
!239 = !{ptr @.str.79, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../security/apparmor/apparmorfs.c", i32 954, i32 23}
!241 = !{ptr @.str.80, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../security/apparmor/apparmorfs.c", i32 960, i32 23}
!243 = !{ptr @.str.81, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../security/apparmor/apparmorfs.c", i32 797, i32 9}
!245 = distinct !{null, !246, !"__warned", i1 false, i1 false}
!246 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!247 = !{ptr @.str.82, !246, !"<string literal>", i1 false, i1 false}
!248 = distinct !{null, !249, !"__warned", i1 false, i1 false}
!249 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!250 = distinct !{null, !251, !"__warned", i1 false, i1 false}
!251 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!252 = !{ptr @.str.84, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../security/apparmor/apparmorfs.c", i32 845, i32 2}
!254 = !{ptr @__func__.multi_transaction_set, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @seq_ns_stacked_fops, !256, !"seq_ns_stacked_fops", i1 false, i1 false}
!256 = !{!"../security/apparmor/apparmorfs.c", i32 1197, i32 1}
!257 = !{ptr @seq_ns_nsstacked_fops, !258, !"seq_ns_nsstacked_fops", i1 false, i1 false}
!258 = !{!"../security/apparmor/apparmorfs.c", i32 1198, i32 1}
!259 = !{ptr @seq_ns_level_fops, !260, !"seq_ns_level_fops", i1 false, i1 false}
!260 = !{!"../security/apparmor/apparmorfs.c", i32 1199, i32 1}
!261 = !{ptr @.str.85, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../security/apparmor/apparmorfs.c", i32 1182, i32 18}
!263 = !{ptr @seq_ns_name_fops, !264, !"seq_ns_name_fops", i1 false, i1 false}
!264 = !{!"../security/apparmor/apparmorfs.c", i32 1200, i32 1}
!265 = !{ptr @aa_sfs_profiles_fops, !266, !"aa_sfs_profiles_fops", i1 false, i1 false}
!266 = !{!"../security/apparmor/apparmorfs.c", i32 2278, i32 37}
!267 = !{ptr @aa_sfs_profiles_op, !268, !"aa_sfs_profiles_op", i1 false, i1 false}
!268 = !{!"../security/apparmor/apparmorfs.c", i32 2258, i32 36}
!269 = !{ptr @.str.86, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../security/apparmor/apparmorfs.c", i32 2103, i32 2}
!271 = !{ptr @__func__.__first_profile, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.87, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../security/apparmor/apparmorfs.c", i32 2104, i32 2}
!274 = !{ptr @__func__.__next_ns, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../security/apparmor/apparmorfs.c", i32 2065, i32 2}
!276 = !{ptr @.str.88, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../security/apparmor/apparmorfs.c", i32 2067, i32 2}
!278 = !{ptr @.str.89, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../security/apparmor/apparmorfs.c", i32 2128, i32 2}
!280 = !{ptr @__func__.__next_profile, !279, !"<string literal>", i1 false, i1 false}
!281 = distinct !{null, !282, !"__warned", i1 false, i1 false}
!282 = !{!"../security/apparmor/apparmorfs.c", i32 2136, i32 11}
!283 = distinct !{null, !284, !"__warned", i1 false, i1 false}
!284 = !{!"../security/apparmor/apparmorfs.c", i32 2143, i32 12}
!285 = !{ptr @.str.91, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../security/apparmor/apparmorfs.c", i32 2360, i32 2}
!287 = !{ptr @.str.92, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../security/apparmor/apparmorfs.c", i32 2361, i32 2}
!289 = !{ptr @.str.93, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../security/apparmor/apparmorfs.c", i32 2362, i32 2}
!291 = !{ptr @.str.94, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../security/apparmor/apparmorfs.c", i32 2363, i32 2}
!293 = !{ptr @.str.95, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../security/apparmor/apparmorfs.c", i32 2364, i32 2}
!295 = !{ptr @.str.96, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../security/apparmor/apparmorfs.c", i32 2366, i32 2}
!297 = !{ptr @.str.97, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../security/apparmor/apparmorfs.c", i32 2367, i32 2}
!299 = !{ptr @.str.98, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../security/apparmor/apparmorfs.c", i32 2368, i32 2}
!301 = !{ptr @.str.99, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../security/apparmor/apparmorfs.c", i32 2369, i32 2}
!303 = !{ptr @.str.100, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../security/apparmor/apparmorfs.c", i32 2370, i32 2}
!305 = !{ptr @.str.101, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../security/apparmor/apparmorfs.c", i32 2371, i32 2}
!307 = !{ptr @aa_sfs_entry_features, !308, !"aa_sfs_entry_features", i1 false, i1 false}
!308 = !{!"../security/apparmor/apparmorfs.c", i32 2359, i32 28}
!309 = !{ptr @.str.103, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../security/apparmor/apparmorfs.c", i32 2330, i32 2}
!311 = !{ptr @.str.104, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../security/apparmor/apparmorfs.c", i32 2331, i32 2}
!313 = !{ptr @.str.105, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../security/apparmor/apparmorfs.c", i32 2333, i32 2}
!315 = !{ptr @aa_sfs_entry_policy, !316, !"aa_sfs_entry_policy", i1 false, i1 false}
!316 = !{!"../security/apparmor/apparmorfs.c", i32 2329, i32 28}
!317 = !{ptr @.str.107, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../security/apparmor/apparmorfs.c", i32 2322, i32 2}
!319 = !{ptr @.str.108, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../security/apparmor/apparmorfs.c", i32 2323, i32 2}
!321 = !{ptr @.str.109, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../security/apparmor/apparmorfs.c", i32 2324, i32 2}
!323 = !{ptr @.str.110, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../security/apparmor/apparmorfs.c", i32 2325, i32 2}
!325 = !{ptr @aa_sfs_entry_versions, !326, !"aa_sfs_entry_versions", i1 false, i1 false}
!326 = !{!"../security/apparmor/apparmorfs.c", i32 2321, i32 28}
!327 = !{ptr @.str.112, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../security/apparmor/apparmorfs.c", i32 2308, i32 2}
!329 = !{ptr @.str.113, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../security/apparmor/apparmorfs.c", i32 2309, i32 2}
!331 = !{ptr @.str.114, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../security/apparmor/apparmorfs.c", i32 2310, i32 2}
!333 = !{ptr @.str.115, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../security/apparmor/apparmorfs.c", i32 2311, i32 2}
!335 = !{ptr @.str.116, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../security/apparmor/apparmorfs.c", i32 2312, i32 2}
!337 = !{ptr @.str.117, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../security/apparmor/apparmorfs.c", i32 2313, i32 2}
!339 = !{ptr @.str.118, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../security/apparmor/apparmorfs.c", i32 2314, i32 2}
!341 = !{ptr @.str.119, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../security/apparmor/apparmorfs.c", i32 2315, i32 2}
!343 = !{ptr @.str.120, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../security/apparmor/apparmorfs.c", i32 2316, i32 2}
!345 = !{ptr @.str.121, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../security/apparmor/apparmorfs.c", i32 2317, i32 2}
!347 = !{ptr @.str.122, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @aa_sfs_entry_domain, !349, !"aa_sfs_entry_domain", i1 false, i1 false}
!349 = !{!"../security/apparmor/apparmorfs.c", i32 2307, i32 28}
!350 = !{ptr @.str.124, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../security/apparmor/apparmorfs.c", i32 2304, i32 2}
!352 = !{ptr @aa_sfs_entry_attach, !353, !"aa_sfs_entry_attach", i1 false, i1 false}
!353 = !{!"../security/apparmor/apparmorfs.c", i32 2303, i32 28}
!354 = !{ptr @.str.126, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../security/apparmor/apparmorfs.c", i32 2288, i32 2}
!356 = !{ptr @.str.127, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @aa_sfs_entry_file, !358, !"aa_sfs_entry_file", i1 false, i1 false}
!358 = !{!"../security/apparmor/apparmorfs.c", i32 2287, i32 28}
!359 = !{ptr @.str.128, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../security/apparmor/apparmorfs.c", i32 2338, i32 2}
!361 = !{ptr @aa_sfs_entry_mount, !362, !"aa_sfs_entry_mount", i1 false, i1 false}
!362 = !{!"../security/apparmor/apparmorfs.c", i32 2337, i32 28}
!363 = !{ptr @.str.129, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../security/apparmor/apparmorfs.c", i32 2343, i32 2}
!365 = !{ptr @.str.130, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../security/apparmor/apparmorfs.c", i32 2344, i32 2}
!367 = !{ptr @aa_sfs_entry_ns, !368, !"aa_sfs_entry_ns", i1 false, i1 false}
!368 = !{!"../security/apparmor/apparmorfs.c", i32 2342, i32 28}
!369 = !{ptr @.str.132, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../security/apparmor/apparmorfs.c", i32 2294, i32 2}
!371 = !{ptr @aa_sfs_entry_ptrace, !372, !"aa_sfs_entry_ptrace", i1 false, i1 false}
!372 = !{!"../security/apparmor/apparmorfs.c", i32 2293, i32 28}
!373 = !{ptr @.str.133, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../security/apparmor/apparmorfs.c", i32 2299, i32 2}
!375 = !{ptr @aa_sfs_entry_signal, !376, !"aa_sfs_entry_signal", i1 false, i1 false}
!376 = !{!"../security/apparmor/apparmorfs.c", i32 2298, i32 28}
!377 = !{ptr @.str.134, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../security/apparmor/apparmorfs.c", i32 2356, i32 2}
!379 = !{ptr @aa_sfs_entry_query, !380, !"aa_sfs_entry_query", i1 false, i1 false}
!380 = !{!"../security/apparmor/apparmorfs.c", i32 2355, i32 28}
!381 = !{ptr @.str.135, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../security/apparmor/apparmorfs.c", i32 2349, i32 2}
!383 = !{ptr @.str.136, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @.str.137, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../security/apparmor/apparmorfs.c", i32 2350, i32 2}
!386 = !{ptr @.str.138, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../security/apparmor/apparmorfs.c", i32 2351, i32 2}
!388 = !{ptr @aa_sfs_entry_query_label, !389, !"aa_sfs_entry_query_label", i1 false, i1 false}
!389 = !{!"../security/apparmor/apparmorfs.c", i32 2348, i32 28}
!390 = !{ptr @.str.140, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../security/apparmor/apparmorfs.c", i32 2596, i32 3}
!392 = !{ptr @aa_create_aafs._rs, !391, !"_rs", i1 false, i1 false}
!393 = !{ptr @__func__.aa_create_aafs, !391, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @.str.141, !391, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @aa_create_aafs._entry, !391, !"_entry", i1 false, i1 false}
!396 = !{ptr @aa_create_aafs._entry_ptr, !391, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.142, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../security/apparmor/apparmorfs.c", i32 2603, i32 9}
!399 = !{ptr @.str.143, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../security/apparmor/apparmorfs.c", i32 2637, i32 55}
!401 = !{ptr @.str.144, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../security/apparmor/apparmorfs.c", i32 2656, i32 18}
!403 = !{ptr @aa_create_aafs._rs.145, !404, !"_rs", i1 false, i1 false}
!404 = !{!"../security/apparmor/apparmorfs.c", i32 2663, i32 2}
!405 = !{ptr @.str.147, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @aa_create_aafs._entry.146, !404, !"_entry", i1 false, i1 false}
!407 = !{ptr @aa_create_aafs._entry_ptr.148, !404, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @policy_link_iops, !409, !"policy_link_iops", i1 false, i1 false}
!409 = !{!"../security/apparmor/apparmorfs.c", i32 2574, i32 38}
!410 = !{ptr @.str.149, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../security/apparmor/apparmorfs.c", i32 2506, i32 26}
!412 = !{!"sp"}
!413 = !{i32 1, !"wchar_size", i32 2}
!414 = !{i32 1, !"min_enum_size", i32 4}
!415 = !{i32 8, !"branch-target-enforcement", i32 0}
!416 = !{i32 8, !"sign-return-address", i32 0}
!417 = !{i32 8, !"sign-return-address-all", i32 0}
!418 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!419 = !{i32 7, !"uwtable", i32 1}
!420 = !{i32 7, !"frame-pointer", i32 2}
!421 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!422 = !{!"branch_weights", i32 2000, i32 1}
!423 = !{i64 2148551668}
!424 = !{i64 2148466108, i64 2148466140, i64 2148466169, i64 2148466203, i64 2148466234, i64 2148466257}
!425 = !{i64 2149529897}
!426 = distinct !{ptr @aa_label_kref, ptr @aa_loaddata_kref, ptr @aa_proxy_kref, null}
!427 = !{!"branch_weights", i32 1, i32 2000}
!428 = !{i8 0, i8 2}
!429 = !{i64 2148463643, i64 2148463675, i64 2148463704, i64 2148463738, i64 2148463769, i64 2148463792}
!430 = !{i64 945849, i64 945873, i64 945894, i64 945911, i64 945928}
!431 = !{i64 2149291643}
!432 = !{i64 2149291909}
!433 = !{i64 2152358307, i64 2152358332}
!434 = !{i64 4853862}
!435 = !{i64 4854059}
!436 = !{i64 2152339292}
!437 = !{i64 2158356710}
!438 = !{i64 2158360144}
