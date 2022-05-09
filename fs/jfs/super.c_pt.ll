; ModuleID = '/llk/IR_all_yes/fs/jfs/super.c_pt.bc'
source_filename = "../fs/jfs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dquot_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.quotactl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.match_token = type { i32, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.24 }
%union.anon.24 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.jfs_sb_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i16, i16, i16, i16, i16, i32, i32, %struct.pxd_t, %struct.pxd_t, %struct.pxd_t, %struct.uuid_t, %struct.uuid_t, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32 }
%struct.pxd_t = type { i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.80 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.82 = type { ptr }
%struct.substring_t = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.36 }
%struct.llist_node = type { ptr }
%union.anon.36 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.43 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.43 = type { %struct.callback_head }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.jfs_inode_info = type { i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.pxd_t, %struct.dxd_t, %struct.dxd_t, i64, i32, i32, i16, i16, ptr, i32, i64, i16, i8, i8, i16, i16, i16, %struct.spinlock, %struct.list_head, %struct.rw_semaphore, %struct.mutex, %struct.rw_semaphore, i16, %union.anon.86, [3 x ptr], i32, %struct.inode }
%struct.dxd_t = type { i8, [3 x i8], i32, %struct.pxd_t }
%union.anon.86 = type { %struct.anon.87, [88 x i8] }
%struct.anon.87 = type { %union.xtpage_t, ptr }
%union.xtpage_t = type { %struct.xtheader, [256 x i8] }
%struct.xtheader = type { i64, i64, i8, i8, i16, i16, i16, %struct.pxd_t }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.dbmap = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i64], i64, i8 }
%struct.inomap = type { %struct.dinomap, ptr, %struct.mutex, [128 x %struct.mutex], ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dinomap = type { i32, i32, i32, i32, i32, i32, i32, i32, [128 x %struct.iagctl] }
%struct.iagctl = type { i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.path = type { ptr, ptr }

@__UNIQUE_ID_description276 = internal constant [47 x i8] c"jfs.description=The Journaled Filesystem (JFS)\00", section ".modinfo", align 1
@__UNIQUE_ID_author277 = internal constant [53 x i8] c"jfs.author=Steve Best/Dave Kleikamp/Barry Arndt, IBM\00", section ".modinfo", align 1
@__UNIQUE_ID_file278 = internal constant [20 x i8] c"jfs.file=fs/jfs/jfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license279 = internal constant [16 x i8] c"jfs.license=GPL\00", section ".modinfo", align 1
@__param_str_commit_threads = internal constant [19 x i8] c"jfs.commit_threads\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@commit_threads = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_commit_threads = internal constant %struct.kernel_param { ptr @__param_str_commit_threads, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @commit_threads } }, section "__param", align 4
@__UNIQUE_ID_commit_threadstype280 = internal constant [32 x i8] c"jfs.parmtype=commit_threads:int\00", section ".modinfo", align 1
@__UNIQUE_ID_commit_threads281 = internal constant [49 x i8] c"jfs.parm=commit_threads:Number of commit threads\00", section ".modinfo", align 1
@jfsloglevel = dso_local global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_str_jfsloglevel = internal constant [16 x i8] c"jfs.jfsloglevel\00", align 1
@__param_jfsloglevel = internal constant %struct.kernel_param { ptr @__param_str_jfsloglevel, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @jfsloglevel } }, section "__param", align 4
@__UNIQUE_ID_jfslogleveltype282 = internal constant [29 x i8] c"jfs.parmtype=jfsloglevel:int\00", section ".modinfo", align 1
@__UNIQUE_ID_jfsloglevel283 = internal constant [54 x i8] c"jfs.parm=jfsloglevel:Specify JFS loglevel (0, 1 or 2)\00", section ".modinfo", align 1
@jfs_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ERROR: (device %s): %ps: %pV\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jfs_error\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/jfs/super.c\00", [17 x i8] zeroinitializer }, align 32
@jfs_error._entry_ptr = internal global ptr @jfs_error._entry, section ".printk_index", align 4
@__UNIQUE_ID_alias288 = internal constant [17 x i8] c"jfs.alias=fs-jfs\00", section ".modinfo", align 1
@exit_jfs_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016exit_jfs_fs called\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exit_jfs_fs\00", [20 x i8] zeroinitializer }, align 32
@exit_jfs_fs._entry_ptr = internal global ptr @exit_jfs_fs._entry, section ".printk_index", align 4
@jfsIOthread = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@jfsCommitThread = internal global { [64 x ptr], [64 x i8] } zeroinitializer, align 32
@jfsSyncThread = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@jfs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.8, i32 1, ptr null, ptr null, ptr @jfs_do_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@jfs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_jfs__289_1049_init_jfs_fs6 = internal global ptr @init_jfs_fs, section ".initcall6.init", align 4
@__exitcall_exit_jfs_fs = internal global ptr @exit_jfs_fs, section ".exitcall.exit", align 4
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"JFS (device %s): panic forced after error\0A\00", [53 x i8] zeroinitializer }, align 32
@jfs_handle_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013ERROR: (device %s): remounting filesystem as read-only\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jfs_handle_error\00", [47 x i8] zeroinitializer }, align 32
@jfs_handle_error._entry_ptr = internal global ptr @jfs_handle_error._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"jfs\00", [28 x i8] zeroinitializer }, align 32
@jfs_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016In jfs_read_super: s_flags=0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jfs_fill_super\00", [17 x i8] zeroinitializer }, align 32
@jfs_fill_super._entry_ptr = internal global ptr @jfs_fill_super._entry, section ".printk_index", align 4
@jfs_fill_super._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013resize option for remount only\0A\00", [62 x i8] zeroinitializer }, align 32
@jfs_fill_super._entry_ptr.13 = internal global ptr @jfs_fill_super._entry.11, section ".printk_index", align 4
@jfs_super_operations = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @jfs_alloc_inode, ptr null, ptr @jfs_free_inode, ptr @jfs_dirty_inode, ptr @jfs_write_inode, ptr null, ptr @jfs_evict_inode, ptr @jfs_put_super, ptr @jfs_sync_fs, ptr null, ptr @jfs_freeze, ptr null, ptr @jfs_unfreeze, ptr @jfs_statfs, ptr @jfs_remount, ptr null, ptr @jfs_show_options, ptr null, ptr null, ptr null, ptr @jfs_quota_read, ptr @jfs_quota_write, ptr @jfs_get_dquots, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@jfs_export_operations = internal constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr null, ptr @jfs_fh_to_dentry, ptr @jfs_fh_to_parent, ptr null, ptr @jfs_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@jfs_xattr_handlers = external dso_local global [0 x ptr], align 4
@dquot_operations = external dso_local constant %struct.dquot_operations, align 4
@jfs_quotactl_ops = internal constant { %struct.quotactl_ops, [52 x i8] } { %struct.quotactl_ops { ptr @jfs_quota_on, ptr @jfs_quota_off, ptr null, ptr null, ptr @dquot_quota_sync, ptr @dquot_set_dqinfo, ptr @dquot_get_dqblk, ptr @dquot_get_next_dqblk, ptr @dquot_set_dqblk, ptr @dquot_get_state, ptr null }, [52 x i8] zeroinitializer }, align 32
@jfs_metapage_aops = external dso_local constant %struct.address_space_operations, align 4
@jfs_fill_super._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013jfs_mount failed w/return code = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@jfs_fill_super._entry_ptr.16 = internal global ptr @jfs_fill_super._entry.14, section ".printk_index", align 4
@jfs_fill_super._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.2, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013jfs_mount_rw failed, return code = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@jfs_fill_super._entry_ptr.19 = internal global ptr @jfs_fill_super._entry.17, section ".printk_index", align 4
@jfs_ci_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@jfs_fill_super._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.2, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013jfs_read_super: get root dentry failed\0A\00", [54 x i8] zeroinitializer }, align 32
@jfs_fill_super._entry_ptr.22 = internal global ptr @jfs_fill_super._entry.20, section ".printk_index", align 4
@jfs_fill_super._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.10, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013jfs_umount failed with return code %d\0A\00", [55 x i8] zeroinitializer }, align 32
@jfs_fill_super._entry_ptr.25 = internal global ptr @jfs_fill_super._entry.23, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [17 x %struct.match_token], [56 x i8] } { [17 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.51 }, %struct.match_token { i32 1, ptr @.str.52 }, %struct.match_token { i32 2, ptr @.str.53 }, %struct.match_token { i32 3, ptr @.str.54 }, %struct.match_token { i32 4, ptr @.str.55 }, %struct.match_token { i32 5, ptr @.str.56 }, %struct.match_token { i32 6, ptr @.str.57 }, %struct.match_token { i32 8, ptr @.str.58 }, %struct.match_token { i32 9, ptr @.str.59 }, %struct.match_token { i32 10, ptr @.str.60 }, %struct.match_token { i32 11, ptr @.str.61 }, %struct.match_token { i32 12, ptr @.str.62 }, %struct.match_token { i32 13, ptr @.str.63 }, %struct.match_token { i32 14, ptr @.str.64 }, %struct.match_token { i32 15, ptr @.str.65 }, %struct.match_token { i32 16, ptr @.str.66 }, %struct.match_token { i32 7, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@parse_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013JFS: charset not found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse_options\00", [18 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr = internal global ptr @parse_options._entry, section ".printk_index", align 4
@parse_options._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013JFS: Cannot determine volume size\0A\00", [59 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.32 = internal global ptr @parse_options._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"continue\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"remount-ro\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panic\00", [26 x i8] zeroinitializer }, align 32
@parse_options._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013JFS: %s is an invalid error handler\0A\00", [57 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.38 = internal global ptr @parse_options._entry.36, section ".printk_index", align 4
@parse_options._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.29, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013JFS: Invalid value of umask\0A\00", [33 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.42 = internal global ptr @parse_options._entry.40, section ".printk_index", align 4
@parse_options._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.29, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013JFS: discard option not supported on device\0A\00", [49 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.45 = internal global ptr @parse_options._entry.43, section ".printk_index", align 4
@parse_options._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.29, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.47 = internal global ptr @parse_options._entry.46, section ".printk_index", align 4
@parse_options._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.29, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"jfs: Unrecognized mount option \22%s\22 or missing value\0A\00", [42 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.50 = internal global ptr @parse_options._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"integrity\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nointegrity\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iocharset=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"resize=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resize\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"errors=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noquota\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"quota\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usrquota\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"grpquota\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"umask=%u\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"discard\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nodiscard\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"discard=%u\00", [21 x i8] zeroinitializer }, align 32
@jfs_put_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016In jfs_put_super\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jfs_put_super\00", [18 x i8] zeroinitializer }, align 32
@jfs_put_super._entry_ptr = internal global ptr @jfs_put_super._entry, section ".printk_index", align 4
@jfs_put_super._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.68, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jfs_put_super._entry_ptr.70 = internal global ptr @jfs_put_super._entry.69, section ".printk_index", align 4
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lmLogShutdown failed\0A\00", [42 x i8] zeroinitializer }, align 32
@jfs_freeze._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013jfs_freeze: updateSuper failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jfs_freeze\00", [21 x i8] zeroinitializer }, align 32
@jfs_freeze._entry_ptr = internal global ptr @jfs_freeze._entry, section ".printk_index", align 4
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"updateSuper failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lmLogInit failed\0A\00", [46 x i8] zeroinitializer }, align 32
@jfs_statfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016In jfs_statfs\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jfs_statfs\00", [21 x i8] zeroinitializer }, align 32
@jfs_statfs._entry_ptr = internal global ptr @jfs_statfs._entry, section ".printk_index", align 4
@jfs_remount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013JFS: resize requires volume to be mounted read-write\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jfs_remount\00", [20 x i8] zeroinitializer }, align 32
@jfs_remount._entry_ptr = internal global ptr @jfs_remount._entry, section ".printk_index", align 4
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",uid=%d\00", [24 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",gid=%d\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",umask=%03o\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",nointegrity\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",discard=%u\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",iocharset=%s\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",errors=continue\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",errors=panic\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",usrquota\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",grpquota\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"jfs_ip\00", [25 x i8] zeroinitializer }, align 32
@init_jfs_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013metapage_init failed w/rc = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_jfs_fs\00", [20 x i8] zeroinitializer }, align 32
@init_jfs_fs._entry_ptr = internal global ptr @init_jfs_fs._entry, section ".printk_index", align 4
@init_jfs_fs._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013txInit failed w/rc = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@init_jfs_fs._entry_ptr.97 = internal global ptr @init_jfs_fs._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"jfsIO\00", [26 x i8] zeroinitializer }, align 32
@init_jfs_fs._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.94, ptr @.str.2, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013init_jfs_fs: fork failed w/rc = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@init_jfs_fs._entry_ptr.101 = internal global ptr @init_jfs_fs._entry.99, section ".printk_index", align 4
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jfsCommit\00", [22 x i8] zeroinitializer }, align 32
@init_jfs_fs._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.94, ptr @.str.2, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_jfs_fs._entry_ptr.104 = internal global ptr @init_jfs_fs._entry.103, section ".printk_index", align 4
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"jfsSync\00", [24 x i8] zeroinitializer }, align 32
@init_jfs_fs._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.94, ptr @.str.2, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_jfs_fs._entry_ptr.107 = internal global ptr @init_jfs_fs._entry.106, section ".printk_index", align 4
@init_once.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&jfs_ip->rdwrlock\00", [46 x i8] zeroinitializer }, align 32
@init_once.__key.109 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&jfs_ip->commit_mutex\00", [42 x i8] zeroinitializer }, align 32
@init_once.__key.111 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&jfs_ip->xattr_sem\00", [45 x i8] zeroinitializer }, align 32
@init_once.__key.113 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&jfs_ip->ag_lock\00", [47 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"commit_threads\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 48, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"jfsloglevel\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 57, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 93, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1027, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [12 x i8] c"jfsIOthread\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 53, i32 21 }
@___asan_gen_.147 = private unnamed_addr constant [16 x i8] c"jfsCommitThread\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 52, i32 28 }
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"jfsSyncThread\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 54, i32 21 }
@___asan_gen_.153 = private unnamed_addr constant [12 x i8] c"jfs_fs_type\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 910, i32 32 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"jfs_inode_cachep\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 41, i32 27 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 72, i32 9 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 75, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 912, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 497, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 524, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [21 x i8] c"jfs_super_operations\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 884, i32 38 }
@___asan_gen_.192 = private unnamed_addr constant [22 x i8] c"jfs_export_operations\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 904, i32 39 }
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"jfs_quotactl_ops\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 169, i32 34 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 563, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 572, i32 5 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 601, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 606, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 245, i32 31 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 213, i32 28 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 266, i32 30 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 271, i32 6 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 289, i32 5 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 297, i32 24 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 301, i32 31 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 305, i32 31 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 310, i32 5 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 368, i32 5 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 385, i32 5 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 405, i32 5 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 410, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 214, i32 18 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 215, i32 20 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 216, i32 18 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 217, i32 15 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 218, i32 22 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 219, i32 15 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 220, i32 15 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 221, i32 14 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 222, i32 17 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 223, i32 17 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 224, i32 12 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 225, i32 12 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 226, i32 14 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 227, i32 16 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 228, i32 18 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 229, i32 23 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 190, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 196, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 630, i32 18 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 639, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 659, i32 18 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 664, i32 18 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 125, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 442, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 700, i32 19 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 702, i32 19 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 704, i32 19 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 706, i32 17 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 708, i32 19 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 710, i32 19 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 712, i32 19 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 714, i32 19 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 718, i32 17 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 721, i32 17 }
@___asan_gen_.409 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 366, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 271, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 939, i32 33 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 952, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 961, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 968, i32 16 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 971, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 981, i32 24 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 985, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 991, i32 18 }
@___asan_gen_.450 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 994, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 925, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 926, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 927, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.475 = private constant [18 x i8] c"../fs/jfs/super.c\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 928, i32 2 }
@llvm.compiler.used = appending global [160 x ptr] [ptr @__UNIQUE_ID_alias288, ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_commit_threads281, ptr @__UNIQUE_ID_commit_threadstype280, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_file278, ptr @__UNIQUE_ID_jfsloglevel283, ptr @__UNIQUE_ID_jfslogleveltype282, ptr @__UNIQUE_ID_license279, ptr @__exitcall_exit_jfs_fs, ptr @__initcall__kmod_jfs__289_1049_init_jfs_fs6, ptr @__param_commit_threads, ptr @__param_jfsloglevel, ptr @exit_jfs_fs, ptr @exit_jfs_fs._entry, ptr @exit_jfs_fs._entry_ptr, ptr @init_jfs_fs._entry, ptr @init_jfs_fs._entry.103, ptr @init_jfs_fs._entry.106, ptr @init_jfs_fs._entry.95, ptr @init_jfs_fs._entry.99, ptr @init_jfs_fs._entry_ptr, ptr @init_jfs_fs._entry_ptr.101, ptr @init_jfs_fs._entry_ptr.104, ptr @init_jfs_fs._entry_ptr.107, ptr @init_jfs_fs._entry_ptr.97, ptr @jfs_error._entry, ptr @jfs_error._entry_ptr, ptr @jfs_fill_super._entry, ptr @jfs_fill_super._entry.11, ptr @jfs_fill_super._entry.14, ptr @jfs_fill_super._entry.17, ptr @jfs_fill_super._entry.20, ptr @jfs_fill_super._entry.23, ptr @jfs_fill_super._entry_ptr, ptr @jfs_fill_super._entry_ptr.13, ptr @jfs_fill_super._entry_ptr.16, ptr @jfs_fill_super._entry_ptr.19, ptr @jfs_fill_super._entry_ptr.22, ptr @jfs_fill_super._entry_ptr.25, ptr @jfs_freeze._entry, ptr @jfs_freeze._entry_ptr, ptr @jfs_handle_error._entry, ptr @jfs_handle_error._entry_ptr, ptr @jfs_put_super._entry, ptr @jfs_put_super._entry.69, ptr @jfs_put_super._entry_ptr, ptr @jfs_put_super._entry_ptr.70, ptr @jfs_remount._entry, ptr @jfs_remount._entry_ptr, ptr @jfs_statfs._entry, ptr @jfs_statfs._entry_ptr, ptr @parse_options._entry, ptr @parse_options._entry.30, ptr @parse_options._entry.36, ptr @parse_options._entry.40, ptr @parse_options._entry.43, ptr @parse_options._entry.46, ptr @parse_options._entry.48, ptr @parse_options._entry_ptr, ptr @parse_options._entry_ptr.32, ptr @parse_options._entry_ptr.38, ptr @parse_options._entry_ptr.42, ptr @parse_options._entry_ptr.45, ptr @parse_options._entry_ptr.47, ptr @parse_options._entry_ptr.50, ptr @commit_threads, ptr @jfsloglevel, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @jfsIOthread, ptr @jfsCommitThread, ptr @jfsSyncThread, ptr @jfs_fs_type, ptr @jfs_inode_cachep, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @jfs_super_operations, ptr @jfs_export_operations, ptr @jfs_quotactl_ops, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @tokens, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.41, ptr @.str.44, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @init_once.__key, ptr @.str.108, ptr @init_once.__key.109, ptr @.str.110, ptr @init_once.__key.111, ptr @.str.112, ptr @init_once.__key.113, ptr @.str.114], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @commit_threads to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfsloglevel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exit_jfs_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfsIOthread to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfsCommitThread to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfsSyncThread to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_handle_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_fill_super._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_super_operations to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_export_operations to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_quotactl_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_fill_super._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_fill_super._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_fill_super._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_fill_super._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_put_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_put_super._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_freeze._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_statfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_remount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_jfs_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_jfs_fs._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_jfs_fs._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_jfs_fs._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_jfs_fs._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_once.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_once.__key.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_once.__key.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_once.__key.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jfs_error(ptr noundef %sb, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #15
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #15
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !269
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %4 = call ptr @llvm.returnaddress(i32 0)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %s_id, ptr noundef %4, ptr noundef nonnull %vaf) #18
  call void @llvm.va_end(ptr nonnull %args)
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %entry.jfs_handle_error.exit_crit_edge

