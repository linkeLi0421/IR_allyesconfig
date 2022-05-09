; ModuleID = '/llk/IR_all_yes/fs/ecryptfs/main.c_pt.bc'
source_filename = "../fs/ecryptfs/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.35 }
%union.anon.35 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.match_token = type { i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ecryptfs_cache_info = type { ptr, ptr, i32, i32, ptr }
%struct.__va_list = type { ptr }
%struct.ecryptfs_inode_info = type { %struct.inode, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.ecryptfs_crypt_stat }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
%struct.ecryptfs_crypt_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, [32 x i8], [64 x i8], [16 x i8], %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }
%struct.path = type { ptr, ptr }
%struct.substring_t = type { ptr, ptr }
%struct.ecryptfs_sb_info = type { ptr, %struct.ecryptfs_mount_crypt_stat }
%struct.ecryptfs_mount_crypt_stat = type { i32, %struct.list_head, %struct.mutex, i32, i32, [32 x i8], [32 x i8], [17 x i8] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.27, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.28, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.29, %union.anon.33, ptr }
%union.anon.27 = type { %struct.rb_node }
%union.anon.28 = type { i64 }
%union.anon.29 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.30, ptr, ptr, ptr }
%union.anon.30 = type { i32 }
%union.anon.33 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
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
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }

