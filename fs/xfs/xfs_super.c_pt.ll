; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_super.c_pt.bc'
source_filename = "../fs/xfs/xfs_super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.quotactl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_globals = type { i32, i32, i32, i8, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.41 }
%union.anon.41 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.proc_xfs_info = type { i64, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.constant_table = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.fs_parse_result = type { i8, %union.anon.84 }
%union.anon.84 = type { i64 }
%struct.fs_parameter = type { ptr, i8, %union.anon, i32, i32 }
%union.anon = type { ptr }
%struct.xfs_icwalk = type { i32, %struct.kuid_t, %struct.kgid_t, i32, i64, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.82, %struct.list_head, %struct.list_head, %union.anon.83 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.80 }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { %struct.spinlock, i32 }
%union.anon.82 = type { %struct.list_head }
%union.anon.83 = type { %struct.hlist_node }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.92, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.91, i16, i8, i32 }
%union.anon.91 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.llist_node = type { ptr }
%union.anon.92 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.74 = type { i32 }
%union.anon.75 = type { %struct.callback_head }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
%struct.xfs_inodegc = type { %struct.llist_head, %struct.work_struct, i32, i32 }
%struct.llist_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_buftarg = type { i32, ptr, ptr, i64, ptr, i32, i32, i32, i32, %struct.shrinker, %struct.list_lru, %struct.percpu_counter, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.xlog = type { ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i32, i32, i32, i64, i32, i32, [88 x i8], %struct.wait_queue_head, i32, ptr, %struct.spinlock, i32, i32, i32, i32, [8 x i8], %struct.atomic64_t, [120 x i8], %struct.atomic64_t, [120 x i8], %struct.xlog_grant_head, %struct.xlog_grant_head, %struct.xfs_kobj, [8 x ptr], i64, i32, %struct.rw_semaphore, [52 x i8] }
%struct.xlog_grant_head = type { %struct.spinlock, %struct.list_head, %struct.atomic64_t, [64 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.60, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%union.anon.31 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%union.anon.60 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }

@__UNIQUE_ID_alias1608 = internal constant [17 x i8] c"xfs.alias=fs-xfs\00", section ".modinfo", align 1
@xfs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 33, ptr @xfs_init_fs_context, ptr @xfs_fs_parameters, ptr null, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@xfs_dbg_kobj = internal global { %struct.xfs_kobj, [32 x i8] } zeroinitializer, align 32
@xfsstats = external dso_local global %struct.xstats, align 4
@xfs_kset = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_xfs__1609_2339_init_xfs_fs6 = internal global ptr @init_xfs_fs, section ".initcall6.init", align 4
@__exitcall_exit_xfs_fs = internal global ptr @exit_xfs_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_author1610 = internal constant [34 x i8] c"xfs.author=Silicon Graphics, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description1611 = internal constant [116 x i8] c"xfs.description=SGI XFS with ACLs, security attributes, realtime, scrub, repair, quota, fatal assert, debug enabled\00", section ".modinfo", align 1
@__UNIQUE_ID_file1612 = internal constant [20 x i8] c"xfs.file=fs/xfs/xfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license1613 = internal constant [16 x i8] c"xfs.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xfs\00", [28 x i8] zeroinitializer }, align 32
@xfs_fs_parameters = internal constant { [42 x %struct.fs_parameter_spec], [160 x i8] } { [42 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.99, ptr @fs_param_is_u32, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.100, ptr @fs_param_is_string, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.60, ptr @fs_param_is_string, i8 2, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.61, ptr @fs_param_is_string, i8 3, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.101, ptr null, i8 4, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.102, ptr null, i8 5, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.103, ptr null, i8 6, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.104, ptr @fs_param_is_u32, i8 7, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.105, ptr @fs_param_is_u32, i8 8, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.106, ptr null, i8 9, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.107, ptr null, i8 10, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.108, ptr null, i8 11, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.109, ptr null, i8 12, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.110, ptr null, i8 13, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.111, ptr @fs_param_is_string, i8 14, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.112, ptr null, i8 15, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.113, ptr null, i8 16, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.114, ptr null, i8 17, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.115, ptr null, i8 18, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.116, ptr null, i8 19, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.117, ptr null, i8 20, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.118, ptr null, i8 21, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.119, ptr null, i8 22, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.120, ptr null, i8 23, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.121, ptr null, i8 24, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.122, ptr null, i8 25, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.123, ptr null, i8 26, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.124, ptr null, i8 27, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.125, ptr null, i8 28, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.126, ptr null, i8 29, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.127, ptr null, i8 30, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.128, ptr null, i8 31, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.129, ptr null, i8 32, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.130, ptr null, i8 33, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.131, ptr null, i8 34, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.132, ptr null, i8 35, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.133, ptr null, i8 36, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.134, ptr null, i8 37, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.135, ptr null, i8 38, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.136, ptr null, i8 39, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.136, ptr @fs_param_is_enum, i8 40, i16 0, ptr @dax_param_enums }, %struct.fs_parameter_spec zeroinitializer], [160 x i8] zeroinitializer }, align 32
@xfs_init_fs_context.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mp->m_sb_lock\00", [17 x i8] zeroinitializer }, align 32
@xfs_init_fs_context.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&mp->m_agirotor_lock\00", [43 x i8] zeroinitializer }, align 32
@xfs_init_fs_context.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mp->m_perag_lock\00", [46 x i8] zeroinitializer }, align 32
@xfs_init_fs_context.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mp->m_growlock\00", [16 x i8] zeroinitializer }, align 32
@xfs_init_fs_context.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&mp->m_flush_inodes_work)\00", [52 x i8] zeroinitializer }, align 32
@xfs_init_fs_context.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&mp->m_reclaim_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@xfs_init_fs_context.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&mp->m_reclaim_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@xfs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @xfs_fs_free, ptr null, ptr @xfs_fs_parse_param, ptr null, ptr @xfs_fs_get_tree, ptr @xfs_fs_reconfigure }, [40 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unknown mount option [%s].\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s mount option is deprecated.\00", [33 x i8] zeroinitializer }, align 32
@xfs_xattr_handlers = external dso_local global [0 x ptr], align 4
@xfs_export_operations = external dso_local constant %struct.export_operations, align 4
@xfs_quotactl_operations = external dso_local constant %struct.quotactl_ops, align 4
@xfs_super_operations = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @xfs_fs_alloc_inode, ptr @xfs_fs_destroy_inode, ptr null, ptr @xfs_fs_dirty_inode, ptr null, ptr @xfs_fs_drop_inode, ptr null, ptr @xfs_fs_put_super, ptr @xfs_fs_sync_fs, ptr null, ptr @xfs_fs_freeze, ptr null, ptr @xfs_fs_unfreeze, ptr @xfs_fs_statfs, ptr null, ptr null, ptr @xfs_fs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xfs_fs_nr_cached_objects, ptr @xfs_fs_free_cached_objects }, [60 x i8] zeroinitializer }, align 32
@xfs_globals = external dso_local local_unnamed_addr global %struct.xfs_globals, align 4
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Delaying mount for %d seconds.\00", [33 x i8] zeroinitializer }, align 32
@xfs_fs_fill_super.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Deprecated V4 format (crc=0) will not be supported after September 2030.\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Filesystem needs repair.  Please run xfs_repair.\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Offline file system operation in progress!\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"File system with blocksize %d bytes. Only pagesize (%ld) or less will currently work.\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"file system too large to be mounted on this system.\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"MAX_LFS_FILESIZE block offset (%llu) exceeds extent map maximum (%llu)!\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"mounting with \22discard\22 option, but the device does not support discard\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"reflink not compatible with realtime device!\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"using DEBUG-only always_cow mode.\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"reverse mapping btree not compatible with realtime device!\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no-recovery mounts must be read-only.\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"attr2 and noattr2 cannot both be specified.\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"sunit and swidth options incompatible with the noalign option\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sunit and swidth must be specified together\00", [52 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"stripe width (%d) must be a multiple of the stripe unit (%d)\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid logbufs value: %d [not %d-%d]\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"invalid logbufsize: %d [not 16k,32k,64k,128k or 256k]\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid log iosize: %d [not %d-%d]\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"!rwsem_is_locked(&inode->i_rwsem)\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_super.c\00", [45 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__tracepoint_xfs_destroy_inode = external dso_local global %struct.tracepoint, align 4
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_destroy_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"xlog_recovery_needed(ip->i_mount->m_log)\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unmounting Filesystem\00", [42 x i8] zeroinitializer }, align 32
@laptop_mode = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_xfs_fs_sync_fs = external dso_local global %struct.tracepoint, align 4
@trace_xfs_fs_sync_fs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfs_fs_show_options.xfs_info_set = internal constant { [14 x %struct.proc_xfs_info], [32 x i8] } { [14 x %struct.proc_xfs_info] [%struct.proc_xfs_info { i64 144115188075855872, ptr @.str.43 }, %struct.proc_xfs_info { i64 4503599627370496, ptr @.str.44 }, %struct.proc_xfs_info { i64 562949953421312, ptr @.str.45 }, %struct.proc_xfs_info { i64 288230376151711744, ptr @.str.46 }, %struct.proc_xfs_info { i64 -9223372036854775808, ptr @.str.47 }, %struct.proc_xfs_info { i64 4611686018427387904, ptr @.str.48 }, %struct.proc_xfs_info { i64 1024, ptr @.str.49 }, %struct.proc_xfs_info { i64 576460752303423488, ptr @.str.50 }, %struct.proc_xfs_info { i64 36028797018963968, ptr @.str.51 }, %struct.proc_xfs_info { i64 18014398509481984, ptr @.str.52 }, %struct.proc_xfs_info { i64 2251799813685248, ptr @.str.53 }, %struct.proc_xfs_info { i64 1152921504606846976, ptr @.str.54 }, %struct.proc_xfs_info { i64 2305843009213693952, ptr @.str.55 }, %struct.proc_xfs_info zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",ikeep\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",wsync\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",noalign\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",swalloc\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",nouuid\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",norecovery\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",attr2\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",filestreams\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",grpid\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",discard\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",largeio\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",dax=always\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",dax=never\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",inode%d\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",allocsize=%dk\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",logbufs=%d\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",logbsize=%dk\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"logdev\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rtdev\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",sunit=%d\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",swidth=%d\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",usrquota\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",uqnoenforce\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",prjquota\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",pqnoenforce\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",grpquota\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",gqnoenforce\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",noquota\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",= \09\0A\\\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c", \09\0A\\\00", [26 x i8] zeroinitializer }, align 32
@xfs_fs_nr_cached_objects.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.73 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Cannot mount filesystem with identical rtdev and ddev/logdev.\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid device [%s], error=%d\00", [34 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xfs-buf/%s\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xfs-conv/%s\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xfs-reclaim/%s\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xfs-blockgc/%s\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xfs-inodegc/%s\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xfs-sync/%s\00", [20 x i8] zeroinitializer }, align 32
@xfs_init_percpu_counters.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xfs_init_percpu_counters.__key.81 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xfs_init_percpu_counters.__key.82 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xfs_init_percpu_counters.__key.83 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@xfs_inodegc_init_percpu.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&gc->work)\00", [35 x i8] zeroinitializer }, align 32
@xfs_mount_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.2 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.85, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@xfs_mount_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @xfs_mount_list, ptr @xfs_mount_list }, [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xfs_mount_list_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"logbuf size must be greater than or equal to log stripe size\00", [35 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"logbuf size for version 1 logs must be 16K or 32K\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Cannot mount a V5 filesystem as noattr2. attr2 is always enabled for V5 filesystems.\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"cannot mount a read-only filesystem as read-write\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Super block does not support project and group quota together\00", [34 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_inode_timestamp_range = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inode_timestamp_range.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.91 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DAX unsupported by block device. Turning off DAX.\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DAX not supported for blocksize. Turning off DAX.\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DAX and reflink cannot be used together!\00", [55 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"DAX enabled. Warning: EXPERIMENTAL, use at your own risk\00", [39 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"xfs_is_shutdown(mp) || percpu_counter_sum(&mp->m_delalloc_blks) == 0\00", [59 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ro->rw transition prohibited on norecovery mount\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"ro->rw transition prohibited on unknown (0x%x) ro-compat filesystem\00", [60 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to write sb changes\00", [37 x i8] zeroinitializer }, align 32
@__const.xfs_remount_ro.icw = private unnamed_addr constant { i32, %struct.kuid_t, %struct.kgid_t, i32, i64, i32, [4 x i8] } { i32 1, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, i32 0, i64 0, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"logbufs\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"logbsize\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wsync\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noalign\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"swalloc\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sunit\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"swidth\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nouuid\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"grpid\00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nogrpid\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bsdgroups\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sysvgroups\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"allocsize\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"norecovery\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inode64\00", [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inode32\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ikeep\00", [26 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noikeep\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"largeio\00", [24 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nolargeio\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"attr2\00", [26 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noattr2\00", [24 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"filestreams\00", [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"quota\00", [26 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noquota\00", [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usrquota\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"grpquota\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prjquota\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uquota\00", [25 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gquota\00", [25 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pquota\00", [25 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uqnoenforce\00", [20 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gqnoenforce\00", [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pqnoenforce\00", [20 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qnoenforce\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"discard\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nodiscard\00", [22 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dax\00", [28 x i8] zeroinitializer }, align 32
@dax_param_enums = internal constant { [4 x %struct.constant_table], [32 x i8] } { [4 x %struct.constant_table] [%struct.constant_table { ptr @.str.137, i32 0 }, %struct.constant_table { ptr @.str.138, i32 1 }, %struct.constant_table { ptr @.str.139, i32 2 }, %struct.constant_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inode\00", [26 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"always\00", [25 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"never\00", [26 x i8] zeroinitializer }, align 32
@xfs_discard_wq = external dso_local local_unnamed_addr global ptr, align 4
@xfs_alloc_wq = external dso_local local_unnamed_addr global ptr, align 4
@xfs_bui_cache = external dso_local local_unnamed_addr global ptr, align 4
@xfs_bud_cache = external dso_local local_unnamed_addr global ptr, align 4
@xfs_cui_cache = external dso_local local_unnamed_addr global ptr, align 4
@xfs_cud_cache = external dso_local local_unnamed_addr global ptr, align 4
@xfs_rui_cache = external dso_local local_unnamed_addr global ptr, align 4
@xfs_rud_cache = external dso_local local_unnamed_addr global ptr, align 4
@xfs_icreate_cache = external dso_local local_unnamed_addr global ptr, align 4
@xfs_ili_cache = external dso_local local_unnamed_addr global ptr, align 4
@xfs_inode_cache = external dso_local local_unnamed_addr global ptr, align 4
@xfs_efi_cache = external dso_local local_unnamed_addr global ptr, align 4
@xfs_efd_cache = external dso_local local_unnamed_addr global ptr, align 4
@xfs_buf_item_cache = external dso_local local_unnamed_addr global ptr, align 4
@xfs_trans_cache = external dso_local local_unnamed_addr global ptr, align 4
@xfs_ifork_cache = external dso_local local_unnamed_addr global ptr, align 4
@xfs_da_state_cache = external dso_local local_unnamed_addr global ptr, align 4
@xfs_log_ticket_cache = external dso_local local_unnamed_addr global ptr, align 4
@init_xfs_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.37, i32 2221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\016SGI XFS with ACLs, security attributes, realtime, scrub, repair, quota, fatal assert, debug enabled\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_xfs_fs\00", [20 x i8] zeroinitializer }, align 32
@init_xfs_fs._entry_ptr = internal global ptr @init_xfs_fs._entry, section ".printk_index", align 4
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@xfs_stats_ktype = external dso_local global %struct.kobj_type, align 4
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@xfs_dbg_ktype = external dso_local global %struct.kobj_type, align 4
@.str.143 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xfs:dead\00", [23 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Failed to initialise CPU hotplug, error %d. XFS is non-functional.\00", [61 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xfs_log_ticket\00", [17 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xfs_da_state\00", [19 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xfs_ifork\00", [22 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xfs_trans\00", [22 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xfs_buf_item\00", [19 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xfs_efd_item\00", [19 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xfs_efi_item\00", [19 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xfs_inode\00", [22 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xfs_ili\00", [24 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xfs_icr\00", [24 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xfs_rud_item\00", [19 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xfs_rui_item\00", [19 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xfs_cud_item\00", [19 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xfs_cui_item\00", [19 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xfs_bud_item\00", [19 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xfs_bui_item\00", [19 x i8] zeroinitializer }, align 32
@xfs_fs_inode_init_once.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.162 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ip->i_flags_lock\00", [46 x i8] zeroinitializer }, align 32
@xfs_fs_inode_init_once.__key.163 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.164 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&ip->i_lock)->mr_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xfsalloc\00", [23 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xfsdiscard\00", [21 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [41 x i64] [i64 39, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.170 = internal global [8 x i64] [i64 6, i64 8, i64 71, i64 75, i64 77, i64 103, i64 107, i64 109]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.173 = private unnamed_addr constant [12 x i8] c"xfs_fs_type\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1938, i32 32 }
@___asan_gen_.176 = private unnamed_addr constant [13 x i8] c"xfs_dbg_kobj\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 50, i32 24 }
@___asan_gen_.179 = private unnamed_addr constant [9 x i8] c"xfs_kset\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 48, i32 21 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1940, i32 12 }
@___asan_gen_.185 = private unnamed_addr constant [18 x i8] c"xfs_fs_parameters\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 123, i32 39 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1899, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1900, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1902, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1903, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1904, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1905, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [16 x i8] c"xfs_context_ops\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1883, i32 43 }
@___asan_gen_.237 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 378, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1340, i32 24 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1186, i32 26 }
@___asan_gen_.245 = private unnamed_addr constant [21 x i8] c"xfs_super_operations\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1123, i32 38 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1452, i32 18 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1505, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1517, i32 16 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1528, i32 16 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1538, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1549, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1567, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1614, i32 17 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1623, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1629, i32 17 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1636, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1353, i32 16 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1362, i32 16 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1369, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1380, i32 16 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1386, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1395, i32 16 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1406, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1414, i32 16 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 642, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 771, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 108, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 716, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1088, i32 17 }
@___asan_gen_.326 = private unnamed_addr constant [13 x i8] c"xfs_info_set\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 178, i32 30 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 180, i32 22 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 181, i32 22 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 182, i32 24 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 183, i32 24 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 184, i32 23 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 185, i32 27 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 186, i32 22 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 187, i32 28 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 188, i32 22 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 189, i32 24 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 190, i32 28 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 191, i32 27 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 192, i32 26 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 203, i32 16 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 206, i32 17 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 210, i32 17 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 212, i32 17 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 215, i32 22 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 217, i32 22 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 220, i32 17 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 223, i32 17 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 227, i32 15 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 229, i32 15 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 232, i32 15 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 234, i32 15 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 237, i32 15 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 239, i32 15 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 242, i32 15 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 242, i32 22 }
@___asan_gen_.417 = private unnamed_addr constant [28 x i8] c"../include/linux/seq_file.h\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 245, i32 24 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 443, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 376, i32 16 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 523, i32 40 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 529, i32 46 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 535, i32 44 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 541, i32 37 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 547, i32 37 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 553, i32 41 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1001, i32 10 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1005, i32 10 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1009, i32 10 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1013, i32 10 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1064, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant [20 x i8] c"xfs_mount_list_lock\00", align 1
@___asan_gen_.464 = private unnamed_addr constant [15 x i8] c"xfs_mount_list\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 54, i32 8 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 55, i32 8 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 954, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 961, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 970, i32 16 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 980, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 988, i32 5 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 341, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 347, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 352, i32 17 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 356, i32 15 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1044, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1700, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1707, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1722, i32 17 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 124, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 125, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 128, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 129, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 130, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 131, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 132, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 133, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 134, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 135, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 136, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 137, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 138, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 139, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 140, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 141, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 142, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 143, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 144, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 145, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 146, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 147, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 148, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 149, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 150, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 151, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 152, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 153, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 154, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 155, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 156, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 157, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 158, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 159, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 160, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 161, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 162, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 163, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant [16 x i8] c"dax_param_enums\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 101, i32 36 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 102, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 103, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 104, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 2220, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 2268, i32 11 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 2274, i32 62 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 2193, i32 52 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 2197, i32 1 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1953, i32 43 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1967, i32 41 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1973, i32 38 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1979, i32 38 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1991, i32 41 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1997, i32 36 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 2005, i32 36 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 2013, i32 38 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 2022, i32 36 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 2029, i32 40 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 2035, i32 36 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 2041, i32 36 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 2047, i32 36 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 2053, i32 36 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 2059, i32 36 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 2065, i32 36 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 691, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 693, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 2148, i32 33 }
@___asan_gen_.720 = private constant [22 x i8] c"../fs/xfs/xfs_super.c\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 2153, i32 35 }
@___asan_gen_.723 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_sysfs.h\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.723, i32 39, i32 61 }
@___asan_gen_.725 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.728 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.729 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.729, i32 87, i32 2 }
@llvm.compiler.used = appending global [195 x ptr] [ptr @__UNIQUE_ID_alias1608, ptr @__UNIQUE_ID_author1610, ptr @__UNIQUE_ID_description1611, ptr @__UNIQUE_ID_file1612, ptr @__UNIQUE_ID_license1613, ptr @__exitcall_exit_xfs_fs, ptr @__initcall__kmod_xfs__1609_2339_init_xfs_fs6, ptr @exit_xfs_fs, ptr @init_xfs_fs._entry, ptr @init_xfs_fs._entry_ptr, ptr @xfs_fs_type, ptr @xfs_dbg_kobj, ptr @xfs_kset, ptr @.str, ptr @xfs_fs_parameters, ptr @xfs_init_fs_context.__key, ptr @.str.1, ptr @xfs_init_fs_context.__key.2, ptr @.str.3, ptr @xfs_init_fs_context.__key.4, ptr @.str.5, ptr @xfs_init_fs_context.__key.6, ptr @.str.7, ptr @xfs_init_fs_context.__key.8, ptr @.str.9, ptr @xfs_init_fs_context.__key.10, ptr @.str.11, ptr @xfs_init_fs_context.__key.12, ptr @.str.13, ptr @xfs_context_ops, ptr @xa_init_flags.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @xfs_super_operations, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @xfs_fs_show_options.xfs_info_set, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @xfs_init_percpu_counters.__key, ptr @xfs_init_percpu_counters.__key.81, ptr @xfs_init_percpu_counters.__key.82, ptr @xfs_init_percpu_counters.__key.83, ptr @xfs_inodegc_init_percpu.__key, ptr @.str.84, ptr @xfs_mount_list_lock, ptr @xfs_mount_list, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @dax_param_enums, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @xfs_fs_inode_init_once.__key, ptr @.str.162, ptr @xfs_fs_inode_init_once.__key.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @init_completion.__key, ptr @.str.168], section "llvm.metadata"
@0 = internal global [186 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dbg_kobj to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_kset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_fs_parameters to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_init_fs_context.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_init_fs_context.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_init_fs_context.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_init_fs_context.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_init_fs_context.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_init_fs_context.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_init_fs_context.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_super_operations to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_fs_show_options.xfs_info_set to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_init_percpu_counters.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_init_percpu_counters.__key.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_init_percpu_counters.__key.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_init_percpu_counters.__key.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_inodegc_init_percpu.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_mount_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_mount_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_param_enums to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_xfs_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_fs_inode_init_once.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_fs_inode_init_once.__key.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_set_inode_alloc(ptr noundef %mp, i32 noundef %agcount) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m_ino_geo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64
  %0 = ptrtoint ptr %m_ino_geo to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_ino_geo, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.if.end412_crit_edge, label %if.end183

entry.if.end412_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end412

if.end183:                                        ; preds = %entry
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %2 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sb_dblocks, align 8
  %sb_imax_pct = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 27
  %4 = ptrtoint ptr %sb_imax_pct to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_imax_pct, align 1
  %conv = zext i8 %5 to i64
  %mul = mul i64 %3, %conv
  %6 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul, i32 0) #18, !srcloc !390
  %asmresult.i = extractvalue { i64, i32 } %6, 0
  %asmresult4.i = extractvalue { i64, i32 } %6, 1
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul, i64 %asmresult.i, i32 %asmresult4.i) #18, !srcloc !391
  %asmresult10.i = extractvalue { i64, i32 } %7, 0
  %storemerge = lshr i64 %asmresult10.i, 6
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %8 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_agblocks, align 4
  %sub185 = add i32 %9, -1
  %conv186 = zext i32 %sub185 to i64
  %add187 = add nuw nsw i64 %storemerge, %conv186
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add187)
  %cmp390 = icmp ult i64 %add187, 4294967296
  br i1 %cmp390, label %if.then398, label %if.else404, !prof !392

if.then398:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #17
  %conv399 = trunc i64 %add187 to i32
  %div402 = udiv i32 %conv399, %9
  br label %if.end412

if.else404:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %add187) #18, !srcloc !393
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  %extract.t694 = trunc i64 %asmresult1.i to i32
  br label %if.end412

if.end412:                                        ; preds = %if.else404, %if.then398, %entry.if.end412_crit_edge
  %max_metadata.0 = phi i32 [ %agcount, %entry.if.end412_crit_edge ], [ %div402, %if.then398 ], [ %extract.t694, %if.else404 ]
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 15
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %11 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %m_features.i, align 8
  %and.i665 = and i64 %12, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i665)
  %tobool.i.not = icmp eq i64 %and.i665, 0
  br i1 %tobool.i.not, label %if.end412.if.else431_crit_edge, label %land.lhs.true427

if.end412.if.else431_crit_edge:                   ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else431

land.lhs.true427:                                 ; preds = %if.end412
  %13 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %agino_log, align 8
  %sub418 = add i32 %agcount, -1
  %conv419 = zext i32 %sub418 to i64
  %sh_prom421 = zext i32 %14 to i64
  %shl422 = shl i64 %conv419, %sh_prom421
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %shl422)
  %cmp428 = icmp ugt i64 %shl422, 4294967295
  br i1 %cmp428, label %if.then430, label %land.lhs.true427.if.else431_crit_edge

land.lhs.true427.if.else431_crit_edge:            ; preds = %land.lhs.true427
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else431

if.then430:                                       ; preds = %land.lhs.true427
  call void @__sanitizer_cov_trace_pc() #17
  %m_opstate = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  tail call void @_set_bit(i32 noundef 3, ptr noundef %m_opstate) #15
  br label %if.end433

if.else431:                                       ; preds = %land.lhs.true427.if.else431_crit_edge, %if.end412.if.else431_crit_edge
  %m_opstate432 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %m_opstate432) #15
  br label %if.end433

if.end433:                                        ; preds = %if.else431, %if.then430
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %agcount)
  %cmp434696.not = icmp eq i32 %agcount, 0
  br i1 %cmp434696.not, label %if.end433.for.end_crit_edge, label %for.body.lr.ph

if.end433.for.end_crit_edge:                      ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end433
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  br label %for.body

for.body:                                         ; preds = %if.end462.for.body_crit_edge, %for.body.lr.ph
  %index.0698 = phi i32 [ 0, %for.body.lr.ph ], [ %inc463, %if.end462.for.body_crit_edge ]
  %maxagi.0697 = phi i32 [ 0, %for.body.lr.ph ], [ %maxagi.1, %if.end462.for.body_crit_edge ]
  %15 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %agino_log, align 8
  %call443 = tail call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef %index.0698) #15
  %17 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %m_opstate.i, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i666.not = icmp eq i32 %19, 0
  br i1 %tobool.i666.not, label %if.else459, label %if.then445

if.then445:                                       ; preds = %for.body
  %conv436 = zext i32 %index.0698 to i64
  %sh_prom439 = zext i32 %16 to i64
  %shl440 = shl i64 %conv436, %sh_prom439
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %shl440)
  %cmp446 = icmp ugt i64 %shl440, 4294967295
  %pagi_inodeok = getelementptr inbounds %struct.xfs_perag, ptr %call443, i32 0, i32 6
  br i1 %cmp446, label %if.then448, label %if.else449

if.then448:                                       ; preds = %if.then445
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %pagi_inodeok to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %pagi_inodeok, align 1
  %pagf_metadata = getelementptr inbounds %struct.xfs_perag, ptr %call443, i32 0, i32 5
  %21 = ptrtoint ptr %pagf_metadata to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %pagf_metadata, align 2
  br label %if.end462

if.else449:                                       ; preds = %if.then445
  %22 = ptrtoint ptr %pagi_inodeok to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %pagi_inodeok, align 1
  %inc = add i32 %maxagi.0697, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0698, i32 %max_metadata.0)
  %cmp451 = icmp ult i32 %index.0698, %max_metadata.0
  %pagf_metadata454 = getelementptr inbounds %struct.xfs_perag, ptr %call443, i32 0, i32 5
  br i1 %cmp451, label %if.then453, label %if.else455

if.then453:                                       ; preds = %if.else449
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %pagf_metadata454 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %pagf_metadata454, align 2
  br label %if.end462

if.else455:                                       ; preds = %if.else449
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %pagf_metadata454 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %pagf_metadata454, align 2
  br label %if.end462

if.else459:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %pagi_inodeok460 = getelementptr inbounds %struct.xfs_perag, ptr %call443, i32 0, i32 6
  %25 = ptrtoint ptr %pagi_inodeok460 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %pagi_inodeok460, align 1
  %pagf_metadata461 = getelementptr inbounds %struct.xfs_perag, ptr %call443, i32 0, i32 5
  %26 = ptrtoint ptr %pagf_metadata461 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %pagf_metadata461, align 2
  br label %if.end462

if.end462:                                        ; preds = %if.else459, %if.else455, %if.then453, %if.then448
  %maxagi.1 = phi i32 [ %maxagi.0697, %if.then448 ], [ %inc, %if.then453 ], [ %inc, %if.else455 ], [ %maxagi.0697, %if.else459 ]
  tail call void @xfs_perag_put(ptr noundef %call443) #15
  %inc463 = add nuw i32 %index.0698, 1
  %exitcond.not = icmp eq i32 %inc463, %agcount
  br i1 %exitcond.not, label %if.end462.for.end_crit_edge, label %if.end462.for.body_crit_edge

if.end462.for.body_crit_edge:                     ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end462.for.end_crit_edge:                      ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %if.end462.for.end_crit_edge, %if.end433.for.end_crit_edge
  %maxagi.0.lcssa = phi i32 [ 0, %if.end433.for.end_crit_edge ], [ %maxagi.1, %if.end462.for.end_crit_edge ]
  %m_opstate.i667 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %27 = ptrtoint ptr %m_opstate.i667 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %m_opstate.i667, align 4
  %29 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i668.not = icmp eq i32 %29, 0
  %maxagi.0.agcount = select i1 %tobool.i668.not, i32 %agcount, i32 %maxagi.0.lcssa
  ret i32 %maxagi.0.agcount
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_flush_inodes(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m_flush_inodes_work = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 97
  %call = tail call zeroext i1 @flush_work(ptr noundef %m_flush_inodes_work) #15
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %m_sync_workqueue = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 23
  %0 = ptrtoint ptr %m_sync_workqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_sync_workqueue, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %m_flush_inodes_work) #15
  %call4 = tail call zeroext i1 @flush_work(ptr noundef %m_flush_inodes_work) #15
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_reinit_percpu_counters(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m_icount = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 77
  %sb_icount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 28
  %0 = ptrtoint ptr %sb_icount to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sb_icount, align 128
  tail call void @percpu_counter_set(ptr noundef %m_icount, i64 noundef %1) #15
  %m_ifree = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 78
  %sb_ifree = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 29
  %2 = ptrtoint ptr %sb_ifree to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sb_ifree, align 8
  tail call void @percpu_counter_set(ptr noundef %m_ifree, i64 noundef %3) #15
  %m_fdblocks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 79
  %sb_fdblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 30
  %4 = ptrtoint ptr %sb_fdblocks to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sb_fdblocks, align 16
  tail call void @percpu_counter_set(ptr noundef %m_fdblocks, i64 noundef %5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_xfs_fs() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @xfs_qm_exit() #15
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @xfs_fs_type) #15
  tail call void @kobject_del(ptr noundef nonnull @xfs_dbg_kobj) #15
  tail call void @kobject_put(ptr noundef nonnull @xfs_dbg_kobj) #15
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.xfs_kobj, ptr @xfs_dbg_kobj, i32 0, i32 1)) #15
  tail call void @kobject_del(ptr noundef getelementptr inbounds (%struct.xstats, ptr @xfsstats, i32 0, i32 1)) #15
  tail call void @kobject_put(ptr noundef getelementptr inbounds (%struct.xstats, ptr @xfsstats, i32 0, i32 1)) #15
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.xstats, ptr @xfsstats, i32 0, i32 1, i32 1)) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %0 = load ptr, ptr @xfsstats, align 4
  tail call void @free_percpu(ptr noundef %0) #15
  %1 = load ptr, ptr @xfs_kset, align 4
  tail call void @kset_unregister(ptr noundef %1) #15
  tail call void @xfs_sysctl_unregister() #15
  tail call void @xfs_cleanup_procfs() #15
  tail call void @xfs_buf_terminate() #15
  tail call void @xfs_mru_cache_uninit() #15
  tail call fastcc void @xfs_destroy_workqueues()
  tail call fastcc void @xfs_destroy_caches()
  tail call void @xfs_uuid_table_free() #15
  tail call void @__cpuhp_remove_state(i32 noundef 30, i1 noundef zeroext false) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_sysfs_del(ptr noundef %kobj) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kobject_del(ptr noundef %kobj) #15
  tail call void @kobject_put(ptr noundef %kobj) #15
  %complete = getelementptr inbounds %struct.xfs_kobj, ptr %kobj, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %complete) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_sysctl_unregister() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_cleanup_procfs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_terminate() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_mru_cache_uninit() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_destroy_workqueues() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_discard_wq to i32))
  %0 = load ptr, ptr @xfs_discard_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_alloc_wq to i32))
  %1 = load ptr, ptr @xfs_alloc_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_destroy_caches() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_barrier() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_bui_cache to i32))
  %0 = load ptr, ptr @xfs_bui_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_bud_cache to i32))
  %1 = load ptr, ptr @xfs_bud_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_cui_cache to i32))
  %2 = load ptr, ptr @xfs_cui_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_cud_cache to i32))
  %3 = load ptr, ptr @xfs_cud_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_rui_cache to i32))
  %4 = load ptr, ptr @xfs_rui_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_rud_cache to i32))
  %5 = load ptr, ptr @xfs_rud_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_icreate_cache to i32))
  %6 = load ptr, ptr @xfs_icreate_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %6) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_ili_cache to i32))
  %7 = load ptr, ptr @xfs_ili_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %7) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_inode_cache to i32))
  %8 = load ptr, ptr @xfs_inode_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %8) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_efi_cache to i32))
  %9 = load ptr, ptr @xfs_efi_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %9) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_efd_cache to i32))
  %10 = load ptr, ptr @xfs_efd_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %10) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_buf_item_cache to i32))
  %11 = load ptr, ptr @xfs_buf_item_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %11) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_trans_cache to i32))
  %12 = load ptr, ptr @xfs_trans_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %12) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_ifork_cache to i32))
  %13 = load ptr, ptr @xfs_ifork_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %13) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_da_state_cache to i32))
  %14 = load ptr, ptr @xfs_da_state_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %14) #15
  tail call void @xfs_defer_destroy_item_caches() #15
  tail call void @xfs_btree_destroy_cur_caches() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_log_ticket_cache to i32))
  %15 = load ptr, ptr @xfs_log_ticket_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %15) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_uuid_table_free() local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_xfs_fs() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140) #19
  tail call void @xfs_dir_startup() #15
  %call1 = tail call fastcc i32 @xfs_cpu_hotplug_init() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @xfs_init_caches() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_destroy_hp_crit_edge