entry.jfs_handle_error.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %jfs_handle_error.exit

if.end.i:                                         ; preds = %entry
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i, align 16
  %call2.i = call i32 @updateSuper(ptr noundef %sb, i32 noundef 2) #15
  %flag.i = getelementptr inbounds %struct.jfs_sb_info, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flag.i, align 4
  %and.i = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.5, ptr noundef %s_id) #19
  unreachable

if.else.i:                                        ; preds = %if.end.i
  %and5.i = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else.i.jfs_handle_error.exit_crit_edge, label %do.body.i

if.else.i.jfs_handle_error.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %jfs_handle_error.exit

do.body.i:                                        ; preds = %if.else.i
  %11 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp sgt i32 %11, 0
  br i1 %cmp.i, label %do.end.i, label %do.body.i.do.end15.i_crit_edge

do.body.i.do.end15.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %s_id) #18
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end.i, %do.body.i.do.end15.i_crit_edge
  %12 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_flags.i.i, align 4
  %or.i = or i32 %13, 1
  store i32 %or.i, ptr %s_flags.i.i, align 4
  br label %jfs_handle_error.exit

jfs_handle_error.exit:                            ; preds = %do.end15.i, %if.else.i.jfs_handle_error.exit_crit_edge, %entry.jfs_handle_error.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_jfs_fs() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #18
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @txExit() #15
  tail call void @metapage_exit() #15
  %1 = load ptr, ptr @jfsIOthread, align 4
  %call4 = tail call i32 @kthread_stop(ptr noundef %1) #15
  %2 = load i32, ptr @commit_threads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp511 = icmp sgt i32 %2, 0
  br i1 %cmp511, label %do.end3.for.body_crit_edge, label %do.end3.for.end_crit_edge

do.end3.for.end_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

do.end3.for.body_crit_edge:                       ; preds = %do.end3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end3.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end3.for.body_crit_edge ]
  %arrayidx = getelementptr [64 x ptr], ptr @jfsCommitThread, i32 0, i32 %i.012
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call6 = tail call i32 @kthread_stop(ptr noundef %4) #15
  %inc = add nuw nsw i32 %i.012, 1
  %5 = load i32, ptr @commit_threads, align 4
  %cmp5 = icmp slt i32 %inc, %5
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end3.for.end_crit_edge
  %6 = load ptr, ptr @jfsSyncThread, align 4
  %call7 = tail call i32 @kthread_stop(ptr noundef %6) #15
  tail call void @jfs_proc_clean() #15
  %call8 = tail call i32 @unregister_filesystem(ptr noundef nonnull @jfs_fs_type) #15
  tail call void @rcu_barrier() #15
  %7 = load ptr, ptr @jfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %7) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @txExit() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @metapage_exit() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_proc_clean() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_jfs_fs() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.92, i32 noundef 1632, i32 noundef 0, i32 noundef 68288512, i32 noundef 480, i32 noundef 256, ptr noundef nonnull @init_once) #15
  store ptr %call, ptr @jfs_inode_cachep, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @metapage_init() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %if.end
  %0 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp3 = icmp sgt i32 %0, 0
  br i1 %cmp3, label %do.end, label %do.body.free_slab_crit_edge

do.body.free_slab_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_slab

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %call1) #18
  br label %free_slab

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @txInit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end25, label %do.body14

do.body14:                                        ; preds = %if.end10
  %1 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15 = icmp sgt i32 %1, 0
  br i1 %cmp15, label %do.end19, label %do.body14.free_metapage_crit_edge

do.body14.free_metapage_crit_edge:                ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_metapage

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #17
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %call11) #18
  br label %free_metapage

if.end25:                                         ; preds = %if.end10
  %call26 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @jfsIOWait, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.98) #15
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %if.end46

if.then33:                                        ; preds = %if.end25
  store ptr %call26, ptr @jfsIOthread, align 4
  %2 = ptrtoint ptr %call26 to i32
  %3 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp36 = icmp sgt i32 %3, 0
  br i1 %cmp36, label %do.end40, label %if.then33.end_txmngr_crit_edge

if.then33.end_txmngr_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %end_txmngr

do.end40:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %2) #18
  br label %end_txmngr

if.end46:                                         ; preds = %if.end25
  %call29 = tail call i32 @wake_up_process(ptr noundef %call26) #15
  store ptr %call26, ptr @jfsIOthread, align 4
  %4 = load i32, ptr @commit_threads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp47 = icmp slt i32 %4, 1
  br i1 %cmp47, label %if.then48, label %if.end46.if.end50_crit_edge

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %5 = load volatile i32, ptr @__num_online_cpus, align 4
  store i32 %5, ptr @commit_threads, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end46.if.end50_crit_edge
  %6 = phi i32 [ %5, %if.then48 ], [ %4, %if.end46.if.end50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp51 = icmp sgt i32 %6, 64
  br i1 %cmp51, label %if.end53.thread, label %if.end53

if.end53.thread:                                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  store i32 64, ptr @commit_threads, align 4
  br label %for.body.preheader

if.end53:                                         ; preds = %if.end50
  %.pr = load i32, ptr @commit_threads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp54145 = icmp sgt i32 %.pr, 0
  br i1 %cmp54145, label %if.end53.for.body.preheader_crit_edge, label %if.end53.for.end_crit_edge

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end53.for.body.preheader_crit_edge:            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end53.for.body.preheader_crit_edge, %if.end53.thread
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0146 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call56 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @jfs_lazycommit, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.102) #15
  %cmp.i139 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %if.then64, label %for.inc

if.then64:                                        ; preds = %for.body
  %arrayidx143 = getelementptr [64 x ptr], ptr @jfsCommitThread, i32 0, i32 %i.0146
  %7 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call56, ptr %arrayidx143, align 4
  %8 = ptrtoint ptr %call56 to i32
  %9 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp68 = icmp sgt i32 %9, 0
  br i1 %cmp68, label %do.end72, label %if.then64.do.end77_crit_edge

if.then64.do.end77_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end77

do.end72:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %8) #18
  br label %do.end77

do.end77:                                         ; preds = %do.end72, %if.then64.do.end77_crit_edge
  store i32 %i.0146, ptr @commit_threads, align 4
  br label %kill_committask

for.inc:                                          ; preds = %for.body
  %call59 = tail call i32 @wake_up_process(ptr noundef %call56) #15
  %arrayidx = getelementptr [64 x ptr], ptr @jfsCommitThread, i32 0, i32 %i.0146
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call56, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0146, 1
  %11 = load i32, ptr @commit_threads, align 4
  %cmp54 = icmp slt i32 %inc, %11
  br i1 %cmp54, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end53.for.end_crit_edge
  %call80 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @jfs_sync, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.105) #15
  %cmp.i141 = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %if.then87, label %if.end100