@ecryptfs_verbosity = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_ecryptfs_verbosity = internal constant [28 x i8] c"ecryptfs.ecryptfs_verbosity\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_ecryptfs_verbosity = internal constant %struct.kernel_param { ptr @__param_str_ecryptfs_verbosity, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.74 { ptr @ecryptfs_verbosity } }, section "__param", align 4
@__UNIQUE_ID_ecryptfs_verbositytype303 = internal constant [41 x i8] c"ecryptfs.parmtype=ecryptfs_verbosity:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ecryptfs_verbosity304 = internal constant [97 x i8] c"ecryptfs.parm=ecryptfs_verbosity:Initial verbosity level (0 or 1; defaults to 0, which is Quiet)\00", section ".modinfo", align 1
@ecryptfs_message_buf_len = dso_local global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_str_ecryptfs_message_buf_len = internal constant [34 x i8] c"ecryptfs.ecryptfs_message_buf_len\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_ecryptfs_message_buf_len = internal constant %struct.kernel_param { ptr @__param_str_ecryptfs_message_buf_len, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.74 { ptr @ecryptfs_message_buf_len } }, section "__param", align 4
@__UNIQUE_ID_ecryptfs_message_buf_lentype305 = internal constant [48 x i8] c"ecryptfs.parmtype=ecryptfs_message_buf_len:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_ecryptfs_message_buf_len306 = internal constant [73 x i8] c"ecryptfs.parm=ecryptfs_message_buf_len:Number of message buffer elements\00", section ".modinfo", align 1
@ecryptfs_message_wait_timeout = dso_local global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_str_ecryptfs_message_wait_timeout = internal constant [39 x i8] c"ecryptfs.ecryptfs_message_wait_timeout\00", align 1
@param_ops_long = external dso_local constant %struct.kernel_param_ops, align 4
@__param_ecryptfs_message_wait_timeout = internal constant %struct.kernel_param { ptr @__param_str_ecryptfs_message_wait_timeout, ptr null, ptr @param_ops_long, i16 0, i8 -1, i8 0, %union.anon.74 { ptr @ecryptfs_message_wait_timeout } }, section "__param", align 4
@__UNIQUE_ID_ecryptfs_message_wait_timeouttype307 = internal constant [53 x i8] c"ecryptfs.parmtype=ecryptfs_message_wait_timeout:long\00", section ".modinfo", align 1
@__UNIQUE_ID_ecryptfs_message_wait_timeout308 = internal constant [151 x i8] c"ecryptfs.parm=ecryptfs_message_wait_timeout:Maximum number of seconds that an operation will sleep while waiting for a message response from userspace\00", section ".modinfo", align 1
@ecryptfs_number_of_users = dso_local global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_str_ecryptfs_number_of_users = internal constant [34 x i8] c"ecryptfs.ecryptfs_number_of_users\00", align 1
@__param_ecryptfs_number_of_users = internal constant %struct.kernel_param { ptr @__param_str_ecryptfs_number_of_users, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.74 { ptr @ecryptfs_number_of_users } }, section "__param", align 4
@__UNIQUE_ID_ecryptfs_number_of_userstype309 = internal constant [48 x i8] c"ecryptfs.parmtype=ecryptfs_number_of_users:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_ecryptfs_number_of_users310 = internal constant [97 x i8] c"ecryptfs.parm=ecryptfs_number_of_users:An estimate of the number of concurrent users of eCryptfs\00", section ".modinfo", align 1
@ecryptfs_get_lower_file.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/ecryptfs/main.c\00", [45 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias311 = internal constant [27 x i8] c"ecryptfs.alias=fs-ecryptfs\00", section ".modinfo", align 1
@ecryptfs_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013Failure whilst attempting to destroy crypto; rc = [%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ecryptfs_exit\00", [18 x i8] zeroinitializer }, align 32
@ecryptfs_exit._entry_ptr = internal global ptr @ecryptfs_exit._entry, section ".printk_index", align 4
@ecryptfs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.7, i32 0, ptr null, ptr null, ptr @ecryptfs_mount, ptr @ecryptfs_kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author312 = internal constant [57 x i8] c"ecryptfs.author=Michael A. Halcrow <mhalcrow@us.ibm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description313 = internal constant [30 x i8] c"ecryptfs.description=eCryptfs\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [35 x i8] c"ecryptfs.file=fs/ecryptfs/ecryptfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [21 x i8] c"ecryptfs.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ecryptfs__316_901_ecryptfs_init6 = internal global ptr @ecryptfs_init, section ".initcall6.init", align 4
@__exitcall_ecryptfs_exit = internal global ptr @ecryptfs_exit, section ".exitcall.exit", align 4
@ecryptfs_sb_info_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ecryptfs_init_lower_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013Error opening lower file for lower_dentry [0x%p] and lower_mnt [0x%p]; rc = [%d]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ecryptfs_init_lower_file\00", [39 x i8] zeroinitializer }, align 32
@ecryptfs_init_lower_file._entry_ptr = internal global ptr @ecryptfs_init_lower_file._entry, section ".printk_index", align 4
@ecryptfs_kobj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @version_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@version_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecryptfs\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Getting sb failed\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Device name cannot be null\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error parsing options\00", [42 x i8] zeroinitializer }, align 32
@ecryptfs_sops = external dso_local constant %struct.super_operations, align 4
@ecryptfs_xattr_handlers = external dso_local global [0 x ptr], align 4
@ecryptfs_dops = external dso_local constant %struct.dentry_operations, align 128
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Reading sb failed\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s: kern_path() failed\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_mount = private unnamed_addr constant [15 x i8] c"ecryptfs_mount\00", align 1
@ecryptfs_mount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.ecryptfs_mount, ptr @.str, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013Mount on filesystem of type eCryptfs explicitly disallowed due to known incompatibilities\0A\00", [35 x i8] zeroinitializer }, align 32
@ecryptfs_mount._entry_ptr = internal global ptr @ecryptfs_mount._entry, section ".printk_index", align 4
@ecryptfs_mount._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.ecryptfs_mount, ptr @.str, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013Mounting on idmapped mounts currently disallowed\0A\00", [44 x i8] zeroinitializer }, align 32
@ecryptfs_mount._entry_ptr.16 = internal global ptr @ecryptfs_mount._entry.14, section ".printk_index", align 4
@ecryptfs_mount._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.ecryptfs_mount, ptr @.str, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013Mount of device (uid: %d) not owned by requested user (uid: %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@ecryptfs_mount._entry_ptr.19 = internal global ptr @ecryptfs_mount._entry.17, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ecryptfs_mount._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.ecryptfs_mount, ptr @.str, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013eCryptfs: maximum fs stacking depth exceeded\0A\00", [48 x i8] zeroinitializer }, align 32
@ecryptfs_mount._entry_ptr.23 = internal global ptr @ecryptfs_mount._entry.21, section ".printk_index", align 4
@ecryptfs_dentry_info_cache = external dso_local global ptr, align 4
@ecryptfs_mount._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.ecryptfs_mount, ptr @.str, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s; rc = [%d]\0A\00", [47 x i8] zeroinitializer }, align 32
@ecryptfs_mount._entry_ptr.26 = internal global ptr @ecryptfs_mount._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [15 x %struct.match_token], [40 x i8] } { [15 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.48 }, %struct.match_token { i32 1, ptr @.str.49 }, %struct.match_token { i32 2, ptr @.str.50 }, %struct.match_token { i32 3, ptr @.str.51 }, %struct.match_token { i32 4, ptr @.str.52 }, %struct.match_token { i32 5, ptr @.str.53 }, %struct.match_token { i32 6, ptr @.str.54 }, %struct.match_token { i32 7, ptr @.str.55 }, %struct.match_token { i32 8, ptr @.str.56 }, %struct.match_token { i32 9, ptr @.str.57 }, %struct.match_token { i32 10, ptr @.str.58 }, %struct.match_token { i32 11, ptr @.str.59 }, %struct.match_token { i32 12, ptr @.str.60 }, %struct.match_token { i32 13, ptr @.str.61 }, %struct.match_token { i32 14, ptr null }], [40 x i8] zeroinitializer }, align 32
@ecryptfs_parse_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Error attempting to register global sig; rc = [%d]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ecryptfs_parse_options\00", [41 x i8] zeroinitializer }, align 32
@ecryptfs_parse_options._entry_ptr = internal global ptr @ecryptfs_parse_options._entry, section ".printk_index", align 4
@ecryptfs_parse_options._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013Error attempting to register global fnek sig [%s]; rc = [%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@ecryptfs_parse_options._entry_ptr.32 = internal global ptr @ecryptfs_parse_options._entry.30, section ".printk_index", align 4
@ecryptfs_parse_options._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: eCryptfs: unrecognized option [%s]\0A\00", [54 x i8] zeroinitializer }, align 32
@ecryptfs_parse_options._entry_ptr.35 = internal global ptr @ecryptfs_parse_options._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\013%s: You must supply at least one valid auth tok signature as a mount parameter; see the eCryptfs README\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: eCryptfs doesn't support cipher: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@key_tfm_list_mutex = external dso_local global %struct.mutex, align 4
@ecryptfs_parse_options._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\013Error attempting to initialize cipher with name = [%s] and key size = [%td]; rc = [%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@ecryptfs_parse_options._entry_ptr.41 = internal global ptr @ecryptfs_parse_options._entry.39, section ".printk_index", align 4
@ecryptfs_parse_options._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ecryptfs_parse_options._entry_ptr.43 = internal global ptr @ecryptfs_parse_options._entry.42, section ".printk_index", align 4
@ecryptfs_parse_options._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.29, ptr @.str, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014One or more global auth toks could not properly register; rc = [%d]\0A\00", [57 x i8] zeroinitializer }, align 32
@ecryptfs_parse_options._entry_ptr.46 = internal global ptr @ecryptfs_parse_options._entry.44, section ".printk_index", align 4
@ecryptfs_init_mount_crypt_stat.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"&mount_crypt_stat->global_auth_tok_list_mutex\00", [50 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sig=%s\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecryptfs_sig=%s\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cipher=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ecryptfs_cipher=%s\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ecryptfs_key_bytes=%u\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ecryptfs_passthrough\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ecryptfs_xattr_metadata\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ecryptfs_encrypted_view\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ecryptfs_fnek_sig=%s\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ecryptfs_fn_cipher=%s\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ecryptfs_fn_key_bytes=%u\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ecryptfs_unlink_sigs\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ecryptfs_mount_auth_tok_only\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ecryptfs_check_dev_ruid\00", [40 x i8] zeroinitializer }, align 32
@ecryptfs_init_global_auth_toks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013Could not find valid key in user session keyring for sig specified in mount option: [%s]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ecryptfs_init_global_auth_toks\00", [33 x i8] zeroinitializer }, align 32
@ecryptfs_init_global_auth_toks._entry_ptr = internal global ptr @ecryptfs_init_global_auth_toks._entry, section ".printk_index", align 4
@ecryptfs_cache_infos = internal constant { [11 x %struct.ecryptfs_cache_info], [36 x i8] } { [11 x %struct.ecryptfs_cache_info] [%struct.ecryptfs_cache_info { ptr @ecryptfs_auth_tok_list_item_cache, ptr @.str.64, i32 812, i32 0, ptr null }, %struct.ecryptfs_cache_info { ptr @ecryptfs_file_info_cache, ptr @.str.65, i32 8, i32 0, ptr null }, %struct.ecryptfs_cache_info { ptr @ecryptfs_dentry_info_cache, ptr @.str.66, i32 16, i32 0, ptr null }, %struct.ecryptfs_cache_info { ptr @ecryptfs_inode_info_cache, ptr @.str.67, i32 1328, i32 67108864, ptr @inode_info_init_once }, %struct.ecryptfs_cache_info { ptr @ecryptfs_sb_info_cache, ptr @.str.68, i32 200, i32 0, ptr null }, %struct.ecryptfs_cache_info { ptr @ecryptfs_header_cache, ptr @.str.69, i32 4096, i32 0, ptr null }, %struct.ecryptfs_cache_info { ptr @ecryptfs_xattr_cache, ptr @.str.70, i32 4096, i32 0, ptr null }, %struct.ecryptfs_cache_info { ptr @ecryptfs_key_record_cache, ptr @.str.71, i32 528, i32 0, ptr null }, %struct.ecryptfs_cache_info { ptr @ecryptfs_key_sig_cache, ptr @.str.72, i32 28, i32 0, ptr null }, %struct.ecryptfs_cache_info { ptr @ecryptfs_global_auth_tok_cache, ptr @.str.73, i32 36, i32 0, ptr null }, %struct.ecryptfs_cache_info { ptr @ecryptfs_key_tfm_cache, ptr @.str.74, i32 140, i32 0, ptr null }], [36 x i8] zeroinitializer }, align 32
@ecryptfs_auth_tok_list_item_cache = external dso_local global ptr, align 4
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ecryptfs_auth_tok_list_item\00", [36 x i8] zeroinitializer }, align 32
@ecryptfs_file_info_cache = external dso_local global ptr, align 4
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ecryptfs_file_cache\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ecryptfs_dentry_info_cache\00", [37 x i8] zeroinitializer }, align 32
@ecryptfs_inode_info_cache = external dso_local global ptr, align 4
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ecryptfs_inode_cache\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ecryptfs_sb_cache\00", [46 x i8] zeroinitializer }, align 32
@ecryptfs_header_cache = external dso_local global ptr, align 4
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ecryptfs_headers\00", [47 x i8] zeroinitializer }, align 32
@ecryptfs_xattr_cache = external dso_local global ptr, align 4
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ecryptfs_xattr_cache\00", [43 x i8] zeroinitializer }, align 32
@ecryptfs_key_record_cache = external dso_local global ptr, align 4
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ecryptfs_key_record_cache\00", [38 x i8] zeroinitializer }, align 32
@ecryptfs_key_sig_cache = external dso_local global ptr, align 4
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ecryptfs_key_sig_cache\00", [41 x i8] zeroinitializer }, align 32
@ecryptfs_global_auth_tok_cache = external dso_local global ptr, align 4
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ecryptfs_global_auth_tok_cache\00", [33 x i8] zeroinitializer }, align 32
@ecryptfs_key_tfm_cache = external dso_local global ptr, align 4
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ecryptfs_key_tfm_cache\00", [41 x i8] zeroinitializer }, align 32
@ecryptfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Failed to allocate one or more kmem_cache objects\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ecryptfs_init\00", [18 x i8] zeroinitializer }, align 32
@ecryptfs_init._entry_ptr = internal global ptr @ecryptfs_init._entry, section ".printk_index", align 4
@ecryptfs_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013sysfs registration failed\0A\00", [35 x i8] zeroinitializer }, align 32
@ecryptfs_init._entry_ptr.79 = internal global ptr @ecryptfs_init._entry.77, section ".printk_index", align 4
@ecryptfs_init._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.76, ptr @.str, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: kthread initialization failed; rc = [%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@ecryptfs_init._entry_ptr.82 = internal global ptr @ecryptfs_init._entry.80, section ".printk_index", align 4
@ecryptfs_init._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.76, ptr @.str, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\013Failure occurred while attempting to initialize the communications channel to ecryptfsd\0A\00", [37 x i8] zeroinitializer }, align 32
@ecryptfs_init._entry_ptr.85 = internal global ptr @ecryptfs_init._entry.83, section ".printk_index", align 4
@ecryptfs_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.76, ptr @.str, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013Failure whilst attempting to init crypto; rc = [%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@ecryptfs_init._entry_ptr.88 = internal global ptr @ecryptfs_init._entry.86, section ".printk_index", align 4
@ecryptfs_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.76, ptr @.str, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Failed to register filesystem\0A\00", [63 x i8] zeroinitializer }, align 32
@ecryptfs_init._entry_ptr.91 = internal global ptr @ecryptfs_init._entry.89, section ".printk_index", align 4
@ecryptfs_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.76, ptr @.str, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\012eCryptfs verbosity set to %d. Secret values will be written to the syslog!\0A\00", [50 x i8] zeroinitializer }, align 32
@ecryptfs_init._entry_ptr.94 = internal global ptr @ecryptfs_init._entry.92, section ".printk_index", align 4
@.str.95 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: %s: kmem_cache_create failed\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_init_kmem_caches = private unnamed_addr constant [26 x i8] c"ecryptfs_init_kmem_caches\00", align 1
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@do_sysfs_registration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Unable to create ecryptfs kset\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"do_sysfs_registration\00", [42 x i8] zeroinitializer }, align 32
@do_sysfs_registration._entry_ptr = internal global ptr @do_sysfs_registration._entry, section ".printk_index", align 4
@do_sysfs_registration._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Unable to create ecryptfs version attributes\0A\00", [48 x i8] zeroinitializer }, align 32
@do_sysfs_registration._entry_ptr.100 = internal global ptr @do_sysfs_registration._entry.98, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"ecryptfs_verbosity\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 30, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant [25 x i8] c"ecryptfs_message_buf_len\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 40, i32 14 }
@___asan_gen_.107 = private unnamed_addr constant [30 x i8] c"ecryptfs_message_wait_timeout\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 52, i32 13 }
@___asan_gen_.110 = private unnamed_addr constant [25 x i8] c"ecryptfs_number_of_users\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 65, i32 14 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 130, i32 6 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 887, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"ecryptfs_fs_type\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 635, i32 32 }
@___asan_gen_.128 = private unnamed_addr constant [23 x i8] c"ecryptfs_sb_info_cache\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 466, i32 20 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 114, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [14 x i8] c"ecryptfs_kobj\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 767, i32 24 }
@___asan_gen_.143 = private unnamed_addr constant [11 x i8] c"attr_group\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 782, i32 37 }
@___asan_gen_.146 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 777, i32 26 }
@___asan_gen_.149 = private unnamed_addr constant [13 x i8] c"version_attr\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 775, i32 30 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 775, i32 45 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 772, i32 35 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 637, i32 10 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 483, i32 20 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 497, i32 9 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 503, i32 9 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 526, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 529, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 534, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 542, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 548, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 579, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 615, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 276, i32 31 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 166, i32 28 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 287, i32 5 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 339, i32 5 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 380, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 387, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 414, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 428, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 446, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 460, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 218, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 167, i32 21 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 168, i32 30 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 169, i32 24 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 170, i32 33 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 171, i32 36 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 172, i32 29 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 173, i32 32 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 174, i32 32 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 175, i32 26 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 176, i32 27 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 177, i32 37 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 178, i32 29 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 179, i32 37 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 180, i32 32 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 198, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant [21 x i8] c"ecryptfs_cache_infos\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 663, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 666, i32 11 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 671, i32 11 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 676, i32 11 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 681, i32 11 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 688, i32 11 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 693, i32 11 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 698, i32 11 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 703, i32 11 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 708, i32 11 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 713, i32 11 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 718, i32 11 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 829, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 835, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 840, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 846, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 853, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 859, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 863, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 758, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 792, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.407 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.408 = private constant [22 x i8] c"../fs/ecryptfs/main.c\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 798, i32 3 }
@llvm.compiler.used = appending global [146 x ptr] [ptr @__UNIQUE_ID_alias311, ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_ecryptfs_message_buf_len306, ptr @__UNIQUE_ID_ecryptfs_message_buf_lentype305, ptr @__UNIQUE_ID_ecryptfs_message_wait_timeout308, ptr @__UNIQUE_ID_ecryptfs_message_wait_timeouttype307, ptr @__UNIQUE_ID_ecryptfs_number_of_users310, ptr @__UNIQUE_ID_ecryptfs_number_of_userstype309, ptr @__UNIQUE_ID_ecryptfs_verbosity304, ptr @__UNIQUE_ID_ecryptfs_verbositytype303, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__exitcall_ecryptfs_exit, ptr @__initcall__kmod_ecryptfs__316_901_ecryptfs_init6, ptr @__param_ecryptfs_message_buf_len, ptr @__param_ecryptfs_message_wait_timeout, ptr @__param_ecryptfs_number_of_users, ptr @__param_ecryptfs_verbosity, ptr @do_sysfs_registration._entry, ptr @do_sysfs_registration._entry.98, ptr @do_sysfs_registration._entry_ptr, ptr @do_sysfs_registration._entry_ptr.100, ptr @ecryptfs_exit, ptr @ecryptfs_exit._entry, ptr @ecryptfs_exit._entry_ptr, ptr @ecryptfs_init._entry, ptr @ecryptfs_init._entry.77, ptr @ecryptfs_init._entry.80, ptr @ecryptfs_init._entry.83, ptr @ecryptfs_init._entry.86, ptr @ecryptfs_init._entry.89, ptr @ecryptfs_init._entry.92, ptr @ecryptfs_init._entry_ptr, ptr @ecryptfs_init._entry_ptr.79, ptr @ecryptfs_init._entry_ptr.82, ptr @ecryptfs_init._entry_ptr.85, ptr @ecryptfs_init._entry_ptr.88, ptr @ecryptfs_init._entry_ptr.91, ptr @ecryptfs_init._entry_ptr.94, ptr @ecryptfs_init_global_auth_toks._entry, ptr @ecryptfs_init_global_auth_toks._entry_ptr, ptr @ecryptfs_init_lower_file._entry, ptr @ecryptfs_init_lower_file._entry_ptr, ptr @ecryptfs_mount._entry, ptr @ecryptfs_mount._entry.14, ptr @ecryptfs_mount._entry.17, ptr @ecryptfs_mount._entry.21, ptr @ecryptfs_mount._entry.24, ptr @ecryptfs_mount._entry_ptr, ptr @ecryptfs_mount._entry_ptr.16, ptr @ecryptfs_mount._entry_ptr.19, ptr @ecryptfs_mount._entry_ptr.23, ptr @ecryptfs_mount._entry_ptr.26, ptr @ecryptfs_parse_options._entry, ptr @ecryptfs_parse_options._entry.30, ptr @ecryptfs_parse_options._entry.33, ptr @ecryptfs_parse_options._entry.39, ptr @ecryptfs_parse_options._entry.42, ptr @ecryptfs_parse_options._entry.44, ptr @ecryptfs_parse_options._entry_ptr, ptr @ecryptfs_parse_options._entry_ptr.32, ptr @ecryptfs_parse_options._entry_ptr.35, ptr @ecryptfs_parse_options._entry_ptr.41, ptr @ecryptfs_parse_options._entry_ptr.43, ptr @ecryptfs_parse_options._entry_ptr.46, ptr @ecryptfs_verbosity, ptr @ecryptfs_message_buf_len, ptr @ecryptfs_message_wait_timeout, ptr @ecryptfs_number_of_users, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ecryptfs_fs_type, ptr @ecryptfs_sb_info_cache, ptr @.str.3, ptr @.str.4, ptr @ecryptfs_kobj, ptr @attr_group, ptr @attributes, ptr @version_attr, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @tokens, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.45, ptr @ecryptfs_init_mount_crypt_stat.__key, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @ecryptfs_cache_infos, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_verbosity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_message_buf_len to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_message_wait_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_number_of_users to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_sb_info_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_init_lower_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_kobj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_mount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_mount._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_mount._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_mount._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_mount._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_options._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_options._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_options._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_options._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_options._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_init_mount_crypt_stat.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_init_global_auth_toks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_cache_infos to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_init._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_init._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_sysfs_registration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_sysfs_registration._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ecryptfs_printk(ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !257
  call void @llvm.va_start(ptr nonnull %args)
  %arrayidx = getelementptr i8, ptr %fmt, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 55, i8 %2)
  %cmp = icmp eq i8 %2, 55
  br i1 %cmp, label %if.then, label %entry.if.end7.sink.split_crit_edge

entry.if.end7.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.sink.split

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %if.then.if.end7.sink.split_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then.if.end7.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.then.if.end7.sink.split_crit_edge, %entry.if.end7.sink.split_crit_edge
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %.fca.0.load.sink = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load.sink, 0
  %call = call i32 @vprintk(ptr noundef %fmt, [1 x i32] %.fca.0.insert) #11
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %if.then.if.end7_crit_edge
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vprintk(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_get_lower_file(ptr nocapture noundef readonly %dentry, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lower_file_mutex = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lower_file_mutex, i32 noundef 0) #11
  %lower_file_count = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lower_file_count, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !258
  tail call void @llvm.prefetch.p0(ptr %lower_file_count, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lower_file_count, ptr %lower_file_count, i32 1, ptr elementtype(i32) %lower_file_count) #11, !srcloc !259
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !260
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %land.rhs, label %if.else

land.rhs:                                         ; preds = %entry
  %.b56 = load i1, ptr @ecryptfs_get_lower_file.__already_done, align 1
  br i1 %.b56, label %land.rhs.if.end46_crit_edge, label %if.then, !prof !261

land.rhs.if.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ecryptfs_get_lower_file.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 9, ptr noundef null) #11
  br label %if.end46

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp38 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp38, label %if.then39, label %if.else.if.end46_crit_edge

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then39:                                        ; preds = %if.else
  %lower_file = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !247) #11
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %cred1.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred1.i, align 16
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %7 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_fsdata.i.i, align 4
  %dentry3.i = getelementptr inbounds %struct.path, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %dentry3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry3.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %call4.i = tail call i32 @ecryptfs_privileged_open(ptr noundef %lower_file, ptr noundef %10, ptr noundef %12, ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.then39.if.end46_crit_edge, label %if.then42

if.then39.if.end46_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dentry3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dentry3.i, align 4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %8, align 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %14, ptr noundef %16, i32 noundef %call4.i) #14
  %17 = ptrtoint ptr %lower_file to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %lower_file, align 4
  %call.i.i58 = tail call zeroext i1 @__kasan_check_write(ptr noundef %lower_file_count, i32 noundef 4) #11
  %18 = ptrtoint ptr %lower_file_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %lower_file_count, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.then39.if.end46_crit_edge, %if.else.if.end46_crit_edge, %if.then, %land.rhs.if.end46_crit_edge
  %rc.0 = phi i32 [ %call4.i, %if.then42 ], [ 0, %if.else.if.end46_crit_edge ], [ -22, %if.then ], [ -22, %land.rhs.if.end46_crit_edge ], [ 0, %if.then39.if.end46_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lower_file_mutex) #11
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ecryptfs_put_lower_file(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lower_file_count = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 3
  %lower_file_mutex = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 2
  %call1 = tail call i32 @atomic_dec_and_mutex_lock(ptr noundef %lower_file_count, ptr noundef %lower_file_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %1, i64 noundef 0, i64 noundef 9223372036854775807) #11
  %lower_file = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 4
  %2 = ptrtoint ptr %lower_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lower_file, align 4
  tail call void @fput(ptr noundef %3) #11
  %4 = ptrtoint ptr %lower_file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %lower_file, align 4
  tail call void @mutex_unlock(ptr noundef %lower_file_mutex) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ecryptfs_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @ecryptfs_destroy_crypto() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @ecryptfs_release_messaging() #11
  tail call void @ecryptfs_destroy_kthread() #11
  %0 = load ptr, ptr @ecryptfs_kobj, align 4
  tail call void @sysfs_remove_group(ptr noundef %0, ptr noundef nonnull @attr_group) #11
  %1 = load ptr, ptr @ecryptfs_kobj, align 4
  tail call void @kobject_put(ptr noundef %1) #11
  %call2 = tail call i32 @unregister_filesystem(ptr noundef nonnull @ecryptfs_fs_type) #11
  tail call fastcc void @ecryptfs_free_kmem_caches()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_destroy_crypto() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecryptfs_release_messaging() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecryptfs_destroy_kthread() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ecryptfs_free_kmem_caches() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_barrier() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_auth_tok_list_item_cache to i32))
  %0 = load ptr, ptr @ecryptfs_auth_tok_list_item_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_file_info_cache to i32))
  %1 = load ptr, ptr @ecryptfs_file_info_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_dentry_info_cache to i32))
  %2 = load ptr, ptr @ecryptfs_dentry_info_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_inode_info_cache to i32))
  %3 = load ptr, ptr @ecryptfs_inode_info_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #11
  %4 = load ptr, ptr @ecryptfs_sb_info_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_header_cache to i32))
  %5 = load ptr, ptr @ecryptfs_header_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_xattr_cache to i32))
  %6 = load ptr, ptr @ecryptfs_xattr_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %6) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_key_record_cache to i32))
  %7 = load ptr, ptr @ecryptfs_key_record_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %7) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_key_sig_cache to i32))
  %8 = load ptr, ptr @ecryptfs_key_sig_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %8) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_global_auth_tok_cache to i32))
  %9 = load ptr, ptr @ecryptfs_global_auth_tok_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %9) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_key_tfm_cache to i32))
  %10 = load ptr, ptr @ecryptfs_key_tfm_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %10) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 11
  br i1 %exitcond.not.i, label %if.end, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.012.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [11 x %struct.ecryptfs_cache_info], ptr @ecryptfs_cache_infos, i32 0, i32 %i.012.i
  %name.i = getelementptr [11 x %struct.ecryptfs_cache_info], ptr @ecryptfs_cache_infos, i32 0, i32 %i.012.i, i32 1
  %0 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name.i, align 4
  %size.i = getelementptr [11 x %struct.ecryptfs_cache_info], ptr @ecryptfs_cache_infos, i32 0, i32 %i.012.i, i32 2
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  %flags.i = getelementptr [11 x %struct.ecryptfs_cache_info], ptr @ecryptfs_cache_infos, i32 0, i32 %i.012.i, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %5, 8192
  %ctor.i = getelementptr [11 x %struct.ecryptfs_cache_info], ptr @ecryptfs_cache_infos, i32 0, i32 %i.012.i, i32 4
  %6 = ptrtoint ptr %ctor.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctor.i, align 4
  %call.i = tail call ptr @kmem_cache_create(ptr noundef %1, i32 noundef %3, i32 noundef 0, i32 noundef %or.i, ptr noundef %7) #11
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %9, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end, label %for.cond.i