if.end.out_destroy_hp_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_hp

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @xfs_init_workqueues() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_destroy_caches_crit_edge

if.end5.out_destroy_caches_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_caches

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @xfs_mru_cache_init() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_destroy_wq_crit_edge

if.end9.out_destroy_wq_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_wq

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @xfs_buf_init() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.out_mru_cache_uninit_crit_edge

if.end13.out_mru_cache_uninit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_mru_cache_uninit

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @xfs_init_procfs() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.out_buf_terminate_crit_edge

if.end17.out_buf_terminate_crit_edge:             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_buf_terminate

if.end21:                                         ; preds = %if.end17
  %call22 = tail call i32 @xfs_sysctl_register() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.out_cleanup_procfs_crit_edge

if.end21.out_cleanup_procfs_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_cleanup_procfs

if.end25:                                         ; preds = %if.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %0 = load ptr, ptr @fs_kobj, align 4
  %call26 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str, ptr noundef null, ptr noundef %0) #15
  store ptr %call26, ptr @xfs_kset, align 4
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end25.out_sysctl_unregister_crit_edge, label %if.end29

if.end25.out_sysctl_unregister_crit_edge:         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_sysctl_unregister

if.end29:                                         ; preds = %if.end25
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xstats, ptr @xfsstats, i32 0, i32 1, i32 0, i32 3) to i32))
  store ptr %call26, ptr getelementptr inbounds (%struct.xstats, ptr @xfsstats, i32 0, i32 1, i32 0, i32 3), align 4
  %call30 = tail call noalias ptr @__alloc_percpu(i32 noundef 792, i32 noundef 8) #21
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  store ptr %call30, ptr @xfsstats, align 4
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end29.out_kset_unregister_crit_edge, label %if.end33

if.end29.out_kset_unregister_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_kset_unregister

if.end33:                                         ; preds = %if.end29
  %call34 = tail call fastcc i32 @xfs_sysfs_init(ptr noundef getelementptr inbounds (%struct.xstats, ptr @xfsstats, i32 0, i32 1), ptr noundef nonnull @xfs_stats_ktype, ptr noundef nonnull @.str.142)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.out_free_stats_crit_edge

if.end33.out_free_stats_crit_edge:                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_stats

if.end37:                                         ; preds = %if.end33
  %1 = load ptr, ptr @xfs_kset, align 4
  store ptr %1, ptr getelementptr inbounds (%struct.xfs_kobj, ptr @xfs_dbg_kobj, i32 0, i32 0, i32 3), align 4
  %call38 = tail call fastcc i32 @xfs_sysfs_init(ptr noundef nonnull @xfs_dbg_kobj, ptr noundef nonnull @xfs_dbg_ktype, ptr noundef nonnull @.str.143)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.out_remove_stats_kobj_crit_edge

if.end37.out_remove_stats_kobj_crit_edge:         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_remove_stats_kobj

if.end41:                                         ; preds = %if.end37
  %call42 = tail call i32 @xfs_qm_init() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.out_remove_dbg_kobj_crit_edge

if.end41.out_remove_dbg_kobj_crit_edge:           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_remove_dbg_kobj

if.end45:                                         ; preds = %if.end41
  %call46 = tail call i32 @register_filesystem(ptr noundef nonnull @xfs_fs_type) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %out_qm_exit

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

out_qm_exit:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @xfs_qm_exit() #15
  br label %out_remove_dbg_kobj

out_remove_dbg_kobj:                              ; preds = %out_qm_exit, %if.end41.out_remove_dbg_kobj_crit_edge
  %error.0 = phi i32 [ %call42, %if.end41.out_remove_dbg_kobj_crit_edge ], [ %call46, %out_qm_exit ]
  tail call fastcc void @xfs_sysfs_del(ptr noundef nonnull @xfs_dbg_kobj)
  br label %out_remove_stats_kobj

out_remove_stats_kobj:                            ; preds = %out_remove_dbg_kobj, %if.end37.out_remove_stats_kobj_crit_edge
  %error.1 = phi i32 [ %call38, %if.end37.out_remove_stats_kobj_crit_edge ], [ %error.0, %out_remove_dbg_kobj ]
  tail call fastcc void @xfs_sysfs_del(ptr noundef getelementptr inbounds (%struct.xstats, ptr @xfsstats, i32 0, i32 1))
  br label %out_free_stats