if.then87:                                        ; preds = %for.end
  store ptr %call80, ptr @jfsSyncThread, align 4
  %12 = ptrtoint ptr %call80 to i32
  %13 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp90 = icmp sgt i32 %13, 0
  br i1 %cmp90, label %do.end94, label %if.then87.kill_committaskthread-pre-split_crit_edge

if.then87.kill_committaskthread-pre-split_crit_edge: ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #17
  br label %kill_committaskthread-pre-split

do.end94:                                         ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #17
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %12) #18
  br label %kill_committaskthread-pre-split

if.end100:                                        ; preds = %for.end
  %call83 = tail call i32 @wake_up_process(ptr noundef %call80) #15
  store ptr %call80, ptr @jfsSyncThread, align 4
  tail call void @jfs_proc_init() #15
  %call101 = tail call i32 @register_filesystem(ptr noundef nonnull @jfs_fs_type) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end100.cleanup_crit_edge, label %if.end104

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end104:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @jfs_proc_clean() #15
  %14 = load ptr, ptr @jfsSyncThread, align 4
  %call105 = tail call i32 @kthread_stop(ptr noundef %14) #15
  br label %kill_committaskthread-pre-split

kill_committaskthread-pre-split:                  ; preds = %if.end104, %do.end94, %if.then87.kill_committaskthread-pre-split_crit_edge
  %rc.0.ph = phi i32 [ %call101, %if.end104 ], [ %12, %if.then87.kill_committaskthread-pre-split_crit_edge ], [ %12, %do.end94 ]
  %.pr152 = load i32, ptr @commit_threads, align 4
  br label %kill_committask

kill_committask:                                  ; preds = %kill_committaskthread-pre-split, %do.end77
  %15 = phi i32 [ %.pr152, %kill_committaskthread-pre-split ], [ %i.0146, %do.end77 ]
  %rc.0 = phi i32 [ %rc.0.ph, %kill_committaskthread-pre-split ], [ %8, %do.end77 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp107147 = icmp sgt i32 %15, 0
  br i1 %cmp107147, label %kill_committask.for.body108_crit_edge, label %kill_committask.for.end113_crit_edge

kill_committask.for.end113_crit_edge:             ; preds = %kill_committask
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end113

kill_committask.for.body108_crit_edge:            ; preds = %kill_committask
  br label %for.body108

for.body108:                                      ; preds = %for.body108.for.body108_crit_edge, %kill_committask.for.body108_crit_edge
  %i.1148 = phi i32 [ %inc112, %for.body108.for.body108_crit_edge ], [ 0, %kill_committask.for.body108_crit_edge ]
  %arrayidx109 = getelementptr [64 x ptr], ptr @jfsCommitThread, i32 0, i32 %i.1148
  %16 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx109, align 4
  %call110 = tail call i32 @kthread_stop(ptr noundef %17) #15
  %inc112 = add nuw nsw i32 %i.1148, 1
  %18 = load i32, ptr @commit_threads, align 4
  %cmp107 = icmp slt i32 %inc112, %18
  br i1 %cmp107, label %for.body108.for.body108_crit_edge, label %for.body108.for.end113_crit_edge

for.body108.for.end113_crit_edge:                 ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end113

for.body108.for.body108_crit_edge:                ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body108

for.end113:                                       ; preds = %for.body108.for.end113_crit_edge, %kill_committask.for.end113_crit_edge
  %19 = load ptr, ptr @jfsIOthread, align 4
  %call114 = tail call i32 @kthread_stop(ptr noundef %19) #15
  br label %end_txmngr

end_txmngr:                                       ; preds = %for.end113, %do.end40, %if.then33.end_txmngr_crit_edge
  %rc.1 = phi i32 [ %2, %do.end40 ], [ %2, %if.then33.end_txmngr_crit_edge ], [ %rc.0, %for.end113 ]
  tail call void @txExit() #15
  br label %free_metapage

free_metapage:                                    ; preds = %end_txmngr, %do.end19, %do.body14.free_metapage_crit_edge
  %rc.2 = phi i32 [ %call11, %do.end19 ], [ %call11, %do.body14.free_metapage_crit_edge ], [ %rc.1, %end_txmngr ]
  tail call void @metapage_exit() #15
  br label %free_slab

free_slab:                                        ; preds = %free_metapage, %do.end, %do.body.free_slab_crit_edge
  %rc.3 = phi i32 [ %call1, %do.end ], [ %call1, %do.body.free_slab_crit_edge ], [ %rc.2, %free_metapage ]
  %20 = load ptr, ptr @jfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %20) #15
  br label %cleanup

cleanup:                                          ; preds = %free_slab, %if.end100.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.3, %free_slab ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end100.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @updateSuper(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @jfs_do_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @jfs_fill_super) #15
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #0 align 64 {
entry:
  %newLVSize = alloca i64, align 8
  %flag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %newLVSize) #15
  %0 = ptrtoint ptr %newLVSize to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %newLVSize, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flag) #15
  %1 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp sgt i32 %1, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %3) #18
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 164) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %s_max_links = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 41
  %6 = ptrtoint ptr %s_max_links to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %s_max_links, align 128
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %7 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 36
  %8 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 4294967295, ptr %s_time_max, align 64
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sb, ptr %call7.i.i, align 8
  %uid = getelementptr inbounds %struct.jfs_sb_info, ptr %call7.i.i, i32 0, i32 29
  %10 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %uid, align 4
  %gid = getelementptr inbounds %struct.jfs_sb_info, ptr %call7.i.i, i32 0, i32 30
  %11 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %gid, align 8
  %umask = getelementptr inbounds %struct.jfs_sb_info, ptr %call7.i.i, i32 0, i32 31
  %12 = ptrtoint ptr %umask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %umask, align 4
  %13 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %flag, align 4
  %call10 = call fastcc i32 @parse_options(ptr noundef %data, ptr noundef %sb, ptr noundef nonnull %newLVSize, ptr noundef nonnull %flag)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end6.out_kfree_crit_edge, label %if.end13

if.end6.out_kfree_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_kfree

if.end13:                                         ; preds = %if.end6
  %14 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flag, align 4
  %flag14 = getelementptr inbounds %struct.jfs_sb_info, ptr %call7.i.i, i32 0, i32 27
  %16 = ptrtoint ptr %flag14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %flag14, align 4
  %s_flags15 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %17 = ptrtoint ptr %s_flags15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_flags15, align 4
  %or = or i32 %18, 65536
  store i32 %or, ptr %s_flags15, align 4
  %19 = ptrtoint ptr %newLVSize to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %newLVSize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool16.not = icmp eq i64 %20, 0
  br i1 %tobool16.not, label %if.end23, label %do.end20

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #18
  br label %out_kfree

if.end23:                                         ; preds = %if.end13
  %call24 = call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef 4096) #15
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %21 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @jfs_super_operations, ptr %s_op, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %22 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @jfs_export_operations, ptr %s_export_op, align 16
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 18
  %23 = ptrtoint ptr %s_xattr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @jfs_xattr_handlers, ptr %s_xattr, align 16
  %dq_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 7
  %24 = ptrtoint ptr %dq_op to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dquot_operations, ptr %dq_op, align 8
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %25 = ptrtoint ptr %s_qcop to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @jfs_quotactl_ops, ptr %s_qcop, align 4
  %s_quota_types = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 30
  %26 = ptrtoint ptr %s_quota_types to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %s_quota_types, align 8
  %call25 = call ptr @new_inode(ptr noundef %sb) #15
  %cmp26 = icmp eq ptr %call25, null
  br i1 %cmp26, label %if.end23.out_unload_crit_edge, label %if.end28

if.end23.out_unload_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unload

if.end28:                                         ; preds = %if.end23
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %27 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_bdev, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shl.i = shl i64 %30, 9
  %i_size = getelementptr inbounds %struct.inode, ptr %call25, i32 0, i32 14
  %31 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %shl.i, ptr %i_size, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call25, i32 0, i32 9
  %32 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @jfs_metapage_aops, ptr %a_ops, align 4
  %i_hash.i = getelementptr inbounds %struct.inode, ptr %call25, i32 0, i32 28
  %pprev.i.i = getelementptr inbounds %struct.inode, ptr %call25, i32 0, i32 28, i32 1
  %35 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %i_hash.i, ptr %pprev.i.i, align 4
  %36 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3136, ptr %gfp_mask.i, align 4
  %direct_inode = getelementptr inbounds %struct.jfs_sb_info, ptr %call7.i.i, i32 0, i32 25
  %38 = ptrtoint ptr %direct_inode to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call25, ptr %direct_inode, align 4
  %call31 = call i32 @jfs_mount(ptr noundef %sb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end48, label %if.then33

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool34.not = icmp eq i32 %silent, 0
  br i1 %tobool34.not, label %do.body36, label %if.then33.out_mount_failed_crit_edge

if.then33.out_mount_failed_crit_edge:             ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_mount_failed

do.body36:                                        ; preds = %if.then33
  %39 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp37 = icmp sgt i32 %39, 0
  br i1 %cmp37, label %do.end41, label %do.body36.out_mount_failed_crit_edge

do.body36.out_mount_failed_crit_edge:             ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_mount_failed

do.end41:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #17
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call31) #18
  br label %out_mount_failed

if.end48:                                         ; preds = %if.end28
  %40 = ptrtoint ptr %s_flags15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_flags15, align 4
  %and.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  %log = getelementptr inbounds %struct.jfs_sb_info, ptr %call7.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %log to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %log, align 8
  br label %if.end69

if.else:                                          ; preds = %if.end48
  %call51 = call i32 @jfs_mount_rw(ptr noundef %sb, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.else.if.end69_crit_edge, label %if.then53

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool54.not = icmp eq i32 %silent, 0
  br i1 %tobool54.not, label %do.body56, label %if.then53.out_no_rw_crit_edge

if.then53.out_no_rw_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_no_rw

do.body56:                                        ; preds = %if.then53
  %43 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp57 = icmp sgt i32 %43, 0
  br i1 %cmp57, label %do.end61, label %do.body56.out_no_rw_crit_edge

do.body56.out_no_rw_crit_edge:                    ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_no_rw

do.end61:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #17
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call51) #18
  br label %out_no_rw

if.end69:                                         ; preds = %if.else.if.end69_crit_edge, %if.then50
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %44 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 827541066, ptr %s_magic, align 4
  %mntflag = getelementptr inbounds %struct.jfs_sb_info, ptr %call7.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %mntflag to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mntflag, align 4
  %and = and i32 %46, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool70.not = icmp eq i32 %and, 0
  br i1 %tobool70.not, label %if.end69.if.end72_crit_edge, label %if.then71

if.end69.if.end72_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 45
  %47 = ptrtoint ptr %s_d_op to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @jfs_ci_dentry_operations, ptr %s_d_op, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end69.if.end72_crit_edge
  %call73 = call ptr @jfs_iget(ptr noundef %sb, i32 noundef 2) #15
  %cmp.i = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %call73 to i32
  br label %out_no_rw

if.end77:                                         ; preds = %if.end72
  %call78 = call ptr @d_make_root(ptr noundef %call73) #15
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %49 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call78, ptr %s_root, align 64
  %tobool80.not = icmp eq ptr %call78, null
  br i1 %tobool80.not, label %do.body86, label %if.end82

if.end82:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %50 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_blocksize, align 16
  %conv = zext i32 %51 to i64
  %shl = shl i64 %conv, 40
  %52 = call i64 @llvm.smin.i64(i64 %shl, i64 17592186040320)
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %53 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %s_maxbytes, align 8
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %54 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %s_time_gran, align 4
  br label %cleanup

do.body86:                                        ; preds = %if.end77
  %55 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp87 = icmp sgt i32 %55, 0
  br i1 %cmp87, label %do.end92, label %do.body86.out_no_rw_crit_edge

do.body86.out_no_rw_crit_edge:                    ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_no_rw

do.end92:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #17
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #18
  br label %out_no_rw

out_no_rw:                                        ; preds = %do.end92, %do.body86.out_no_rw_crit_edge, %if.then75, %do.end61, %do.body56.out_no_rw_crit_edge, %if.then53.out_no_rw_crit_edge
  %ret.0 = phi i32 [ %48, %if.then75 ], [ -22, %do.end92 ], [ -22, %do.body86.out_no_rw_crit_edge ], [ -22, %if.then53.out_no_rw_crit_edge ], [ -22, %do.end61 ], [ -22, %do.body56.out_no_rw_crit_edge ]
  %call98 = call i32 @jfs_umount(ptr noundef %sb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %out_no_rw.out_mount_failed_crit_edge, label %do.body101

out_no_rw.out_mount_failed_crit_edge:             ; preds = %out_no_rw
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_mount_failed

do.body101:                                       ; preds = %out_no_rw
  %56 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp102 = icmp sgt i32 %56, 0
  br i1 %cmp102, label %do.end107, label %do.body101.out_mount_failed_crit_edge

do.body101.out_mount_failed_crit_edge:            ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_mount_failed

do.end107:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #17
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call98) #18
  br label %out_mount_failed