do.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ecryptfs_free_kmem_caches() #11
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @__func__.ecryptfs_init_kmem_caches, ptr noundef %1) #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #14
  br label %out

if.end:                                           ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %11 = load ptr, ptr @fs_kobj, align 4
  %call.i63 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.7, ptr noundef %11) #11
  store ptr %call.i63, ptr @ecryptfs_kobj, align 4
  %tobool.not.i64 = icmp eq ptr %call.i63, null
  br i1 %tobool.not.i64, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #14
  br label %do.end7

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call i32 @sysfs_create_group(ptr noundef nonnull %call.i63, ptr noundef nonnull @attr_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end10, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99) #14
  %12 = load ptr, ptr @ecryptfs_kobj, align 4
  tail call void @kobject_put(ptr noundef %12) #11
  br label %do.end7

do.end7:                                          ; preds = %do.end7.i, %do.end.i
  %rc.0.i.ph = phi i32 [ -12, %do.end.i ], [ %call2.i, %do.end7.i ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #14
  br label %out_free_kmem_caches

if.end10:                                         ; preds = %if.end.i
  %call11 = tail call i32 @ecryptfs_init_kthread() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.76, i32 noundef %call11) #14
  br label %out_do_sysfs_unregistration

if.end19:                                         ; preds = %if.end10
  %call20 = tail call i32 @ecryptfs_init_messaging() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #14
  br label %out_destroy_kthread

if.end28:                                         ; preds = %if.end19
  %call29 = tail call i32 @ecryptfs_init_crypto() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %call29) #14
  br label %out_release_messaging

if.end37:                                         ; preds = %if.end28
  %call38 = tail call i32 @register_filesystem(ptr noundef nonnull @ecryptfs_fs_type) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end46, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #14
  %call54 = tail call i32 @ecryptfs_destroy_crypto() #11
  br label %out_release_messaging

if.end46:                                         ; preds = %if.end37
  %13 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %do.end50, label %if.end46.out_crit_edge

if.end46.out_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end50:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %13) #14
  br label %out

out_release_messaging:                            ; preds = %do.end43, %do.end34
  %rc.0 = phi i32 [ %call29, %do.end34 ], [ %call38, %do.end43 ]
  tail call void @ecryptfs_release_messaging() #11
  br label %out_destroy_kthread

out_destroy_kthread:                              ; preds = %out_release_messaging, %do.end25
  %rc.1 = phi i32 [ %call20, %do.end25 ], [ %rc.0, %out_release_messaging ]
  tail call void @ecryptfs_destroy_kthread() #11
  br label %out_do_sysfs_unregistration

out_do_sysfs_unregistration:                      ; preds = %out_destroy_kthread, %do.end16
  %rc.2 = phi i32 [ %call11, %do.end16 ], [ %rc.1, %out_destroy_kthread ]
  %14 = load ptr, ptr @ecryptfs_kobj, align 4
  tail call void @sysfs_remove_group(ptr noundef %14, ptr noundef nonnull @attr_group) #11
  %15 = load ptr, ptr @ecryptfs_kobj, align 4
  tail call void @kobject_put(ptr noundef %15) #11
  br label %out_free_kmem_caches

out_free_kmem_caches:                             ; preds = %out_do_sysfs_unregistration, %do.end7
  %rc.3 = phi i32 [ %rc.0.i.ph, %do.end7 ], [ %rc.2, %out_do_sysfs_unregistration ]
  tail call fastcc void @ecryptfs_free_kmem_caches()
  br label %out

out:                                              ; preds = %out_free_kmem_caches, %do.end50, %if.end46.out_crit_edge, %do.end
  %rc.4 = phi i32 [ -12, %do.end ], [ %rc.3, %out_free_kmem_caches ], [ 0, %do.end50 ], [ 0, %if.end46.out_crit_edge ]
  ret i32 %rc.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_privileged_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buff) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buff, i32 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef 375)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ecryptfs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %raw_data) #0 align 64 {