out_free_stats:                                   ; preds = %out_remove_stats_kobj, %if.end33.out_free_stats_crit_edge
  %error.2 = phi i32 [ %call34, %if.end33.out_free_stats_crit_edge ], [ %error.1, %out_remove_stats_kobj ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %2 = load ptr, ptr @xfsstats, align 4
  tail call void @free_percpu(ptr noundef %2) #15
  br label %out_kset_unregister

out_kset_unregister:                              ; preds = %out_free_stats, %if.end29.out_kset_unregister_crit_edge
  %error.3 = phi i32 [ %error.2, %out_free_stats ], [ -12, %if.end29.out_kset_unregister_crit_edge ]
  %3 = load ptr, ptr @xfs_kset, align 4
  tail call void @kset_unregister(ptr noundef %3) #15
  br label %out_sysctl_unregister

out_sysctl_unregister:                            ; preds = %out_kset_unregister, %if.end25.out_sysctl_unregister_crit_edge
  %error.4 = phi i32 [ %error.3, %out_kset_unregister ], [ -12, %if.end25.out_sysctl_unregister_crit_edge ]
  tail call void @xfs_sysctl_unregister() #15
  br label %out_cleanup_procfs

out_cleanup_procfs:                               ; preds = %out_sysctl_unregister, %if.end21.out_cleanup_procfs_crit_edge
  %error.5 = phi i32 [ %call22, %if.end21.out_cleanup_procfs_crit_edge ], [ %error.4, %out_sysctl_unregister ]
  tail call void @xfs_cleanup_procfs() #15
  br label %out_buf_terminate

out_buf_terminate:                                ; preds = %out_cleanup_procfs, %if.end17.out_buf_terminate_crit_edge
  %error.6 = phi i32 [ %call18, %if.end17.out_buf_terminate_crit_edge ], [ %error.5, %out_cleanup_procfs ]
  tail call void @xfs_buf_terminate() #15
  br label %out_mru_cache_uninit

out_mru_cache_uninit:                             ; preds = %out_buf_terminate, %if.end13.out_mru_cache_uninit_crit_edge
  %error.7 = phi i32 [ %call14, %if.end13.out_mru_cache_uninit_crit_edge ], [ %error.6, %out_buf_terminate ]
  tail call void @xfs_mru_cache_uninit() #15
  br label %out_destroy_wq

out_destroy_wq:                                   ; preds = %out_mru_cache_uninit, %if.end9.out_destroy_wq_crit_edge
  %error.8 = phi i32 [ %call10, %if.end9.out_destroy_wq_crit_edge ], [ %error.7, %out_mru_cache_uninit ]
  tail call fastcc void @xfs_destroy_workqueues()
  br label %out_destroy_caches

out_destroy_caches:                               ; preds = %out_destroy_wq, %if.end5.out_destroy_caches_crit_edge
  %error.9 = phi i32 [ %call6, %if.end5.out_destroy_caches_crit_edge ], [ %error.8, %out_destroy_wq ]
  tail call fastcc void @xfs_destroy_caches()
  br label %out_destroy_hp

out_destroy_hp:                                   ; preds = %out_destroy_caches, %if.end.out_destroy_hp_crit_edge
  %error.10 = phi i32 [ %call2, %if.end.out_destroy_hp_crit_edge ], [ %error.9, %out_destroy_caches ]
  tail call void @__cpuhp_remove_state(i32 noundef 30, i1 noundef zeroext false) #15
  br label %cleanup

cleanup:                                          ; preds = %out_destroy_hp, %if.end45.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end45.cleanup_crit_edge ], [ %call1, %entry.cleanup_crit_edge ], [ %error.10, %out_destroy_hp ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_init_fs_context(ptr nocapture noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_alloc(i32 noundef 3712, i32 noundef 16) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  %m_sb_lock = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 76
  tail call void @__raw_spin_lock_init(ptr noundef %m_sb_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @xfs_init_fs_context.__key, i16 noundef signext 3) #15
  %m_agirotor_lock = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 95
  tail call void @__raw_spin_lock_init(ptr noundef %m_agirotor_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @xfs_init_fs_context.__key.2, i16 noundef signext 3) #15
  %m_perag_tree = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 82
  tail call void @__raw_spin_lock_init(ptr noundef %m_perag_tree, ptr noundef nonnull @.str.14, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #15
  %xa_flags.i = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 82, i32 1
  %0 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2592, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 82, i32 2
  %1 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %xa_head.i, align 4
  %m_perag_lock = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 83
  tail call void @__raw_spin_lock_init(ptr noundef %m_perag_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @xfs_init_fs_context.__key.4, i16 noundef signext 3) #15
  %m_growlock = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 99
  tail call void @__mutex_init(ptr noundef %m_growlock, ptr noundef nonnull @.str.7, ptr noundef nonnull @xfs_init_fs_context.__key.6) #15
  %m_flush_inodes_work = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 97
  tail call void @__init_work(ptr noundef %m_flush_inodes_work, i32 noundef 0) #15
  %2 = ptrtoint ptr %m_flush_inodes_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %m_flush_inodes_work, align 16
  %lockdep_map = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 97, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @xfs_init_fs_context.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry17 = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 97, i32 1
  %3 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 97, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 97, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @xfs_flush_inodes_worker, ptr %func, align 4
  %m_reclaim_work = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 87
  tail call void @__init_work(ptr noundef %m_reclaim_work, i32 noundef 0) #15
  %6 = ptrtoint ptr %m_reclaim_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %m_reclaim_work, align 16
  %lockdep_map30 = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 87, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map30, ptr noundef nonnull @.str.11, ptr noundef nonnull @xfs_init_fs_context.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry33 = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 87, i32 0, i32 1
  %7 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i89 = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 87, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i89 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry33, ptr %prev.i89, align 4
  %func36 = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 87, i32 0, i32 2
  %9 = ptrtoint ptr %func36 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @xfs_reclaim_worker, ptr %func36, align 4
  %timer = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 87, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.13, ptr noundef nonnull @xfs_init_fs_context.__key.12) #15
  %10 = load ptr, ptr @xfs_kset, align 4
  %kset = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 88, i32 0, i32 3
  %11 = ptrtoint ptr %kset to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %kset, align 4
  %m_finobt_nores = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 69
  %12 = ptrtoint ptr %m_finobt_nores to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %m_finobt_nores, align 2
  %m_logbufs = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 55
  %13 = ptrtoint ptr %m_logbufs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %m_logbufs, align 4
  %m_logbsize = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 56
  %14 = ptrtoint ptr %m_logbsize to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %m_logbsize, align 128
  %m_allocsize_log = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 53
  %15 = ptrtoint ptr %m_allocsize_log to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16, ptr %m_allocsize_log, align 4
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %16 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sb_flags, align 4
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %do.body.if.end47_crit_edge, label %if.then46

do.body.if.end47_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.then46:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %m_opstate = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 66
  tail call void @_set_bit(i32 noundef 4, ptr noundef %m_opstate) #15
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %do.body.if.end47_crit_edge
  %18 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sb_flags, align 4
  %and49 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.if.end52_crit_edge, label %if.then51

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  %m_features = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 61
  %20 = ptrtoint ptr %m_features to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %m_features, align 8
  %or = or i64 %21, 9007199254740992
  store i64 %or, ptr %m_features, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end47.if.end52_crit_edge
  %22 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sb_flags, align 4
  %and54 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end52.if.end59_crit_edge, label %if.then56

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  %m_features57 = getelementptr inbounds %struct.xfs_mount, ptr %call, i32 0, i32 61
  %24 = ptrtoint ptr %m_features57 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %m_features57, align 8
  %or58 = or i64 %25, 4503599627370496
  store i64 %or58, ptr %m_features57, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end52.if.end59_crit_edge
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %26 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call, ptr %s_fs_info, align 4
  %27 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @xfs_context_ops, ptr %fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end59 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_flush_inodes_worker(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m_super = getelementptr i8, ptr %work, i32 -3112
  %0 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_super, align 8
  %s_umount = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 14
  %call = tail call i32 @down_read_trylock(ptr noundef %s_umount) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @sync_inodes_sb(ptr noundef %1) #15
  tail call void @up_read(ptr noundef %s_umount) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_reclaim_worker(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_inodes_sb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_fs_free(ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %m_rtname.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %m_rtname.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_rtname.i, align 4
  tail call void @kfree(ptr noundef %3) #15
  %m_logname.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %m_logname.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_logname.i, align 8
  tail call void @kfree(ptr noundef %5) #15
  tail call void @kvfree(ptr noundef nonnull %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_parse_param(ptr noundef %fc, ptr noundef %param) #0 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #15
  %2 = call ptr @memset(ptr %result, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #15
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %size, align 4
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @xfs_fs_parameters, ptr noundef %param, ptr noundef nonnull %result) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
    i32 3, label %sw.bb12
    i32 14, label %sw.bb19
    i32 10, label %if.end.sw.bb24_crit_edge
    i32 12, label %if.end.sw.bb24_crit_edge169
    i32 11, label %if.end.sw.bb27_crit_edge
    i32 13, label %if.end.sw.bb27_crit_edge170
    i32 4, label %sw.bb29
    i32 15, label %sw.bb32
    i32 5, label %sw.bb35
    i32 6, label %sw.bb38
    i32 7, label %sw.bb41
    i32 8, label %sw.bb42
    i32 17, label %sw.bb43
    i32 16, label %sw.bb46
    i32 9, label %sw.bb49
    i32 20, label %sw.bb52
    i32 21, label %sw.bb55
    i32 24, label %sw.bb58
    i32 26, label %sw.bb61
    i32 25, label %if.end.sw.bb65_crit_edge
    i32 30, label %if.end.sw.bb65_crit_edge171
    i32 27, label %if.end.sw.bb65_crit_edge172
    i32 36, label %if.end.sw.bb68_crit_edge
    i32 33, label %if.end.sw.bb68_crit_edge173
    i32 32, label %if.end.sw.bb73_crit_edge
    i32 29, label %if.end.sw.bb73_crit_edge174
    i32 35, label %sw.bb76
    i32 31, label %if.end.sw.bb81_crit_edge
    i32 28, label %if.end.sw.bb81_crit_edge175
    i32 34, label %sw.bb84
    i32 37, label %sw.bb89
    i32 38, label %sw.bb92
    i32 18, label %sw.bb95
    i32 19, label %sw.bb98
    i32 22, label %sw.bb101
    i32 23, label %sw.bb104
  ]

if.end.sw.bb81_crit_edge175:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb81

if.end.sw.bb81_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb81

if.end.sw.bb73_crit_edge174:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb73

if.end.sw.bb73_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb73

if.end.sw.bb68_crit_edge173:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb68

if.end.sw.bb68_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb68

if.end.sw.bb65_crit_edge172:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb65

if.end.sw.bb65_crit_edge171:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb65

if.end.sw.bb65_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb65

if.end.sw.bb27_crit_edge170:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb27

if.end.sw.bb27_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb27

if.end.sw.bb24_crit_edge169:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb24

if.end.sw.bb24_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb24

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %5 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %m_logbufs = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 55
  %8 = ptrtoint ptr %m_logbufs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %m_logbufs, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %9 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %m_logbsize = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 56
  %call2 = call fastcc i32 @suffix_kstrtoint(ptr noundef %11, ptr noundef %m_logbsize)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_logname = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %m_logname to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_logname, align 8
  call void @kfree(ptr noundef %13) #15
  %14 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call6 = call noalias ptr @kstrdup(ptr noundef %16, i32 noundef 3264) #15
  %17 = ptrtoint ptr %m_logname to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call6, ptr %m_logname, align 8
  %tobool9.not = icmp eq ptr %call6, null
  %.167 = select i1 %tobool9.not, i32 -12, i32 0
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_rtname = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %m_rtname to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m_rtname, align 4
  call void @kfree(ptr noundef %19) #15
  %20 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call13 = call noalias ptr @kstrdup(ptr noundef %22, i32 noundef 3264) #15
  %23 = ptrtoint ptr %m_rtname to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call13, ptr %m_rtname, align 4
  %tobool16.not = icmp eq ptr %call13, null
  %.168 = select i1 %tobool16.not, i32 -12, i32 0
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  %24 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call20 = call fastcc i32 @suffix_kstrtoint(ptr noundef %26, ptr noundef nonnull %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end23:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 4
  %29 = call i32 @llvm.cttz.i32(i32 %28, i1 true), !range !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %iszero = icmp eq i32 %28, 0
  %sub = select i1 %iszero, i32 -1, i32 %29
  %m_allocsize_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 53
  %30 = ptrtoint ptr %m_allocsize_log to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %m_allocsize_log, align 4
  %m_features = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %31 = ptrtoint ptr %m_features to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %m_features, align 8
  %or = or i64 %32, 1125899906842624
  store i64 %or, ptr %m_features, align 8
  br label %cleanup

sw.bb24:                                          ; preds = %if.end.sw.bb24_crit_edge, %if.end.sw.bb24_crit_edge169
  %m_features25 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %33 = ptrtoint ptr %m_features25 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %m_features25, align 8
  %or26 = or i64 %34, 36028797018963968
  store i64 %or26, ptr %m_features25, align 8
  br label %cleanup

sw.bb27:                                          ; preds = %if.end.sw.bb27_crit_edge, %if.end.sw.bb27_crit_edge170
  %m_features28 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %35 = ptrtoint ptr %m_features28 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %m_features28, align 8
  %and = and i64 %36, -36028797018963969
  store i64 %and, ptr %m_features28, align 8
  br label %cleanup

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_features30 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %37 = ptrtoint ptr %m_features30 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %m_features30, align 8
  %or31 = or i64 %38, 4503599627370496
  store i64 %or31, ptr %m_features30, align 8
  br label %cleanup

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_features33 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %39 = ptrtoint ptr %m_features33 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %m_features33, align 8
  %or34 = or i64 %40, 4611686018427387904
  store i64 %or34, ptr %m_features33, align 8
  br label %cleanup

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_features36 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %41 = ptrtoint ptr %m_features36 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %m_features36, align 8
  %or37 = or i64 %42, 562949953421312
  store i64 %or37, ptr %m_features36, align 8
  br label %cleanup

sw.bb38:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_features39 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %43 = ptrtoint ptr %m_features39 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %m_features39, align 8
  %or40 = or i64 %44, 288230376151711744
  store i64 %or40, ptr %m_features39, align 8
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %45 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %m_dalign = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 50
  %48 = ptrtoint ptr %m_dalign to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %m_dalign, align 8
  br label %cleanup

sw.bb42:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %49 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %m_swidth = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 51
  %52 = ptrtoint ptr %m_swidth to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %m_swidth, align 4
  br label %cleanup

sw.bb43:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_features44 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %53 = ptrtoint ptr %m_features44 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %m_features44, align 8
  %or45 = or i64 %54, 72057594037927936
  store i64 %or45, ptr %m_features44, align 8
  br label %cleanup

sw.bb46:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_features47 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %55 = ptrtoint ptr %m_features47 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %m_features47, align 8
  %and48 = and i64 %56, -72057594037927937
  store i64 %and48, ptr %m_features47, align 8
  br label %cleanup

sw.bb49:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_features50 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %57 = ptrtoint ptr %m_features50 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %m_features50, align 8
  %or51 = or i64 %58, -9223372036854775808
  store i64 %or51, ptr %m_features50, align 8
  br label %cleanup

sw.bb52:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_features53 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %59 = ptrtoint ptr %m_features53 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %m_features53, align 8
  %or54 = or i64 %60, 2251799813685248
  store i64 %or54, ptr %m_features53, align 8
  br label %cleanup

sw.bb55:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_features56 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %61 = ptrtoint ptr %m_features56 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %m_features56, align 8
  %and57 = and i64 %62, -2251799813685249
  store i64 %and57, ptr %m_features56, align 8
  br label %cleanup

sw.bb58:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_features59 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %63 = ptrtoint ptr %m_features59 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %m_features59, align 8
  %or60 = or i64 %64, 576460752303423488
  store i64 %or60, ptr %m_features59, align 8
  br label %cleanup

sw.bb61:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %65 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %m_qflags, align 4
  %and64 = and i32 %66, -716
  store i32 %and64, ptr %m_qflags, align 4
  br label %cleanup

sw.bb65:                                          ; preds = %if.end.sw.bb65_crit_edge, %if.end.sw.bb65_crit_edge171, %if.end.sw.bb65_crit_edge172
  %m_qflags66 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %67 = ptrtoint ptr %m_qflags66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %m_qflags66, align 4
  %or67 = or i32 %68, 3
  store i32 %or67, ptr %m_qflags66, align 4
  br label %cleanup

sw.bb68:                                          ; preds = %if.end.sw.bb68_crit_edge, %if.end.sw.bb68_crit_edge173
  %m_qflags69 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %69 = ptrtoint ptr %m_qflags69 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %m_qflags69, align 4
  %or70 = and i32 %70, -4
  %and72 = or i32 %or70, 1
  store i32 %and72, ptr %m_qflags69, align 4
  br label %cleanup

sw.bb73:                                          ; preds = %if.end.sw.bb73_crit_edge, %if.end.sw.bb73_crit_edge174
  %m_qflags74 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %71 = ptrtoint ptr %m_qflags74 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %m_qflags74, align 4
  %or75 = or i32 %72, 520
  store i32 %or75, ptr %m_qflags74, align 4
  br label %cleanup

sw.bb76:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_qflags77 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %73 = ptrtoint ptr %m_qflags77 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %m_qflags77, align 4
  %or78 = and i32 %74, -521
  %and80 = or i32 %or78, 8
  store i32 %and80, ptr %m_qflags77, align 4
  br label %cleanup

sw.bb81:                                          ; preds = %if.end.sw.bb81_crit_edge, %if.end.sw.bb81_crit_edge175
  %m_qflags82 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %75 = ptrtoint ptr %m_qflags82 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %m_qflags82, align 4
  %or83 = or i32 %76, 192
  store i32 %or83, ptr %m_qflags82, align 4
  br label %cleanup

sw.bb84:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_qflags85 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %77 = ptrtoint ptr %m_qflags85 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %m_qflags85, align 4
  %or86 = and i32 %78, -193
  %and88 = or i32 %or86, 64
  store i32 %and88, ptr %m_qflags85, align 4
  br label %cleanup

sw.bb89:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_features90 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %79 = ptrtoint ptr %m_features90 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %m_features90, align 8
  %or91 = or i64 %80, 18014398509481984
  store i64 %or91, ptr %m_features90, align 8
  br label %cleanup

sw.bb92:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_features93 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %81 = ptrtoint ptr %m_features93 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %m_features93, align 8
  %and94 = and i64 %82, -18014398509481985
  store i64 %and94, ptr %m_features93, align 8
  br label %cleanup

sw.bb95:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @xfs_fs_warn_deprecated(ptr noundef %fc, ptr noundef %param, i64 noundef 144115188075855872, i1 noundef zeroext true)
  %m_features96 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %83 = ptrtoint ptr %m_features96 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %m_features96, align 8
  %or97 = or i64 %84, 144115188075855872
  store i64 %or97, ptr %m_features96, align 8
  br label %cleanup

sw.bb98:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @xfs_fs_warn_deprecated(ptr noundef %fc, ptr noundef %param, i64 noundef 144115188075855872, i1 noundef zeroext false)
  %m_features99 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %85 = ptrtoint ptr %m_features99 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %m_features99, align 8
  %and100 = and i64 %86, -144115188075855873
  store i64 %and100, ptr %m_features99, align 8
  br label %cleanup

sw.bb101:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @xfs_fs_warn_deprecated(ptr noundef %fc, ptr noundef %param, i64 noundef 1024, i1 noundef zeroext true)
  %m_features102 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %87 = ptrtoint ptr %m_features102 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %m_features102, align 8
  %or103 = or i64 %88, 1024
  store i64 %or103, ptr %m_features102, align 8
  br label %cleanup

sw.bb104:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @xfs_fs_warn_deprecated(ptr noundef %fc, ptr noundef %param, i64 noundef 281474976710656, i1 noundef zeroext true)
  %m_features105 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %89 = ptrtoint ptr %m_features105 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %m_features105, align 8
  %or106 = or i64 %90, 281474976710656
  store i64 %or106, ptr %m_features105, align 8
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %91 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %param, align 4
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef %92) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb104, %sw.bb101, %sw.bb98, %sw.bb95, %sw.bb92, %sw.bb89, %sw.bb84, %sw.bb81, %sw.bb76, %sw.bb73, %sw.bb68, %sw.bb65, %sw.bb61, %sw.bb58, %sw.bb55, %sw.bb52, %sw.bb49, %sw.bb46, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb38, %sw.bb35, %sw.bb32, %sw.bb29, %sw.bb27, %sw.bb24, %if.end23, %sw.bb19.cleanup_crit_edge, %sw.bb12, %sw.bb5, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.bb104 ], [ 0, %sw.bb101 ], [ 0, %sw.bb98 ], [ 0, %sw.bb95 ], [ 0, %sw.bb92 ], [ 0, %sw.bb89 ], [ 0, %sw.bb84 ], [ 0, %sw.bb81 ], [ 0, %sw.bb76 ], [ 0, %sw.bb73 ], [ 0, %sw.bb68 ], [ 0, %sw.bb65 ], [ 0, %sw.bb61 ], [ 0, %sw.bb58 ], [ 0, %sw.bb55 ], [ 0, %sw.bb52 ], [ 0, %sw.bb49 ], [ 0, %sw.bb46 ], [ 0, %sw.bb43 ], [ 0, %sw.bb42 ], [ 0, %sw.bb41 ], [ 0, %sw.bb38 ], [ 0, %sw.bb35 ], [ 0, %sw.bb32 ], [ 0, %sw.bb29 ], [ 0, %sw.bb27 ], [ 0, %sw.bb24 ], [ 0, %if.end23 ], [ 0, %sw.bb ], [ %call.i, %entry.cleanup_crit_edge ], [ %., %sw.bb1 ], [ %.167, %sw.bb5 ], [ %.168, %sw.bb12 ], [ -22, %sw.bb19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_bdev(ptr noundef %fc, ptr noundef nonnull @xfs_fs_fill_super) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_reconfigure(ptr nocapture noundef %fc) #0 align 64 {
entry:
  %icw.i = alloca %struct.xfs_icwalk, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %s_fs_info1 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %6 = ptrtoint ptr %s_fs_info1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info1, align 4
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %8 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_flags, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 61
  %10 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i32 %9, 8388608
  %12 = ptrtoint ptr %sb_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %sb_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call fastcc i32 @xfs_fs_validate_params(ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %13 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %m_features.i, align 8
  %and.i72 = and i64 %14, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i72)
  %tobool.i73.not = icmp eq i64 %and.i72, 0
  br i1 %tobool.i73.not, label %if.end5.if.end10_crit_edge, label %land.lhs.true

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  %m_features.i74 = getelementptr inbounds %struct.xfs_mount, ptr %7, i32 0, i32 61
  %15 = ptrtoint ptr %m_features.i74 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %m_features.i74, align 8
  %and.i75 = and i64 %16, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i75)
  %tobool.i76.not = icmp eq i64 %and.i75, 0
  br i1 %tobool.i76.not, label %if.then8, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %and = and i64 %14, -72057594037927937
  %17 = ptrtoint ptr %m_features.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %and, ptr %m_features.i, align 8
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 12
  %18 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sb_agcount, align 8
  %call9 = tail call i32 @xfs_set_inode_alloc(ptr noundef %5, i32 noundef %19)
  %m_maxagi = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 52
  %20 = ptrtoint ptr %m_maxagi to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call9, ptr %m_maxagi, align 16
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  %21 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %m_features.i, align 8
  %and.i78 = and i64 %22, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i78)
  %tobool.i79.not = icmp eq i64 %and.i78, 0
  br i1 %tobool.i79.not, label %land.lhs.true12, label %if.end10.if.end21_crit_edge

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

land.lhs.true12:                                  ; preds = %if.end10
  %m_features.i80 = getelementptr inbounds %struct.xfs_mount, ptr %7, i32 0, i32 61
  %23 = ptrtoint ptr %m_features.i80 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %m_features.i80, align 8
  %and.i81 = and i64 %24, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i81)
  %tobool.i82.not = icmp eq i64 %and.i81, 0
  br i1 %tobool.i82.not, label %land.lhs.true12.if.end21_crit_edge, label %if.then14

land.lhs.true12.if.end21_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #17
  %or16 = or i64 %22, 72057594037927936
  %25 = ptrtoint ptr %m_features.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %or16, ptr %m_features.i, align 8
  %sb_agcount18 = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 12
  %26 = ptrtoint ptr %sb_agcount18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sb_agcount18, align 8
  %call19 = tail call i32 @xfs_set_inode_alloc(ptr noundef %5, i32 noundef %27)
  %m_maxagi20 = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 52
  %28 = ptrtoint ptr %m_maxagi20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call19, ptr %m_maxagi20, align 16
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %land.lhs.true12.if.end21_crit_edge, %if.end10.if.end21_crit_edge
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 66
  %29 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %m_opstate.i, align 4
  %31 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i83 = icmp ne i32 %31, 0
  %and24 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %or.cond = select i1 %tobool.i83, i1 %tobool25.not, i1 false
  br i1 %or.cond, label %if.then26, label %if.end21.if.end31_crit_edge

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then26:                                        ; preds = %if.end21
  %32 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %m_features.i, align 8
  %and.i.i = and i64 %33, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %5, ptr noundef nonnull @.str.96) #15
  br label %cleanup

if.end.i:                                         ; preds = %if.then26
  %sb_versionnum.i.i = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 15
  %34 = ptrtoint ptr %sb_versionnum.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %sb_versionnum.i.i, align 4
  %36 = and i16 %35, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %36)
  %cmp.i.i = icmp eq i16 %36, 5
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %sb_features_ro_compat.i.i = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 47
  %37 = ptrtoint ptr %sb_features_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sb_features_ro_compat.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %38)
  %cmp.i37.i = icmp ugt i32 %38, 15
  br i1 %cmp.i37.i, label %if.then3.i, label %land.lhs.true.i.if.end4.i_crit_edge

land.lhs.true.i.if.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i84 = and i32 %38, -16
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %5, ptr noundef nonnull @.str.97, i32 noundef %and.i84) #15
  br label %cleanup

if.end4.i:                                        ; preds = %land.lhs.true.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %m_opstate.i) #15
  %m_update_sb.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 70
  %39 = ptrtoint ptr %m_update_sb.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %m_update_sb.i, align 1, !range !395
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %if.end4.i.if.end11.i_crit_edge, label %if.then5.i

if.end4.i.if.end11.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.then5.i:                                       ; preds = %if.end4.i
  %call6.i = tail call i32 @xfs_sync_sb(ptr noundef %5, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %5, ptr noundef nonnull @.str.98) #15
  br label %cleanup

if.end9.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %m_update_sb.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %m_update_sb.i, align 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end9.i, %if.end4.i.if.end11.i_crit_edge
  tail call fastcc void @xfs_restore_resvblks(ptr noundef %5) #15
  tail call void @xfs_log_work_queue(ptr noundef %5) #15
  tail call void @xfs_blockgc_start(ptr noundef %5) #15
  %call12.i = tail call i32 @xfs_fs_reserve_ag_blocks(ptr noundef %5) #15
  %42 = zext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %call12.i, label %if.end11.i.cleanup_crit_edge [
    i32 0, label %if.end11.i.xfs_remount_rw.exit.thread96_crit_edge
    i32 -28, label %if.end11.i.xfs_remount_rw.exit.thread96_crit_edge101
  ]

if.end11.i.xfs_remount_rw.exit.thread96_crit_edge101: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_remount_rw.exit.thread96

if.end11.i.xfs_remount_rw.exit.thread96_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_remount_rw.exit.thread96

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

xfs_remount_rw.exit.thread96:                     ; preds = %if.end11.i.xfs_remount_rw.exit.thread96_crit_edge, %if.end11.i.xfs_remount_rw.exit.thread96_crit_edge101
  tail call void @xfs_inodegc_start(ptr noundef %5) #15
  br label %if.end31

if.end31:                                         ; preds = %xfs_remount_rw.exit.thread96, %if.end21.if.end31_crit_edge
  %43 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %m_opstate.i, align 4
  %45 = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i87 = icmp ne i32 %45, 0
  %or.cond70 = select i1 %tobool.i87, i1 true, i1 %tobool25.not
  br i1 %or.cond70, label %if.end31.cleanup_crit_edge, label %if.then36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then36:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %icw.i) #15
  %46 = call ptr @memcpy(ptr %icw.i, ptr @__const.xfs_remount_ro.icw, i32 32)
  %m_super.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 1
  %47 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %m_super.i, align 8
  %call.i = tail call i32 @sync_filesystem(ptr noundef %48) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i88 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i88, label %if.end.i89, label %if.then36.xfs_remount_ro.exit.thread_crit_edge

if.then36.xfs_remount_ro.exit.thread_crit_edge:   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_remount_ro.exit.thread