out_mount_failed:                                 ; preds = %do.end107, %do.body101.out_mount_failed_crit_edge, %out_no_rw.out_mount_failed_crit_edge, %do.end41, %do.body36.out_mount_failed_crit_edge, %if.then33.out_mount_failed_crit_edge
  %ret.1 = phi i32 [ -22, %if.then33.out_mount_failed_crit_edge ], [ -22, %do.end41 ], [ -22, %do.body36.out_mount_failed_crit_edge ], [ %ret.0, %do.end107 ], [ %ret.0, %do.body101.out_mount_failed_crit_edge ], [ %ret.0, %out_no_rw.out_mount_failed_crit_edge ]
  %57 = ptrtoint ptr %direct_inode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %direct_inode, align 4
  %i_mapping115 = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %i_mapping115 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_mapping115, align 8
  %call.i = call i32 @filemap_write_and_wait_range(ptr noundef %60, i64 noundef 0, i64 noundef 9223372036854775807) #15
  %61 = ptrtoint ptr %direct_inode to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %direct_inode, align 4
  %i_mapping118 = getelementptr inbounds %struct.inode, ptr %62, i32 0, i32 9
  %63 = ptrtoint ptr %i_mapping118 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_mapping118, align 8
  call void @truncate_inode_pages(ptr noundef %64, i64 noundef 0) #15
  %65 = ptrtoint ptr %direct_inode to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %direct_inode, align 4
  call void @make_bad_inode(ptr noundef %66) #15
  %67 = ptrtoint ptr %direct_inode to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %direct_inode, align 4
  call void @iput(ptr noundef %68) #15
  %69 = ptrtoint ptr %direct_inode to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %direct_inode, align 4
  br label %out_unload

out_unload:                                       ; preds = %out_mount_failed, %if.end23.out_unload_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_mount_failed ], [ -12, %if.end23.out_unload_crit_edge ]
  %nls_tab = getelementptr inbounds %struct.jfs_sb_info, ptr %call7.i.i, i32 0, i32 24
  %70 = ptrtoint ptr %nls_tab to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %nls_tab, align 8
  call void @unload_nls(ptr noundef %71) #15
  br label %out_kfree

out_kfree:                                        ; preds = %out_unload, %do.end20, %if.end6.out_kfree_crit_edge
  %ret.3 = phi i32 [ -22, %do.end20 ], [ %ret.2, %out_unload ], [ -22, %if.end6.out_kfree_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %out_kfree, %if.end82, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out_kfree ], [ 0, %if.end82 ], [ -12, %do.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flag) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %newLVSize) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_options(ptr noundef %options, ptr nocapture noundef readonly %sb, ptr noundef %newLVSize, ptr nocapture noundef %flag) unnamed_addr #0 align 64 {
entry:
  %options.addr = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  %val = alloca i32, align 4
  %val112 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %3 = ptrtoint ptr %newLVSize to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %newLVSize, align 8
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup225_crit_edge, label %while.cond.preheader

entry.cleanup225_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup225

while.cond.preheader:                             ; preds = %entry
  %call1327 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.26) #15
  %cmp.not328 = icmp eq ptr %call1327, null
  br i1 %cmp.not328, label %while.cond.preheader.cleanup225_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup225_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup225

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %s_bdev180 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %minblks_trim191 = getelementptr inbounds %struct.jfs_sb_info, ptr %2, i32 0, i32 32
  %umask144 = getelementptr inbounds %struct.jfs_sb_info, ptr %2, i32 0, i32 31
  %gid118 = getelementptr inbounds %struct.jfs_sb_info, ptr %2, i32 0, i32 30
  %uid91 = getelementptr inbounds %struct.jfs_sb_info, ptr %2, i32 0, i32 29
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call1330 = phi ptr [ %call1327, %while.body.lr.ph ], [ %call1, %while.cond.backedge.while.body_crit_edge ]
  %nls_map.0329 = phi ptr [ inttoptr (i32 -1 to ptr), %while.body.lr.ph ], [ %nls_map.2, %while.cond.backedge.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #15
  %4 = call ptr @memset(ptr %args, i32 255, i32 24)
  %5 = ptrtoint ptr %call1330 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call1330, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %while.body.while.cond.backedge_crit_edge, label %if.end4

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

if.end4:                                          ; preds = %while.body
  %call5 = call i32 @match_token(ptr noundef nonnull %call1330, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #15
  %7 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5, label %do.end209 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 6, label %if.end4.while.cond.backedge_crit_edge
    i32 2, label %sw.bb7
    i32 3, label %sw.bb23
    i32 4, label %sw.bb31
    i32 5, label %sw.bb41
    i32 8, label %if.end4.sw.bb79_crit_edge
    i32 9, label %if.end4.sw.bb79_crit_edge421
    i32 10, label %sw.bb81
    i32 11, label %sw.bb83
    i32 12, label %sw.bb109
    i32 13, label %sw.bb140
    i32 14, label %sw.bb162
    i32 15, label %sw.bb176
    i32 16, label %sw.bb178
  ]

if.end4.sw.bb79_crit_edge421:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb79

if.end4.sw.bb79_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb79

if.end4.while.cond.backedge_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flag, align 4
  %and = and i32 %9, -65
  store i32 %and, ptr %flag, align 4
  br label %while.cond.backedge

sw.bb6:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flag, align 4
  %or = or i32 %11, 64
  store i32 %or, ptr %flag, align 4
  br label %while.cond.backedge

sw.bb7:                                           ; preds = %if.end4
  %magicptr = ptrtoint ptr %nls_map.0329 to i32
  %12 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %magicptr, label %if.then10 [
    i32 0, label %sw.bb7.if.end11_crit_edge
    i32 -1, label %sw.bb7.if.end11_crit_edge422
  ]

sw.bb7.if.end11_crit_edge422:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

sw.bb7.if.end11_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then10:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #17
  call void @unload_nls(ptr noundef nonnull %nls_map.0329) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %sw.bb7.if.end11_crit_edge, %sw.bb7.if.end11_crit_edge422
  %13 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %args, align 4
  %call12 = call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(5) @.str.27) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.while.cond.backedge_crit_edge, label %if.else

if.end11.while.cond.backedge_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end11
  %call17 = call ptr @load_nls(ptr noundef %14) #15
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.end, label %if.else.while.cond.backedge_crit_edge

if.else.while.cond.backedge_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #18
  br label %cleanup212.thread

sw.bb23:                                          ; preds = %if.end4
  %15 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %args, align 4
  %call26 = call i32 @kstrtoll(ptr noundef %16, i32 noundef 0, ptr noundef %newLVSize) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %sw.bb23.while.cond.backedge_crit_edge, label %sw.bb23.cleanup219.loopexit_crit_edge

sw.bb23.cleanup219.loopexit_crit_edge:            ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup219.loopexit

sw.bb23.while.cond.backedge_crit_edge:            ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

sw.bb31:                                          ; preds = %if.end4
  %17 = ptrtoint ptr %s_bdev180 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_bdev180, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %21 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %22 to i32
  %sub.i = add nsw i32 %conv.i, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i291 = lshr i64 %20, %sh_prom.i
  %23 = ptrtoint ptr %newLVSize to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %shr.i291, ptr %newLVSize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr.i291)
  %cmp33 = icmp eq i64 %shr.i291, 0
  br i1 %cmp33, label %do.end37, label %sw.bb31.while.cond.backedge_crit_edge

sw.bb31.while.cond.backedge_crit_edge:            ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

do.end37:                                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #17
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #18
  br label %while.cond.backedge

sw.bb41:                                          ; preds = %if.end4
  %24 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %args, align 4
  %tobool44.not = icmp eq ptr %25, null
  br i1 %tobool44.not, label %sw.bb41.cleanup212.thread_crit_edge, label %lor.lhs.false

sw.bb41.cleanup212.thread_crit_edge:              ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup212.thread

lor.lhs.false:                                    ; preds = %sw.bb41
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool45.not = icmp eq i8 %27, 0
  br i1 %tobool45.not, label %lor.lhs.false.cleanup212.thread_crit_edge, label %if.end47

lor.lhs.false.cleanup212.thread_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup212.thread

if.end47:                                         ; preds = %lor.lhs.false
  %call48 = call i32 @strcmp(ptr noundef nonnull %25, ptr noundef nonnull dereferenceable(9) @.str.33) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %if.else54

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flag, align 4
  %and52 = and i32 %29, -15
  %or53 = or i32 %and52, 4
  store i32 %or53, ptr %flag, align 4
  br label %while.cond.backedge

if.else54:                                        ; preds = %if.end47
  %call55 = call i32 @strcmp(ptr noundef nonnull %25, ptr noundef nonnull dereferenceable(11) @.str.34) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then57, label %if.else61

if.then57:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flag, align 4
  %and59 = and i32 %31, -15
  %or60 = or i32 %and59, 2
  store i32 %or60, ptr %flag, align 4
  br label %while.cond.backedge

if.else61:                                        ; preds = %if.else54
  %call62 = call i32 @strcmp(ptr noundef nonnull %25, ptr noundef nonnull dereferenceable(6) @.str.35) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then64, label %do.end71

if.then64:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flag, align 4
  %and66 = and i32 %33, -15
  %or67 = or i32 %and66, 8
  store i32 %or67, ptr %flag, align 4
  br label %while.cond.backedge

do.end71:                                         ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #17
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull %25) #18
  br label %cleanup212.thread

sw.bb79:                                          ; preds = %if.end4.sw.bb79_crit_edge, %if.end4.sw.bb79_crit_edge421
  %34 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flag, align 4
  %or80 = or i32 %35, 16
  store i32 %or80, ptr %flag, align 4
  br label %while.cond.backedge

sw.bb81:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flag, align 4
  %or82 = or i32 %37, 32
  store i32 %or82, ptr %flag, align 4
  br label %while.cond.backedge

sw.bb83:                                          ; preds = %if.end4
  %38 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %args, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #15
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %val, align 4, !annotation !269
  %call87 = call i32 @kstrtouint(ptr noundef %39, i32 noundef 0, ptr noundef nonnull %val) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %cleanup105, label %cleanup105.thread

cleanup105.thread:                                ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #15
  br label %cleanup212.thread

cleanup105:                                       ; preds = %sw.bb83
  %41 = call i32 @llvm.read_register.i32(metadata !259) #15
  %and.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 99
  %45 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %46, i32 0, i32 25
  %47 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %user_ns, align 4
  %49 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val, align 4
  %call99 = call i32 @make_kuid(ptr noundef %48, i32 noundef %50) #15
  %51 = ptrtoint ptr %uid91 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call99, ptr %uid91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call99)
  %cmp.i.not = icmp eq i32 %call99, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #15
  br i1 %cmp.i.not, label %cleanup105.cleanup219.loopexit_crit_edge, label %cleanup105.while.cond.backedge_crit_edge

cleanup105.while.cond.backedge_crit_edge:         ; preds = %cleanup105
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

cleanup105.cleanup219.loopexit_crit_edge:         ; preds = %cleanup105
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup219.loopexit

sw.bb109:                                         ; preds = %if.end4
  %52 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %args, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val112) #15
  %54 = ptrtoint ptr %val112 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %val112, align 4, !annotation !269
  %call114 = call i32 @kstrtouint(ptr noundef %53, i32 noundef 0, ptr noundef nonnull %val112) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %cleanup136, label %cleanup136.thread

cleanup136.thread:                                ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val112) #15
  br label %cleanup212.thread

cleanup136:                                       ; preds = %sw.bb109
  %55 = call i32 @llvm.read_register.i32(metadata !259) #15
  %and.i292 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i292 to ptr
  %task126 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task126 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task126, align 8
  %cred127 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 99
  %59 = ptrtoint ptr %cred127 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cred127, align 16
  %user_ns128 = getelementptr inbounds %struct.cred, ptr %60, i32 0, i32 25
  %61 = ptrtoint ptr %user_ns128 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %user_ns128, align 4
  %63 = ptrtoint ptr %val112 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val112, align 4
  %call129 = call i32 @make_kgid(ptr noundef %62, i32 noundef %64) #15
  %65 = ptrtoint ptr %gid118 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call129, ptr %gid118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call129)
  %cmp.i293.not = icmp eq i32 %call129, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val112) #15
  br i1 %cmp.i293.not, label %cleanup136.cleanup219.loopexit_crit_edge, label %cleanup136.while.cond.backedge_crit_edge

cleanup136.while.cond.backedge_crit_edge:         ; preds = %cleanup136
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

cleanup136.cleanup219.loopexit_crit_edge:         ; preds = %cleanup136
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup219.loopexit

sw.bb140:                                         ; preds = %if.end4
  %66 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %args, align 4
  %call145 = call i32 @kstrtouint(ptr noundef %67, i32 noundef 8, ptr noundef %umask144) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end148, label %sw.bb140.cleanup212.thread_crit_edge

sw.bb140.cleanup212.thread_crit_edge:             ; preds = %sw.bb140
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup212.thread

if.end148:                                        ; preds = %sw.bb140
  %68 = ptrtoint ptr %umask144 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %umask144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %69)
  %tobool151.not = icmp ult i32 %69, 512
  br i1 %tobool151.not, label %if.end148.while.cond.backedge_crit_edge, label %do.end155

if.end148.while.cond.backedge_crit_edge:          ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

do.end155:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #17
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #18
  br label %cleanup212.thread

sw.bb162:                                         ; preds = %if.end4
  %70 = ptrtoint ptr %s_bdev180 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_bdev180, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %71, i32 0, i32 18
  %72 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bd_queue.i, align 4
  %74 = ptrtoint ptr %minblks_trim191 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 64, ptr %minblks_trim191, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %73, i32 0, i32 11
  %75 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %queue_flags, align 4
  %77 = and i32 %76, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool165.not = icmp eq i32 %77, 0
  br i1 %tobool165.not, label %do.end171, label %if.then166