entry:
  %auth_tok.i.i = alloca ptr, align 4
  %options.addr.i = alloca ptr, align 4
  %args.i = alloca [3 x %struct.substring_t], align 4
  %cipher_key_bytes_src.i = alloca ptr, align 4
  %fn_cipher_key_bytes_src.i = alloca ptr, align 4
  %path = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #11
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 8, !annotation !257
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !257
  %3 = load ptr, ptr @ecryptfs_sb_info_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.do.end126_crit_edge, label %if.end

entry.do.end126_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end126

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %dev_name, null
  br i1 %tobool1.not, label %if.end.if.then121_crit_edge, label %if.end3

if.end.if.then121_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then121

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.addr.i)
  %4 = ptrtoint ptr %options.addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %raw_data, ptr %options.addr.i, align 4
  %mount_crypt_stat1.i = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %call.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #11
  %5 = call ptr @memset(ptr %args.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cipher_key_bytes_src.i) #11
  %6 = ptrtoint ptr %cipher_key_bytes_src.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %cipher_key_bytes_src.i, align 4, !annotation !257
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fn_cipher_key_bytes_src.i) #11
  %7 = ptrtoint ptr %fn_cipher_key_bytes_src.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %fn_cipher_key_bytes_src.i, align 4, !annotation !257
  %tobool.not.i = icmp eq ptr %raw_data, null
  br i1 %tobool.not.i, label %if.end3.ecryptfs_parse_options.exit.thread_crit_edge, label %if.end.i

if.end3.ecryptfs_parse_options.exit.thread_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %ecryptfs_parse_options.exit.thread

if.end.i:                                         ; preds = %if.end3
  %8 = call ptr @memset(ptr %mount_crypt_stat1.i, i32 0, i32 196)
  %global_auth_tok_list.i.i = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %call.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %global_auth_tok_list.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %global_auth_tok_list.i.i, ptr %global_auth_tok_list.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %call.i, i32 0, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %global_auth_tok_list.i.i, ptr %prev.i.i.i, align 4
  %global_auth_tok_list_mutex.i.i = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %call.i, i32 0, i32 1, i32 2
  tail call void @__mutex_init(ptr noundef %global_auth_tok_list_mutex.i.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @ecryptfs_init_mount_crypt_stat.__key) #11
  %11 = ptrtoint ptr %mount_crypt_stat1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mount_crypt_stat1.i, align 4
  %or.i.i = or i32 %12, 8
  store i32 %or.i.i, ptr %mount_crypt_stat1.i, align 4
  %global_default_fn_cipher_key_bytes.i = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %call.i, i32 0, i32 1, i32 4
  %global_default_fn_cipher_name.i = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %call.i, i32 0, i32 1, i32 6
  %arrayidx58.i = getelementptr %struct.ecryptfs_sb_info, ptr %call.i, i32 0, i32 1, i32 6, i32 31
  %global_default_fnek_sig.i = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %call.i, i32 0, i32 1, i32 7
  %arrayidx36.i = getelementptr %struct.ecryptfs_sb_info, ptr %call.i, i32 0, i32 1, i32 7, i32 16
  %global_default_cipher_key_size.i = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %call.i, i32 0, i32 1, i32 3
  %global_default_cipher_name.i = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %call.i, i32 0, i32 1, i32 5
  %arrayidx16.i = getelementptr %struct.ecryptfs_sb_info, ptr %call.i, i32 0, i32 1, i32 5, i32 31
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %while.cond.outer.i.backedge, %if.end.i
  %check_ruid.0 = phi i32 [ 0, %if.end.i ], [ %check_ruid.0.be, %while.cond.outer.i.backedge ]
  %fn_cipher_key_bytes_set.0.ph.i = phi i32 [ 0, %if.end.i ], [ %fn_cipher_key_bytes_set.0.ph.i.be, %while.cond.outer.i.backedge ]
  %cipher_key_bytes_set.0.ph.i = phi i32 [ 0, %if.end.i ], [ %cipher_key_bytes_set.0.ph.i.be, %while.cond.outer.i.backedge ]
  %fn_cipher_name_set.0.ph.i = phi i32 [ 0, %if.end.i ], [ %fn_cipher_name_set.0.ph.i.be, %while.cond.outer.i.backedge ]
  %cipher_name_set.0.ph.i = phi i32 [ 0, %if.end.i ], [ %cipher_name_set.0.ph.i.be, %while.cond.outer.i.backedge ]
  %sig_set.0.ph.i = phi i32 [ 0, %if.end.i ], [ %sig_set.0.ph.i.be, %while.cond.outer.i.backedge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.outer.i
  %call.i177 = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.27) #11
  %cmp.not.i = icmp eq ptr %call.i177, null
  br i1 %cmp.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %13 = ptrtoint ptr %call.i177 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call.i177, align 1
  %tobool2.not.i = icmp eq i8 %14, 0
  br i1 %tobool2.not.i, label %while.body.i.while.cond.i_crit_edge, label %if.end4.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

if.end4.i:                                        ; preds = %while.body.i
  %call5.i = call i32 @match_token(ptr noundef nonnull %call.i177, ptr noundef nonnull @tokens, ptr noundef nonnull %args.i) #11
  %15 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5.i, label %do.end73.i [
    i32 0, label %if.end4.i.sw.bb.i_crit_edge
    i32 1, label %if.end4.i.sw.bb.i_crit_edge302
    i32 2, label %if.end4.i.sw.bb11.i_crit_edge
    i32 3, label %if.end4.i.sw.bb11.i_crit_edge303
    i32 4, label %sw.bb17.i
    i32 5, label %sw.bb21.i
    i32 6, label %sw.bb22.i
    i32 7, label %sw.bb25.i
    i32 8, label %sw.bb30.i
    i32 9, label %sw.bb52.i
    i32 10, label %sw.bb59.i
    i32 11, label %sw.bb63.i
    i32 12, label %sw.bb66.i
    i32 13, label %if.end4.i.while.cond.outer.i.backedge_crit_edge
  ]

if.end4.i.while.cond.outer.i.backedge_crit_edge:  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.outer.i.backedge

if.end4.i.sw.bb11.i_crit_edge303:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11.i

if.end4.i.sw.bb11.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11.i

if.end4.i.sw.bb.i_crit_edge302:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end4.i.sw.bb.i_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

while.cond.outer.i.backedge:                      ; preds = %do.end73.i, %sw.bb66.i, %sw.bb63.i, %sw.bb59.i, %sw.bb52.i, %if.end49.i, %sw.bb25.i, %sw.bb22.i, %sw.bb21.i, %sw.bb17.i, %sw.bb11.i, %sw.bb.i.while.cond.outer.i.backedge_crit_edge, %if.end4.i.while.cond.outer.i.backedge_crit_edge
  %check_ruid.0.be = phi i32 [ %check_ruid.0, %do.end73.i ], [ %check_ruid.0, %sw.bb66.i ], [ %check_ruid.0, %sw.bb63.i ], [ %check_ruid.0, %sw.bb59.i ], [ %check_ruid.0, %sw.bb52.i ], [ %check_ruid.0, %if.end49.i ], [ %check_ruid.0, %sw.bb25.i ], [ %check_ruid.0, %sw.bb22.i ], [ %check_ruid.0, %sw.bb21.i ], [ %check_ruid.0, %sw.bb17.i ], [ %check_ruid.0, %sw.bb11.i ], [ %check_ruid.0, %sw.bb.i.while.cond.outer.i.backedge_crit_edge ], [ 1, %if.end4.i.while.cond.outer.i.backedge_crit_edge ]
  %fn_cipher_key_bytes_set.0.ph.i.be = phi i32 [ %fn_cipher_key_bytes_set.0.ph.i, %do.end73.i ], [ %fn_cipher_key_bytes_set.0.ph.i, %sw.bb66.i ], [ %fn_cipher_key_bytes_set.0.ph.i, %sw.bb63.i ], [ 1, %sw.bb59.i ], [ %fn_cipher_key_bytes_set.0.ph.i, %sw.bb52.i ], [ %fn_cipher_key_bytes_set.0.ph.i, %if.end49.i ], [ %fn_cipher_key_bytes_set.0.ph.i, %sw.bb25.i ], [ %fn_cipher_key_bytes_set.0.ph.i, %sw.bb22.i ], [ %fn_cipher_key_bytes_set.0.ph.i, %sw.bb21.i ], [ %fn_cipher_key_bytes_set.0.ph.i, %sw.bb17.i ], [ %fn_cipher_key_bytes_set.0.ph.i, %sw.bb11.i ], [ %fn_cipher_key_bytes_set.0.ph.i, %sw.bb.i.while.cond.outer.i.backedge_crit_edge ], [ %fn_cipher_key_bytes_set.0.ph.i, %if.end4.i.while.cond.outer.i.backedge_crit_edge ]
  %cipher_key_bytes_set.0.ph.i.be = phi i32 [ %cipher_key_bytes_set.0.ph.i, %do.end73.i ], [ %cipher_key_bytes_set.0.ph.i, %sw.bb66.i ], [ %cipher_key_bytes_set.0.ph.i, %sw.bb63.i ], [ %cipher_key_bytes_set.0.ph.i, %sw.bb59.i ], [ %cipher_key_bytes_set.0.ph.i, %sw.bb52.i ], [ %cipher_key_bytes_set.0.ph.i, %if.end49.i ], [ %cipher_key_bytes_set.0.ph.i, %sw.bb25.i ], [ %cipher_key_bytes_set.0.ph.i, %sw.bb22.i ], [ %cipher_key_bytes_set.0.ph.i, %sw.bb21.i ], [ 1, %sw.bb17.i ], [ %cipher_key_bytes_set.0.ph.i, %sw.bb11.i ], [ %cipher_key_bytes_set.0.ph.i, %sw.bb.i.while.cond.outer.i.backedge_crit_edge ], [ %cipher_key_bytes_set.0.ph.i, %if.end4.i.while.cond.outer.i.backedge_crit_edge ]
  %fn_cipher_name_set.0.ph.i.be = phi i32 [ %fn_cipher_name_set.0.ph.i, %do.end73.i ], [ %fn_cipher_name_set.0.ph.i, %sw.bb66.i ], [ %fn_cipher_name_set.0.ph.i, %sw.bb63.i ], [ %fn_cipher_name_set.0.ph.i, %sw.bb59.i ], [ 1, %sw.bb52.i ], [ %fn_cipher_name_set.0.ph.i, %if.end49.i ], [ %fn_cipher_name_set.0.ph.i, %sw.bb25.i ], [ %fn_cipher_name_set.0.ph.i, %sw.bb22.i ], [ %fn_cipher_name_set.0.ph.i, %sw.bb21.i ], [ %fn_cipher_name_set.0.ph.i, %sw.bb17.i ], [ %fn_cipher_name_set.0.ph.i, %sw.bb11.i ], [ %fn_cipher_name_set.0.ph.i, %sw.bb.i.while.cond.outer.i.backedge_crit_edge ], [ %fn_cipher_name_set.0.ph.i, %if.end4.i.while.cond.outer.i.backedge_crit_edge ]
  %cipher_name_set.0.ph.i.be = phi i32 [ %cipher_name_set.0.ph.i, %do.end73.i ], [ %cipher_name_set.0.ph.i, %sw.bb66.i ], [ %cipher_name_set.0.ph.i, %sw.bb63.i ], [ %cipher_name_set.0.ph.i, %sw.bb59.i ], [ %cipher_name_set.0.ph.i, %sw.bb52.i ], [ %cipher_name_set.0.ph.i, %if.end49.i ], [ %cipher_name_set.0.ph.i, %sw.bb25.i ], [ %cipher_name_set.0.ph.i, %sw.bb22.i ], [ %cipher_name_set.0.ph.i, %sw.bb21.i ], [ %cipher_name_set.0.ph.i, %sw.bb17.i ], [ 1, %sw.bb11.i ], [ %cipher_name_set.0.ph.i, %sw.bb.i.while.cond.outer.i.backedge_crit_edge ], [ %cipher_name_set.0.ph.i, %if.end4.i.while.cond.outer.i.backedge_crit_edge ]
  %sig_set.0.ph.i.be = phi i32 [ %sig_set.0.ph.i, %do.end73.i ], [ %sig_set.0.ph.i, %sw.bb66.i ], [ %sig_set.0.ph.i, %sw.bb63.i ], [ %sig_set.0.ph.i, %sw.bb59.i ], [ %sig_set.0.ph.i, %sw.bb52.i ], [ %sig_set.0.ph.i, %if.end49.i ], [ %sig_set.0.ph.i, %sw.bb25.i ], [ %sig_set.0.ph.i, %sw.bb22.i ], [ %sig_set.0.ph.i, %sw.bb21.i ], [ %sig_set.0.ph.i, %sw.bb17.i ], [ %sig_set.0.ph.i, %sw.bb11.i ], [ 1, %sw.bb.i.while.cond.outer.i.backedge_crit_edge ], [ %sig_set.0.ph.i, %if.end4.i.while.cond.outer.i.backedge_crit_edge ]
  br label %while.cond.outer.i