if.end.i89:                                       ; preds = %if.then36
  tail call void @xfs_blockgc_stop(ptr noundef %5) #15
  %call1.i = call i32 @xfs_blockgc_free_space(ptr noundef %5, ptr noundef nonnull %icw.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i91, label %if.end.i89.xfs_remount_ro.exit.thread.sink.split_crit_edge

if.end.i89.xfs_remount_ro.exit.thread.sink.split_crit_edge: ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_remount_ro.exit.thread.sink.split

if.end4.i91:                                      ; preds = %if.end.i89
  call void @xfs_inodegc_stop(ptr noundef %5) #15
  %call5.i = call i32 @xfs_fs_unreserve_ag_blocks(ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %xfs_remount_ro.exit, label %if.end4.i91.xfs_remount_ro.exit.thread.sink.split_crit_edge

if.end4.i91.xfs_remount_ro.exit.thread.sink.split_crit_edge: ; preds = %if.end4.i91
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_remount_ro.exit.thread.sink.split

xfs_remount_ro.exit.thread.sink.split:            ; preds = %if.end4.i91.xfs_remount_ro.exit.thread.sink.split_crit_edge, %if.end.i89.xfs_remount_ro.exit.thread.sink.split_crit_edge
  %.sink = phi i32 [ 1775, %if.end.i89.xfs_remount_ro.exit.thread.sink.split_crit_edge ], [ 1791, %if.end4.i91.xfs_remount_ro.exit.thread.sink.split_crit_edge ]
  %retval.0.i93.ph.ph = phi i32 [ %call1.i, %if.end.i89.xfs_remount_ro.exit.thread.sink.split_crit_edge ], [ %call5.i, %if.end4.i91.xfs_remount_ro.exit.thread.sink.split_crit_edge ]
  call void @xfs_do_force_shutdown(ptr noundef %5, i32 noundef 8, ptr noundef nonnull @.str.37, i32 noundef %.sink) #15
  br label %xfs_remount_ro.exit.thread

xfs_remount_ro.exit.thread:                       ; preds = %xfs_remount_ro.exit.thread.sink.split, %if.then36.xfs_remount_ro.exit.thread_crit_edge
  %retval.0.i93.ph = phi i32 [ %call.i, %if.then36.xfs_remount_ro.exit.thread_crit_edge ], [ %retval.0.i93.ph.ph, %xfs_remount_ro.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %icw.i) #15
  br label %cleanup

xfs_remount_ro.exit:                              ; preds = %if.end4.i91
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @xfs_save_resvblks(ptr noundef %5) #15
  call void @xfs_log_clean(ptr noundef %5) #15
  call void @_set_bit(i32 noundef 4, ptr noundef %m_opstate.i) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %icw.i) #15
  br label %cleanup

cleanup:                                          ; preds = %xfs_remount_ro.exit, %xfs_remount_ro.exit.thread, %if.end31.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %if.then8.i, %if.then3.i, %if.then.i, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end.cleanup_crit_edge ], [ %retval.0.i93.ph, %xfs_remount_ro.exit.thread ], [ 0, %xfs_remount_ro.exit ], [ 0, %if.end31.cleanup_crit_edge ], [ %call6.i, %if.then8.i ], [ -22, %if.then3.i ], [ -22, %if.then.i ], [ %call12.i, %if.end11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @suffix_kstrtoint(ptr noundef %s, ptr nocapture noundef writeonly %res) unnamed_addr #0 align 64 {
entry:
  %_res = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_res) #15
  %0 = ptrtoint ptr %_res to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %_res, align 4, !annotation !396
  %call = tail call noalias ptr @kstrdup(ptr noundef %s, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strlen(ptr noundef nonnull %call) #22
  %sub = add i32 %call1, -1
  %arrayidx = getelementptr i8, ptr %call, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.170)
  switch i8 %2, label %if.end.if.end33_crit_edge [
    i8 75, label %if.end.if.end33.sink.split_crit_edge
    i8 107, label %if.end.if.end33.sink.split_crit_edge3
    i8 77, label %if.end.if.then19_crit_edge
    i8 109, label %if.end.if.then19_crit_edge4
    i8 71, label %if.end.if.then31_crit_edge
    i8 103, label %if.end.if.then31_crit_edge5
  ]

if.end.if.then31_crit_edge5:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then31

if.end.if.then31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then31

if.end.if.then19_crit_edge4:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then19

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then19

if.end.if.end33.sink.split_crit_edge3:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33.sink.split

if.end.if.end33.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33.sink.split

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then19:                                        ; preds = %if.end.if.then19_crit_edge, %if.end.if.then19_crit_edge4
  br label %if.end33.sink.split

if.then31:                                        ; preds = %if.end.if.then31_crit_edge, %if.end.if.then31_crit_edge5
  br label %if.end33.sink.split

if.end33.sink.split:                              ; preds = %if.then31, %if.then19, %if.end.if.end33.sink.split_crit_edge, %if.end.if.end33.sink.split_crit_edge3
  %shift_left_factor.2.ph = phi i32 [ 20, %if.then19 ], [ 30, %if.then31 ], [ 10, %if.end.if.end33.sink.split_crit_edge ], [ 10, %if.end.if.end33.sink.split_crit_edge3 ]
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %if.end.if.end33_crit_edge
  %shift_left_factor.2 = phi i32 [ 0, %if.end.if.end33_crit_edge ], [ %shift_left_factor.2.ph, %if.end33.sink.split ]
  %call34 = call i32 @kstrtoint(ptr noundef nonnull %call, i32 noundef 10, ptr noundef nonnull %_res) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  %spec.select = select i1 %tobool35.not, i32 0, i32 -22
  call void @kfree(ptr noundef nonnull %call) #15
  %5 = ptrtoint ptr %_res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_res, align 4
  %shl = shl i32 %6, %shift_left_factor.2
  %7 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end33 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_res) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_fs_warn_deprecated(ptr nocapture noundef readonly %fc, ptr nocapture noundef readonly %param, i64 noundef %flag, i1 noundef zeroext %value) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %purpose = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 17
  %0 = ptrtoint ptr %purpose to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %purpose, align 4
  %1 = and i32 %bf.load, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %m_features = getelementptr inbounds %struct.xfs_mount, ptr %7, i32 0, i32 61
  %8 = ptrtoint ptr %m_features to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features, align 8
  %and1 = and i64 %9, %flag
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2 = icmp eq i64 %and1, 0
  %cmp = xor i1 %tobool2, %value
  br i1 %cmp, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %s_fs_info6 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %10 = ptrtoint ptr %s_fs_info6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info6, align 4
  %12 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %param, align 4
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %11, ptr noundef nonnull @.str.16, ptr noundef %13) #15
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_bdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_fill_super(ptr noundef %sb, ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %m_super to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sb, ptr %m_super, align 8
  %call = tail call fastcc i32 @xfs_fs_validate_params(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_free_names_crit_edge

entry.out_free_names_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_names

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @sb_min_blocksize(ptr noundef %sb, i32 noundef 512) #15
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 18
  %3 = ptrtoint ptr %s_xattr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xfs_xattr_handlers, ptr %s_xattr, align 16
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %4 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xfs_export_operations, ptr %s_export_op, align 16
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %5 = ptrtoint ptr %s_qcop to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @xfs_quotactl_operations, ptr %s_qcop, align 4
  %s_quota_types = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 30
  %6 = ptrtoint ptr %s_quota_types to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 7, ptr %s_quota_types, align 8
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %7 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @xfs_super_operations, ptr %s_op, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 2) to i32))
  %8 = load i32, ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %8) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 2) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 2), align 4
  %mul = mul i32 %9, 1000
  tail call void @msleep(i32 noundef %mul) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %10 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_flags, align 4
  %and = lshr i32 %11, 9
  %12 = and i32 %and, 64
  %call8 = tail call fastcc i32 @xfs_open_devices(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.out_free_names_crit_edge

if.end4.out_free_names_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_names

if.end11:                                         ; preds = %if.end4
  %call12 = tail call fastcc i32 @xfs_init_mount_workqueues(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.out_close_devices_crit_edge

if.end11.out_close_devices_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_close_devices

if.end15:                                         ; preds = %if.end11
  %m_icount.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 77
  %call.i = tail call i32 @__percpu_counter_init(ptr noundef %m_icount.i, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @xfs_init_percpu_counters.__key) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.out_destroy_workqueues_crit_edge

if.end15.out_destroy_workqueues_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_workqueues

if.end.i:                                         ; preds = %if.end15
  %m_ifree.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 78
  %call2.i = tail call i32 @__percpu_counter_init(ptr noundef %m_ifree.i, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @xfs_init_percpu_counters.__key.81) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.free_icount.i_crit_edge

if.end.i.free_icount.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_icount.i

if.end5.i:                                        ; preds = %if.end.i
  %m_fdblocks.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 79
  %call7.i = tail call i32 @__percpu_counter_init(ptr noundef %m_fdblocks.i, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @xfs_init_percpu_counters.__key.82) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end5.i.free_ifree.i_crit_edge

if.end5.i.free_ifree.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_ifree.i

if.end10.i:                                       ; preds = %if.end5.i
  %m_delalloc_blks.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 80
  %call12.i = tail call i32 @__percpu_counter_init(ptr noundef %m_delalloc_blks.i, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @xfs_init_percpu_counters.__key.83) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end19, label %free_fdblocks.i

free_fdblocks.i:                                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @percpu_counter_destroy(ptr noundef %m_fdblocks.i) #15
  br label %free_ifree.i

free_ifree.i:                                     ; preds = %free_fdblocks.i, %if.end5.i.free_ifree.i_crit_edge
  tail call void @percpu_counter_destroy(ptr noundef %m_ifree.i) #15
  br label %free_icount.i

free_icount.i:                                    ; preds = %free_ifree.i, %if.end.i.free_icount.i_crit_edge
  tail call void @percpu_counter_destroy(ptr noundef %m_icount.i) #15
  br label %out_destroy_workqueues

if.end19:                                         ; preds = %if.end10.i
  %call20 = tail call fastcc i32 @xfs_inodegc_init_percpu(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out_destroy_counters_crit_edge

if.end19.out_destroy_counters_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_counters

if.end23:                                         ; preds = %if.end19
  tail call fastcc void @xfs_mount_list_add(ptr noundef %1)
  %call24 = tail call noalias ptr @__alloc_percpu(i32 noundef 792, i32 noundef 8) #21
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 92
  %13 = ptrtoint ptr %m_stats to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call24, ptr %m_stats, align 4
  %tobool27.not = icmp eq ptr %call24, null
  br i1 %tobool27.not, label %if.end23.out_destroy_inodegc_crit_edge, label %if.end29

if.end23.out_destroy_inodegc_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_inodegc

if.end29:                                         ; preds = %if.end23
  %call30 = tail call i32 @xfs_readsb(ptr noundef %1, i32 noundef %12) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.out_free_stats_crit_edge

if.end29.out_free_stats_crit_edge:                ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_stats

if.end33:                                         ; preds = %if.end29
  %call34 = tail call fastcc i32 @xfs_finish_flags(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.out_free_sb_crit_edge

if.end33.out_free_sb_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_sb

if.end37:                                         ; preds = %if.end33
  %call38 = tail call fastcc i32 @xfs_setup_devices(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.out_free_sb_crit_edge

if.end37.out_free_sb_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_sb

if.end41:                                         ; preds = %if.end37
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %14 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %land.end, label %if.end41.if.end57_crit_edge

if.end41.if.end57_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

land.end:                                         ; preds = %if.end41
  %.b269 = load i1, ptr @xfs_fs_fill_super.__already_done, align 1
  br i1 %.b269, label %land.end.if.end57_crit_edge, label %if.then49, !prof !392

land.end.if.end57_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then49:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @xfs_fs_fill_super.__already_done, align 1
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.18) #15
  br label %if.end57

if.end57:                                         ; preds = %if.then49, %land.end.if.end57_crit_edge, %if.end41.if.end57_crit_edge
  %16 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %m_features.i, align 8
  %and.i271 = and i64 %17, 33554432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i271)
  %tobool.i272.not = icmp eq i64 %and.i271, 0
  br i1 %tobool.i272.not, label %if.end60, label %if.then59

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.19) #15
  br label %out_free_sb

if.end60:                                         ; preds = %if.end57
  %sb_inprogress = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 26
  %18 = ptrtoint ptr %sb_inprogress to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sb_inprogress, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool61.not = icmp eq i8 %19, 0
  br i1 %tobool61.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.20) #15
  br label %out_free_sb

if.end63:                                         ; preds = %if.end60
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sb_blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %21)
  %cmp = icmp ugt i32 %21, 4096
  br i1 %cmp, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %21, i32 noundef 4096) #15
  br label %out_free_sb

if.end68:                                         ; preds = %if.end63
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sb_dblocks, align 8
  %call71 = tail call i32 @xfs_sb_validate_fsb_count(ptr noundef %1, i64 noundef %23) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %lor.lhs.false, label %if.end68.if.then77_crit_edge

if.end68.if.then77_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then77

lor.lhs.false:                                    ; preds = %if.end68
  %sb_rblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %sb_rblocks, align 16
  %call75 = tail call i32 @xfs_sb_validate_fsb_count(ptr noundef %1, i64 noundef %25) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %lor.lhs.false.if.then77_crit_edge

lor.lhs.false.if.then77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then77

if.then77:                                        ; preds = %lor.lhs.false.if.then77_crit_edge, %if.end68.if.then77_crit_edge
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.22) #15
  br label %out_free_sb

if.end78:                                         ; preds = %lor.lhs.false
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %26 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %27 to i64
  %shr = lshr i64 17592186040320, %sh_prom
  %call80 = tail call zeroext i1 @xfs_verify_fileoff(ptr noundef %1, i64 noundef %shr) #15
  br i1 %call80, label %if.end87, label %if.then81

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sb_blocklog, align 8
  %sh_prom85 = zext i8 %29 to i64
  %shr86 = lshr i64 17592186040320, %sh_prom85
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.23, i64 noundef %shr86, i64 noundef 18014398511579134) #15
  br label %out_free_sb

if.end87:                                         ; preds = %if.end78
  %call88 = tail call i32 @xfs_filestream_mount(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end87.out_free_sb_crit_edge

if.end87.out_free_sb_crit_edge:                   ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_sb

if.end91:                                         ; preds = %if.end87
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %30 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1481003842, ptr %s_magic, align 4
  %31 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sb_blocksize, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %33 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %s_blocksize, align 16
  %34 = tail call i32 @llvm.cttz.i32(i32 %32, i1 true), !range !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %iszero = icmp eq i32 %32, 0
  %35 = trunc i32 %34 to i8
  %conv95 = select i1 %iszero, i8 -1, i8 %35
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %36 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv95, ptr %s_blocksize_bits, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %37 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 17592186040320, ptr %s_maxbytes, align 8
  %s_max_links = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 41
  %38 = ptrtoint ptr %s_max_links to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2147483647, ptr %s_max_links, align 128
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %39 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %s_time_gran, align 4
  %40 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %m_features.i, align 8
  %and.i274 = and i64 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i274)
  %tobool.i275.not = icmp eq i64 %and.i274, 0
  %spec.select = select i1 %tobool.i275.not, i64 2147483647, i64 16299260424
  %42 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 -2147483648, ptr %42, align 8
  %44 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 36
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %spec.select, ptr %44, align 64
  tail call fastcc void @trace_xfs_inode_timestamp_range(ptr noundef %1, i64 noundef -2147483648, i64 noundef %spec.select)
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 11
  %46 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_iflags, align 8
  %or105 = or i32 %47, 1
  store i32 %or105, ptr %s_iflags, align 8
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %48 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_flags, align 4
  %or106 = or i32 %49, 65536
  store i32 %or106, ptr %s_flags, align 4
  %50 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %m_features.i, align 8
  %and.i277 = and i64 %51, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i277)
  %tobool.i278.not = icmp eq i64 %and.i277, 0
  br i1 %tobool.i278.not, label %if.end91.if.end111_crit_edge, label %if.then108

if.end91.if.end111_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end111

if.then108:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  %or110 = or i32 %49, 8454144
  %52 = ptrtoint ptr %s_flags to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or110, ptr %s_flags, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %if.end91.if.end111_crit_edge
  %53 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %m_features.i, align 8
  %and.i280 = and i64 %54, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i280)
  %tobool.i281.not = icmp eq i64 %and.i280, 0
  br i1 %tobool.i281.not, label %if.end111.if.end118_crit_edge, label %if.then113

if.end111.if.end118_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end118

if.then113:                                       ; preds = %if.end111
  %call114 = tail call fastcc i32 @xfs_setup_dax_always(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.then113.if.end118_crit_edge, label %if.then113.out_filestream_unmount_crit_edge

if.then113.out_filestream_unmount_crit_edge:      ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_filestream_unmount

if.then113.if.end118_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end118

if.end118:                                        ; preds = %if.then113.if.end118_crit_edge, %if.end111.if.end118_crit_edge
  %55 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %m_features.i, align 8
  %and.i283 = and i64 %56, 18014398509481984
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i283)
  %tobool.i284.not = icmp eq i64 %and.i283, 0
  br i1 %tobool.i284.not, label %if.end118.if.end127_crit_edge, label %if.then120

if.end118.if.end127_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end127

if.then120:                                       ; preds = %if.end118
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %57 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_bdev, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %58, i32 0, i32 18
  %59 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bd_queue.i, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %60, i32 0, i32 11
  %61 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %queue_flags, align 4
  %63 = and i32 %62, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool123.not = icmp eq i32 %63, 0
  br i1 %tobool123.not, label %if.then124, label %if.then120.if.end127_crit_edge

if.then120.if.end127_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end127

if.then124:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.24) #15
  %64 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %m_features.i, align 8
  %and125 = and i64 %65, -18014398509481985
  store i64 %and125, ptr %m_features.i, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %if.then120.if.end127_crit_edge, %if.end118.if.end127_crit_edge
  %66 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %m_features.i, align 8
  %and.i286 = and i64 %67, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i286)
  %tobool.i287.not = icmp eq i64 %and.i286, 0
  br i1 %tobool.i287.not, label %if.end127.if.end138_crit_edge, label %if.then129

if.end127.if.end138_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end138

if.then129:                                       ; preds = %if.end127
  %68 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %sb_rblocks, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %69)
  %tobool132.not = icmp eq i64 %69, 0
  br i1 %tobool132.not, label %if.end134, label %if.then129.out_filestream_unmount.sink.split_crit_edge

if.then129.out_filestream_unmount.sink.split_crit_edge: ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_filestream_unmount.sink.split

if.end134:                                        ; preds = %if.then129
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 4) to i32))
  %70 = load i8, ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 4), align 1, !range !395
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool135.not = icmp eq i8 %70, 0
  br i1 %tobool135.not, label %if.end134.if.end138_crit_edge, label %if.then136

if.end134.if.end138_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end138

if.then136:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @xfs_info(ptr noundef %1, ptr noundef nonnull @.str.26) #15
  %m_always_cow = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 67
  %71 = ptrtoint ptr %m_always_cow to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %m_always_cow, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %if.end134.if.end138_crit_edge, %if.end127.if.end138_crit_edge
  %72 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %m_features.i, align 8
  %and.i289 = and i64 %73, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i289)
  %tobool.i290.not = icmp eq i64 %and.i289, 0
  br i1 %tobool.i290.not, label %if.end138.if.end145_crit_edge, label %land.lhs.true

if.end138.if.end145_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

land.lhs.true:                                    ; preds = %if.end138
  %74 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %sb_rblocks, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %75)
  %tobool143.not = icmp eq i64 %75, 0
  br i1 %tobool143.not, label %land.lhs.true.if.end145_crit_edge, label %land.lhs.true.out_filestream_unmount.sink.split_crit_edge

land.lhs.true.out_filestream_unmount.sink.split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_filestream_unmount.sink.split

land.lhs.true.if.end145_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

if.end145:                                        ; preds = %land.lhs.true.if.end145_crit_edge, %if.end138.if.end145_crit_edge
  %call146 = tail call i32 @xfs_mountfs(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end149, label %if.end145.out_filestream_unmount_crit_edge

if.end145.out_filestream_unmount_crit_edge:       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_filestream_unmount

if.end149:                                        ; preds = %if.end145
  %m_rootip = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 11
  %76 = ptrtoint ptr %m_rootip to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %m_rootip, align 16
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %77, i32 0, i32 27
  %call151 = tail call ptr @igrab(ptr noundef %i_vnode.i) #15
  %tobool152.not = icmp eq ptr %call151, null
  br i1 %tobool152.not, label %if.end149.out_unmount_crit_edge, label %if.end154

if.end149.out_unmount_crit_edge:                  ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unmount

if.end154:                                        ; preds = %if.end149
  %call155 = tail call ptr @d_make_root(ptr noundef nonnull %call151) #15
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %78 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call155, ptr %s_root, align 64
  %tobool157.not = icmp eq ptr %call155, null
  br i1 %tobool157.not, label %if.end154.out_unmount_crit_edge, label %if.end154.cleanup_crit_edge

if.end154.cleanup_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end154.out_unmount_crit_edge:                  ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unmount

out_filestream_unmount.sink.split:                ; preds = %land.lhs.true.out_filestream_unmount.sink.split_crit_edge, %if.then129.out_filestream_unmount.sink.split_crit_edge
  %.str.27.sink = phi ptr [ @.str.25, %if.then129.out_filestream_unmount.sink.split_crit_edge ], [ @.str.27, %land.lhs.true.out_filestream_unmount.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull %.str.27.sink) #15
  br label %out_filestream_unmount

out_filestream_unmount:                           ; preds = %out_filestream_unmount.sink.split, %if.end145.out_filestream_unmount_crit_edge, %if.then113.out_filestream_unmount_crit_edge
  %error.0 = phi i32 [ %call114, %if.then113.out_filestream_unmount_crit_edge ], [ %call146, %if.end145.out_filestream_unmount_crit_edge ], [ -22, %out_filestream_unmount.sink.split ]
  tail call void @xfs_filestream_unmount(ptr noundef %1) #15
  br label %out_free_sb

out_free_sb:                                      ; preds = %out_unmount, %out_filestream_unmount, %if.end87.out_free_sb_crit_edge, %if.then81, %if.then77, %if.then65, %if.then62, %if.then59, %if.end37.out_free_sb_crit_edge, %if.end33.out_free_sb_crit_edge
  %error.1 = phi i32 [ %call34, %if.end33.out_free_sb_crit_edge ], [ %call38, %if.end37.out_free_sb_crit_edge ], [ -117, %if.then59 ], [ -117, %if.then62 ], [ -38, %if.then65 ], [ -27, %if.then77 ], [ %call88, %if.end87.out_free_sb_crit_edge ], [ %error.0, %out_filestream_unmount ], [ %error.8, %out_unmount ], [ -22, %if.then81 ]
  tail call void @xfs_freesb(ptr noundef %1) #15
  br label %out_free_stats

out_free_stats:                                   ; preds = %out_free_sb, %if.end29.out_free_stats_crit_edge
  %error.2 = phi i32 [ %call30, %if.end29.out_free_stats_crit_edge ], [ %error.1, %out_free_sb ]
  %79 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %m_stats, align 4
  tail call void @free_percpu(ptr noundef %80) #15
  br label %out_destroy_inodegc

out_destroy_inodegc:                              ; preds = %out_free_stats, %if.end23.out_destroy_inodegc_crit_edge
  %error.3 = phi i32 [ %error.2, %out_free_stats ], [ -12, %if.end23.out_destroy_inodegc_crit_edge ]
  tail call fastcc void @xfs_mount_list_del(ptr noundef %1)
  %m_inodegc.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 17
  %81 = ptrtoint ptr %m_inodegc.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %m_inodegc.i, align 4
  %tobool.not.i291 = icmp eq ptr %82, null
  br i1 %tobool.not.i291, label %out_destroy_inodegc.out_destroy_counters_crit_edge, label %if.end.i292

out_destroy_inodegc.out_destroy_counters_crit_edge: ; preds = %out_destroy_inodegc
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_counters

if.end.i292:                                      ; preds = %out_destroy_inodegc
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @free_percpu(ptr noundef nonnull %82) #15
  br label %out_destroy_counters

out_destroy_counters:                             ; preds = %if.end.i292, %out_destroy_inodegc.out_destroy_counters_crit_edge, %if.end19.out_destroy_counters_crit_edge
  %error.4 = phi i32 [ %call20, %if.end19.out_destroy_counters_crit_edge ], [ %error.3, %out_destroy_inodegc.out_destroy_counters_crit_edge ], [ %error.3, %if.end.i292 ]
  tail call fastcc void @xfs_destroy_percpu_counters(ptr noundef %1)
  br label %out_destroy_workqueues

out_destroy_workqueues:                           ; preds = %out_destroy_counters, %free_icount.i, %if.end15.out_destroy_workqueues_crit_edge
  %error.5 = phi i32 [ %error.4, %out_destroy_counters ], [ -12, %free_icount.i ], [ -12, %if.end15.out_destroy_workqueues_crit_edge ]
  tail call fastcc void @xfs_destroy_mount_workqueues(ptr noundef %1)
  br label %out_close_devices

out_close_devices:                                ; preds = %out_destroy_workqueues, %if.end11.out_close_devices_crit_edge
  %error.6 = phi i32 [ %call12, %if.end11.out_close_devices_crit_edge ], [ %error.5, %out_destroy_workqueues ]
  tail call fastcc void @xfs_close_devices(ptr noundef %1)
  br label %out_free_names

out_free_names:                                   ; preds = %out_close_devices, %if.end4.out_free_names_crit_edge, %entry.out_free_names_crit_edge
  %error.7 = phi i32 [ %call, %entry.out_free_names_crit_edge ], [ %call8, %if.end4.out_free_names_crit_edge ], [ %error.6, %out_close_devices ]
  %83 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %s_fs_info, align 16
  %m_rtname.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 4
  %84 = ptrtoint ptr %m_rtname.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %m_rtname.i, align 4
  tail call void @kfree(ptr noundef %85) #15
  %m_logname.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 5
  %86 = ptrtoint ptr %m_logname.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %m_logname.i, align 8
  tail call void @kfree(ptr noundef %87) #15
  tail call void @kvfree(ptr noundef %1) #15
  br label %cleanup

out_unmount:                                      ; preds = %if.end154.out_unmount_crit_edge, %if.end149.out_unmount_crit_edge
  %error.8 = phi i32 [ -2, %if.end149.out_unmount_crit_edge ], [ -12, %if.end154.out_unmount_crit_edge ]
  tail call void @xfs_filestream_unmount(ptr noundef %1) #15
  tail call void @xfs_unmountfs(ptr noundef %1) #15
  br label %out_free_sb

cleanup:                                          ; preds = %out_free_names, %if.end154.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.7, %out_free_names ], [ 0, %if.end154.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_fs_validate_params(ptr noundef %mp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %2 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %m_opstate.i, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i115.not = icmp eq i32 %4, 0
  br i1 %tobool.i115.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.28) #15
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = and i64 %1, 281474976711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976711680, i64 %5)
  %6 = icmp eq i64 %5, 281474976711680
  br i1 %6, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.29) #15
  br label %return