if.then166:                                       ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #17
  %78 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flag, align 4
  %or167 = or i32 %79, 128
  store i32 %or167, ptr %flag, align 4
  br label %while.cond.backedge

do.end171:                                        ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #17
  %call173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #18
  br label %while.cond.backedge

sw.bb176:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %80 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flag, align 4
  %and177 = and i32 %81, -129
  store i32 %and177, ptr %flag, align 4
  br label %while.cond.backedge

sw.bb178:                                         ; preds = %if.end4
  %82 = ptrtoint ptr %s_bdev180 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_bdev180, align 4
  %bd_queue.i294 = getelementptr inbounds %struct.block_device, ptr %83, i32 0, i32 18
  %84 = ptrtoint ptr %bd_queue.i294 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bd_queue.i294, align 4
  %86 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %args, align 4
  %queue_flags186 = getelementptr inbounds %struct.request_queue, ptr %85, i32 0, i32 11
  %88 = ptrtoint ptr %queue_flags186 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %queue_flags186, align 4
  %90 = and i32 %89, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool188.not = icmp eq i32 %90, 0
  br i1 %tobool188.not, label %do.end199, label %if.then189

if.then189:                                       ; preds = %sw.bb178
  %91 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flag, align 4
  %or190 = or i32 %92, 128
  store i32 %or190, ptr %flag, align 4
  %call192 = call i32 @kstrtouint(ptr noundef %87, i32 noundef 0, ptr noundef %minblks_trim191) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.then189.while.cond.backedge_crit_edge, label %if.then189.cleanup212.thread_crit_edge

if.then189.cleanup212.thread_crit_edge:           ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup212.thread

if.then189.while.cond.backedge_crit_edge:         ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

do.end199:                                        ; preds = %sw.bb178
  call void @__sanitizer_cov_trace_pc() #17
  %call201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #18
  br label %while.cond.backedge

do.end209:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %call211 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull %call1330) #18
  br label %cleanup212.thread

cleanup212.thread:                                ; preds = %do.end209, %if.then189.cleanup212.thread_crit_edge, %do.end155, %sw.bb140.cleanup212.thread_crit_edge, %cleanup136.thread, %cleanup105.thread, %do.end71, %lor.lhs.false.cleanup212.thread_crit_edge, %sw.bb41.cleanup212.thread_crit_edge, %do.end
  %nls_map.2.ph = phi ptr [ %nls_map.0329, %cleanup136.thread ], [ %nls_map.0329, %cleanup105.thread ], [ %nls_map.0329, %do.end71 ], [ null, %do.end ], [ %nls_map.0329, %do.end209 ], [ %nls_map.0329, %do.end155 ], [ %nls_map.0329, %sw.bb140.cleanup212.thread_crit_edge ], [ %nls_map.0329, %if.then189.cleanup212.thread_crit_edge ], [ %nls_map.0329, %sw.bb41.cleanup212.thread_crit_edge ], [ %nls_map.0329, %lor.lhs.false.cleanup212.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #15
  br label %cleanup219

while.cond.backedge:                              ; preds = %do.end199, %if.then189.while.cond.backedge_crit_edge, %sw.bb176, %do.end171, %if.then166, %if.end148.while.cond.backedge_crit_edge, %cleanup136.while.cond.backedge_crit_edge, %cleanup105.while.cond.backedge_crit_edge, %sw.bb81, %sw.bb79, %if.then64, %if.then57, %if.then50, %do.end37, %sw.bb31.while.cond.backedge_crit_edge, %sw.bb23.while.cond.backedge_crit_edge, %if.else.while.cond.backedge_crit_edge, %if.end11.while.cond.backedge_crit_edge, %sw.bb6, %sw.bb, %if.end4.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %nls_map.2 = phi ptr [ %nls_map.0329, %while.body.while.cond.backedge_crit_edge ], [ %nls_map.0329, %sw.bb176 ], [ %nls_map.0329, %cleanup136.while.cond.backedge_crit_edge ], [ %nls_map.0329, %cleanup105.while.cond.backedge_crit_edge ], [ %nls_map.0329, %sw.bb81 ], [ %nls_map.0329, %sw.bb79 ], [ %nls_map.0329, %do.end37 ], [ %nls_map.0329, %sw.bb31.while.cond.backedge_crit_edge ], [ %nls_map.0329, %sw.bb23.while.cond.backedge_crit_edge ], [ %call17, %if.else.while.cond.backedge_crit_edge ], [ %nls_map.0329, %if.end4.while.cond.backedge_crit_edge ], [ %nls_map.0329, %sw.bb6 ], [ %nls_map.0329, %sw.bb ], [ null, %if.end11.while.cond.backedge_crit_edge ], [ %nls_map.0329, %do.end171 ], [ %nls_map.0329, %if.then166 ], [ %nls_map.0329, %if.end148.while.cond.backedge_crit_edge ], [ %nls_map.0329, %if.then57 ], [ %nls_map.0329, %if.then64 ], [ %nls_map.0329, %if.then50 ], [ %nls_map.0329, %do.end199 ], [ %nls_map.0329, %if.then189.while.cond.backedge_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #15
  %call1 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.26) #15
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %while.end, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge
  %cmp215.not = icmp eq ptr %nls_map.2, inttoptr (i32 -1 to ptr)
  br i1 %cmp215.not, label %while.end.cleanup225_crit_edge, label %if.then216

while.end.cleanup225_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup225

if.then216:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %nls_tab = getelementptr inbounds %struct.jfs_sb_info, ptr %2, i32 0, i32 24
  %93 = ptrtoint ptr %nls_tab to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %nls_tab, align 4
  call void @unload_nls(ptr noundef %94) #15
  %95 = ptrtoint ptr %nls_tab to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %nls_map.2, ptr %nls_tab, align 4
  br label %cleanup225

cleanup219.loopexit:                              ; preds = %cleanup136.cleanup219.loopexit_crit_edge, %cleanup105.cleanup219.loopexit_crit_edge, %sw.bb23.cleanup219.loopexit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #15
  br label %cleanup219

cleanup219:                                       ; preds = %cleanup219.loopexit, %cleanup212.thread
  %nls_map.2307 = phi ptr [ %nls_map.2.ph, %cleanup212.thread ], [ %nls_map.0329, %cleanup219.loopexit ]
  %magicptr288 = ptrtoint ptr %nls_map.2307 to i32
  %96 = zext i32 %magicptr288 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %magicptr288, label %if.then223 [
    i32 0, label %cleanup219.cleanup225_crit_edge
    i32 -1, label %cleanup219.cleanup225_crit_edge423
  ]

cleanup219.cleanup225_crit_edge423:               ; preds = %cleanup219
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup225

cleanup219.cleanup225_crit_edge:                  ; preds = %cleanup219
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup225

if.then223:                                       ; preds = %cleanup219
  call void @__sanitizer_cov_trace_pc() #17
  call void @unload_nls(ptr noundef nonnull %nls_map.2307) #15
  br label %cleanup225

cleanup225:                                       ; preds = %if.then223, %cleanup219.cleanup225_crit_edge, %cleanup219.cleanup225_crit_edge423, %if.then216, %while.end.cleanup225_crit_edge, %while.cond.preheader.cleanup225_crit_edge, %entry.cleanup225_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup225_crit_edge ], [ 1, %if.then216 ], [ 1, %while.end.cleanup225_crit_edge ], [ 0, %cleanup219.cleanup225_crit_edge ], [ 0, %cleanup219.cleanup225_crit_edge423 ], [ 0, %if.then223 ], [ 1, %while.cond.preheader.cleanup225_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_mount(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_mount_rw(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jfs_iget(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_umount(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @unload_nls(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @jfs_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @jfs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %i_dquot = getelementptr inbounds %struct.jfs_inode_info, ptr %call, i32 0, i32 28
  %1 = call ptr @memset(ptr %i_dquot, i32 0, i32 12)
  %vfs_inode = getelementptr inbounds %struct.jfs_inode_info, ptr %call, i32 0, i32 30
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jfs_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @jfs_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -848
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_dirty_inode(ptr noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_write_inode(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_evict_inode(ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jfs_put_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp sgt i32 %2, 3
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #18
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call.i = tail call i32 @jfs_quota_off(ptr noundef %sb, i32 noundef 0) #15
  %call.1.i = tail call i32 @jfs_quota_off(ptr noundef %sb, i32 noundef 1) #15
  %call.2.i = tail call i32 @jfs_quota_off(ptr noundef %sb, i32 noundef 2) #15
  %call5 = tail call i32 @jfs_umount(ptr noundef %sb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %do.end4.if.end18_crit_edge, label %do.body7

do.end4.if.end18_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

do.body7:                                         ; preds = %do.end4
  %3 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8 = icmp sgt i32 %3, 0
  br i1 %cmp8, label %do.end12, label %do.body7.if.end18_crit_edge

do.body7.if.end18_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

do.end12:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call5) #18
  br label %if.end18

if.end18:                                         ; preds = %do.end12, %do.body7.if.end18_crit_edge, %do.end4.if.end18_crit_edge
  %nls_tab = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %nls_tab to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nls_tab, align 4
  tail call void @unload_nls(ptr noundef %5) #15
  %direct_inode = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %direct_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %direct_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  tail call void @truncate_inode_pages(ptr noundef %9, i64 noundef 0) #15
  %10 = ptrtoint ptr %direct_inode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %direct_inode, align 4
  tail call void @iput(ptr noundef %11) #15
  tail call void @kfree(ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_sync_fs(ptr noundef %sb, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %log1 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 @dquot_writeback_dquots(ptr noundef %sb, i32 noundef -1) #15
  tail call void @jfs_flush_journal(ptr noundef nonnull %3, i32 noundef %wait) #15
  tail call void @jfs_syncpt(ptr noundef nonnull %3, i32 noundef 0) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_freeze(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %0 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %log1 = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log1, align 4
  tail call void @txQuiesce(ptr noundef %sb) #15
  %call3 = tail call i32 @lmLogShutdown(ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %sb, ptr noundef nonnull @.str.71)
  tail call void @txResume(ptr noundef %sb) #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call5 = tail call i32 @updateSuper(ptr noundef %sb, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.end
  %6 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_unfreeze(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %log1 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log1, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @updateSuper(ptr noundef %sb, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then.out.sink.split_crit_edge

if.then.out.sink.split_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.sink.split

if.end:                                           ; preds = %if.then
  %call5 = tail call i32 @lmLogInit(ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.out_crit_edge, label %if.end.out.sink.split_crit_edge

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.sink.split

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out.sink.split:                                   ; preds = %if.end.out.sink.split_crit_edge, %if.then.out.sink.split_crit_edge
  %.str.75.sink = phi ptr [ @.str.74, %if.then.out.sink.split_crit_edge ], [ @.str.75, %if.end.out.sink.split_crit_edge ]
  %rc.0.ph = phi i32 [ %call3, %if.then.out.sink.split_crit_edge ], [ %call5, %if.end.out.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %sb, ptr noundef nonnull %.str.75.sink)
  br label %out

out:                                              ; preds = %out.sink.split, %if.end.out_crit_edge
  %rc.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ %rc.0.ph, %out.sink.split ]
  tail call void @txResume(ptr noundef %sb) #15
  br label %if.end9

if.end9:                                          ; preds = %out, %entry.if.end9_crit_edge
  %rc.1 = phi i32 [ 0, %entry.if.end9_crit_edge ], [ %rc.0, %out ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #0 align 64 {
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
  %ipimap = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ipimap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipimap, align 4
  %_imap = getelementptr i8, ptr %5, i32 -112
  %6 = ptrtoint ptr %_imap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_imap, align 8
  %8 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp sgt i32 %8, 3
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 827541066, ptr %buf, align 8
  %bsize = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %bsize to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bsize, align 4
  %conv = sext i16 %11 to i32
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %f_bsize, align 4
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 23
  %13 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bmap, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %14, align 8
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %17 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %f_blocks, align 8
  %18 = load ptr, ptr %bmap, align 4
  %dn_nfree = getelementptr inbounds %struct.dbmap, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %dn_nfree to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %dn_nfree, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %21 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %f_bfree, align 8
  %22 = load ptr, ptr %bmap, align 4
  %dn_nfree10 = getelementptr inbounds %struct.dbmap, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %dn_nfree10 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %dn_nfree10, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %25 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %f_bavail, align 8
  %im_numinos = getelementptr inbounds %struct.inomap, ptr %7, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %im_numinos, i32 noundef 4) #15
  %26 = ptrtoint ptr %im_numinos to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %im_numinos, align 4
  %conv12 = sext i32 %27 to i64
  %28 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bmap, align 4
  %dn_nfree15 = getelementptr inbounds %struct.dbmap, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %dn_nfree15 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %dn_nfree15, align 8
  %in_l2nbperiext = getelementptr inbounds %struct.dinomap, ptr %7, i32 0, i32 5
  %32 = ptrtoint ptr %in_l2nbperiext to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %in_l2nbperiext, align 4
  %sh_prom = zext i32 %33 to i64
  %shr = ashr i64 %31, %sh_prom
  %shl = shl i64 %shr, 5
  %add = add i64 %shl, %conv12
  %34 = tail call i64 @llvm.smin.i64(i64 %add, i64 4294967295)
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %35 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %f_files, align 8
  %call.i.i52 = tail call zeroext i1 @__kasan_check_read(ptr noundef %im_numinos, i32 noundef 4) #15
  %36 = ptrtoint ptr %im_numinos to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %im_numinos, align 4
  %im_numfree = getelementptr inbounds %struct.inomap, ptr %7, i32 0, i32 6
  %call.i.i53 = tail call zeroext i1 @__kasan_check_read(ptr noundef %im_numfree, i32 noundef 4) #15
  %38 = ptrtoint ptr %im_numfree to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %im_numfree, align 4
  %sub = sub i32 %37, %39
  %conv22 = sext i32 %sub to i64
  %sub23 = sub i64 %34, %conv22
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %40 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %sub23, ptr %f_ffree, align 8
  %uuid = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 18
  %call24 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %uuid, i32 noundef 8) #22
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %41 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call24, ptr %f_fsid, align 8
  %add.ptr = getelementptr %struct.jfs_sb_info, ptr %3, i32 0, i32 18, i32 0, i32 8
  %call26 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %add.ptr, i32 noundef 8) #22
  %arrayidx29 = getelementptr %struct.kstatfs, ptr %buf, i32 0, i32 7, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call26, ptr %arrayidx29, align 4
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %43 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 255, ptr %f_namelen, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_remount(ptr noundef %sb, ptr nocapture noundef readonly %flags, ptr noundef %data) #0 align 64 {
entry:
  %newLVSize = alloca i64, align 8
  %flag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %newLVSize) #15
  %0 = ptrtoint ptr %newLVSize to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %newLVSize, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flag) #15
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %flag1 = getelementptr inbounds %struct.jfs_sb_info, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %flag1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flag1, align 4
  %5 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %flag, align 4
  %call2 = tail call i32 @sync_filesystem(ptr noundef %sb) #15
  %call3 = call fastcc i32 @parse_options(ptr noundef %data, ptr noundef %sb, ptr noundef nonnull %newLVSize, ptr noundef nonnull %flag)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %newLVSize to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %newLVSize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool4.not = icmp eq i64 %7, 0
  br i1 %tobool4.not, label %if.end.if.end14_crit_edge, label %if.then5

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then5:                                         ; preds = %if.end
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %8 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #18
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  %call10 = call i32 @jfs_extendfs(ptr noundef %sb, i64 noundef %7, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.end14:                                         ; preds = %if.end9.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %s_flags.i87 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %10 = ptrtoint ptr %s_flags.i87 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_flags.i87, align 4
  %and.i88 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88)
  %tobool.i89.not = icmp eq i32 %and.i88, 0
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and27 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool.i89.not, label %land.lhs.true26, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  br i1 %tobool28.not, label %if.then17, label %if.end36

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %direct_inode = getelementptr inbounds %struct.jfs_sb_info, ptr %15, i32 0, i32 25
  %16 = ptrtoint ptr %direct_inode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %direct_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_mapping, align 8
  call void @truncate_inode_pages(ptr noundef %19, i64 noundef 0) #15
  %20 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flag, align 4
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  %flag20 = getelementptr inbounds %struct.jfs_sb_info, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %flag20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %flag20, align 4
  %call21 = call i32 @jfs_mount_rw(ptr noundef %sb, i32 noundef 1) #15
  %25 = ptrtoint ptr %s_flags.i87 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_flags.i87, align 4
  %and22 = and i32 %26, -2
  store i32 %and22, ptr %s_flags.i87, align 4
  %call23 = call i32 @dquot_resume(ptr noundef %sb, i32 noundef -1) #15
  br label %cleanup

land.lhs.true26:                                  ; preds = %if.end14
  br i1 %tobool28.not, label %if.end36.thread, label %if.then29

if.then29:                                        ; preds = %land.lhs.true26
  %call.i = call i32 @dquot_disable(ptr noundef %sb, i32 noundef -1, i32 noundef 64) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then29.cleanup_crit_edge, label %if.end32

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end32:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  %call33 = call i32 @jfs_umount_rw(ptr noundef %sb) #15
  %27 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flag, align 4
  %29 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i, align 16
  %flag35 = getelementptr inbounds %struct.jfs_sb_info, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %flag35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %flag35, align 4
  br label %cleanup

if.end36:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %flag38 = getelementptr inbounds %struct.jfs_sb_info, ptr %15, i32 0, i32 27
  %32 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flag, align 4
  br label %if.end53

if.end36.thread:                                  ; preds = %land.lhs.true26
  %34 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i, align 16
  %flag38102 = getelementptr inbounds %struct.jfs_sb_info, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %flag38102 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flag38102, align 4
  %38 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flag, align 4
  %40 = xor i32 %39, %37
  %41 = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp41.not103 = icmp eq i32 %41, 0
  br i1 %cmp41.not103, label %if.end36.thread.if.end53_crit_edge, label %if.then44

if.end36.thread.if.end53_crit_edge:               ; preds = %if.end36.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.then44:                                        ; preds = %if.end36.thread
  %call45 = call i32 @jfs_umount_rw(ptr noundef %sb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end48:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_fs_info.i, align 16
  %flag50 = getelementptr inbounds %struct.jfs_sb_info, ptr %43, i32 0, i32 27
  %44 = ptrtoint ptr %flag50 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %39, ptr %flag50, align 4
  %call51 = call i32 @jfs_mount_rw(ptr noundef %sb, i32 noundef 1) #15
  br label %cleanup

if.end53:                                         ; preds = %if.end36.thread.if.end53_crit_edge, %if.end36
  %45 = phi i32 [ %39, %if.end36.thread.if.end53_crit_edge ], [ %33, %if.end36 ]
  %flag38105 = phi ptr [ %flag38102, %if.end36.thread.if.end53_crit_edge ], [ %flag38, %if.end36 ]
  %46 = ptrtoint ptr %flag38105 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %flag38105, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end48, %if.then44.cleanup_crit_edge, %if.end32, %if.then29.cleanup_crit_edge, %if.then17, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %do.end ], [ 0, %if.end53 ], [ %call51, %if.end48 ], [ %call33, %if.end32 ], [ %call21, %if.then17 ], [ -22, %entry.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call.i, %if.then29.cleanup_crit_edge ], [ %call45, %if.then44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flag) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %newLVSize) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_show_options(ptr noundef %seq, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %uid = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack)
  %cmp.i.not = icmp eq i32 %.unpack, -1
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call4 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %5) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.80, i32 noundef %call4) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %gid = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 30
  %6 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack70 = load i32, ptr %gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack70)
  %cmp.i73.not = icmp eq i32 %.unpack70, -1
  br i1 %cmp.i73.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %7 = insertvalue [1 x i32] undef, i32 %.unpack70, 0
  %call10 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %7) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.81, i32 noundef %call10) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  %umask = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 31
  %8 = ptrtoint ptr %umask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %umask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.not = icmp eq i32 %9, -1
  br i1 %cmp.not, label %if.end11.if.end14_crit_edge, label %if.then12

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.82, i32 noundef %9) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end11.if.end14_crit_edge
  %flag = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 27
  %10 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flag, align 4
  %and = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14.if.end16_crit_edge, label %if.then15

if.end14.if.end16_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.83) #15
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end14.if.end16_crit_edge
  %12 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flag, align 4
  %and18 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end21_crit_edge, label %if.then20

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %minblks_trim = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 32
  %14 = ptrtoint ptr %minblks_trim to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %minblks_trim, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.84, i32 noundef %15) #15
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16.if.end21_crit_edge
  %nls_tab = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 24
  %16 = ptrtoint ptr %nls_tab to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nls_tab, align 4
  %tobool22.not = icmp eq ptr %17, null
  br i1 %tobool22.not, label %if.end21.if.end25_crit_edge, label %if.then23

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.85, ptr noundef %19) #15
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge
  %20 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flag, align 4
  %and27 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end30_crit_edge, label %if.then29

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.86) #15
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end25.if.end30_crit_edge
  %22 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flag, align 4
  %and32 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end35_crit_edge, label %if.then34

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.87) #15
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end30.if.end35_crit_edge
  %24 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flag, align 4
  %and37 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end40_crit_edge, label %if.then39

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.88) #15
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end35.if.end40_crit_edge
  %26 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flag, align 4
  %and42 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.if.end45_crit_edge, label %if.then44

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.89) #15
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end40.if.end45_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_quota_read(ptr nocapture noundef readonly %sb, i32 noundef %type, ptr nocapture noundef writeonly %data, i32 noundef %len, i64 noundef %off) #0 align 64 {
entry:
  %tmp_bh = alloca %struct.buffer_head, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %3 to i64
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %6 = trunc i64 %off to i32
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %tmp_bh) #15
  %7 = call ptr @memset(ptr %tmp_bh, i32 255, i32 104)
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !270
  %and.i.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  %9 = tail call ptr @llvm.returnaddress(i32 0) #15
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %10) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %10) #15
  tail call void @trace_hardirqs_on() #15
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %11 = tail call ptr @llvm.returnaddress(i32 0) #15
  %12 = ptrtoint ptr %11 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %12) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %12) #15
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !271
  %and.i.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !272

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #15, !srcloc !273
  %14 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !274
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !275
  %16 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %17, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %15, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %17, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !276
  %18 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !277
  %20 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %21, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %shr = ashr i64 %off, %sh_prom
  %sub = add i32 %5, -1
  %conv2 = and i32 %sub, %6
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %off)
  %cmp = icmp slt i64 %19, %off
  br i1 %cmp, label %i_size_read.exit.cleanup_crit_edge, label %if.end