sw.bb.i:                                          ; preds = %if.end4.i.sw.bb.i_crit_edge, %if.end4.i.sw.bb.i_crit_edge302
  %16 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %args.i, align 4
  %call6.i = call i32 @ecryptfs_add_global_auth_tok(ptr noundef %mount_crypt_stat1.i, ptr noundef %17, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %sw.bb.i.while.cond.outer.i.backedge_crit_edge, label %do.end.i

sw.bb.i.while.cond.outer.i.backedge_crit_edge:    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.outer.i.backedge

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call6.i) #14
  br label %ecryptfs_parse_options.exit.thread

sw.bb11.i:                                        ; preds = %if.end4.i.sw.bb11.i_crit_edge, %if.end4.i.sw.bb11.i_crit_edge303
  %18 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %args.i, align 4
  %call15.i = call ptr @strncpy(ptr noundef %global_default_cipher_name.i, ptr noundef %19, i32 noundef 31) #11
  %20 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx16.i, align 1
  br label %while.cond.outer.i.backedge

sw.bb17.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %args.i, align 4
  %23 = ptrtoint ptr %cipher_key_bytes_src.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %cipher_key_bytes_src.i, align 4
  %call20.i = call i32 @simple_strtol(ptr noundef %22, ptr noundef nonnull %cipher_key_bytes_src.i, i32 noundef 0) #11
  %24 = ptrtoint ptr %global_default_cipher_key_size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call20.i, ptr %global_default_cipher_key_size.i, align 4
  br label %while.cond.outer.i.backedge

sw.bb21.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %mount_crypt_stat1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mount_crypt_stat1.i, align 4
  %or.i = or i32 %26, 1
  store i32 %or.i, ptr %mount_crypt_stat1.i, align 4
  br label %while.cond.outer.i.backedge

sw.bb22.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %mount_crypt_stat1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mount_crypt_stat1.i, align 4
  %or24.i = or i32 %28, 2
  store i32 %or24.i, ptr %mount_crypt_stat1.i, align 4
  br label %while.cond.outer.i.backedge

sw.bb25.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %mount_crypt_stat1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mount_crypt_stat1.i, align 4
  %or29.i = or i32 %30, 6
  store i32 %or29.i, ptr %mount_crypt_stat1.i, align 4
  br label %while.cond.outer.i.backedge

sw.bb30.i:                                        ; preds = %if.end4.i
  %31 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %args.i, align 4
  %call34.i = call ptr @strncpy(ptr noundef %global_default_fnek_sig.i, ptr noundef %32, i32 noundef 16) #11
  %33 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx36.i, align 4
  %call39.i = call i32 @ecryptfs_add_global_auth_tok(ptr noundef %mount_crypt_stat1.i, ptr noundef %global_default_fnek_sig.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end49.i, label %do.end44.i

do.end44.i:                                       ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #13
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %global_default_fnek_sig.i, i32 noundef %call39.i) #14
  br label %ecryptfs_parse_options.exit.thread

if.end49.i:                                       ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %mount_crypt_stat1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mount_crypt_stat1.i, align 4
  %or51.i = or i32 %35, 48
  store i32 %or51.i, ptr %mount_crypt_stat1.i, align 4
  br label %while.cond.outer.i.backedge

sw.bb52.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %args.i, align 4
  %call56.i = call ptr @strncpy(ptr noundef %global_default_fn_cipher_name.i, ptr noundef %37, i32 noundef 31) #11
  %38 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx58.i, align 1
  br label %while.cond.outer.i.backedge

sw.bb59.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %args.i, align 4
  %41 = ptrtoint ptr %fn_cipher_key_bytes_src.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %fn_cipher_key_bytes_src.i, align 4
  %call62.i = call i32 @simple_strtol(ptr noundef %40, ptr noundef nonnull %fn_cipher_key_bytes_src.i, i32 noundef 0) #11
  %42 = ptrtoint ptr %global_default_fn_cipher_key_bytes.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call62.i, ptr %global_default_fn_cipher_key_bytes.i, align 8
  br label %while.cond.outer.i.backedge

sw.bb63.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %mount_crypt_stat1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mount_crypt_stat1.i, align 4
  %or65.i = or i32 %44, 8192
  store i32 %or65.i, ptr %mount_crypt_stat1.i, align 4
  br label %while.cond.outer.i.backedge

sw.bb66.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %mount_crypt_stat1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mount_crypt_stat1.i, align 4
  %or68.i = or i32 %46, 128
  store i32 %or68.i, ptr %mount_crypt_stat1.i, align 4
  br label %while.cond.outer.i.backedge

do.end73.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %call75.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29, ptr noundef nonnull %call.i177) #14
  br label %while.cond.outer.i.backedge

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sig_set.0.ph.i)
  %tobool76.not.i = icmp eq i32 %sig_set.0.ph.i, 0
  br i1 %tobool76.not.i, label %if.then77.i, label %if.end78.i

if.then77.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.29) #11
  br label %ecryptfs_parse_options.exit.thread

if.end78.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cipher_name_set.0.ph.i)
  %tobool79.not.i = icmp eq i32 %cipher_name_set.0.ph.i, 0
  br i1 %tobool79.not.i, label %do.end94.i, label %if.end78.i.if.end98.i_crit_edge

if.end78.i.if.end98.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98.i

do.end94.i:                                       ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %global_default_cipher_name.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1634038528, ptr %global_default_cipher_name.i, align 4
  br label %if.end98.i

if.end98.i:                                       ; preds = %do.end94.i, %if.end78.i.if.end98.i_crit_edge
  %48 = ptrtoint ptr %mount_crypt_stat1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mount_crypt_stat1.i, align 4
  %and.i = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool100.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fn_cipher_name_set.0.ph.i)
  %tobool101.not.i = icmp eq i32 %fn_cipher_name_set.0.ph.i, 0
  %or.cond.i = select i1 %tobool100.not.i, i1 %tobool101.not.i, i1 false
  br i1 %or.cond.i, label %if.then102.i, label %if.end98.i.if.end108.i_crit_edge

if.end98.i.if.end108.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108.i

if.then102.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #13
  %call107.i = call ptr @strcpy(ptr noundef %global_default_fn_cipher_name.i, ptr noundef %global_default_cipher_name.i) #15
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then102.i, %if.end98.i.if.end108.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cipher_key_bytes_set.0.ph.i)
  %tobool109.not.i = icmp eq i32 %cipher_key_bytes_set.0.ph.i, 0
  br i1 %tobool109.not.i, label %if.then110.i, label %if.end108.i.if.end112.i_crit_edge

if.end108.i.if.end112.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112.i

if.then110.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %global_default_cipher_key_size.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %global_default_cipher_key_size.i, align 4
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.then110.i, %if.end108.i.if.end112.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fn_cipher_key_bytes_set.0.ph.i)
  %tobool117.not.i = icmp eq i32 %fn_cipher_key_bytes_set.0.ph.i, 0
  %or.cond241.i = select i1 %tobool100.not.i, i1 %tobool117.not.i, i1 false
  br i1 %or.cond241.i, label %if.then118.i, label %if.end112.i.if.end121.i_crit_edge

if.end112.i.if.end121.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121.i

if.then118.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %global_default_cipher_key_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %global_default_cipher_key_size.i, align 4
  %53 = ptrtoint ptr %global_default_fn_cipher_key_bytes.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %global_default_fn_cipher_key_bytes.i, align 8
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then118.i, %if.end112.i.if.end121.i_crit_edge
  %54 = ptrtoint ptr %global_default_cipher_key_size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %global_default_cipher_key_size.i, align 4
  %call125.i = call zeroext i8 @ecryptfs_code_for_cipher_string(ptr noundef %global_default_cipher_name.i, i32 noundef %55) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call125.i)
  %tobool126.not.i = icmp eq i8 %call125.i, 0
  br i1 %tobool126.not.i, label %if.then127.i, label %if.end130.i

if.then127.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.29, ptr noundef %global_default_cipher_name.i) #11
  br label %ecryptfs_parse_options.exit.thread

if.end130.i:                                      ; preds = %if.end121.i
  call void @mutex_lock_nested(ptr noundef nonnull @key_tfm_list_mutex, i32 noundef 0) #11
  %call133.i = call i32 @ecryptfs_tfm_exists(ptr noundef %global_default_cipher_name.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.i)
  %tobool134.not.i = icmp eq i32 %call133.i, 0
  br i1 %tobool134.not.i, label %if.then135.i, label %if.end130.i.if.end151.i_crit_edge

if.end130.i.if.end151.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151.i

if.then135.i:                                     ; preds = %if.end130.i
  %56 = ptrtoint ptr %global_default_cipher_key_size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %global_default_cipher_key_size.i, align 4
  %call139.i = call i32 @ecryptfs_add_new_key_tfm(ptr noundef null, ptr noundef %global_default_cipher_name.i, i32 noundef %57) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.i)
  %tobool140.not.i = icmp eq i32 %call139.i, 0
  br i1 %tobool140.not.i, label %if.then135.i.if.end151.i_crit_edge, label %do.end144.i

if.then135.i.if.end151.i_crit_edge:               ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151.i

do.end144.i:                                      ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %global_default_cipher_key_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %global_default_cipher_key_size.i, align 4
  %call149.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %global_default_cipher_name.i, i32 noundef %59, i32 noundef %call139.i) #14
  call void @mutex_unlock(ptr noundef nonnull @key_tfm_list_mutex) #11
  br label %ecryptfs_parse_options.exit.thread

if.end151.i:                                      ; preds = %if.then135.i.if.end151.i_crit_edge, %if.end130.i.if.end151.i_crit_edge
  %60 = ptrtoint ptr %mount_crypt_stat1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mount_crypt_stat1.i, align 4
  %and153.i = and i32 %61, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153.i)
  %tobool154.not.i = icmp eq i32 %and153.i, 0
  br i1 %tobool154.not.i, label %if.end151.i.if.end176.i_crit_edge, label %land.lhs.true155.i

if.end151.i.if.end176.i_crit_edge:                ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176.i

land.lhs.true155.i:                               ; preds = %if.end151.i
  %call158.i = call i32 @ecryptfs_tfm_exists(ptr noundef %global_default_fn_cipher_name.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158.i)
  %tobool159.not.i = icmp eq i32 %call158.i, 0
  br i1 %tobool159.not.i, label %if.then160.i, label %land.lhs.true155.i.if.end176.i_crit_edge