if.end6:                                          ; preds = %if.end
  %and.i123 = and i64 %1, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i123)
  %tobool.i124.not = icmp eq i64 %and.i123, 0
  br i1 %tobool.i124.not, label %if.end6.if.end11_crit_edge, label %land.lhs.true8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

land.lhs.true8:                                   ; preds = %if.end6
  %m_dalign = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 50
  %7 = ptrtoint ptr %m_dalign to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_dalign, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true8.if.then10_crit_edge

land.lhs.true8.if.then10_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then10

lor.lhs.false:                                    ; preds = %land.lhs.true8
  %m_swidth = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 51
  %9 = ptrtoint ptr %m_swidth to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %m_swidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.end11_crit_edge, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then10

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %land.lhs.true8.if.then10_crit_edge
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.30) #15
  br label %return

if.end11:                                         ; preds = %lor.lhs.false.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %m_dalign12 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 50
  %11 = ptrtoint ptr %m_dalign12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m_dalign12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  %m_swidth21 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 51
  %13 = ptrtoint ptr %m_swidth21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m_swidth21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool22.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %land.lhs.true20, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.end11
  br i1 %tobool22.not, label %land.lhs.true14.if.then23_crit_edge, label %land.lhs.true27

land.lhs.true14.if.then23_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23

land.lhs.true20:                                  ; preds = %if.end11
  br i1 %tobool22.not, label %land.lhs.true20.if.end33_crit_edge, label %land.lhs.true20.if.then23_crit_edge

land.lhs.true20.if.then23_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23

land.lhs.true20.if.end33_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then23:                                        ; preds = %land.lhs.true20.if.then23_crit_edge, %land.lhs.true14.if.then23_crit_edge
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.31) #15
  br label %return

land.lhs.true27:                                  ; preds = %land.lhs.true14
  %15 = ptrtoint ptr %m_swidth21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_swidth21, align 4
  %rem = srem i32 %16, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %land.lhs.true27.if.end33_crit_edge, label %if.then30

land.lhs.true27.if.end33_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then30:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.32, i32 noundef %16, i32 noundef %12) #15
  br label %return

if.end33:                                         ; preds = %land.lhs.true27.if.end33_crit_edge, %land.lhs.true20.if.end33_crit_edge
  %m_logbufs = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 55
  %17 = ptrtoint ptr %m_logbufs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m_logbufs, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %18, label %land.lhs.true38 [
    i32 -1, label %if.end33.if.end46_crit_edge
    i32 0, label %if.end33.if.end46_crit_edge130
  ]

if.end33.if.end46_crit_edge130:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.end33.if.end46_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

land.lhs.true38:                                  ; preds = %if.end33
  %20 = add i32 %18, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %20)
  %21 = icmp ult i32 %20, -7
  br i1 %21, label %if.then44, label %land.lhs.true38.if.end46_crit_edge

land.lhs.true38.if.end46_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.then44:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.33, i32 noundef %18, i32 noundef 2, i32 noundef 8) #15
  br label %return

if.end46:                                         ; preds = %land.lhs.true38.if.end46_crit_edge, %if.end33.if.end46_crit_edge, %if.end33.if.end46_crit_edge130
  %m_logbsize = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 56
  %22 = ptrtoint ptr %m_logbsize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m_logbsize, align 128
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %23, label %land.lhs.true51 [
    i32 -1, label %if.end46.if.end62_crit_edge
    i32 0, label %if.end46.if.end62_crit_edge131
  ]

if.end46.if.end62_crit_edge131:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

if.end46.if.end62_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

land.lhs.true51:                                  ; preds = %if.end46
  %25 = add i32 %23, -16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 245761, i32 %25)
  %26 = icmp ult i32 %25, 245761
  %27 = tail call i32 @llvm.ctpop.i32(i32 %23) #15, !range !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp1.i = icmp ult i32 %27, 2
  %or.cond129 = and i1 %26, %cmp1.i
  br i1 %or.cond129, label %land.lhs.true51.if.end62_crit_edge, label %if.then60

land.lhs.true51.if.end62_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

if.then60:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.34, i32 noundef %23) #15
  br label %return

if.end62:                                         ; preds = %land.lhs.true51.if.end62_crit_edge, %if.end46.if.end62_crit_edge, %if.end46.if.end62_crit_edge131
  %and.i126 = and i64 %1, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i126)
  %tobool.i127.not = icmp eq i64 %and.i126, 0
  br i1 %tobool.i127.not, label %if.end62.return_crit_edge, label %land.lhs.true64

if.end62.return_crit_edge:                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true64:                                  ; preds = %if.end62
  %m_allocsize_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 53
  %28 = ptrtoint ptr %m_allocsize_log to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %m_allocsize_log, align 4
  %30 = add i32 %29, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %30)
  %31 = icmp ult i32 %30, -19
  br i1 %31, label %if.then69, label %land.lhs.true64.return_crit_edge

land.lhs.true64.return_crit_edge:                 ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then69:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.35, i32 noundef %29, i32 noundef 12, i32 noundef 30) #15
  br label %return

return:                                           ; preds = %if.then69, %land.lhs.true64.return_crit_edge, %if.end62.return_crit_edge, %if.then60, %if.then44, %if.then30, %if.then23, %if.then10, %if.then5, %if.then
  %retval.0 = phi i32 [ -22, %if.then5 ], [ -22, %if.then10 ], [ -22, %if.then30 ], [ -22, %if.then44 ], [ -22, %if.then60 ], [ -22, %if.then69 ], [ -22, %if.then23 ], [ -22, %if.then ], [ 0, %land.lhs.true64.return_crit_edge ], [ 0, %if.end62.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_min_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_open_devices(ptr noundef %mp) unnamed_addr #5 align 64 {
entry:
  %logdev = alloca ptr, align 4
  %rtdev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %0 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_super, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %logdev) #15
  %4 = ptrtoint ptr %logdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %logdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rtdev) #15
  %5 = ptrtoint ptr %rtdev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rtdev, align 4
  %m_logname = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 5
  %6 = ptrtoint ptr %m_logname to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_logname, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @xfs_blkdev_get(ptr noundef %mp, ptr noundef nonnull %7, ptr noundef nonnull %logdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %m_rtname = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 4
  %8 = ptrtoint ptr %m_rtname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_rtname, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end4.if.end15_crit_edge, label %if.then6

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then6:                                         ; preds = %if.end4
  %call8 = call fastcc i32 @xfs_blkdev_get(ptr noundef %mp, ptr noundef nonnull %9, ptr noundef nonnull %rtdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then6.out_close_logdev_crit_edge

if.then6.out_close_logdev_crit_edge:              ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_close_logdev

if.end11:                                         ; preds = %if.then6
  %10 = ptrtoint ptr %rtdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtdev, align 4
  %cmp = icmp eq ptr %11, %3
  br i1 %cmp, label %if.end11.if.then13_crit_edge, label %lor.lhs.false

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end11
  %12 = ptrtoint ptr %logdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %logdev, align 4
  %cmp12 = icmp eq ptr %11, %13
  br i1 %cmp12, label %lor.lhs.false.if.then13_crit_edge, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end11.if.then13_crit_edge
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.73) #15
  br label %out_close_rtdev

if.end15:                                         ; preds = %lor.lhs.false.if.end15_crit_edge, %if.end4.if.end15_crit_edge
  %call16 = tail call ptr @xfs_alloc_buftarg(ptr noundef %mp, ptr noundef %3) #15
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %14 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call16, ptr %m_ddev_targp, align 8
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %if.end15.out_close_rtdev_crit_edge, label %if.end20

if.end15.out_close_rtdev_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_close_rtdev

if.end20:                                         ; preds = %if.end15
  %15 = ptrtoint ptr %rtdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rtdev, align 4
  %tobool21.not = icmp eq ptr %16, null
  br i1 %tobool21.not, label %if.end20.if.end28_crit_edge, label %if.then22

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then22:                                        ; preds = %if.end20
  %call23 = tail call ptr @xfs_alloc_buftarg(ptr noundef %mp, ptr noundef nonnull %16) #15
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 15
  %17 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call23, ptr %m_rtdev_targp, align 64
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %if.then22.out_free_ddev_targ_crit_edge, label %if.then22.if.end28_crit_edge

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then22.out_free_ddev_targ_crit_edge:           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ddev_targ

if.end28:                                         ; preds = %if.then22.if.end28_crit_edge, %if.end20.if.end28_crit_edge
  %18 = ptrtoint ptr %logdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %logdev, align 4
  %tobool29.not = icmp eq ptr %19, null
  %cmp30.not = icmp eq ptr %19, %3
  %or.cond = select i1 %tobool29.not, i1 true, i1 %cmp30.not
  br i1 %or.cond, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end28
  %call32 = tail call ptr @xfs_alloc_buftarg(ptr noundef %mp, ptr noundef nonnull %19) #15
  %m_logdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 14
  %20 = ptrtoint ptr %m_logdev_targp to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call32, ptr %m_logdev_targp, align 4
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %out_free_rtdev_targ, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m_ddev_targp, align 8
  %m_logdev_targp38 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 14
  %23 = ptrtoint ptr %m_logdev_targp38 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %m_logdev_targp38, align 4
  br label %cleanup

out_free_rtdev_targ:                              ; preds = %if.then31
  %m_rtdev_targp40 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 15
  %24 = ptrtoint ptr %m_rtdev_targp40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m_rtdev_targp40, align 64
  %tobool41.not = icmp eq ptr %25, null
  br i1 %tobool41.not, label %out_free_rtdev_targ.out_free_ddev_targ_crit_edge, label %if.then42

out_free_rtdev_targ.out_free_ddev_targ_crit_edge: ; preds = %out_free_rtdev_targ
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ddev_targ

if.then42:                                        ; preds = %out_free_rtdev_targ
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @xfs_free_buftarg(ptr noundef nonnull %25) #15
  br label %out_free_ddev_targ

out_free_ddev_targ:                               ; preds = %if.then42, %out_free_rtdev_targ.out_free_ddev_targ_crit_edge, %if.then22.out_free_ddev_targ_crit_edge
  %26 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m_ddev_targp, align 8
  tail call void @xfs_free_buftarg(ptr noundef %27) #15
  br label %out_close_rtdev

out_close_rtdev:                                  ; preds = %out_free_ddev_targ, %if.end15.out_close_rtdev_crit_edge, %if.then13
  %error.0 = phi i32 [ -22, %if.then13 ], [ -12, %out_free_ddev_targ ], [ -12, %if.end15.out_close_rtdev_crit_edge ]
  %28 = ptrtoint ptr %rtdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rtdev, align 4
  tail call fastcc void @xfs_blkdev_put(ptr noundef %29)
  br label %out_close_logdev

out_close_logdev:                                 ; preds = %out_close_rtdev, %if.then6.out_close_logdev_crit_edge
  %error.1 = phi i32 [ %call8, %if.then6.out_close_logdev_crit_edge ], [ %error.0, %out_close_rtdev ]
  %30 = ptrtoint ptr %logdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %logdev, align 4
  %tobool46.not = icmp eq ptr %31, null
  %cmp48.not = icmp eq ptr %31, %3
  %or.cond87 = select i1 %tobool46.not, i1 true, i1 %cmp48.not
  br i1 %or.cond87, label %out_close_logdev.cleanup_crit_edge, label %if.then49

out_close_logdev.cleanup_crit_edge:               ; preds = %out_close_logdev
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then49:                                        ; preds = %out_close_logdev
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @xfs_blkdev_put(ptr noundef nonnull %31)
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %out_close_logdev.cleanup_crit_edge, %if.else, %if.then31.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.then31.cleanup_crit_edge ], [ 0, %if.else ], [ %error.1, %if.then49 ], [ %error.1, %out_close_logdev.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rtdev) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %logdev) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_init_mount_workqueues(ptr nocapture noundef %mp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %0 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_super, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 39
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.75, i32 noundef 76, i32 noundef 1, ptr noundef %s_id) #15
  %m_buf_workqueue = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 20
  %2 = ptrtoint ptr %m_buf_workqueue to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %m_buf_workqueue, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_super, align 8
  %s_id3 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 39
  %call5 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.76, i32 noundef 76, i32 noundef 0, ptr noundef %s_id3) #15
  %m_unwritten_workqueue = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 21
  %5 = ptrtoint ptr %m_unwritten_workqueue to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %m_unwritten_workqueue, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end.out_destroy_buf_crit_edge, label %if.end9

if.end.out_destroy_buf_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_buf

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_super, align 8
  %s_id11 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 39
  %call13 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.77, i32 noundef 76, i32 noundef 0, ptr noundef %s_id11) #15
  %m_reclaim_workqueue = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 22
  %8 = ptrtoint ptr %m_reclaim_workqueue to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %m_reclaim_workqueue, align 32
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.end9.out_destroy_unwritten_crit_edge, label %if.end17

if.end9.out_destroy_unwritten_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_unwritten

if.end17:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_super, align 8
  %s_id19 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 39
  %call21 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.78, i32 noundef 78, i32 noundef 0, ptr noundef %s_id19) #15
  %m_blockgc_wq = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 24
  %11 = ptrtoint ptr %m_blockgc_wq to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call21, ptr %m_blockgc_wq, align 8
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.end17.out_destroy_reclaim_crit_edge, label %if.end25

if.end17.out_destroy_reclaim_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_reclaim

if.end25:                                         ; preds = %if.end17
  %12 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_super, align 8
  %s_id27 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 39
  %call29 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.79, i32 noundef 76, i32 noundef 1, ptr noundef %s_id27) #15
  %m_inodegc_wq = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 25
  %14 = ptrtoint ptr %m_inodegc_wq to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call29, ptr %m_inodegc_wq, align 4
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %if.end25.out_destroy_blockgc_crit_edge, label %if.end33

if.end25.out_destroy_blockgc_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_blockgc

if.end33:                                         ; preds = %if.end25
  %15 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_super, align 8
  %s_id35 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 39
  %call37 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.80, i32 noundef 68, i32 noundef 0, ptr noundef %s_id35) #15
  %m_sync_workqueue = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 23
  %17 = ptrtoint ptr %m_sync_workqueue to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call37, ptr %m_sync_workqueue, align 4
  %tobool39.not = icmp eq ptr %call37, null
  br i1 %tobool39.not, label %out_destroy_inodegc, label %if.end33.return_crit_edge

if.end33.return_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

out_destroy_inodegc:                              ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %m_inodegc_wq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m_inodegc_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %19) #15
  br label %out_destroy_blockgc

out_destroy_blockgc:                              ; preds = %out_destroy_inodegc, %if.end25.out_destroy_blockgc_crit_edge
  %20 = ptrtoint ptr %m_blockgc_wq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m_blockgc_wq, align 8
  tail call void @destroy_workqueue(ptr noundef %21) #15
  br label %out_destroy_reclaim

out_destroy_reclaim:                              ; preds = %out_destroy_blockgc, %if.end17.out_destroy_reclaim_crit_edge
  %22 = ptrtoint ptr %m_reclaim_workqueue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m_reclaim_workqueue, align 32
  tail call void @destroy_workqueue(ptr noundef %23) #15
  br label %out_destroy_unwritten

out_destroy_unwritten:                            ; preds = %out_destroy_reclaim, %if.end9.out_destroy_unwritten_crit_edge
  %24 = ptrtoint ptr %m_unwritten_workqueue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m_unwritten_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %25) #15
  br label %out_destroy_buf

out_destroy_buf:                                  ; preds = %out_destroy_unwritten, %if.end.out_destroy_buf_crit_edge
  %26 = ptrtoint ptr %m_buf_workqueue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m_buf_workqueue, align 8
  tail call void @destroy_workqueue(ptr noundef %27) #15
  br label %return

return:                                           ; preds = %out_destroy_buf, %if.end33.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33.return_crit_edge ], [ -12, %entry.return_crit_edge ], [ -12, %out_destroy_buf ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_inodegc_init_percpu(ptr nocapture noundef %mp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 56, i32 noundef 4) #21
  %m_inodegc = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 17
  %0 = ptrtoint ptr %m_inodegc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %m_inodegc, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %call224 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call224, i32 %1)
  %cmp25 = icmp ult i32 %call224, %1
  br i1 %cmp25, label %for.cond.preheader.do.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %call226 = phi i32 [ %call2, %do.body.do.body_crit_edge ], [ %call224, %for.cond.preheader.do.body_crit_edge ]
  %2 = ptrtoint ptr %m_inodegc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_inodegc, align 4
  %4 = ptrtoint ptr %3 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call226
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, %4
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %7, align 4
  %items = getelementptr inbounds %struct.xfs_inodegc, ptr %7, i32 0, i32 2
  %9 = ptrtoint ptr %items to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %items, align 4
  %work = getelementptr inbounds %struct.xfs_inodegc, ptr %7, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #15
  %10 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.xfs_inodegc, ptr %7, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.84, ptr noundef nonnull @xfs_inodegc_init_percpu.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry9 = getelementptr inbounds %struct.xfs_inodegc, ptr %7, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.xfs_inodegc, ptr %7, i32 0, i32 1, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.xfs_inodegc, ptr %7, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @xfs_inodegc_worker, ptr %func, align 4
  %call2 = tail call i32 @cpumask_next(i32 noundef %call226, ptr noundef nonnull @__cpu_possible_mask) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %14
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_mount_list_add(ptr noundef %mp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_lock(ptr noundef nonnull @xfs_mount_list_lock) #15
  %m_mount_list = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 16
  %0 = load ptr, ptr @xfs_mount_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %m_mount_list, ptr noundef nonnull @xfs_mount_list, ptr noundef %0) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %m_mount_list, ptr %prev1.i.i, align 4
  %2 = ptrtoint ptr %m_mount_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %m_mount_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 16, i32 1
  %3 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xfs_mount_list, ptr %prev3.i.i, align 4
  store volatile ptr %m_mount_list, ptr @xfs_mount_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @xfs_mount_list_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_readsb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_finish_flags(ptr noundef %mp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %m_logbsize16 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 56
  %2 = ptrtoint ptr %m_logbsize16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_logbsize16, align 128
  br i1 %tobool.i.not, label %if.else15, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  %sb_logsunit = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 43
  %4 = ptrtoint ptr %sb_logsunit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_logsunit, align 4
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true8

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %5)
  %cmp1 = icmp ugt i32 %5, 32768
  br i1 %cmp1, label %if.then2, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %m_logbsize16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %m_logbsize16, align 128
  br label %if.end20

land.lhs.true8:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp12 = icmp ult i32 %3, %5
  br i1 %cmp12, label %land.lhs.true8.return.sink.split_crit_edge, label %land.lhs.true8.if.end20_crit_edge

land.lhs.true8.if.end20_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

land.lhs.true8.return.sink.split_crit_edge:       ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

if.else15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %3)
  %cmp17 = icmp sgt i32 %3, 32768
  br i1 %cmp17, label %if.else15.return.sink.split_crit_edge, label %if.else15.if.end20_crit_edge

if.else15.if.end20_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.else15.return.sink.split_crit_edge:            ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

if.end20:                                         ; preds = %if.else15.if.end20_crit_edge, %land.lhs.true8.if.end20_crit_edge, %if.then2, %land.lhs.true.if.end20_crit_edge
  %7 = and i64 %1, 281474976718848
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976718848, i64 %7)
  %8 = icmp eq i64 %7, 281474976718848
  br i1 %8, label %if.end20.return.sink.split_crit_edge, label %if.end25

if.end20.return.sink.split_crit_edge:             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

if.end25:                                         ; preds = %if.end20
  %sb_flags = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 35
  %9 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sb_flags, align 2
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end25.if.end30_crit_edge, label %land.lhs.true27

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

land.lhs.true27:                                  ; preds = %if.end25
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %12 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %m_opstate.i, align 4
  %14 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i68.not = icmp eq i32 %14, 0
  br i1 %tobool.i68.not, label %land.lhs.true27.return.sink.split_crit_edge, label %land.lhs.true27.if.end30_crit_edge

land.lhs.true27.if.end30_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

land.lhs.true27.return.sink.split_crit_edge:      ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

if.end30:                                         ; preds = %land.lhs.true27.if.end30_crit_edge, %if.end25.if.end30_crit_edge
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %15 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_qflags, align 4
  %17 = and i32 %16, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %17)
  %18 = icmp ne i32 %17, 72
  %and.i70 = and i64 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i70)
  %tobool.i71 = icmp ne i64 %and.i70, 0
  %or.cond74 = select i1 %18, i1 true, i1 %tobool.i71
  br i1 %or.cond74, label %if.end30.return_crit_edge, label %if.end30.return.sink.split_crit_edge