i_size_read.exit.cleanup_crit_edge:               ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %i_size_read.exit
  %conv5 = zext i32 %len to i64
  %add = add i64 %conv5, %off
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %19)
  %cmp6 = icmp sgt i64 %add, %19
  %sub9 = sub i64 %19, %off
  %conv10 = trunc i64 %sub9 to i32
  %len.addr.0 = select i1 %cmp6, i32 %conv10, i32 %len
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %cmp12.not73 = icmp eq i32 %len.addr.0, 0
  br i1 %cmp12.not73, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 20
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh, i32 0, i32 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  br label %while.body

while.body:                                       ; preds = %if.end31.while.body_crit_edge, %while.body.lr.ph
  %toread.078 = phi i32 [ %len.addr.0, %while.body.lr.ph ], [ %sub32, %if.end31.while.body_crit_edge ]
  %offset.077 = phi i32 [ %conv2, %while.body.lr.ph ], [ 0, %if.end31.while.body_crit_edge ]
  %blk.076 = phi i64 [ %shr, %while.body.lr.ph ], [ %inc, %if.end31.while.body_crit_edge ]
  %data.addr.074 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr33, %if.end31.while.body_crit_edge ]
  %22 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize, align 16
  %sub15 = sub i32 %23, %offset.077
  %24 = call i32 @llvm.umin.i32(i32 %sub15, i32 %toread.078)
  %25 = ptrtoint ptr %tmp_bh to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %tmp_bh, align 8
  %26 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %27 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %28 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl.i, ptr %b_size, align 8
  %call21 = call i32 @jfs_get_block(ptr noundef %1, i64 noundef %blk.076, ptr noundef nonnull %tmp_bh, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.end23, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end23:                                         ; preds = %while.body
  %29 = ptrtoint ptr %tmp_bh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %tmp_bh, align 8
  %31 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool25.not = icmp eq i32 %31, 0
  br i1 %tobool25.not, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %32 = call ptr @memset(ptr %data.addr.074, i32 0, i32 %24)
  br label %if.end31

if.else:                                          ; preds = %if.end23
  %33 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %b_blocknr, align 8
  %35 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_bdev.i, align 4
  %37 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_blocksize, align 16
  %call.i = call ptr @__bread_gfp(ptr noundef %36, i64 noundef %34, i32 noundef %38, i32 noundef 8) #15
  %tobool28.not = icmp eq ptr %call.i, null
  br i1 %tobool28.not, label %if.else.cleanup_crit_edge, label %brelse.exit

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

brelse.exit:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %39 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %40, i32 %offset.077
  %41 = call ptr @memcpy(ptr %data.addr.074, ptr %add.ptr, i32 %24)
  call void @__brelse(ptr noundef nonnull %call.i) #15
  br label %if.end31

if.end31:                                         ; preds = %brelse.exit, %if.then26
  %sub32 = sub i32 %toread.078, %24
  %add.ptr33 = getelementptr i8, ptr %data.addr.074, i32 %24
  %inc = add i64 %blk.076, 1
  %cmp12.not = icmp eq i32 %sub32, 0
  br i1 %cmp12.not, label %if.end31.cleanup_crit_edge, label %if.end31.while.body_crit_edge

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end31.cleanup_crit_edge, %if.else.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %i_size_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %i_size_read.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call21, %while.body.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ %len.addr.0, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %tmp_bh) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_quota_write(ptr nocapture noundef readonly %sb, i32 noundef %type, ptr nocapture noundef readonly %data, i32 noundef %len, i64 noundef %off) #0 align 64 {
entry:
  %tmp_bh = alloca %struct.buffer_head, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s_blocksize_bits, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %tmp_bh) #15
  %6 = call ptr @memset(ptr %tmp_bh, i32 255, i32 104)
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not105 = icmp eq i32 %len, 0
  br i1 %cmp.not105, label %entry.out_crit_edge, label %while.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