land.lhs.true155.i.if.end176.i_crit_edge:         ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176.i

if.then160.i:                                     ; preds = %land.lhs.true155.i
  %62 = ptrtoint ptr %global_default_fn_cipher_key_bytes.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %global_default_fn_cipher_key_bytes.i, align 8
  %call164.i = call i32 @ecryptfs_add_new_key_tfm(ptr noundef null, ptr noundef %global_default_fn_cipher_name.i, i32 noundef %63) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164.i)
  %tobool165.not.i = icmp eq i32 %call164.i, 0
  br i1 %tobool165.not.i, label %if.then160.i.if.end176.i_crit_edge, label %do.end169.i

if.then160.i.if.end176.i_crit_edge:               ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176.i

do.end169.i:                                      ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %global_default_fn_cipher_key_bytes.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %global_default_fn_cipher_key_bytes.i, align 8
  %call174.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %global_default_fn_cipher_name.i, i32 noundef %65, i32 noundef %call164.i) #14
  call void @mutex_unlock(ptr noundef nonnull @key_tfm_list_mutex) #11
  br label %ecryptfs_parse_options.exit.thread

if.end176.i:                                      ; preds = %if.then160.i.if.end176.i_crit_edge, %land.lhs.true155.i.if.end176.i_crit_edge, %if.end151.i.if.end176.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @key_tfm_list_mutex) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %auth_tok.i.i) #11
  %66 = ptrtoint ptr %auth_tok.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 -1 to ptr), ptr %auth_tok.i.i, align 4, !annotation !257
  %67 = ptrtoint ptr %global_auth_tok_list.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn23.i.i = load ptr, ptr %global_auth_tok_list.i.i, align 8
  %cmp.not25.i.i = icmp eq ptr %.pn23.i.i, %global_auth_tok_list.i.i
  br i1 %cmp.not25.i.i, label %if.end176.i.if.end7_crit_edge, label %if.end176.i.for.body.i.i_crit_edge

if.end176.i.for.body.i.i_crit_edge:               ; preds = %if.end176.i
  br label %for.body.i.i

if.end176.i.if.end7_crit_edge:                    ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

for.body.i.i:                                     ; preds = %if.else.i.i.for.body.i.i_crit_edge, %if.end176.i.for.body.i.i_crit_edge
  %.pn26.i.i = phi ptr [ %.pn.i.i, %if.else.i.i.for.body.i.i_crit_edge ], [ %.pn23.i.i, %if.end176.i.for.body.i.i_crit_edge ]
  %global_auth_tok.027.i.i = getelementptr i8, ptr %.pn26.i.i, i32 -4
  %global_auth_tok_key.i.i = getelementptr i8, ptr %.pn26.i.i, i32 8
  %sig.i.i = getelementptr i8, ptr %.pn26.i.i, i32 12
  %call.i.i = call i32 @ecryptfs_keyring_auth_tok_for_sig(ptr noundef %global_auth_tok_key.i.i, ptr noundef nonnull %auth_tok.i.i, ptr noundef %sig.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.end182.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %68 = ptrtoint ptr %global_auth_tok.027.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %global_auth_tok.027.i.i, align 4
  %and.i.i = and i32 %69, -2
  store i32 %and.i.i, ptr %global_auth_tok.027.i.i, align 4
  %70 = ptrtoint ptr %global_auth_tok_key.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %global_auth_tok_key.i.i, align 4
  %sem.i.i = getelementptr inbounds %struct.key, ptr %71, i32 0, i32 4
  call void @up_write(ptr noundef %sem.i.i) #11
  %72 = ptrtoint ptr %.pn26.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn.i.i = load ptr, ptr %.pn26.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %global_auth_tok_list.i.i
  br i1 %cmp.not.i.i, label %if.else.i.i.if.end7_crit_edge, label %if.else.i.i.for.body.i.i_crit_edge

if.else.i.i.for.body.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.else.i.i.if.end7_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

do.end182.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %sig.i.i) #14
  %73 = ptrtoint ptr %global_auth_tok.027.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %global_auth_tok.027.i.i, align 4
  %or.i243.i = or i32 %74, 1
  store i32 %or.i243.i, ptr %global_auth_tok.027.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %auth_tok.i.i) #11
  %call184.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %call.i.i) #14
  br label %ecryptfs_parse_options.exit.thread

ecryptfs_parse_options.exit.thread:               ; preds = %do.end182.i, %do.end169.i, %do.end144.i, %if.then127.i, %if.then77.i, %do.end44.i, %do.end.i, %if.end3.ecryptfs_parse_options.exit.thread_crit_edge
  %rc.0.i.ph = phi i32 [ -22, %if.end3.ecryptfs_parse_options.exit.thread_crit_edge ], [ -22, %if.then77.i ], [ -22, %if.then127.i ], [ -22, %do.end144.i ], [ -22, %do.end169.i ], [ %call.i.i, %do.end182.i ], [ %call6.i, %do.end.i ], [ %call39.i, %do.end44.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fn_cipher_key_bytes_src.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cipher_key_bytes_src.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  br label %out

if.end7:                                          ; preds = %if.else.i.i.if.end7_crit_edge, %if.end176.i.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %auth_tok.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fn_cipher_key_bytes_src.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cipher_key_bytes_src.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  %call9 = call ptr @sget(ptr noundef %fs_type, ptr noundef null, ptr noundef nonnull @set_anon_super, i32 noundef %flags, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %call9 to i32
  br label %out

if.end13:                                         ; preds = %if.end7
  %call14 = call i32 @super_setup_bdi(ptr noundef %call9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.out1_crit_edge

if.end13.out1_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out1

if.end17:                                         ; preds = %if.end13
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 33
  %76 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i, ptr %s_fs_info.i, align 16
  %s_op = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 6
  %77 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @ecryptfs_sops, ptr %s_op, align 4
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 18
  %78 = ptrtoint ptr %s_xattr to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @ecryptfs_xattr_handlers, ptr %s_xattr, align 16
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 45
  %79 = ptrtoint ptr %s_d_op to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @ecryptfs_dops, ptr %s_d_op, align 8
  %call18 = call i32 @kern_path(ptr noundef nonnull %dev_name, i32 noundef 3, ptr noundef nonnull %path) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ecryptfs_mount)
  br label %out1

if.end21:                                         ; preds = %if.end17
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %81, i32 0, i32 9
  %82 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %d_sb, align 4
  %s_type = getelementptr inbounds %struct.super_block, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_type, align 32
  %cmp = icmp eq ptr %85, @ecryptfs_fs_type
  br i1 %cmp, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #14
  br label %out_free

if.end24:                                         ; preds = %if.end21
  %86 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %path, align 8
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !262
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %87, i32 0, i32 1
  %90 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mnt_sb.i, align 4
  %s_user_ns.i = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 53
  %92 = ptrtoint ptr %s_user_ns.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_user_ns.i, align 8
  %cmp.i178.not = icmp eq ptr %89, %93
  br i1 %cmp.i178.not, label %if.end32, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  br label %out_free

if.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_ruid.0)
  %tobool33.not = icmp eq i32 %check_ruid.0, 0
  br i1 %tobool33.not, label %if.end32.if.end63_crit_edge, label %land.lhs.true

if.end32.if.end63_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

land.lhs.true:                                    ; preds = %if.end32
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %d_inode.i, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %97, i32 0, i32 2
  %98 = call i32 @llvm.read_register.i32(metadata !247) #11
  %and.i179 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i179 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %101, i32 0, i32 99
  %102 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cred, align 16
  %uid = getelementptr inbounds %struct.cred, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %104)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %uid, align 4
  %105 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %105)
  %.unpack = load i32, ptr %i_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %agg.tmp.sroa.0.0.copyload)
  %cmp.i180 = icmp eq i32 %.unpack, %agg.tmp.sroa.0.0.copyload
  br i1 %cmp.i180, label %land.lhs.true.if.end63_crit_edge, label %if.then43

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %97, i32 0, i32 8
  %106 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %107, i32 0, i32 53
  %108 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s_user_ns.i.i, align 8
  %110 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call1.i = call i32 @from_kuid(ptr noundef %109, [1 x i32] %110) #11
  %111 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %task, align 8
  %cred58 = getelementptr inbounds %struct.task_struct, ptr %112, i32 0, i32 99
  %113 = ptrtoint ptr %cred58 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cred58, align 16
  %uid59 = getelementptr inbounds %struct.cred, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %uid59 to i32
  call void @__asan_load4_noabort(i32 %115)
  %agg.tmp51.sroa.0.0.copyload = load i32, ptr %uid59, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp51.sroa.0.0.copyload, 0
  %call61 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #11
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call1.i, i32 noundef %call61) #14
  br label %out_free

if.end63:                                         ; preds = %land.lhs.true.if.end63_crit_edge, %if.end32.if.end63_crit_edge
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 4
  %d_sb65 = getelementptr inbounds %struct.dentry, ptr %117, i32 0, i32 9
  %118 = ptrtoint ptr %d_sb65 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %d_sb65, align 4
  %120 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %s_fs_info.i, align 16
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %119, ptr %121, align 4
  %and = and i32 %flags, -65537
  %s_flags = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 10
  %123 = ptrtoint ptr %s_flags to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %and, ptr %s_flags, align 4
  %124 = load ptr, ptr %1, align 4
  %d_sb67 = getelementptr inbounds %struct.dentry, ptr %124, i32 0, i32 9
  %125 = ptrtoint ptr %d_sb67 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %d_sb67, align 4
  %s_flags68 = getelementptr inbounds %struct.super_block, ptr %126, i32 0, i32 10
  %127 = ptrtoint ptr %s_flags68 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %s_flags68, align 4
  %and69 = and i32 %128, 65536
  %or = or i32 %and69, %and
  store i32 %or, ptr %s_flags, align 4
  %129 = load ptr, ptr %d_sb67, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %129, i32 0, i32 10
  %130 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %s_flags.i, align 4
  %and.i183 = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i183)
  %tobool.i.not = icmp eq i32 %and.i183, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.end63.if.then77_crit_edge

if.end63.if.then77_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then77

lor.lhs.false:                                    ; preds = %if.end63
  %132 = ptrtoint ptr %mount_crypt_stat1.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mount_crypt_stat1.i, align 4
  %and75 = and i32 %133, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %lor.lhs.false.if.end80_crit_edge, label %lor.lhs.false.if.then77_crit_edge

lor.lhs.false.if.then77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then77

lor.lhs.false.if.end80_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then77:                                        ; preds = %lor.lhs.false.if.then77_crit_edge, %if.end63.if.then77_crit_edge
  %or79 = or i32 %or, 1
  %134 = ptrtoint ptr %s_flags to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %or79, ptr %s_flags, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %lor.lhs.false.if.end80_crit_edge
  %135 = ptrtoint ptr %d_sb67 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %d_sb67, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %s_maxbytes, align 8
  %s_maxbytes83 = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 4
  %139 = ptrtoint ptr %s_maxbytes83 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %138, ptr %s_maxbytes83, align 8
  %140 = load ptr, ptr %d_sb67, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %s_blocksize, align 16
  %s_blocksize86 = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 3
  %143 = ptrtoint ptr %s_blocksize86 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %s_blocksize86, align 16
  %s_magic = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 12
  %144 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 61791, ptr %s_magic, align 4
  %145 = load ptr, ptr %d_sb67, align 4
  %s_stack_depth = getelementptr inbounds %struct.super_block, ptr %145, i32 0, i32 59
  %146 = ptrtoint ptr %s_stack_depth to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %s_stack_depth, align 4
  %add = add i32 %147, 1
  %s_stack_depth89 = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 59
  %148 = ptrtoint ptr %s_stack_depth89 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %add, ptr %s_stack_depth89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp91 = icmp sgt i32 %add, 2
  br i1 %cmp91, label %do.end95, label %if.end98