if.end30.return.sink.split_crit_edge:             ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

if.end30.return_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

return.sink.split:                                ; preds = %if.end30.return.sink.split_crit_edge, %land.lhs.true27.return.sink.split_crit_edge, %if.end20.return.sink.split_crit_edge, %if.else15.return.sink.split_crit_edge, %land.lhs.true8.return.sink.split_crit_edge
  %.str.90.sink = phi ptr [ @.str.86, %land.lhs.true8.return.sink.split_crit_edge ], [ @.str.87, %if.else15.return.sink.split_crit_edge ], [ @.str.88, %if.end20.return.sink.split_crit_edge ], [ @.str.89, %land.lhs.true27.return.sink.split_crit_edge ], [ @.str.90, %if.end30.return.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %land.lhs.true8.return.sink.split_crit_edge ], [ -22, %if.else15.return.sink.split_crit_edge ], [ -22, %if.end20.return.sink.split_crit_edge ], [ -30, %land.lhs.true27.return.sink.split_crit_edge ], [ -22, %if.end30.return.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull %.str.90.sink) #15
  br label %return

return:                                           ; preds = %return.sink.split, %if.end30.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_setup_devices(ptr nocapture noundef readonly %mp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %0 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_ddev_targp, align 8
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %2 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sb_sectsize, align 2
  %conv = zext i16 %3 to i32
  %call = tail call i32 @xfs_setsize_buftarg(ptr noundef %1, i32 noundef %conv) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup28_crit_edge

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup28

if.end:                                           ; preds = %entry
  %m_logdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 14
  %4 = ptrtoint ptr %m_logdev_targp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_logdev_targp, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end16_crit_edge, label %land.lhs.true

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_ddev_targp, align 8
  %cmp.not = icmp eq ptr %5, %7
  br i1 %cmp.not, label %land.lhs.true.if.end16_crit_edge, label %if.then5

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then5:                                         ; preds = %land.lhs.true
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %9, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then5.if.end10_crit_edge, label %if.then7

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %sb_logsectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 42
  %10 = ptrtoint ptr %sb_logsectsize to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sb_logsectsize, align 2
  %conv9 = zext i16 %11 to i32
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then5.if.end10_crit_edge
  %log_sector_size.0 = phi i32 [ %conv9, %if.then7 ], [ 512, %if.then5.if.end10_crit_edge ]
  %call12 = tail call i32 @xfs_setsize_buftarg(ptr noundef nonnull %5, i32 noundef %log_sector_size.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end10.if.end16_crit_edge, label %if.end10.cleanup28_crit_edge

if.end10.cleanup28_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup28

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.end16:                                         ; preds = %if.end10.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 15
  %12 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %if.end16.if.end27_crit_edge, label %if.then18

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then18:                                        ; preds = %if.end16
  %14 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sb_sectsize, align 2
  %conv22 = zext i16 %15 to i32
  %call23 = tail call i32 @xfs_setsize_buftarg(ptr noundef nonnull %13, i32 noundef %conv22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then18.if.end27_crit_edge, label %if.then18.cleanup28_crit_edge

if.then18.cleanup28_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup28

if.then18.if.end27_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.end27:                                         ; preds = %if.then18.if.end27_crit_edge, %if.end16.if.end27_crit_edge
  br label %cleanup28

cleanup28:                                        ; preds = %if.end27, %if.then18.cleanup28_crit_edge, %if.end10.cleanup28_crit_edge, %entry.cleanup28_crit_edge
  %retval.1 = phi i32 [ 0, %if.end27 ], [ %call12, %if.end10.cleanup28_crit_edge ], [ %call, %entry.cleanup28_crit_edge ], [ %call23, %if.then18.cleanup28_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_sb_validate_fsb_count(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_fileoff(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_filestream_mount(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inode_timestamp_range(ptr noundef %mp, i64 noundef %min, i64 noundef %max) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_timestamp_range, i32 0, i32 1), ptr blockaddress(@trace_xfs_inode_timestamp_range, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !397

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !392

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !398
  %call42 = tail call i32 @__traceiter_xfs_inode_timestamp_range(ptr noundef null, ptr noundef %mp, i64 noundef %min, i64 noundef %max) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !399
  %13 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !392

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !400
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_timestamp_range, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_timestamp_range, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inode_timestamp_range.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_xfs_inode_timestamp_range.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 4006, ptr noundef nonnull @.str.39) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !401
  %31 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_setup_dax_always(ptr noundef %mp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %0 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_ddev_targp, align 8
  %bt_daxdev = getelementptr inbounds %struct.xfs_buftarg, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bt_daxdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bt_daxdev, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 15
  %4 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.disable_dax_crit_edge, label %lor.lhs.false

land.lhs.true.disable_dax_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %disable_dax

lor.lhs.false:                                    ; preds = %land.lhs.true
  %bt_daxdev3 = getelementptr inbounds %struct.xfs_buftarg, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bt_daxdev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bt_daxdev3, align 8
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %lor.lhs.false.disable_dax_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false.disable_dax_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %disable_dax

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %8 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_super, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %11)
  %cmp.not = icmp eq i32 %11, 4096
  br i1 %cmp.not, label %if.end6, label %if.end.disable_dax_crit_edge

if.end.disable_dax_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %disable_dax

if.end6:                                          ; preds = %if.end
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %12 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %13, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.93) #15
  br label %return

if.end8:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.94) #15
  br label %return

disable_dax:                                      ; preds = %if.end.disable_dax_crit_edge, %lor.lhs.false.disable_dax_crit_edge, %land.lhs.true.disable_dax_crit_edge
  %.str.92.sink = phi ptr [ @.str.91, %lor.lhs.false.disable_dax_crit_edge ], [ @.str.91, %land.lhs.true.disable_dax_crit_edge ], [ @.str.92, %if.end.disable_dax_crit_edge ]
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull %.str.92.sink) #15
  %m_features6.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %14 = ptrtoint ptr %m_features6.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_features6.i, align 8
  %or7.i = and i64 %15, -3458764513820540929
  %and9.i = or i64 %or7.i, 2305843009213693952
  store i64 %and9.i, ptr %m_features6.i, align 8
  br label %return

return:                                           ; preds = %disable_dax, %if.end8, %if.then7
  %retval.0 = phi i32 [ 0, %disable_dax ], [ -22, %if.then7 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_mountfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_filestream_unmount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_freesb(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_mount_list_del(ptr noundef %mp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_lock(ptr noundef nonnull @xfs_mount_list_lock) #15
  %m_mount_list = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %m_mount_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %m_mount_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_mount_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %m_mount_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %m_mount_list, align 4
  %prev.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 16, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @xfs_mount_list_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_destroy_percpu_counters(ptr noundef %mp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m_icount = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 77
  tail call void @percpu_counter_destroy(ptr noundef %m_icount) #15
  %m_ifree = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 78
  tail call void @percpu_counter_destroy(ptr noundef %m_ifree) #15
  %m_fdblocks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 79
  tail call void @percpu_counter_destroy(ptr noundef %m_fdblocks) #15
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %0 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %m_opstate.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %lor.rhs, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

lor.rhs:                                          ; preds = %entry
  %m_delalloc_blks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 80
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %m_delalloc_blks) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp = icmp eq i64 %call.i, 0
  br i1 %cmp, label %lor.rhs.cond.end_crit_edge, label %cond.false, !prof !392

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.37, i32 noundef 1045) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.rhs.cond.end_crit_edge, %entry.cond.end_crit_edge
  %m_delalloc_blks3 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 80
  tail call void @percpu_counter_destroy(ptr noundef %m_delalloc_blks3) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_destroy_mount_workqueues(ptr nocapture noundef readonly %mp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m_sync_workqueue = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 23
  %0 = ptrtoint ptr %m_sync_workqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_sync_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #15
  %m_blockgc_wq = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 24
  %2 = ptrtoint ptr %m_blockgc_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_blockgc_wq, align 8
  tail call void @destroy_workqueue(ptr noundef %3) #15
  %m_inodegc_wq = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 25
  %4 = ptrtoint ptr %m_inodegc_wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_inodegc_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %5) #15
  %m_reclaim_workqueue = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 22
  %6 = ptrtoint ptr %m_reclaim_workqueue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_reclaim_workqueue, align 32
  tail call void @destroy_workqueue(ptr noundef %7) #15
  %m_unwritten_workqueue = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 21
  %8 = ptrtoint ptr %m_unwritten_workqueue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_unwritten_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %9) #15
  %m_buf_workqueue = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 20
  %10 = ptrtoint ptr %m_buf_workqueue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m_buf_workqueue, align 8
  tail call void @destroy_workqueue(ptr noundef %11) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_close_devices(ptr nocapture noundef readonly %mp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m_logdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 14
  %0 = ptrtoint ptr %m_logdev_targp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_logdev_targp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %2 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_ddev_targp, align 8
  %cmp.not = icmp eq ptr %1, %3
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %bt_bdev = getelementptr inbounds %struct.xfs_buftarg, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bt_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bt_bdev, align 4
  tail call void @xfs_free_buftarg(ptr noundef nonnull %1) #15
  tail call fastcc void @xfs_blkdev_put(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 15
  %6 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %bt_bdev7 = getelementptr inbounds %struct.xfs_buftarg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bt_bdev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bt_bdev7, align 4
  tail call void @xfs_free_buftarg(ptr noundef nonnull %7) #15
  tail call fastcc void @xfs_blkdev_put(ptr noundef %9)
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %m_ddev_targp10 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %10 = ptrtoint ptr %m_ddev_targp10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m_ddev_targp10, align 8
  tail call void @xfs_free_buftarg(ptr noundef %11) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_unmountfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_fs_alloc_inode(ptr nocapture noundef readnone %sb) #9 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/xfs/xfs_super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 626, 0\0A.popsection", ""() #15, !srcloc !402
  unreachable
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_fs_destroy_inode(ptr noundef %inode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  tail call fastcc void @trace_xfs_destroy_inode(ptr noundef %add.ptr.i)
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem, i32 noundef 4) #15
  %0 = ptrtoint ptr %i_rwsem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_rwsem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 0
  br i1 %cmp.i.not, label %entry.do.body5_crit_edge, label %cond.false, !prof !392

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 642) #15
  br label %do.body5

do.body5:                                         ; preds = %cond.false, %entry.do.body5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %2 = load ptr, ptr @xfsstats, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %vn_rele = getelementptr inbounds %struct.__xfsstats, ptr %10, i32 0, i32 63
  %11 = ptrtoint ptr %vn_rele to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vn_rele, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %vn_rele, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %14, i32 0, i32 92
  %15 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_stats, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = load i32, ptr %cpu, align 4
  %arrayidx17 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx17, align 4
  %add18 = add i32 %20, %17
  %21 = inttoptr i32 %add18 to ptr
  %vn_rele19 = getelementptr inbounds %struct.__xfsstats, ptr %21, i32 0, i32 63
  %22 = ptrtoint ptr %vn_rele19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vn_rele19, align 4
  %inc20 = add i32 %23, 1
  store i32 %inc20, ptr %vn_rele19, align 4
  %24 = load i32, ptr %cpu, align 4
  %arrayidx33 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx33, align 4
  %add34 = add i32 %26, %3
  %27 = inttoptr i32 %add34 to ptr
  %vn_remove = getelementptr inbounds %struct.__xfsstats, ptr %27, i32 0, i32 65
  %28 = ptrtoint ptr %vn_remove to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vn_remove, align 4
  %inc35 = add i32 %29, 1
  store i32 %inc35, ptr %vn_remove, align 4
  %30 = load ptr, ptr %add.ptr.i, align 8
  %m_stats43 = getelementptr inbounds %struct.xfs_mount, ptr %30, i32 0, i32 92
  %31 = ptrtoint ptr %m_stats43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %m_stats43, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = load i32, ptr %cpu, align 4
  %arrayidx48 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx48, align 4
  %add49 = add i32 %36, %33
  %37 = inttoptr i32 %add49 to ptr
  %vn_remove50 = getelementptr inbounds %struct.__xfsstats, ptr %37, i32 0, i32 65
  %38 = ptrtoint ptr %vn_remove50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vn_remove50, align 4
  %inc51 = add i32 %39, 1
  store i32 %inc51, ptr %vn_remove50, align 4
  tail call void @xfs_inode_mark_reclaimable(ptr noundef %add.ptr.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_fs_dirty_inode(ptr noundef %inode, i32 noundef %flag) #0 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #15
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !396
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags, align 4
  %and = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flag)
  %cmp.not = icmp eq i32 %flag, 1
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %7 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_state, align 8
  %and1 = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %tr_fsyncts = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65, i32 25
  %call5 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %tr_fsyncts, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 4) #15
  %9 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %10, ptr noundef %add.ptr.i, i32 noundef 4) #15
  %11 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %12, ptr noundef %add.ptr.i, i32 noundef 16384) #15
  %13 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tp, align 4
  %call9 = call i32 @xfs_trans_commit(ptr noundef %14) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_drop_inode(ptr nocapture noundef readonly %inode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr i8, ptr %inode, i32 -72
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 8
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %m_log = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %m_log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_log, align 4
  %l_opstate.i = getelementptr inbounds %struct.xlog, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %l_opstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %l_opstate.i, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cond.false, label %if.then.cleanup_crit_edge, !prof !403

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.37, i32 noundef 716) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lor.rhs.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.rhs.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %pprev.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %12 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %13, null
  %lnot.ext.i.i.i = zext i1 %tobool.not.i.i.i to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs.i, %if.end.cleanup_crit_edge, %cond.false, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ 0, %cond.false ], [ 1, %if.end.cleanup_crit_edge ], [ %lnot.ext.i.i.i, %lor.rhs.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_fs_put_super(ptr nocapture noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef nonnull %1, ptr noundef nonnull @.str.42) #15
  tail call void @xfs_filestream_unmount(ptr noundef nonnull %1) #15
  tail call void @xfs_unmountfs(ptr noundef nonnull %1) #15
  tail call void @xfs_freesb(ptr noundef nonnull %1) #15
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 92
  %2 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_stats, align 4
  tail call void @free_percpu(ptr noundef %3) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @xfs_mount_list_lock) #15
  %m_mount_list.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 16
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %m_mount_list.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.xfs_mount_list_del.exit_crit_edge

if.end.xfs_mount_list_del.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_mount_list_del.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %m_mount_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_mount_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %xfs_mount_list_del.exit

xfs_mount_list_del.exit:                          ; preds = %if.end.i.i.i, %if.end.xfs_mount_list_del.exit_crit_edge
  %10 = ptrtoint ptr %m_mount_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %m_mount_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 16, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @xfs_mount_list_lock) #15
  %m_inodegc.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %m_inodegc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_inodegc.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %xfs_mount_list_del.exit.xfs_inodegc_free_percpu.exit_crit_edge, label %if.end.i

xfs_mount_list_del.exit.xfs_inodegc_free_percpu.exit_crit_edge: ; preds = %xfs_mount_list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_inodegc_free_percpu.exit

if.end.i:                                         ; preds = %xfs_mount_list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @free_percpu(ptr noundef nonnull %13) #15
  br label %xfs_inodegc_free_percpu.exit

xfs_inodegc_free_percpu.exit:                     ; preds = %if.end.i, %xfs_mount_list_del.exit.xfs_inodegc_free_percpu.exit_crit_edge
  %m_icount.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 77
  tail call void @percpu_counter_destroy(ptr noundef %m_icount.i) #15
  %m_ifree.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 78
  tail call void @percpu_counter_destroy(ptr noundef %m_ifree.i) #15
  %m_fdblocks.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 79
  tail call void @percpu_counter_destroy(ptr noundef %m_fdblocks.i) #15
  %m_opstate.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %14 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %m_opstate.i.i, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %lor.rhs.i, label %xfs_inodegc_free_percpu.exit.xfs_destroy_percpu_counters.exit_crit_edge

xfs_inodegc_free_percpu.exit.xfs_destroy_percpu_counters.exit_crit_edge: ; preds = %xfs_inodegc_free_percpu.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_destroy_percpu_counters.exit

lor.rhs.i:                                        ; preds = %xfs_inodegc_free_percpu.exit
  %m_delalloc_blks.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 80
  %call.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %m_delalloc_blks.i) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %cmp.i = icmp eq i64 %call.i.i, 0
  br i1 %cmp.i, label %lor.rhs.i.xfs_destroy_percpu_counters.exit_crit_edge, label %cond.false.i, !prof !392

lor.rhs.i.xfs_destroy_percpu_counters.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_destroy_percpu_counters.exit

cond.false.i:                                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.37, i32 noundef 1045) #15
  br label %xfs_destroy_percpu_counters.exit

xfs_destroy_percpu_counters.exit:                 ; preds = %cond.false.i, %lor.rhs.i.xfs_destroy_percpu_counters.exit_crit_edge, %xfs_inodegc_free_percpu.exit.xfs_destroy_percpu_counters.exit_crit_edge
  %m_delalloc_blks3.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 80
  tail call void @percpu_counter_destroy(ptr noundef %m_delalloc_blks3.i) #15
  tail call fastcc void @xfs_destroy_mount_workqueues(ptr noundef nonnull %1)
  tail call fastcc void @xfs_close_devices(ptr noundef nonnull %1)
  %17 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %s_fs_info, align 16
  %m_rtname.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %m_rtname.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m_rtname.i, align 4
  tail call void @kfree(ptr noundef %19) #15
  %m_logname.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %m_logname.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m_logname.i, align 8
  tail call void @kfree(ptr noundef %21) #15
  tail call void @kvfree(ptr noundef nonnull %1) #15
  br label %cleanup

cleanup:                                          ; preds = %xfs_destroy_percpu_counters.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_sync_fs(ptr nocapture noundef readonly %sb, i32 noundef %wait) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_xfs_fs_sync_fs(ptr noundef %1, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool.not = icmp eq i32 %wait, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @xfs_log_force(ptr noundef %1, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @laptop_mode to i32))
  %3 = load i32, ptr @laptop_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %m_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %m_log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_log, align 4
  %l_work = getelementptr inbounds %struct.xlog, ptr %5, i32 0, i32 5
  %call6 = tail call zeroext i1 @flush_delayed_work(ptr noundef %l_work) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  %s_writers = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 32
  %6 = ptrtoint ptr %s_writers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_writers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then8, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @xfs_inodegc_stop(ptr noundef %1) #15
  tail call void @xfs_blockgc_stop(ptr noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_freeze(ptr nocapture noundef readonly %sb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %2 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %7, 262144
  %or.i = or i32 %7, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  tail call fastcc void @xfs_save_resvblks(ptr noundef %1)
  %call1 = tail call i32 @xfs_log_quiesce(ptr noundef %1) #15
  %8 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i8 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i8 to ptr
  %task.i9 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i9, align 8
  %flags1.i10 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %flags1.i10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags1.i10, align 4
  %and.i11 = and i32 %13, -262145
  %or.i12 = or i32 %and.i11, %and.i
  store i32 %or.i12, ptr %flags1.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %14 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %m_opstate.i, align 4
  %16 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  br i1 %tobool.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @xfs_blockgc_start(ptr noundef %1) #15
  tail call void @xfs_inodegc_start(ptr noundef %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_unfreeze(ptr nocapture noundef readonly %sb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  tail call fastcc void @xfs_restore_resvblks(ptr noundef %1)
  tail call void @xfs_log_work_queue(ptr noundef %1) #15
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %m_opstate.i, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @xfs_blockgc_start(ptr noundef %1) #15
  tail call void @xfs_inodegc_start(ptr noundef %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_statfs(ptr nocapture noundef readonly %dentry, ptr noundef %statp) #5 align 64 {
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
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -312
  tail call void @xfs_inodegc_flush(ptr noundef %3) #15
  %6 = ptrtoint ptr %statp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1481003842, ptr %statp, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %statp, i32 0, i32 8
  %7 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 255, ptr %f_namelen, align 8
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_ddev_targp, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %and1.i.i = and i32 %11, 255
  %12 = lshr i32 %11, 12
  %shl.i.i = and i32 %12, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %11, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %statp, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %13 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  %m_icount = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 77
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %m_icount) #15
  %m_ifree = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 78
  %call.i133 = tail call i64 @__percpu_counter_sum(ptr noundef %m_ifree) #15
  %m_fdblocks = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 79
  %call.i134 = tail call i64 @__percpu_counter_sum(ptr noundef %m_fdblocks) #15
  %m_sb_lock = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %m_sb_lock) #15
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sb_blocksize, align 4
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %statp, i32 0, i32 1
  %16 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %f_bsize, align 4
  %sb_logstart = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %sb_logstart to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %sb_logstart, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool.not = icmp eq i64 %18, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sb_logblocks = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 14
  %19 = ptrtoint ptr %sb_logblocks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sb_logblocks, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %20, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %sb_dblocks, align 8
  %conv = zext i32 %cond to i64
  %sub = sub i64 %22, %conv
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %statp, i32 0, i32 2
  %23 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %sub, ptr %f_blocks, align 8
  tail call void @_raw_spin_unlock(ptr noundef %m_sb_lock) #15
  %m_alloc_set_aside = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 48
  %24 = ptrtoint ptr %m_alloc_set_aside to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %m_alloc_set_aside, align 32
  %conv7 = zext i32 %25 to i64
  %sub8 = sub i64 %call.i134, %conv7
  %26 = tail call i64 @llvm.smax.i64(i64 %sub8, i64 0)
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %statp, i32 0, i32 3
  %27 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %statp, i32 0, i32 4
  %28 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %26, ptr %f_bavail, align 8
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 23
  %29 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sb_inopblog, align 1
  %sh_prom = zext i8 %30 to i64
  %shl = shl i64 %26, %sh_prom
  %add = add i64 %shl, %call.i
  %31 = tail call i64 @llvm.umin.i64(i64 %add, i64 72057594037927935)
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %statp, i32 0, i32 5
  %32 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %f_files, align 8
  %m_ino_geo = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 64
  %33 = ptrtoint ptr %m_ino_geo to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %m_ino_geo, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool26.not = icmp eq i64 %34, 0
  br i1 %tobool26.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %35 = tail call i64 @llvm.umin.i64(i64 %31, i64 %34)
  %36 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %f_files, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %37 = ptrtoint ptr %f_files to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %f_files, align 8
  %sb_icount = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 28
  %39 = ptrtoint ptr %sb_icount to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %sb_icount, align 8
  %41 = tail call i64 @llvm.umax.i64(i64 %38, i64 %40)
  %42 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %f_files, align 8
  %sub48.neg = sub i64 %call.i133, %call.i
  %sub49 = add i64 %sub48.neg, %41
  %43 = tail call i64 @llvm.smax.i64(i64 %sub49, i64 0)
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %statp, i32 0, i32 6
  %44 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %f_ffree, align 8
  %i_diflags = getelementptr i8, ptr %5, i32 -26
  %45 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %i_diflags, align 2
  %47 = and i16 %46, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool58.not = icmp eq i16 %47, 0
  br i1 %tobool58.not, label %if.end.if.end63_crit_edge, label %land.lhs.true

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

land.lhs.true:                                    ; preds = %if.end
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 60
  %48 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %m_qflags, align 4
  %and59 = and i32 %49, 520
  call void @__sanitizer_cov_trace_const_cmp4(i32 520, i32 %and59)
  %cmp60 = icmp eq i32 %and59, 520
  br i1 %cmp60, label %if.then62, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then62:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @xfs_qm_statvfs(ptr noundef %add.ptr.i, ptr noundef %statp) #15
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %land.lhs.true.if.end63_crit_edge, %if.end.if.end63_crit_edge
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 15
  %50 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool64.not = icmp eq ptr %51, null
  br i1 %tobool64.not, label %if.end63.if.end77_crit_edge, label %land.lhs.true67

if.end63.if.end77_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

land.lhs.true67:                                  ; preds = %if.end63
  %52 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %i_diflags, align 2
  %54 = and i16 %53, 257
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool71.not = icmp eq i16 %54, 0
  br i1 %tobool71.not, label %land.lhs.true67.if.end77_crit_edge, label %if.then72

land.lhs.true67.if.end77_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

if.then72:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #17
  %sb_rblocks = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 3
  %55 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %sb_rblocks, align 8
  %57 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %f_blocks, align 8
  %sb_frextents = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 31
  %58 = ptrtoint ptr %sb_frextents to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %sb_frextents, align 8
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 10
  %60 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sb_rextsize, align 8
  %conv74 = zext i32 %61 to i64
  %mul = mul i64 %59, %conv74
  %62 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %mul, ptr %f_bfree, align 8
  %63 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %mul, ptr %f_bavail, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %land.lhs.true67.if.end77_crit_edge, %if.end63.if.end77_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_show_options(ptr noundef %m, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %m_features = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %4 = phi i64 [ 144115188075855872, %entry ], [ %10, %for.inc.for.body_crit_edge ]
  %xfs_infop.0128 = phi ptr [ @xfs_fs_show_options.xfs_info_set, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %m_features to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %m_features, align 8
  %and = and i64 %6, %4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %str = getelementptr inbounds %struct.proc_xfs_info, ptr %xfs_infop.0128, i32 0, i32 1
  %7 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %str, align 8
  tail call void @seq_puts(ptr noundef %m, ptr noundef %8) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.proc_xfs_info, ptr %xfs_infop.0128, i32 1
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %incdec.ptr, align 8
  %tobool.not = icmp eq i64 %10, 0
  br i1 %tobool.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  %11 = ptrtoint ptr %m_features to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %m_features, align 8
  %and.i = and i64 %12, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond = select i1 %tobool.i.not, i32 64, i32 32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, i32 noundef %cond) #15
  %13 = ptrtoint ptr %m_features to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %m_features, align 8
  %and.i120 = and i64 %14, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i120)
  %tobool.i121.not = icmp eq i64 %and.i120, 0
  br i1 %tobool.i121.not, label %for.end.if.end5_crit_edge, label %if.then4

for.end.if.end5_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %m_allocsize_log = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 53
  %15 = ptrtoint ptr %m_allocsize_log to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_allocsize_log, align 4
  %shl = shl nuw i32 1, %16
  %shr = ashr i32 %shl, 10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.57, i32 noundef %shr) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.end.if.end5_crit_edge
  %m_logbufs = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 55
  %17 = ptrtoint ptr %m_logbufs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m_logbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp sgt i32 %18, 0
  br i1 %cmp, label %if.then6, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.58, i32 noundef %18) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end5.if.end8_crit_edge
  %m_logbsize = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 56
  %19 = ptrtoint ptr %m_logbsize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %m_logbsize, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp9 = icmp sgt i32 %20, 0
  br i1 %cmp9, label %if.then10, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %shr12127 = lshr i32 %20, 10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %shr12127) #15
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %m_logname = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 5
  %21 = ptrtoint ptr %m_logname to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m_logname, align 8
  %tobool14.not = icmp eq ptr %22, null
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %seq_show_option.exit

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