while.body.lr.ph:                                 ; preds = %entry
  %sub = add i32 %5, -1
  %7 = trunc i64 %off to i32
  %conv2 = and i32 %sub, %7
  %sh_prom = zext i8 %3 to i64
  %shr = ashr i64 %off, %sh_prom
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 20
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh, i32 0, i32 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh, i32 0, i32 3
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  br label %while.body

while.body:                                       ; preds = %brelse.exit.while.body_crit_edge, %while.body.lr.ph
  %towrite.0109 = phi i32 [ %len, %while.body.lr.ph ], [ %sub24, %brelse.exit.while.body_crit_edge ]
  %offset.0108 = phi i32 [ %conv2, %while.body.lr.ph ], [ 0, %brelse.exit.while.body_crit_edge ]
  %blk.0107 = phi i64 [ %shr, %while.body.lr.ph ], [ %inc, %brelse.exit.while.body_crit_edge ]
  %data.addr.0106 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr25, %brelse.exit.while.body_crit_edge ]
  %8 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize, align 16
  %sub5 = sub i32 %9, %offset.0108
  %10 = call i32 @llvm.umin.i32(i32 %sub5, i32 %towrite.0109)
  %11 = ptrtoint ptr %tmp_bh to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tmp_bh, align 8
  %12 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %13 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %14 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl.i, ptr %b_size, align 8
  %call11 = call i32 @jfs_get_block(ptr noundef %1, i64 noundef %blk.0107, ptr noundef nonnull %tmp_bh, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.0108)
  %tobool12.not = icmp eq i32 %offset.0108, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end.if.then16_crit_edge

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end
  %15 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %16)
  %cmp14.not = icmp eq i32 %10, %16
  br i1 %cmp14.not, label %if.else, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end.if.then16_crit_edge
  %17 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %b_blocknr, align 8
  %19 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_bdev.i, align 4
  %21 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_blocksize, align 16
  %call.i = call ptr @__bread_gfp(ptr noundef %20, i64 noundef %18, i32 noundef %22, i32 noundef 8) #15
  br label %if.end20

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %b_blocknr, align 8
  %25 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_bdev.i, align 4
  %call.i98 = call ptr @__getblk_gfp(ptr noundef %26, i64 noundef %24, i32 noundef %10, i32 noundef 8) #15
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then16
  %bh.0 = phi ptr [ %call.i, %if.then16 ], [ %call.i98, %if.else ]
  %tobool21.not = icmp eq ptr %bh.0, null
  br i1 %tobool21.not, label %if.end20.out_crit_edge, label %if.end23

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end23:                                         ; preds = %if.end20
  call void @__might_sleep(ptr noundef nonnull @.str.90, i32 noundef 366) #15
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bh.0, i32 noundef 4) #15
  %27 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %bh.0, align 4
  %and.i.i.i.i = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end23.if.then.i99_crit_edge

if.end23.if.then.i99_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i99

trylock_buffer.exit.i:                            ; preds = %if.end23
  call void @llvm.prefetch.p0(ptr nonnull %bh.0, i32 1, i32 3, i32 1) #15
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %bh.0, ptr nonnull %bh.0, i32 4, ptr nonnull elementtype(i32) %bh.0) #15, !srcloc !278
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !279
  %30 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i99_crit_edge

trylock_buffer.exit.i.if.then.i99_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i99

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lock_buffer.exit

if.then.i99:                                      ; preds = %trylock_buffer.exit.i.if.then.i99_crit_edge, %if.end23.if.then.i99_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %bh.0) #15
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i99, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 5
  %31 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 %offset.0108
  %33 = call ptr @memcpy(ptr %add.ptr, ptr %data.addr.0106, i32 %10)
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 2
  %34 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_page, align 8
  call void @flush_dcache_page(ptr noundef %35) #15
  %36 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.brelse.exit_crit_edge

lock_buffer.exit.brelse.exit_crit_edge:           ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %brelse.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %bh.0) #15
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %lock_buffer.exit.brelse.exit_crit_edge
  call void @mark_buffer_dirty(ptr noundef nonnull %bh.0) #15
  call void @unlock_buffer(ptr noundef nonnull %bh.0) #15
  call void @__brelse(ptr noundef nonnull %bh.0) #15
  %sub24 = sub i32 %towrite.0109, %10
  %add.ptr25 = getelementptr i8, ptr %data.addr.0106, i32 %10
  %inc = add i64 %blk.0107, 1
  %cmp.not = icmp eq i32 %sub24, 0
  br i1 %cmp.not, label %brelse.exit.out_crit_edge, label %brelse.exit.while.body_crit_edge

brelse.exit.while.body_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

brelse.exit.out_crit_edge:                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out:                                              ; preds = %brelse.exit.out_crit_edge, %if.end20.out_crit_edge, %while.body.out_crit_edge, %entry.out_crit_edge
  %towrite.0.lcssa = phi i32 [ 0, %entry.out_crit_edge ], [ %towrite.0109, %if.end20.out_crit_edge ], [ 0, %brelse.exit.out_crit_edge ], [ %towrite.0109, %while.body.out_crit_edge ]
  %err.1 = phi i32 [ 0, %entry.out_crit_edge ], [ -5, %if.end20.out_crit_edge ], [ 0, %brelse.exit.out_crit_edge ], [ %call11, %while.body.out_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %towrite.0.lcssa, i32 %len)
  %cmp26 = icmp eq i32 %towrite.0.lcssa, %len
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  call void @up_write(ptr noundef %i_rwsem.i) #15
  br label %cleanup

if.end29:                                         ; preds = %out
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %38 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %i_size, align 8
  %conv30 = zext i32 %len to i64
  %add = add i64 %conv30, %off
  %conv31 = zext i32 %towrite.0.lcssa to i64
  %sub32 = sub i64 %add, %conv31
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %sub32)
  %cmp33 = icmp slt i64 %39, %sub32
  br i1 %cmp33, label %if.then35, label %if.end29.if.end40_crit_edge

if.end29.if.end40_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then35:                                        ; preds = %if.end29
  %40 = call i32 @llvm.read_register.i32(metadata !259) #15
  %and.i.i.i.i103 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i103 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %43, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !280
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %44 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i, label %if.then35.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then35.i_size_write.exit_crit_edge:            ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then35
  %45 = call i32 @llvm.read_register.i32(metadata !259) #15
  %and.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %48, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !281
  %49 = call i32 @llvm.read_register.i32(metadata !259) #15
  %and.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %54, ptrtoint (ptr @lockdep_recursion to i32)
  %55 = inttoptr i32 %add.i28.i to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !282
  %58 = call i32 @llvm.read_register.i32(metadata !259) #15
  %and.i.i.i7.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool20.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %62 = call i32 @llvm.read_register.i32(metadata !259) #15
  %and.i.i.i29.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i.i = icmp eq i32 %65, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %66 = call i32 @llvm.read_register.i32(metadata !259) #15
  %and.i.i.i9.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %69, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !283
  %70 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %73, ptrtoint (ptr @hardirqs_enabled to i32)
  %74 = inttoptr i32 %add47.i.i to ptr
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %74, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !284
  %77 = call i32 @llvm.read_register.i32(metadata !259) #15
  %and.i.i.i12.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %80, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool54.not.i.i = icmp eq i32 %76, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !285

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then35.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %81 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %82, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !286
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %83 = call ptr @llvm.returnaddress(i32 0) #15
  %84 = ptrtoint ptr %83 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %84) #15
  %85 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %sub32, ptr %i_size, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %84) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !287
  %86 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %87, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !288
  %88 = call i32 @llvm.read_register.i32(metadata !259) #15
  %and.i.i.i26.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %91, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  br label %if.end40