do.end95:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #14
  br label %out_free

if.end98:                                         ; preds = %if.end80
  %d_inode.i184 = getelementptr inbounds %struct.dentry, ptr %124, i32 0, i32 5
  %149 = ptrtoint ptr %d_inode.i184 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %d_inode.i184, align 8
  %call101 = call ptr @ecryptfs_get_inode(ptr noundef %150, ptr noundef %call9) #11
  %151 = ptrtoint ptr %call101 to i32
  %cmp.i185 = icmp ugt ptr %call101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %if.end98.out_free_crit_edge, label %if.end105

if.end98.out_free_crit_edge:                      ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end105:                                        ; preds = %if.end98
  %call106 = call ptr @d_make_root(ptr noundef %call101) #11
  %s_root = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 13
  %152 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call106, ptr %s_root, align 64
  %tobool108.not = icmp eq ptr %call106, null
  br i1 %tobool108.not, label %if.end105.out_free_crit_edge, label %if.end110

if.end105.out_free_crit_edge:                     ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end110:                                        ; preds = %if.end105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_dentry_info_cache to i32))
  %153 = load ptr, ptr @ecryptfs_dentry_info_cache, align 4
  %call.i186 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %153, i32 noundef 3520) #11
  %tobool112.not = icmp eq ptr %call.i186, null
  br i1 %tobool112.not, label %if.end110.out_free_crit_edge, label %if.end114

if.end110.out_free_crit_edge:                     ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end114:                                        ; preds = %if.end110
  %154 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %s_root, align 64
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %155, i32 0, i32 11
  %156 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call.i186, ptr %d_fsdata.i, align 4
  %157 = ptrtoint ptr %path to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %path, align 8
  %159 = ptrtoint ptr %call.i186 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %158, ptr %call.i186, align 8
  %160 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %s_flags, align 4
  %or117 = or i32 %161, 1073741824
  store i32 %or117, ptr %s_flags, align 4
  %162 = load ptr, ptr %s_root, align 64
  %tobool.not.i187 = icmp eq ptr %162, null
  br i1 %tobool.not.i187, label %if.end114.cleanup_crit_edge, label %if.then.i

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %162, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #11
  br label %cleanup

out_free:                                         ; preds = %if.end110.out_free_crit_edge, %if.end105.out_free_crit_edge, %if.end98.out_free_crit_edge, %do.end95, %if.then43, %if.then26, %if.then22
  %rc.0 = phi i32 [ -22, %if.then22 ], [ -22, %if.then26 ], [ -22, %do.end95 ], [ %151, %if.end98.out_free_crit_edge ], [ -12, %if.end110.out_free_crit_edge ], [ -1, %if.then43 ], [ -12, %if.end105.out_free_crit_edge ]
  call void @path_put(ptr noundef nonnull %path) #11
  br label %out1

out1:                                             ; preds = %out_free, %if.then20, %if.end13.out1_crit_edge
  %rc.1 = phi i32 [ %call14, %if.end13.out1_crit_edge ], [ %call18, %if.then20 ], [ %rc.0, %out_free ]
  %err.0 = phi ptr [ @.str.8, %if.end13.out1_crit_edge ], [ @.str.11, %if.then20 ], [ @.str.11, %out_free ]
  %sbi.0 = phi ptr [ %call.i, %if.end13.out1_crit_edge ], [ null, %if.then20 ], [ null, %out_free ]
  call void @deactivate_locked_super(ptr noundef %call9) #11
  br label %out

out:                                              ; preds = %out1, %if.then11, %ecryptfs_parse_options.exit.thread
  %rc.2 = phi i32 [ %75, %if.then11 ], [ %rc.1, %out1 ], [ %rc.0.i.ph, %ecryptfs_parse_options.exit.thread ]
  %err.1 = phi ptr [ @.str.8, %if.then11 ], [ %err.0, %out1 ], [ @.str.10, %ecryptfs_parse_options.exit.thread ]
  %sbi.1 = phi ptr [ %call.i, %if.then11 ], [ %sbi.0, %out1 ], [ %call.i, %ecryptfs_parse_options.exit.thread ]
  %tobool120.not = icmp eq ptr %sbi.1, null
  br i1 %tobool120.not, label %out.do.end126_crit_edge, label %out.if.then121_crit_edge

out.if.then121_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then121

out.do.end126_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end126

if.then121:                                       ; preds = %out.if.then121_crit_edge, %if.end.if.then121_crit_edge
  %sbi.1205 = phi ptr [ %sbi.1, %out.if.then121_crit_edge ], [ %call.i, %if.end.if.then121_crit_edge ]
  %err.1204 = phi ptr [ %err.1, %out.if.then121_crit_edge ], [ @.str.9, %if.end.if.then121_crit_edge ]
  %rc.2203 = phi i32 [ %rc.2, %out.if.then121_crit_edge ], [ -22, %if.end.if.then121_crit_edge ]
  %mount_crypt_stat122 = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %sbi.1205, i32 0, i32 1
  call void @ecryptfs_destroy_mount_crypt_stat(ptr noundef %mount_crypt_stat122) #11
  %163 = load ptr, ptr @ecryptfs_sb_info_cache, align 4
  call void @kmem_cache_free(ptr noundef %163, ptr noundef nonnull %sbi.1205) #11
  br label %do.end126