seq_show_option.exit:                             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #15
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull @.str.60, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.71) #15
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 61) #15
  %call.i.i5.i = tail call i32 @strlen(ptr noundef nonnull %22) #24
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull %22, i32 noundef %call.i.i5.i, i32 noundef 8, ptr noundef nonnull @.str.72) #15
  br label %if.end17

if.end17:                                         ; preds = %seq_show_option.exit, %if.end13.if.end17_crit_edge
  %m_rtname = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %m_rtname to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m_rtname, align 4
  %tobool18.not = icmp eq ptr %24, null
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %seq_show_option.exit126

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

seq_show_option.exit126:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #15
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull @.str.61, i32 noundef 5, i32 noundef 8, ptr noundef nonnull @.str.71) #15
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 61) #15
  %call.i.i5.i124 = tail call i32 @strlen(ptr noundef nonnull %24) #24
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull %24, i32 noundef %call.i.i5.i124, i32 noundef 8, ptr noundef nonnull @.str.72) #15
  br label %if.end21

if.end21:                                         ; preds = %seq_show_option.exit126, %if.end17.if.end21_crit_edge
  %m_dalign = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 50
  %25 = ptrtoint ptr %m_dalign to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %m_dalign, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp22 = icmp sgt i32 %26, 0
  br i1 %cmp22, label %if.then23, label %if.end21.if.end26_crit_edge

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 28
  %27 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %m_blkbb_log, align 1
  %conv = zext i8 %28 to i32
  %shl25 = shl i32 %26, %conv
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.62, i32 noundef %shl25) #15
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end21.if.end26_crit_edge
  %m_swidth = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 51
  %29 = ptrtoint ptr %m_swidth to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %m_swidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp27 = icmp sgt i32 %30, 0
  br i1 %cmp27, label %if.then29, label %if.end26.if.end34_crit_edge

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %m_blkbb_log31 = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 28
  %31 = ptrtoint ptr %m_blkbb_log31 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %m_blkbb_log31, align 1
  %conv32 = zext i8 %32 to i32
  %shl33 = shl i32 %30, %conv32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, i32 noundef %shl33) #15
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end26.if.end34_crit_edge
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 60
  %33 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %m_qflags, align 4
  %and35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else, label %if.end34.if.end43.sink.split_crit_edge

if.end34.if.end43.sink.split_crit_edge:           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43.sink.split

if.else:                                          ; preds = %if.end34
  %and39 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else.if.end43_crit_edge, label %if.else.if.end43.sink.split_crit_edge

if.else.if.end43.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43.sink.split

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.end43.sink.split:                              ; preds = %if.else.if.end43.sink.split_crit_edge, %if.end34.if.end43.sink.split_crit_edge
  %.str.65.sink = phi ptr [ @.str.64, %if.end34.if.end43.sink.split_crit_edge ], [ @.str.65, %if.else.if.end43.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.65.sink) #15
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %if.else.if.end43_crit_edge
  %35 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %m_qflags, align 4
  %and45 = and i32 %36, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.else48, label %if.end43.if.end54.sink.split_crit_edge

if.end43.if.end54.sink.split_crit_edge:           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.sink.split

if.else48:                                        ; preds = %if.end43
  %and50 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.else48.if.end54_crit_edge, label %if.else48.if.end54.sink.split_crit_edge

if.else48.if.end54.sink.split_crit_edge:          ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.sink.split

if.else48.if.end54_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

if.end54.sink.split:                              ; preds = %if.else48.if.end54.sink.split_crit_edge, %if.end43.if.end54.sink.split_crit_edge
  %.str.67.sink = phi ptr [ @.str.66, %if.end43.if.end54.sink.split_crit_edge ], [ @.str.67, %if.else48.if.end54.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.67.sink) #15
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %if.else48.if.end54_crit_edge
  %37 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %m_qflags, align 4
  %and56 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.else59, label %if.end54.if.end65.sink.split_crit_edge

if.end54.if.end65.sink.split_crit_edge:           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65.sink.split

if.else59:                                        ; preds = %if.end54
  %and61 = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.else59.if.end65_crit_edge, label %if.else59.if.end65.sink.split_crit_edge

if.else59.if.end65.sink.split_crit_edge:          ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65.sink.split

if.else59.if.end65_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

if.end65.sink.split:                              ; preds = %if.else59.if.end65.sink.split_crit_edge, %if.end54.if.end65.sink.split_crit_edge
  %.str.69.sink = phi ptr [ @.str.68, %if.end54.if.end65.sink.split_crit_edge ], [ @.str.69, %if.else59.if.end65.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.69.sink) #15
  br label %if.end65

if.end65:                                         ; preds = %if.end65.sink.split, %if.else59.if.end65_crit_edge
  %39 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %m_qflags, align 4
  %and67 = and i32 %40, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.then69, label %if.end65.if.end70_crit_edge

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.70) #15
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end65.if.end70_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_nr_cached_objects(ptr nocapture noundef readonly %sb, ptr nocapture noundef readnone %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b44 = load i1, ptr @xfs_fs_nr_cached_objects.__already_done, align 1
  br i1 %.b44, label %land.rhs.return_crit_edge, label %if.then, !prof !392

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @xfs_fs_nr_cached_objects.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 1110, i32 noundef 9, ptr noundef null) #15
  br label %return

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @xfs_reclaim_inodes_count(ptr noundef nonnull %1) #15
  br label %return

return:                                           ; preds = %if.end39, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end39 ], [ 0, %if.then ], [ 0, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_free_cached_objects(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %2 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_to_scan, align 4
  %call = tail call i32 @xfs_reclaim_inodes_nr(ptr noundef %1, i32 noundef %3) #15
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_destroy_inode(ptr noundef %ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_destroy_inode, i32 0, i32 1), ptr blockaddress(@trace_xfs_destroy_inode, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !397

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !392

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !404
  %call42 = tail call i32 @__traceiter_xfs_destroy_inode(ptr noundef null, ptr noundef %ip) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !405
  %13 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !392

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !400
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_destroy_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_destroy_inode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_destroy_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_xfs_destroy_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 771, ptr noundef nonnull @.str.39) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !401
  %31 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_mark_reclaimable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_destroy_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ijoin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_fs_sync_fs(ptr noundef %mp, ptr noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_fs_sync_fs, i32 0, i32 1), ptr blockaddress(@trace_xfs_fs_sync_fs, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !397

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !392

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !406
  %call42 = tail call i32 @__traceiter_xfs_fs_sync_fs(ptr noundef null, ptr noundef %mp, ptr noundef %caller_ip) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !407
  %13 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !392

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !400
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_fs_sync_fs, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_fs_sync_fs, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_fs_sync_fs.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_xfs_fs_sync_fs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 247, ptr noundef nonnull @.str.39) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !401
  %31 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_log_force(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inodegc_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_blockgc_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_fs_sync_fs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_save_resvblks(ptr noundef %mp) unnamed_addr #5 align 64 {
entry:
  %resblks = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resblks) #15
  %0 = ptrtoint ptr %resblks to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %resblks, align 8
  %m_resblks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 84
  %1 = ptrtoint ptr %m_resblks to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %m_resblks, align 8
  %m_resblks_save = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 86
  %3 = ptrtoint ptr %m_resblks_save to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %m_resblks_save, align 8
  %call = call i32 @xfs_reserve_blocks(ptr noundef %mp, ptr noundef nonnull %resblks, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resblks) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_log_quiesce(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_blockgc_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inodegc_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reserve_blocks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_restore_resvblks(ptr noundef %mp) unnamed_addr #5 align 64 {
entry:
  %resblks = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resblks) #15
  %m_resblks_save = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 86
  %0 = ptrtoint ptr %m_resblks_save to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_resblks_save, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %resblks to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %resblks, align 8
  %3 = ptrtoint ptr %m_resblks_save to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %m_resblks_save, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i64 @xfs_default_resblks(ptr noundef %mp) #15
  %4 = ptrtoint ptr %resblks to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call, ptr %resblks, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 @xfs_reserve_blocks(ptr noundef %mp, ptr noundef nonnull %resblks, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resblks) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_work_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_default_resblks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inodegc_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_statvfs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reclaim_inodes_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reclaim_inodes_nr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_blkdev_get(ptr noundef %mp, ptr noundef %name, ptr nocapture noundef %bdevp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @blkdev_get_by_path(ptr noundef %name, i32 noundef 131, ptr noundef %mp) #15
  %0 = ptrtoint ptr %bdevp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %bdevp, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.74, ptr noundef %name, i32 noundef %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %error.0 = phi i32 [ %1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_alloc_buftarg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_free_buftarg(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_blkdev_put(ptr noundef %bdev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bdev, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @blkdev_put(ptr noundef nonnull %bdev, i32 noundef 131) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inodegc_worker(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_setsize_buftarg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inode_timestamp_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_sync_sb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_fs_reserve_ag_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_blockgc_free_space(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_do_force_shutdown(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_fs_unreserve_ag_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_clean(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_enum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_defer_destroy_item_caches() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_destroy_cur_caches() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir_startup() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_cpu_hotplug_init() unnamed_addr #14 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 30, ptr noundef nonnull @.str.144, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @xfs_cpu_dead, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef null, ptr noundef nonnull @.str.145, i32 noundef %call.i) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_init_caches() unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.146, i32 noundef 168, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_log_ticket_cache to i32))
  store ptr %call, ptr @xfs_log_ticket_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xfs_btree_init_cur_caches() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_destroy_log_ticket_cache_crit_edge

if.end.out_destroy_log_ticket_cache_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_log_ticket_cache

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @xfs_defer_init_item_caches() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_destroy_btree_cur_cache_crit_edge

if.end4.out_destroy_btree_cur_cache_crit_edge:    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_btree_cur_cache

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.147, i32 noundef 384, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_da_state_cache to i32))
  store ptr %call9, ptr @xfs_da_state_cache, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.out_destroy_defer_item_cache_crit_edge, label %if.end12

if.end8.out_destroy_defer_item_cache_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_defer_item_cache

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.148, i32 noundef 32, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_ifork_cache to i32))
  store ptr %call13, ptr @xfs_ifork_cache, align 4
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.out_destroy_da_state_cache_crit_edge, label %if.end16

if.end12.out_destroy_da_state_cache_crit_edge:    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_da_state_cache

if.end16:                                         ; preds = %if.end12
  %call17 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.149, i32 noundef 200, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_trans_cache to i32))
  store ptr %call17, ptr @xfs_trans_cache, align 4
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.out_destroy_ifork_cache_crit_edge, label %if.end20

if.end16.out_destroy_ifork_cache_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_ifork_cache

if.end20:                                         ; preds = %if.end16
  %call21 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.150, i32 noundef 192, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_buf_item_cache to i32))
  store ptr %call21, ptr @xfs_buf_item_cache, align 4
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.out_destroy_trans_cache_crit_edge, label %if.end24

if.end20.out_destroy_trans_cache_crit_edge:       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_trans_cache

if.end24:                                         ; preds = %if.end20
  %call25 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.151, i32 noundef 360, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_efd_cache to i32))
  store ptr %call25, ptr @xfs_efd_cache, align 4
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.out_destroy_buf_item_cache_crit_edge, label %if.end28

if.end24.out_destroy_buf_item_cache_crit_edge:    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_buf_item_cache

if.end28:                                         ; preds = %if.end24
  %call29 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.152, i32 noundef 360, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_efi_cache to i32))
  store ptr %call29, ptr @xfs_efi_cache, align 4
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end28.out_destroy_efd_cache_crit_edge, label %if.end32

if.end28.out_destroy_efd_cache_crit_edge:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_efd_cache

if.end32:                                         ; preds = %if.end28
  %call33 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.153, i32 noundef 1192, i32 noundef 0, i32 noundef 68296704, ptr noundef nonnull @xfs_fs_inode_init_once) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_inode_cache to i32))
  store ptr %call33, ptr @xfs_inode_cache, align 4
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end32.out_destroy_efi_cache_crit_edge, label %if.end36

if.end32.out_destroy_efi_cache_crit_edge:         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_efi_cache

if.end36:                                         ; preds = %if.end32
  %call37 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.154, i32 noundef 160, i32 noundef 0, i32 noundef 1179648, ptr noundef null) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_ili_cache to i32))
  store ptr %call37, ptr @xfs_ili_cache, align 4
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end36.out_destroy_inode_cache_crit_edge, label %if.end40

if.end36.out_destroy_inode_cache_crit_edge:       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_inode_cache

if.end40:                                         ; preds = %if.end36
  %call41 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.155, i32 noundef 112, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_icreate_cache to i32))
  store ptr %call41, ptr @xfs_icreate_cache, align 4
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.end40.out_destroy_ili_cache_crit_edge, label %if.end44

if.end40.out_destroy_ili_cache_crit_edge:         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_ili_cache

if.end44:                                         ; preds = %if.end40
  %call45 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.156, i32 noundef 104, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_rud_cache to i32))
  store ptr %call45, ptr @xfs_rud_cache, align 4
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end44.out_destroy_icreate_cache_crit_edge, label %if.end48

if.end44.out_destroy_icreate_cache_crit_edge:     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_icreate_cache

if.end48:                                         ; preds = %if.end44
  %call50 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.157, i32 noundef 616, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_rui_cache to i32))
  store ptr %call50, ptr @xfs_rui_cache, align 4
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.end48.out_destroy_rud_cache_crit_edge, label %if.end53

if.end48.out_destroy_rud_cache_crit_edge:         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_rud_cache

if.end53:                                         ; preds = %if.end48
  %call54 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.158, i32 noundef 104, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_cud_cache to i32))
  store ptr %call54, ptr @xfs_cud_cache, align 4
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %if.end53.out_destroy_rui_cache_crit_edge, label %if.end57

if.end53.out_destroy_rui_cache_crit_edge:         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_rui_cache

if.end57:                                         ; preds = %if.end53
  %call59 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.159, i32 noundef 360, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_cui_cache to i32))
  store ptr %call59, ptr @xfs_cui_cache, align 4
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %if.end57.out_destroy_cud_cache_crit_edge, label %if.end62

if.end57.out_destroy_cud_cache_crit_edge:         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_cud_cache

if.end62:                                         ; preds = %if.end57
  %call63 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.160, i32 noundef 104, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_bud_cache to i32))
  store ptr %call63, ptr @xfs_bud_cache, align 4
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %if.end62.out_destroy_cui_cache_crit_edge, label %if.end66

if.end62.out_destroy_cui_cache_crit_edge:         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_cui_cache

if.end66:                                         ; preds = %if.end62
  %call68 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.161, i32 noundef 136, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_bui_cache to i32))
  store ptr %call68, ptr @xfs_bui_cache, align 4
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %out_destroy_bud_cache, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

out_destroy_bud_cache:                            ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_bud_cache to i32))
  %0 = load ptr, ptr @xfs_bud_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #15
  br label %out_destroy_cui_cache

out_destroy_cui_cache:                            ; preds = %out_destroy_bud_cache, %if.end62.out_destroy_cui_cache_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_cui_cache to i32))
  %1 = load ptr, ptr @xfs_cui_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #15
  br label %out_destroy_cud_cache

out_destroy_cud_cache:                            ; preds = %out_destroy_cui_cache, %if.end57.out_destroy_cud_cache_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_cud_cache to i32))
  %2 = load ptr, ptr @xfs_cud_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #15
  br label %out_destroy_rui_cache

out_destroy_rui_cache:                            ; preds = %out_destroy_cud_cache, %if.end53.out_destroy_rui_cache_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_rui_cache to i32))
  %3 = load ptr, ptr @xfs_rui_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #15
  br label %out_destroy_rud_cache

out_destroy_rud_cache:                            ; preds = %out_destroy_rui_cache, %if.end48.out_destroy_rud_cache_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_rud_cache to i32))
  %4 = load ptr, ptr @xfs_rud_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #15
  br label %out_destroy_icreate_cache

out_destroy_icreate_cache:                        ; preds = %out_destroy_rud_cache, %if.end44.out_destroy_icreate_cache_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_icreate_cache to i32))
  %5 = load ptr, ptr @xfs_icreate_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #15
  br label %out_destroy_ili_cache

out_destroy_ili_cache:                            ; preds = %out_destroy_icreate_cache, %if.end40.out_destroy_ili_cache_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_ili_cache to i32))
  %6 = load ptr, ptr @xfs_ili_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %6) #15
  br label %out_destroy_inode_cache

out_destroy_inode_cache:                          ; preds = %out_destroy_ili_cache, %if.end36.out_destroy_inode_cache_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_inode_cache to i32))
  %7 = load ptr, ptr @xfs_inode_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %7) #15
  br label %out_destroy_efi_cache

out_destroy_efi_cache:                            ; preds = %out_destroy_inode_cache, %if.end32.out_destroy_efi_cache_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_efi_cache to i32))
  %8 = load ptr, ptr @xfs_efi_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %8) #15
  br label %out_destroy_efd_cache

out_destroy_efd_cache:                            ; preds = %out_destroy_efi_cache, %if.end28.out_destroy_efd_cache_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_efd_cache to i32))
  %9 = load ptr, ptr @xfs_efd_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %9) #15
  br label %out_destroy_buf_item_cache

out_destroy_buf_item_cache:                       ; preds = %out_destroy_efd_cache, %if.end24.out_destroy_buf_item_cache_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_buf_item_cache to i32))
  %10 = load ptr, ptr @xfs_buf_item_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %10) #15
  br label %out_destroy_trans_cache

out_destroy_trans_cache:                          ; preds = %out_destroy_buf_item_cache, %if.end20.out_destroy_trans_cache_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_trans_cache to i32))
  %11 = load ptr, ptr @xfs_trans_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %11) #15
  br label %out_destroy_ifork_cache

out_destroy_ifork_cache:                          ; preds = %out_destroy_trans_cache, %if.end16.out_destroy_ifork_cache_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_ifork_cache to i32))
  %12 = load ptr, ptr @xfs_ifork_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %12) #15
  br label %out_destroy_da_state_cache

out_destroy_da_state_cache:                       ; preds = %out_destroy_ifork_cache, %if.end12.out_destroy_da_state_cache_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_da_state_cache to i32))
  %13 = load ptr, ptr @xfs_da_state_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %13) #15
  br label %out_destroy_defer_item_cache

out_destroy_defer_item_cache:                     ; preds = %out_destroy_da_state_cache, %if.end8.out_destroy_defer_item_cache_crit_edge
  tail call void @xfs_defer_destroy_item_caches() #15
  br label %out_destroy_btree_cur_cache

out_destroy_btree_cur_cache:                      ; preds = %out_destroy_defer_item_cache, %if.end4.out_destroy_btree_cur_cache_crit_edge
  tail call void @xfs_btree_destroy_cur_caches() #15
  br label %out_destroy_log_ticket_cache

out_destroy_log_ticket_cache:                     ; preds = %out_destroy_btree_cur_cache, %if.end.out_destroy_log_ticket_cache_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_log_ticket_cache to i32))
  %14 = load ptr, ptr @xfs_log_ticket_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %14) #15
  br label %cleanup

cleanup:                                          ; preds = %out_destroy_log_ticket_cache, %if.end66.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end66.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %out_destroy_log_ticket_cache ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_init_workqueues() unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.165, i32 noundef 76, i32 noundef 0) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_alloc_wq to i32))
  store ptr %call, ptr @xfs_alloc_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.166, i32 noundef 66, i32 noundef 0) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_discard_wq to i32))
  store ptr %call1, ptr @xfs_discard_wq, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %out_free_alloc_wq, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

out_free_alloc_wq:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_alloc_wq to i32))
  %0 = load ptr, ptr @xfs_alloc_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #15
  br label %return