if.end40:                                         ; preds = %i_size_write.exit, %if.end29.if.end40_crit_edge
  %i_mtime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #15
  %92 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  %93 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #15
  call void @up_write(ptr noundef %i_rwsem.i) #15
  %sub41 = sub i32 %len, %towrite.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then28
  %retval.0 = phi i32 [ %err.1, %if.then28 ], [ %sub41, %if.end40 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %tmp_bh) #15
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @jfs_get_dquots(ptr noundef readnone %inode) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_dquot = getelementptr i8, ptr %inode, i32 -16
  ret ptr %i_dquot
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_quota_off(ptr noundef %sb, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call ptr @igrab(ptr noundef nonnull %1) #15
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32 @dquot_quota_off(ptr noundef %sb, i32 noundef %type) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_put_crit_edge

if.end.out_put_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #15
  %mode2 = getelementptr i8, ptr %1, i32 -844
  %2 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode2, align 4
  %and = and i32 %3, -34078721
  store i32 %and, ptr %mode2, align 4
  tail call void @inode_set_flags(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 10) #15
  tail call void @up_write(ptr noundef %i_rwsem.i) #15
  tail call void @__mark_inode_dirty(ptr noundef nonnull %1, i32 noundef 7) #15
  br label %out_put

out_put:                                          ; preds = %if.end6, %if.end.out_put_crit_edge
  tail call void @iput(ptr noundef nonnull %1) #15
  br label %cleanup

out:                                              ; preds = %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %call8 = tail call i32 @dquot_quota_off(ptr noundef %sb, i32 noundef %type) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %out_put
  %retval.0 = phi i32 [ %call3, %out_put ], [ %call8, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_quota_off(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_writeback_dquots(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_flush_journal(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_syncpt(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @txQuiesce(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lmLogShutdown(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @txResume(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lmLogInit(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_extendfs(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_resume(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_umount_rw(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_disable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jfs_fh_to_dentry(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jfs_fh_to_parent(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jfs_get_parent(ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_quota_on(ptr noundef %sb, i32 noundef %type, i32 noundef %format_id, ptr noundef %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dquot_quota_on(ptr noundef %sb, i32 noundef %type, i32 noundef %format_id, ptr noundef %path) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #15
  %mode2 = getelementptr i8, ptr %3, i32 -844
  %4 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode2, align 4
  %or = or i32 %5, 34078720
  store i32 %or, ptr %mode2, align 4
  tail call void @inode_set_flags(ptr noundef %3, i32 noundef 10, i32 noundef 10) #15
  tail call void @up_write(ptr noundef %i_rwsem.i) #15
  tail call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_quota_sync(ptr noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_set_dqinfo(ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_get_dqblk(ptr noundef, [2 x i32], ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_get_next_dqblk(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_set_dqblk(ptr noundef, [2 x i32], ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_get_state(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_quota_on(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %foo, i32 0, i32 1632)
  %anon_inode_list = getelementptr inbounds %struct.jfs_inode_info, ptr %foo, i32 0, i32 22
  %1 = ptrtoint ptr %anon_inode_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %anon_inode_list, ptr %anon_inode_list, align 4
  %prev.i = getelementptr inbounds %struct.jfs_inode_info, ptr %foo, i32 0, i32 22, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %anon_inode_list, ptr %prev.i, align 4
  %rdwrlock = getelementptr inbounds %struct.jfs_inode_info, ptr %foo, i32 0, i32 23
  tail call void @__init_rwsem(ptr noundef %rdwrlock, ptr noundef nonnull @.str.108, ptr noundef nonnull @init_once.__key) #15
  %commit_mutex = getelementptr inbounds %struct.jfs_inode_info, ptr %foo, i32 0, i32 24
  tail call void @__mutex_init(ptr noundef %commit_mutex, ptr noundef nonnull @.str.110, ptr noundef nonnull @init_once.__key.109) #15
  %xattr_sem = getelementptr inbounds %struct.jfs_inode_info, ptr %foo, i32 0, i32 25
  tail call void @__init_rwsem(ptr noundef %xattr_sem, ptr noundef nonnull @.str.112, ptr noundef nonnull @init_once.__key.111) #15
  %ag_lock = getelementptr inbounds %struct.jfs_inode_info, ptr %foo, i32 0, i32 21
  tail call void @__raw_spin_lock_init(ptr noundef %ag_lock, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_once.__key.113, i16 noundef signext 3) #15
  %active_ag = getelementptr inbounds %struct.jfs_inode_info, ptr %foo, i32 0, i32 17
  %3 = ptrtoint ptr %active_ag to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %active_ag, align 1
  %vfs_inode = getelementptr inbounds %struct.jfs_inode_info, ptr %foo, i32 0, i32 30
  tail call void @inode_init_once(ptr noundef %vfs_inode) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @metapage_init() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @txInit() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfsIOWait(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_lazycommit(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_sync(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_proc_init() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nobuiltin }
attributes #22 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !27, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !101, !103, !105, !106, !107, !109, !111, !113, !114, !115, !117, !118, !119, !121, !122, !124, !125, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !165, !166, !167, !169, !170, !172, !174, !175, !176, !177, !179, !181, !183, !184, !185, !186, !188, !189, !190, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !216, !218, !220, !222, !224, !225, !226, !227, !229, !230, !231, !233, !235, !236, !237, !239, !241, !242, !244, !246, !247, !249, !250, !252, !253, !255, !256, !258}
!llvm.named.register.sp = !{!259}
!llvm.module.flags = !{!260, !261, !262, !263, !264, !265, !266, !267}
!llvm.ident = !{!268}

!0 = !{ptr @__UNIQUE_ID_description276, !1, !"__UNIQUE_ID_description276", i1 false, i1 false}
!1 = !{!"../fs/jfs/super.c", i32 37, i32 1}
!2 = !{ptr @__UNIQUE_ID_author277, !3, !"__UNIQUE_ID_author277", i1 false, i1 false}
!3 = !{!"../fs/jfs/super.c", i32 38, i32 1}
!4 = !{ptr @__UNIQUE_ID_file278, !5, !"__UNIQUE_ID_file278", i1 false, i1 false}
!5 = !{!"../fs/jfs/super.c", i32 39, i32 1}
!6 = !{ptr @__UNIQUE_ID_license279, !5, !"__UNIQUE_ID_license279", i1 false, i1 false}
!7 = !{ptr @__param_commit_threads, !8, !"__param_commit_threads", i1 false, i1 false}
!8 = !{!"../fs/jfs/super.c", i32 49, i32 1}
!9 = !{ptr @__UNIQUE_ID_commit_threadstype280, !8, !"__UNIQUE_ID_commit_threadstype280", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_commit_threads281, !11, !"__UNIQUE_ID_commit_threads281", i1 false, i1 false}
!11 = !{!"../fs/jfs/super.c", i32 50, i32 1}
!12 = !{ptr @jfsloglevel, !13, !"jfsloglevel", i1 false, i1 false}
!13 = !{!"../fs/jfs/super.c", i32 57, i32 5}
!14 = !{ptr @__param_jfsloglevel, !15, !"__param_jfsloglevel", i1 false, i1 false}
!15 = !{!"../fs/jfs/super.c", i32 58, i32 1}
!16 = !{ptr @__UNIQUE_ID_jfslogleveltype282, !15, !"__UNIQUE_ID_jfslogleveltype282", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_jfsloglevel283, !18, !"__UNIQUE_ID_jfsloglevel283", i1 false, i1 false}
!18 = !{!"../fs/jfs/super.c", i32 59, i32 1}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/jfs/super.c", i32 93, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @jfs_error._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @jfs_error._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_alias288, !26, !"__UNIQUE_ID_alias288", i1 false, i1 false}
!26 = !{!"../fs/jfs/super.c", i32 917, i32 1}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/jfs/super.c", i32 1027, i32 2}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @exit_jfs_fs._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @exit_jfs_fs._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__initcall__kmod_jfs__289_1049_init_jfs_fs6, !33, !"__initcall__kmod_jfs__289_1049_init_jfs_fs6", i1 false, i1 false}
!33 = !{!"../fs/jfs/super.c", i32 1049, i32 1}
!34 = !{ptr @__exitcall_exit_jfs_fs, !35, !"__exitcall_exit_jfs_fs", i1 false, i1 false}
!35 = !{!"../fs/jfs/super.c", i32 1050, i32 1}
!36 = !{ptr @jfs_inode_cachep, !37, !"jfs_inode_cachep", i1 false, i1 false}
!37 = !{!"../fs/jfs/super.c", i32 41, i32 27}
!38 = !{ptr @commit_threads, !39, !"commit_threads", i1 false, i1 false}
!39 = !{!"../fs/jfs/super.c", i32 48, i32 12}
!40 = !{ptr @jfsCommitThread, !41, !"jfsCommitThread", i1 false, i1 false}
!41 = !{!"../fs/jfs/super.c", i32 52, i32 28}
!42 = !{ptr @jfsIOthread, !43, !"jfsIOthread", i1 false, i1 false}
!43 = !{!"../fs/jfs/super.c", i32 53, i32 21}
!44 = !{ptr @jfsSyncThread, !45, !"jfsSyncThread", i1 false, i1 false}
!45 = !{!"../fs/jfs/super.c", i32 54, i32 21}
!46 = !{ptr @__param_str_commit_threads, !8, !"__param_str_commit_threads", i1 false, i1 false}
!47 = !{ptr @__param_str_jfsloglevel, !15, !"__param_str_jfsloglevel", i1 false, i1 false}
!48 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/jfs/super.c", i32 72, i32 9}
!50 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/jfs/super.c", i32 75, i32 3}
!52 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @jfs_handle_error._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @jfs_handle_error._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.8, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/jfs/super.c", i32 912, i32 11}
!57 = !{ptr @jfs_fs_type, !58, !"jfs_fs_type", i1 false, i1 false}
!58 = !{!"../fs/jfs/super.c", i32 910, i32 32}
!59 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/jfs/super.c", i32 497, i32 2}
!61 = !{ptr @.str.10, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @jfs_fill_super._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @jfs_fill_super._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.12, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/jfs/super.c", i32 524, i32 3}
!66 = !{ptr @jfs_fill_super._entry.11, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @jfs_fill_super._entry_ptr.13, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/jfs/super.c", i32 563, i32 4}
!70 = !{ptr @jfs_fill_super._entry.14, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @jfs_fill_super._entry_ptr.16, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/jfs/super.c", i32 572, i32 5}
!74 = !{ptr @jfs_fill_super._entry.17, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @jfs_fill_super._entry_ptr.19, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/jfs/super.c", i32 601, i32 2}
!78 = !{ptr @jfs_fill_super._entry.20, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @jfs_fill_super._entry_ptr.22, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/jfs/super.c", i32 606, i32 3}
!82 = !{ptr @jfs_fill_super._entry.23, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @jfs_fill_super._entry_ptr.25, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/jfs/super.c", i32 245, i32 31}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/jfs/super.c", i32 266, i32 30}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/jfs/super.c", i32 271, i32 6}
!90 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @parse_options._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @parse_options._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/jfs/super.c", i32 289, i32 5}
!95 = !{ptr @parse_options._entry.30, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @parse_options._entry_ptr.32, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/jfs/super.c", i32 297, i32 24}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/jfs/super.c", i32 301, i32 31}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/jfs/super.c", i32 305, i32 31}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/jfs/super.c", i32 310, i32 5}
!105 = !{ptr @parse_options._entry.36, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @parse_options._entry_ptr.38, !104, !"_entry_ptr", i1 false, i1 false}
!107 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!108 = !{!"../fs/jfs/super.c", i32 340, i32 25}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../fs/jfs/super.c", i32 354, i32 25}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/jfs/super.c", i32 368, i32 5}
!113 = !{ptr @parse_options._entry.40, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @parse_options._entry_ptr.42, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/jfs/super.c", i32 385, i32 5}
!117 = !{ptr @parse_options._entry.43, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @parse_options._entry_ptr.45, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @parse_options._entry.46, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../fs/jfs/super.c", i32 405, i32 5}
!121 = !{ptr @parse_options._entry_ptr.47, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/jfs/super.c", i32 410, i32 4}
!124 = !{ptr @parse_options._entry.48, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @parse_options._entry_ptr.50, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/jfs/super.c", i32 214, i32 18}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/jfs/super.c", i32 215, i32 20}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/jfs/super.c", i32 216, i32 18}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/jfs/super.c", i32 217, i32 15}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/jfs/super.c", i32 218, i32 22}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/jfs/super.c", i32 219, i32 15}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/jfs/super.c", i32 220, i32 15}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/jfs/super.c", i32 221, i32 14}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/jfs/super.c", i32 222, i32 17}
!144 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/jfs/super.c", i32 223, i32 17}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/jfs/super.c", i32 224, i32 12}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/jfs/super.c", i32 225, i32 12}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/jfs/super.c", i32 226, i32 14}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/jfs/super.c", i32 227, i32 16}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/jfs/super.c", i32 228, i32 18}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/jfs/super.c", i32 229, i32 23}
!158 = !{ptr @tokens, !159, !"tokens", i1 false, i1 false}
!159 = !{!"../fs/jfs/super.c", i32 213, i32 28}
!160 = !{ptr @jfs_super_operations, !161, !"jfs_super_operations", i1 false, i1 false}
!161 = !{!"../fs/jfs/super.c", i32 884, i32 38}
!162 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/jfs/super.c", i32 190, i32 2}
!164 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @jfs_put_super._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @jfs_put_super._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @jfs_put_super._entry.69, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../fs/jfs/super.c", i32 196, i32 3}
!169 = !{ptr @jfs_put_super._entry_ptr.70, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.71, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/jfs/super.c", i32 630, i32 18}
!172 = !{ptr @.str.72, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/jfs/super.c", i32 639, i32 4}
!174 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @jfs_freeze._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @jfs_freeze._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.74, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/jfs/super.c", i32 659, i32 18}
!179 = !{ptr @.str.75, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/jfs/super.c", i32 664, i32 18}
!181 = !{ptr @.str.76, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/jfs/super.c", i32 125, i32 2}
!183 = !{ptr @.str.77, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @jfs_statfs._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @jfs_statfs._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.78, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/jfs/super.c", i32 442, i32 4}
!188 = !{ptr @.str.79, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @jfs_remount._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @jfs_remount._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.80, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/jfs/super.c", i32 700, i32 19}
!193 = !{ptr @.str.81, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/jfs/super.c", i32 702, i32 19}
!195 = !{ptr @.str.82, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/jfs/super.c", i32 704, i32 19}
!197 = !{ptr @.str.83, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/jfs/super.c", i32 706, i32 17}
!199 = !{ptr @.str.84, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/jfs/super.c", i32 708, i32 19}
!201 = !{ptr @.str.85, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/jfs/super.c", i32 710, i32 19}
!203 = !{ptr @.str.86, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/jfs/super.c", i32 712, i32 19}
!205 = !{ptr @.str.87, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/jfs/super.c", i32 714, i32 19}
!207 = !{ptr @.str.88, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/jfs/super.c", i32 718, i32 17}
!209 = !{ptr @.str.89, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/jfs/super.c", i32 721, i32 17}
!211 = !{ptr @.str.90, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!213 = distinct !{null, !214, !"__already_done", i1 false, i1 false}
!214 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!215 = !{ptr @.str.91, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @jfs_export_operations, !217, !"jfs_export_operations", i1 false, i1 false}
!217 = !{!"../fs/jfs/super.c", i32 904, i32 39}
!218 = !{ptr @jfs_quotactl_ops, !219, !"jfs_quotactl_ops", i1 false, i1 false}
!219 = !{!"../fs/jfs/super.c", i32 169, i32 34}
!220 = !{ptr @.str.92, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/jfs/super.c", i32 939, i32 33}
!222 = !{ptr @.str.93, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/jfs/super.c", i32 952, i32 3}
!224 = !{ptr @.str.94, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @init_jfs_fs._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @init_jfs_fs._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.96, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/jfs/super.c", i32 961, i32 3}
!229 = !{ptr @init_jfs_fs._entry.95, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @init_jfs_fs._entry_ptr.97, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.98, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/jfs/super.c", i32 968, i32 16}
!233 = !{ptr @.str.100, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/jfs/super.c", i32 971, i32 3}
!235 = !{ptr @init_jfs_fs._entry.99, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @init_jfs_fs._entry_ptr.101, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.102, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/jfs/super.c", i32 981, i32 24}
!239 = !{ptr @init_jfs_fs._entry.103, !240, !"_entry", i1 false, i1 false}
!240 = !{!"../fs/jfs/super.c", i32 985, i32 4}
!241 = !{ptr @init_jfs_fs._entry_ptr.104, !240, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.105, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/jfs/super.c", i32 991, i32 18}
!244 = !{ptr @init_jfs_fs._entry.106, !245, !"_entry", i1 false, i1 false}
!245 = !{!"../fs/jfs/super.c", i32 994, i32 3}
!246 = !{ptr @init_jfs_fs._entry_ptr.107, !245, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @init_once.__key, !248, !"__key", i1 false, i1 false}
!248 = !{!"../fs/jfs/super.c", i32 925, i32 2}
!249 = !{ptr @.str.108, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @init_once.__key.109, !251, !"__key", i1 false, i1 false}
!251 = !{!"../fs/jfs/super.c", i32 926, i32 2}
!252 = !{ptr @.str.110, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @init_once.__key.111, !254, !"__key", i1 false, i1 false}
!254 = !{!"../fs/jfs/super.c", i32 927, i32 2}
!255 = !{ptr @.str.112, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @init_once.__key.113, !257, !"__key", i1 false, i1 false}
!257 = !{!"../fs/jfs/super.c", i32 928, i32 2}
!258 = !{ptr @.str.114, !257, !"<string literal>", i1 false, i1 false}
!259 = !{!"sp"}
!260 = !{i32 1, !"wchar_size", i32 2}
!261 = !{i32 1, !"min_enum_size", i32 4}
!262 = !{i32 8, !"branch-target-enforcement", i32 0}
!263 = !{i32 8, !"sign-return-address", i32 0}
!264 = !{i32 8, !"sign-return-address-all", i32 0}
!265 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!266 = !{i32 7, !"uwtable", i32 1}
!267 = !{i32 7, !"frame-pointer", i32 2}
!268 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!269 = !{!"auto-init"}
!270 = !{i64 1079174, i64 1079235}
!271 = !{i64 1081906}
!272 = !{!"branch_weights", i32 1, i32 2000}
!273 = !{i64 1082191}
!274 = !{i64 2152517325}
!275 = !{i64 2152517167}
!276 = !{i64 2152517495}
!277 = !{i64 2150103309}
!278 = !{i64 2148683352, i64 2148683384, i64 2148683413, i64 2148683447, i64 2148683478, i64 2148683501}
!279 = !{i64 2148772457}
!280 = !{i64 2152519256}
!281 = !{i64 2149995561}
!282 = !{i64 2150000495}
!283 = !{i64 2150022213}
!284 = !{i64 2150027107}
!285 = !{!"branch_weights", i32 2000, i32 1}
!286 = !{i64 2150103634}
!287 = !{i64 2150103959}
!288 = !{i64 2152531118}