do.end126:                                        ; preds = %if.then121, %out.do.end126_crit_edge, %entry.do.end126_crit_edge
  %err.1197 = phi ptr [ %err.1, %out.do.end126_crit_edge ], [ %err.1204, %if.then121 ], [ @.str.8, %entry.do.end126_crit_edge ]
  %rc.2196 = phi i32 [ %rc.2, %out.do.end126_crit_edge ], [ %rc.2203, %if.then121 ], [ -12, %entry.do.end126_crit_edge ]
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %err.1197, i32 noundef %rc.2196) #14
  %164 = inttoptr i32 %rc.2196 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end126, %if.then.i, %if.end114.cleanup_crit_edge
  %retval.0 = phi ptr [ %164, %do.end126 ], [ null, %if.end114.cleanup_crit_edge ], [ %162, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ecryptfs_kill_block_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @kill_anon_super(ptr noundef %sb) #11
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mount_crypt_stat = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %1, i32 0, i32 1
  tail call void @ecryptfs_destroy_mount_crypt_stat(ptr noundef %mount_crypt_stat) #11
  %2 = load ptr, ptr @ecryptfs_sb_info_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sget(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_anon_super(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @super_setup_bdi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ecryptfs_get_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecryptfs_destroy_mount_crypt_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_add_global_auth_tok(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ecryptfs_code_for_cipher_string(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_tfm_exists(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_add_new_key_tfm(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_keyring_auth_tok_for_sig(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inode_info_init_once(ptr noundef %vptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inode_init_once(ptr noundef %vptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_init_kthread() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_init_messaging() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_init_crypto() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !25, !26, !28, !30, !31, !33, !35, !36, !37, !38, !40, !42, !44, !45, !47, !49, !51, !52, !53, !54, !55, !57, !59, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !131, !133, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !180, !181, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !240, !241, !242, !243, !245, !246}
!llvm.named.register.sp = !{!247}
!llvm.module.flags = !{!248, !249, !250, !251, !252, !253, !254, !255}
!llvm.ident = !{!256}

!0 = !{ptr @ecryptfs_verbosity, !1, !"ecryptfs_verbosity", i1 false, i1 false}
!1 = !{!"../fs/ecryptfs/main.c", i32 30, i32 5}
!2 = !{ptr @__param_ecryptfs_verbosity, !3, !"__param_ecryptfs_verbosity", i1 false, i1 false}
!3 = !{!"../fs/ecryptfs/main.c", i32 32, i32 1}
!4 = !{ptr @__UNIQUE_ID_ecryptfs_verbositytype303, !3, !"__UNIQUE_ID_ecryptfs_verbositytype303", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_ecryptfs_verbosity304, !6, !"__UNIQUE_ID_ecryptfs_verbosity304", i1 false, i1 false}
!6 = !{!"../fs/ecryptfs/main.c", i32 33, i32 1}
!7 = !{ptr @ecryptfs_message_buf_len, !8, !"ecryptfs_message_buf_len", i1 false, i1 false}
!8 = !{!"../fs/ecryptfs/main.c", i32 40, i32 14}
!9 = !{ptr @__param_ecryptfs_message_buf_len, !10, !"__param_ecryptfs_message_buf_len", i1 false, i1 false}
!10 = !{!"../fs/ecryptfs/main.c", i32 42, i32 1}
!11 = !{ptr @__UNIQUE_ID_ecryptfs_message_buf_lentype305, !10, !"__UNIQUE_ID_ecryptfs_message_buf_lentype305", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_ecryptfs_message_buf_len306, !13, !"__UNIQUE_ID_ecryptfs_message_buf_len306", i1 false, i1 false}
!13 = !{!"../fs/ecryptfs/main.c", i32 43, i32 1}
!14 = !{ptr @ecryptfs_message_wait_timeout, !15, !"ecryptfs_message_wait_timeout", i1 false, i1 false}
!15 = !{!"../fs/ecryptfs/main.c", i32 52, i32 13}
!16 = !{ptr @__param_ecryptfs_message_wait_timeout, !17, !"__param_ecryptfs_message_wait_timeout", i1 false, i1 false}
!17 = !{!"../fs/ecryptfs/main.c", i32 54, i32 1}
!18 = !{ptr @__UNIQUE_ID_ecryptfs_message_wait_timeouttype307, !17, !"__UNIQUE_ID_ecryptfs_message_wait_timeouttype307", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_ecryptfs_message_wait_timeout308, !20, !"__UNIQUE_ID_ecryptfs_message_wait_timeout308", i1 false, i1 false}
!20 = !{!"../fs/ecryptfs/main.c", i32 55, i32 1}
!21 = !{ptr @ecryptfs_number_of_users, !22, !"ecryptfs_number_of_users", i1 false, i1 false}
!22 = !{!"../fs/ecryptfs/main.c", i32 65, i32 14}
!23 = !{ptr @__param_ecryptfs_number_of_users, !24, !"__param_ecryptfs_number_of_users", i1 false, i1 false}
!24 = !{!"../fs/ecryptfs/main.c", i32 67, i32 1}
!25 = !{ptr @__UNIQUE_ID_ecryptfs_number_of_userstype309, !24, !"__UNIQUE_ID_ecryptfs_number_of_userstype309", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_ecryptfs_number_of_users310, !27, !"__UNIQUE_ID_ecryptfs_number_of_users310", i1 false, i1 false}
!27 = !{!"../fs/ecryptfs/main.c", i32 68, i32 1}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../fs/ecryptfs/main.c", i32 130, i32 6}
!30 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_alias311, !32, !"__UNIQUE_ID_alias311", i1 false, i1 false}
!32 = !{!"../fs/ecryptfs/main.c", i32 642, i32 1}
!33 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ecryptfs/main.c", i32 887, i32 3}
!35 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ecryptfs_exit._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ecryptfs_exit._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_author312, !39, !"__UNIQUE_ID_author312", i1 false, i1 false}
!39 = !{!"../fs/ecryptfs/main.c", i32 896, i32 1}
!40 = !{ptr @__UNIQUE_ID_description313, !41, !"__UNIQUE_ID_description313", i1 false, i1 false}
!41 = !{!"../fs/ecryptfs/main.c", i32 897, i32 1}
!42 = !{ptr @__UNIQUE_ID_file314, !43, !"__UNIQUE_ID_file314", i1 false, i1 false}
!43 = !{!"../fs/ecryptfs/main.c", i32 899, i32 1}
!44 = !{ptr @__UNIQUE_ID_license315, !43, !"__UNIQUE_ID_license315", i1 false, i1 false}
!45 = !{ptr @__initcall__kmod_ecryptfs__316_901_ecryptfs_init6, !46, !"__initcall__kmod_ecryptfs__316_901_ecryptfs_init6", i1 false, i1 false}
!46 = !{!"../fs/ecryptfs/main.c", i32 901, i32 1}
!47 = !{ptr @__exitcall_ecryptfs_exit, !48, !"__exitcall_ecryptfs_exit", i1 false, i1 false}
!48 = !{!"../fs/ecryptfs/main.c", i32 902, i32 1}
!49 = !{ptr @ecryptfs_sb_info_cache, !50, !"ecryptfs_sb_info_cache", i1 false, i1 false}
!50 = !{!"../fs/ecryptfs/main.c", i32 466, i32 20}
!51 = !{ptr @__param_str_ecryptfs_verbosity, !3, !"__param_str_ecryptfs_verbosity", i1 false, i1 false}
!52 = !{ptr @__param_str_ecryptfs_message_buf_len, !10, !"__param_str_ecryptfs_message_buf_len", i1 false, i1 false}
!53 = !{ptr @__param_str_ecryptfs_message_wait_timeout, !17, !"__param_str_ecryptfs_message_wait_timeout", i1 false, i1 false}
!54 = !{ptr @__param_str_ecryptfs_number_of_users, !24, !"__param_str_ecryptfs_number_of_users", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../fs/ecryptfs/main.c", i32 107, i32 28}
!57 = !{ptr @.str.3, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ecryptfs/main.c", i32 114, i32 3}
!59 = !{ptr @.str.4, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ecryptfs_init_lower_file._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ecryptfs_init_lower_file._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @ecryptfs_kobj, !63, !"ecryptfs_kobj", i1 false, i1 false}
!63 = !{!"../fs/ecryptfs/main.c", i32 767, i32 24}
!64 = !{ptr @attr_group, !65, !"attr_group", i1 false, i1 false}
!65 = !{!"../fs/ecryptfs/main.c", i32 782, i32 37}
!66 = !{ptr @attributes, !67, !"attributes", i1 false, i1 false}
!67 = !{!"../fs/ecryptfs/main.c", i32 777, i32 26}
!68 = !{ptr @.str.5, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ecryptfs/main.c", i32 775, i32 45}
!70 = !{ptr @version_attr, !71, !"version_attr", i1 false, i1 false}
!71 = !{!"../fs/ecryptfs/main.c", i32 775, i32 30}
!72 = !{ptr @.str.6, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ecryptfs/main.c", i32 772, i32 35}
!74 = !{ptr @.str.7, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ecryptfs/main.c", i32 637, i32 10}
!76 = !{ptr @ecryptfs_fs_type, !77, !"ecryptfs_fs_type", i1 false, i1 false}
!77 = !{!"../fs/ecryptfs/main.c", i32 635, i32 32}
!78 = !{ptr @.str.8, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ecryptfs/main.c", i32 483, i32 20}
!80 = !{ptr @.str.9, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ecryptfs/main.c", i32 497, i32 9}
!82 = !{ptr @.str.10, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ecryptfs/main.c", i32 503, i32 9}
!84 = !{ptr @.str.11, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ecryptfs/main.c", i32 526, i32 8}
!86 = !{ptr @.str.12, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ecryptfs/main.c", i32 529, i32 3}
!88 = !{ptr @__func__.ecryptfs_mount, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.13, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ecryptfs/main.c", i32 534, i32 3}
!91 = !{ptr @ecryptfs_mount._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ecryptfs_mount._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.15, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ecryptfs/main.c", i32 542, i32 3}
!95 = !{ptr @ecryptfs_mount._entry.14, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @ecryptfs_mount._entry_ptr.16, !94, !"_entry_ptr", i1 false, i1 false}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../fs/ecryptfs/main.c", i32 546, i32 57}
!99 = !{ptr @.str.18, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ecryptfs/main.c", i32 548, i32 3}
!101 = !{ptr @ecryptfs_mount._entry.17, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ecryptfs_mount._entry_ptr.19, !100, !"_entry_ptr", i1 false, i1 false}
!103 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!104 = !{ptr @.str.22, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ecryptfs/main.c", i32 579, i32 3}
!106 = !{ptr @ecryptfs_mount._entry.21, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ecryptfs_mount._entry_ptr.23, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.25, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/ecryptfs/main.c", i32 615, i32 2}
!110 = !{ptr @ecryptfs_mount._entry.24, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ecryptfs_mount._entry_ptr.26, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.27, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ecryptfs/main.c", i32 276, i32 31}
!114 = !{ptr @.str.28, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ecryptfs/main.c", i32 287, i32 5}
!116 = !{ptr @.str.29, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ecryptfs_parse_options._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @ecryptfs_parse_options._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.31, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/ecryptfs/main.c", i32 339, i32 5}
!121 = !{ptr @ecryptfs_parse_options._entry.30, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @ecryptfs_parse_options._entry_ptr.32, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.34, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/ecryptfs/main.c", i32 380, i32 4}
!125 = !{ptr @ecryptfs_parse_options._entry.33, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @ecryptfs_parse_options._entry_ptr.35, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.36, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/ecryptfs/main.c", i32 387, i32 3}
!129 = distinct !{null, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/ecryptfs/main.c", i32 397, i32 10}
!131 = !{ptr @.str.38, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/ecryptfs/main.c", i32 414, i32 3}
!133 = !{ptr @.str.40, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/ecryptfs/main.c", i32 428, i32 4}
!135 = !{ptr @ecryptfs_parse_options._entry.39, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @ecryptfs_parse_options._entry_ptr.41, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @ecryptfs_parse_options._entry.42, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../fs/ecryptfs/main.c", i32 446, i32 4}
!139 = !{ptr @ecryptfs_parse_options._entry_ptr.43, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.45, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/ecryptfs/main.c", i32 460, i32 3}
!142 = !{ptr @ecryptfs_parse_options._entry.44, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ecryptfs_parse_options._entry_ptr.46, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @ecryptfs_init_mount_crypt_stat.__key, !145, !"__key", i1 false, i1 false}
!145 = !{!"../fs/ecryptfs/main.c", i32 218, i32 2}
!146 = !{ptr @.str.47, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.48, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/ecryptfs/main.c", i32 167, i32 21}
!149 = !{ptr @.str.49, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/ecryptfs/main.c", i32 168, i32 30}
!151 = !{ptr @.str.50, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/ecryptfs/main.c", i32 169, i32 24}
!153 = !{ptr @.str.51, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/ecryptfs/main.c", i32 170, i32 33}
!155 = !{ptr @.str.52, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/ecryptfs/main.c", i32 171, i32 36}
!157 = !{ptr @.str.53, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/ecryptfs/main.c", i32 172, i32 29}
!159 = !{ptr @.str.54, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/ecryptfs/main.c", i32 173, i32 32}
!161 = !{ptr @.str.55, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/ecryptfs/main.c", i32 174, i32 32}
!163 = !{ptr @.str.56, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/ecryptfs/main.c", i32 175, i32 26}
!165 = !{ptr @.str.57, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/ecryptfs/main.c", i32 176, i32 27}
!167 = !{ptr @.str.58, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/ecryptfs/main.c", i32 177, i32 37}
!169 = !{ptr @.str.59, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/ecryptfs/main.c", i32 178, i32 29}
!171 = !{ptr @.str.60, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/ecryptfs/main.c", i32 179, i32 37}
!173 = !{ptr @.str.61, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/ecryptfs/main.c", i32 180, i32 32}
!175 = !{ptr @tokens, !176, !"tokens", i1 false, i1 false}
!176 = !{!"../fs/ecryptfs/main.c", i32 166, i32 28}
!177 = !{ptr @.str.62, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/ecryptfs/main.c", i32 198, i32 4}
!179 = !{ptr @.str.63, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @ecryptfs_init_global_auth_toks._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @ecryptfs_init_global_auth_toks._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.64, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/ecryptfs/main.c", i32 666, i32 11}
!184 = !{ptr @.str.65, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/ecryptfs/main.c", i32 671, i32 11}
!186 = !{ptr @.str.66, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/ecryptfs/main.c", i32 676, i32 11}
!188 = !{ptr @.str.67, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/ecryptfs/main.c", i32 681, i32 11}
!190 = !{ptr @.str.68, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/ecryptfs/main.c", i32 688, i32 11}
!192 = !{ptr @.str.69, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/ecryptfs/main.c", i32 693, i32 11}
!194 = !{ptr @.str.70, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/ecryptfs/main.c", i32 698, i32 11}
!196 = !{ptr @.str.71, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/ecryptfs/main.c", i32 703, i32 11}
!198 = !{ptr @.str.72, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/ecryptfs/main.c", i32 708, i32 11}
!200 = !{ptr @.str.73, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/ecryptfs/main.c", i32 713, i32 11}
!202 = !{ptr @.str.74, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/ecryptfs/main.c", i32 718, i32 11}
!204 = !{ptr @ecryptfs_cache_infos, !205, !"ecryptfs_cache_infos", i1 false, i1 false}
!205 = !{!"../fs/ecryptfs/main.c", i32 663, i32 3}
!206 = !{ptr @.str.75, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/ecryptfs/main.c", i32 829, i32 3}
!208 = !{ptr @.str.76, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @ecryptfs_init._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @ecryptfs_init._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.78, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/ecryptfs/main.c", i32 835, i32 3}
!213 = !{ptr @ecryptfs_init._entry.77, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @ecryptfs_init._entry_ptr.79, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.81, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/ecryptfs/main.c", i32 840, i32 3}
!217 = !{ptr @ecryptfs_init._entry.80, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @ecryptfs_init._entry_ptr.82, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.84, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/ecryptfs/main.c", i32 846, i32 3}
!221 = !{ptr @ecryptfs_init._entry.83, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @ecryptfs_init._entry_ptr.85, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.87, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/ecryptfs/main.c", i32 853, i32 3}
!225 = !{ptr @ecryptfs_init._entry.86, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @ecryptfs_init._entry_ptr.88, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.90, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/ecryptfs/main.c", i32 859, i32 3}
!229 = !{ptr @ecryptfs_init._entry.89, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @ecryptfs_init._entry_ptr.91, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.93, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/ecryptfs/main.c", i32 863, i32 3}
!233 = !{ptr @ecryptfs_init._entry.92, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @ecryptfs_init._entry_ptr.94, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.95, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/ecryptfs/main.c", i32 758, i32 4}
!237 = !{ptr @__func__.ecryptfs_init_kmem_caches, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.96, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../fs/ecryptfs/main.c", i32 792, i32 3}
!240 = !{ptr @.str.97, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @do_sysfs_registration._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @do_sysfs_registration._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.99, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/ecryptfs/main.c", i32 798, i32 3}
!245 = !{ptr @do_sysfs_registration._entry.98, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @do_sysfs_registration._entry_ptr.100, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{!"sp"}
!248 = !{i32 1, !"wchar_size", i32 2}
!249 = !{i32 1, !"min_enum_size", i32 4}
!250 = !{i32 8, !"branch-target-enforcement", i32 0}
!251 = !{i32 8, !"sign-return-address", i32 0}
!252 = !{i32 8, !"sign-return-address-all", i32 0}
!253 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!254 = !{i32 7, !"uwtable", i32 1}
!255 = !{i32 7, !"frame-pointer", i32 2}
!256 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!257 = !{!"auto-init"}
!258 = !{i64 2148246220}
!259 = !{i64 2148161529, i64 2148161561, i64 2148161590, i64 2148161624, i64 2148161655, i64 2148161678}
!260 = !{i64 2148246449}
!261 = !{!"branch_weights", i32 2000, i32 1}
!262 = !{i64 2152639676}