return:                                           ; preds = %out_free_alloc_wq, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %out_free_alloc_wq ], [ -12, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_mru_cache_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_init_procfs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_sysctl_register() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_sysfs_init(ptr noundef %kobj, ptr noundef %ktype, ptr noundef %name) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %complete = getelementptr inbounds %struct.xfs_kobj, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.xfs_kobj, ptr %kobj, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.168, ptr noundef nonnull @init_completion.__key) #15
  %call = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj, ptr noundef %ktype, ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef %name) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_cpu_dead(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @xfs_mount_list_lock) #15
  %0 = load ptr, ptr @xfs_mount_list, align 4
  %cmp.not14 = icmp eq ptr %0, @xfs_mount_list
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in15 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %mp.0 = getelementptr i8, ptr %.pn.in15, i32 -324
  %1 = ptrtoint ptr %.pn.in15 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in15, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @xfs_mount_list_lock) #15
  tail call void @xfs_inodegc_cpu_dead(ptr noundef %mp.0, i32 noundef %cpu) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @xfs_mount_list_lock) #15
  %cmp.not = icmp eq ptr %.pn, @xfs_mount_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @xfs_mount_list_lock) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inodegc_cpu_dead(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @xfs_btree_init_cur_caches() local_unnamed_addr #13 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @xfs_defer_init_item_caches() local_unnamed_addr #13 section ".init.text"

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_fs_inode_init_once(ptr noundef %inode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %inode, i32 0, i32 1192)
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %inode, i32 0, i32 27
  tail call void @inode_init_once(ptr noundef %i_vnode.i) #15
  %i_pincount = getelementptr inbounds %struct.xfs_inode, ptr %inode, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_pincount, i32 noundef 4) #15
  %1 = ptrtoint ptr %i_pincount to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %i_pincount, align 4
  %i_flags_lock = getelementptr inbounds %struct.xfs_inode, ptr %inode, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %i_flags_lock, ptr noundef nonnull @.str.162, ptr noundef nonnull @xfs_fs_inode_init_once.__key, i16 noundef signext 3) #15
  %i_lock = getelementptr inbounds %struct.xfs_inode, ptr %inode, i32 0, i32 10
  %mr_writer = getelementptr inbounds %struct.xfs_inode, ptr %inode, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %mr_writer to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mr_writer, align 4
  tail call void @__init_rwsem(ptr noundef %i_lock, ptr noundef nonnull @.str.164, ptr noundef nonnull @xfs_fs_inode_init_once.__key.163) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noinline nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { noinline noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind readnone }
attributes #19 = { cold nounwind }
attributes #20 = { cold }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nobuiltin }
attributes #23 = { nounwind readonly willreturn }
attributes #24 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !40, !41, !43, !44, !46, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !96, !97, !98, !99, !101, !102, !104, !106, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !200, !202, !203, !205, !207, !209, !211, !213, !215, !217, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !323, !324, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !368, !370, !371, !373, !375, !377, !379}
!llvm.named.register.sp = !{!380}
!llvm.module.flags = !{!381, !382, !383, !384, !385, !386, !387, !388}
!llvm.ident = !{!389}

!0 = !{ptr @__UNIQUE_ID_alias1608, !1, !"__UNIQUE_ID_alias1608", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_super.c", i32 1946, i32 1}
!2 = !{ptr @__initcall__kmod_xfs__1609_2339_init_xfs_fs6, !3, !"__initcall__kmod_xfs__1609_2339_init_xfs_fs6", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_super.c", i32 2339, i32 1}
!4 = !{ptr @__exitcall_exit_xfs_fs, !5, !"__exitcall_exit_xfs_fs", i1 false, i1 false}
!5 = !{!"../fs/xfs/xfs_super.c", i32 2340, i32 1}
!6 = !{ptr @__UNIQUE_ID_author1610, !7, !"__UNIQUE_ID_author1610", i1 false, i1 false}
!7 = !{!"../fs/xfs/xfs_super.c", i32 2342, i32 1}
!8 = !{ptr @__UNIQUE_ID_description1611, !9, !"__UNIQUE_ID_description1611", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_super.c", i32 2343, i32 1}
!10 = !{ptr @__UNIQUE_ID_file1612, !11, !"__UNIQUE_ID_file1612", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_super.c", i32 2344, i32 1}
!12 = !{ptr @__UNIQUE_ID_license1613, !11, !"__UNIQUE_ID_license1613", i1 false, i1 false}
!13 = !{ptr @xfs_kset, !14, !"xfs_kset", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_super.c", i32 48, i32 21}
!15 = !{ptr @xfs_dbg_kobj, !16, !"xfs_dbg_kobj", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_super.c", i32 50, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_super.c", i32 1940, i32 12}
!19 = !{ptr @xfs_fs_type, !20, !"xfs_fs_type", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_super.c", i32 1938, i32 32}
!21 = !{ptr @xfs_init_fs_context.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_super.c", i32 1899, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @xfs_init_fs_context.__key.2, !25, !"__key", i1 false, i1 false}
!25 = !{!"../fs/xfs/xfs_super.c", i32 1900, i32 2}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @xfs_init_fs_context.__key.4, !28, !"__key", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_super.c", i32 1902, i32 2}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @xfs_init_fs_context.__key.6, !31, !"__key", i1 false, i1 false}
!31 = !{!"../fs/xfs/xfs_super.c", i32 1903, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @xfs_init_fs_context.__key.8, !34, !"__key", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_super.c", i32 1904, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @xfs_init_fs_context.__key.10, !37, !"__key", i1 false, i1 false}
!37 = !{!"../fs/xfs/xfs_super.c", i32 1905, i32 2}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @xfs_init_fs_context.__key.12, !37, !"__key", i1 false, i1 false}
!40 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @xa_init_flags.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @xfs_context_ops, !45, !"xfs_context_ops", i1 false, i1 false}
!45 = !{!"../fs/xfs/xfs_super.c", i32 1883, i32 43}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/xfs/xfs_super.c", i32 1340, i32 24}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/xfs/xfs_super.c", i32 1186, i32 26}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/xfs/xfs_super.c", i32 1452, i32 18}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../fs/xfs/xfs_super.c", i32 1505, i32 3}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/xfs/xfs_super.c", i32 1517, i32 16}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/xfs/xfs_super.c", i32 1528, i32 16}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/xfs/xfs_super.c", i32 1538, i32 3}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/xfs/xfs_super.c", i32 1549, i32 3}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/xfs/xfs_super.c", i32 1567, i32 1}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/xfs/xfs_super.c", i32 1614, i32 17}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/xfs/xfs_super.c", i32 1623, i32 2}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/xfs/xfs_super.c", i32 1629, i32 17}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/xfs/xfs_super.c", i32 1636, i32 2}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/xfs/xfs_super.c", i32 1353, i32 16}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/xfs/xfs_super.c", i32 1362, i32 16}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/xfs/xfs_super.c", i32 1369, i32 2}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/xfs/xfs_super.c", i32 1380, i32 16}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/xfs/xfs_super.c", i32 1386, i32 2}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/xfs/xfs_super.c", i32 1395, i32 16}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/xfs/xfs_super.c", i32 1406, i32 4}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/xfs/xfs_super.c", i32 1414, i32 16}
!89 = !{ptr @xfs_super_operations, !90, !"xfs_super_operations", i1 false, i1 false}
!90 = !{!"../fs/xfs/xfs_super.c", i32 1123, i32 38}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/xfs/xfs_super.c", i32 642, i32 2}
!93 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../fs/xfs/xfs_trace.h", i32 771, i32 1}
!96 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!98 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!101 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/xfs/xfs_super.c", i32 716, i32 3}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/xfs/xfs_super.c", i32 1088, i32 17}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../fs/xfs/xfs_trace.h", i32 247, i32 1}
!108 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/xfs/xfs_super.c", i32 180, i32 22}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/xfs/xfs_super.c", i32 181, i32 22}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/xfs/xfs_super.c", i32 182, i32 24}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/xfs/xfs_super.c", i32 183, i32 24}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/xfs/xfs_super.c", i32 184, i32 23}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/xfs/xfs_super.c", i32 185, i32 27}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/xfs/xfs_super.c", i32 186, i32 22}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/xfs/xfs_super.c", i32 187, i32 28}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/xfs/xfs_super.c", i32 188, i32 22}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/xfs/xfs_super.c", i32 189, i32 24}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/xfs/xfs_super.c", i32 190, i32 28}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/xfs/xfs_super.c", i32 191, i32 27}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/xfs/xfs_super.c", i32 192, i32 26}
!135 = !{ptr @xfs_fs_show_options.xfs_info_set, !136, !"xfs_info_set", i1 false, i1 false}
!136 = !{!"../fs/xfs/xfs_super.c", i32 178, i32 30}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/xfs/xfs_super.c", i32 203, i32 16}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/xfs/xfs_super.c", i32 206, i32 17}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/xfs/xfs_super.c", i32 210, i32 17}
!143 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/xfs/xfs_super.c", i32 212, i32 17}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/xfs/xfs_super.c", i32 215, i32 22}
!147 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/xfs/xfs_super.c", i32 217, i32 22}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/xfs/xfs_super.c", i32 220, i32 17}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/xfs/xfs_super.c", i32 223, i32 17}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/xfs/xfs_super.c", i32 227, i32 15}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/xfs/xfs_super.c", i32 229, i32 15}
!157 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/xfs/xfs_super.c", i32 232, i32 15}
!159 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/xfs/xfs_super.c", i32 234, i32 15}
!161 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/xfs/xfs_super.c", i32 237, i32 15}
!163 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/xfs/xfs_super.c", i32 239, i32 15}
!165 = !{ptr @.str.70, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/xfs/xfs_super.c", i32 242, i32 15}
!167 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../include/linux/seq_file.h", i32 242, i32 22}
!169 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../include/linux/seq_file.h", i32 245, i32 24}
!171 = distinct !{null, !172, !"__already_done", i1 false, i1 false}
!172 = !{!"../fs/xfs/xfs_super.c", i32 1110, i32 6}
!173 = !{ptr @.str.73, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/xfs/xfs_super.c", i32 443, i32 2}
!175 = !{ptr @.str.74, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/xfs/xfs_super.c", i32 376, i32 16}
!177 = !{ptr @.str.75, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/xfs/xfs_super.c", i32 523, i32 40}
!179 = !{ptr @.str.76, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/xfs/xfs_super.c", i32 529, i32 46}
!181 = !{ptr @.str.77, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/xfs/xfs_super.c", i32 535, i32 44}
!183 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/xfs/xfs_super.c", i32 541, i32 37}
!185 = !{ptr @.str.79, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/xfs/xfs_super.c", i32 547, i32 37}
!187 = !{ptr @.str.80, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/xfs/xfs_super.c", i32 553, i32 41}
!189 = !{ptr @xfs_init_percpu_counters.__key, !190, !"__key", i1 false, i1 false}
!190 = !{!"../fs/xfs/xfs_super.c", i32 1001, i32 10}
!191 = !{ptr @xfs_init_percpu_counters.__key.81, !192, !"__key", i1 false, i1 false}
!192 = !{!"../fs/xfs/xfs_super.c", i32 1005, i32 10}
!193 = !{ptr @xfs_init_percpu_counters.__key.82, !194, !"__key", i1 false, i1 false}
!194 = !{!"../fs/xfs/xfs_super.c", i32 1009, i32 10}
!195 = !{ptr @xfs_init_percpu_counters.__key.83, !196, !"__key", i1 false, i1 false}
!196 = !{!"../fs/xfs/xfs_super.c", i32 1013, i32 10}
!197 = !{ptr @xfs_inodegc_init_percpu.__key, !198, !"__key", i1 false, i1 false}
!198 = !{!"../fs/xfs/xfs_super.c", i32 1064, i32 3}
!199 = !{ptr @.str.84, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.85, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/xfs/xfs_super.c", i32 55, i32 8}
!202 = !{ptr @xfs_mount_list_lock, !201, !"xfs_mount_list_lock", i1 false, i1 false}
!203 = !{ptr @xfs_mount_list, !204, !"xfs_mount_list", i1 false, i1 false}
!204 = !{!"../fs/xfs/xfs_super.c", i32 54, i32 8}
!205 = !{ptr @.str.86, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/xfs/xfs_super.c", i32 954, i32 3}
!207 = !{ptr @.str.87, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/xfs/xfs_super.c", i32 961, i32 3}
!209 = !{ptr @.str.88, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/xfs/xfs_super.c", i32 970, i32 16}
!211 = !{ptr @.str.89, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/xfs/xfs_super.c", i32 980, i32 4}
!213 = !{ptr @.str.90, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/xfs/xfs_super.c", i32 988, i32 5}
!215 = distinct !{null, !216, !"__already_done", i1 false, i1 false}
!216 = !{!"../fs/xfs/xfs_trace.h", i32 4006, i32 1}
!217 = distinct !{null, !216, !"__warned", i1 false, i1 false}
!218 = !{ptr @.str.91, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/xfs/xfs_super.c", i32 341, i32 4}
!220 = !{ptr @.str.92, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/xfs/xfs_super.c", i32 347, i32 4}
!222 = !{ptr @.str.93, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/xfs/xfs_super.c", i32 352, i32 17}
!224 = !{ptr @.str.94, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/xfs/xfs_super.c", i32 356, i32 15}
!226 = !{ptr @.str.95, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/xfs/xfs_super.c", i32 1044, i32 2}
!228 = !{ptr @.str.96, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../fs/xfs/xfs_super.c", i32 1700, i32 4}
!230 = !{ptr @.str.97, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../fs/xfs/xfs_super.c", i32 1707, i32 2}
!232 = !{ptr @.str.98, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../fs/xfs/xfs_super.c", i32 1722, i32 17}
!234 = !{ptr @.str.99, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../fs/xfs/xfs_super.c", i32 124, i32 2}
!236 = !{ptr @.str.100, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../fs/xfs/xfs_super.c", i32 125, i32 2}
!238 = !{ptr @.str.101, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../fs/xfs/xfs_super.c", i32 128, i32 2}
!240 = !{ptr @.str.102, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/xfs/xfs_super.c", i32 129, i32 2}
!242 = !{ptr @.str.103, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/xfs/xfs_super.c", i32 130, i32 2}
!244 = !{ptr @.str.104, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../fs/xfs/xfs_super.c", i32 131, i32 2}
!246 = !{ptr @.str.105, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../fs/xfs/xfs_super.c", i32 132, i32 2}
!248 = !{ptr @.str.106, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../fs/xfs/xfs_super.c", i32 133, i32 2}
!250 = !{ptr @.str.107, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../fs/xfs/xfs_super.c", i32 134, i32 2}
!252 = !{ptr @.str.108, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../fs/xfs/xfs_super.c", i32 135, i32 2}
!254 = !{ptr @.str.109, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../fs/xfs/xfs_super.c", i32 136, i32 2}
!256 = !{ptr @.str.110, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../fs/xfs/xfs_super.c", i32 137, i32 2}
!258 = !{ptr @.str.111, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../fs/xfs/xfs_super.c", i32 138, i32 2}
!260 = !{ptr @.str.112, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../fs/xfs/xfs_super.c", i32 139, i32 2}
!262 = !{ptr @.str.113, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../fs/xfs/xfs_super.c", i32 140, i32 2}
!264 = !{ptr @.str.114, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../fs/xfs/xfs_super.c", i32 141, i32 2}
!266 = !{ptr @.str.115, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../fs/xfs/xfs_super.c", i32 142, i32 2}
!268 = !{ptr @.str.116, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../fs/xfs/xfs_super.c", i32 143, i32 2}
!270 = !{ptr @.str.117, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../fs/xfs/xfs_super.c", i32 144, i32 2}
!272 = !{ptr @.str.118, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../fs/xfs/xfs_super.c", i32 145, i32 2}
!274 = !{ptr @.str.119, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../fs/xfs/xfs_super.c", i32 146, i32 2}
!276 = !{ptr @.str.120, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/xfs/xfs_super.c", i32 147, i32 2}
!278 = !{ptr @.str.121, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../fs/xfs/xfs_super.c", i32 148, i32 2}
!280 = !{ptr @.str.122, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../fs/xfs/xfs_super.c", i32 149, i32 2}
!282 = !{ptr @.str.123, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/xfs/xfs_super.c", i32 150, i32 2}
!284 = !{ptr @.str.124, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../fs/xfs/xfs_super.c", i32 151, i32 2}
!286 = !{ptr @.str.125, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../fs/xfs/xfs_super.c", i32 152, i32 2}
!288 = !{ptr @.str.126, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../fs/xfs/xfs_super.c", i32 153, i32 2}
!290 = !{ptr @.str.127, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../fs/xfs/xfs_super.c", i32 154, i32 2}
!292 = !{ptr @.str.128, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../fs/xfs/xfs_super.c", i32 155, i32 2}
!294 = !{ptr @.str.129, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../fs/xfs/xfs_super.c", i32 156, i32 2}
!296 = !{ptr @.str.130, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../fs/xfs/xfs_super.c", i32 157, i32 2}
!298 = !{ptr @.str.131, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../fs/xfs/xfs_super.c", i32 158, i32 2}
!300 = !{ptr @.str.132, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../fs/xfs/xfs_super.c", i32 159, i32 2}
!302 = !{ptr @.str.133, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../fs/xfs/xfs_super.c", i32 160, i32 2}
!304 = !{ptr @.str.134, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../fs/xfs/xfs_super.c", i32 161, i32 2}
!306 = !{ptr @.str.135, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../fs/xfs/xfs_super.c", i32 162, i32 2}
!308 = !{ptr @.str.136, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../fs/xfs/xfs_super.c", i32 163, i32 2}
!310 = !{ptr @xfs_fs_parameters, !311, !"xfs_fs_parameters", i1 false, i1 false}
!311 = !{!"../fs/xfs/xfs_super.c", i32 123, i32 39}
!312 = !{ptr @.str.137, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../fs/xfs/xfs_super.c", i32 102, i32 3}
!314 = !{ptr @.str.138, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../fs/xfs/xfs_super.c", i32 103, i32 3}
!316 = !{ptr @.str.139, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../fs/xfs/xfs_super.c", i32 104, i32 3}
!318 = !{ptr @dax_param_enums, !319, !"dax_param_enums", i1 false, i1 false}
!319 = !{!"../fs/xfs/xfs_super.c", i32 101, i32 36}
!320 = !{ptr @.str.140, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../fs/xfs/xfs_super.c", i32 2220, i32 2}
!322 = !{ptr @.str.141, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @init_xfs_fs._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @init_xfs_fs._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.142, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../fs/xfs/xfs_super.c", i32 2268, i32 11}
!327 = !{ptr @.str.143, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../fs/xfs/xfs_super.c", i32 2274, i32 62}
!329 = !{ptr @.str.144, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../fs/xfs/xfs_super.c", i32 2193, i32 52}
!331 = !{ptr @.str.145, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../fs/xfs/xfs_super.c", i32 2197, i32 1}
!333 = !{ptr @.str.146, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../fs/xfs/xfs_super.c", i32 1953, i32 43}
!335 = !{ptr @.str.147, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../fs/xfs/xfs_super.c", i32 1967, i32 41}
!337 = !{ptr @.str.148, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../fs/xfs/xfs_super.c", i32 1973, i32 38}
!339 = !{ptr @.str.149, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../fs/xfs/xfs_super.c", i32 1979, i32 38}
!341 = !{ptr @.str.150, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../fs/xfs/xfs_super.c", i32 1991, i32 41}
!343 = !{ptr @.str.151, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../fs/xfs/xfs_super.c", i32 1997, i32 36}
!345 = !{ptr @.str.152, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../fs/xfs/xfs_super.c", i32 2005, i32 36}
!347 = !{ptr @.str.153, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../fs/xfs/xfs_super.c", i32 2013, i32 38}
!349 = !{ptr @.str.154, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../fs/xfs/xfs_super.c", i32 2022, i32 36}
!351 = !{ptr @.str.155, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../fs/xfs/xfs_super.c", i32 2029, i32 40}
!353 = !{ptr @.str.156, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../fs/xfs/xfs_super.c", i32 2035, i32 36}
!355 = !{ptr @.str.157, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../fs/xfs/xfs_super.c", i32 2041, i32 36}
!357 = !{ptr @.str.158, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../fs/xfs/xfs_super.c", i32 2047, i32 36}
!359 = !{ptr @.str.159, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../fs/xfs/xfs_super.c", i32 2053, i32 36}
!361 = !{ptr @.str.160, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../fs/xfs/xfs_super.c", i32 2059, i32 36}
!363 = !{ptr @.str.161, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../fs/xfs/xfs_super.c", i32 2065, i32 36}
!365 = !{ptr @xfs_fs_inode_init_once.__key, !366, !"__key", i1 false, i1 false}
!366 = !{!"../fs/xfs/xfs_super.c", i32 691, i32 2}
!367 = !{ptr @.str.162, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @xfs_fs_inode_init_once.__key.163, !369, !"__key", i1 false, i1 false}
!369 = !{!"../fs/xfs/xfs_super.c", i32 693, i32 2}
!370 = !{ptr @.str.164, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @.str.165, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../fs/xfs/xfs_super.c", i32 2148, i32 33}
!373 = !{ptr @.str.166, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../fs/xfs/xfs_super.c", i32 2153, i32 35}
!375 = !{ptr @.str.167, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../fs/xfs/xfs_sysfs.h", i32 39, i32 61}
!377 = !{ptr @init_completion.__key, !378, !"__key", i1 false, i1 false}
!378 = !{!"../include/linux/completion.h", i32 87, i32 2}
!379 = !{ptr @.str.168, !378, !"<string literal>", i1 false, i1 false}
!380 = !{!"sp"}
!381 = !{i32 1, !"wchar_size", i32 2}
!382 = !{i32 1, !"min_enum_size", i32 4}
!383 = !{i32 8, !"branch-target-enforcement", i32 0}
!384 = !{i32 8, !"sign-return-address", i32 0}
!385 = !{i32 8, !"sign-return-address-all", i32 0}
!386 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!387 = !{i32 7, !"uwtable", i32 1}
!388 = !{i32 7, !"frame-pointer", i32 2}
!389 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!390 = !{i64 1038890, i64 1038917, i64 1038939, i64 1038967}
!391 = !{i64 1039298, i64 1039325, i64 1039358, i64 1039379, i64 1039406, i64 1039432}
!392 = !{!"branch_weights", i32 2000, i32 1}
!393 = !{i64 2148524434, i64 2148524714, i64 2148525048, i64 2148525382}
!394 = !{i32 0, i32 33}
!395 = !{i8 0, i8 2}
!396 = !{!"auto-init"}
!397 = !{i64 2148302637, i64 2148302642, i64 2148302655, i64 2148302699, i64 2148302733, i64 2148302754}
!398 = !{i64 2165961090}
!399 = !{i64 2165961327}
!400 = !{i64 2150004730}
!401 = !{i64 2150005766}
!402 = !{i64 2166763366, i64 2166763849, i64 2166763403, i64 2166763459, i64 2166763493, i64 2166763517, i64 2166763558, i64 2166763579, i64 2166763607, i64 2166763641}
!403 = !{!"branch_weights", i32 1, i32 2000}
!404 = !{i64 2158250825}
!405 = !{i64 2158251026}
!406 = !{i64 2156473085}
!407 = !{i64 2156473302}
