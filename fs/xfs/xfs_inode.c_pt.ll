; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_inode.c_pt.bc'
source_filename = "../fs/xfs/xfs_inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_param = type { %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val }
%struct.xfs_sysctl_val = type { i32, i32, i32 }
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
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.xfs_name = type { ptr, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.91, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.90, i16, i8, i32 }
%union.anon.90 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.llist_node = type { ptr }
%union.anon.91 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.78 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.xfs_da_geometry = type { i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_agi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i32], %struct.uuid_t, i32, i32, i64, i32, i32, i32, i32 }
%struct.xfs_iunlink = type { %struct.rhash_head, i32, i32 }
%struct.xfs_inode_log_item = type { %struct.xfs_log_item, ptr, i16, %struct.spinlock, i32, i32, i32, i64, i64 }
%struct.xfs_icluster = type { i8, i64, i64 }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.xfs_ail = type { ptr, ptr, %struct.list_head, i64, i64, %struct.list_head, %struct.spinlock, i64, i32, %struct.list_head, %struct.wait_queue_head }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.xfs_dinode = type { i16, i16, i8, i8, i16, i32, i32, i32, i16, i16, [6 x i8], i16, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, i16, i16, i32, i32, i32, i64, i64, i64, i32, [12 x i8], i64, i64, %struct.uuid_t }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }

@.str = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"(lock_flags & (XFS_IOLOCK_SHARED | XFS_IOLOCK_EXCL)) != (XFS_IOLOCK_SHARED | XFS_IOLOCK_EXCL)\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_inode.c\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"(lock_flags & (XFS_MMAPLOCK_SHARED | XFS_MMAPLOCK_EXCL)) != (XFS_MMAPLOCK_SHARED | XFS_MMAPLOCK_EXCL)\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"(lock_flags & (XFS_ILOCK_SHARED | XFS_ILOCK_EXCL)) != (XFS_ILOCK_SHARED | XFS_ILOCK_EXCL)\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"(lock_flags & ~(XFS_LOCK_MASK | XFS_LOCK_SUBCLASS_MASK)) == 0\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lock_flags != 0\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"lock_flags & (XFS_IOLOCK_EXCL|XFS_MMAPLOCK_EXCL|XFS_ILOCK_EXCL)\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"(lock_flags & ~(XFS_IOLOCK_EXCL|XFS_MMAPLOCK_EXCL|XFS_ILOCK_EXCL)) == 0\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hweight32(ip0_mode) == 1\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hweight32(ip1_mode) == 1\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"!(ip0_mode & (XFS_IOLOCK_SHARED|XFS_IOLOCK_EXCL))\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"!(ip1_mode & (XFS_IOLOCK_SHARED|XFS_IOLOCK_EXCL))\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"!(ip0_mode & (XFS_MMAPLOCK_SHARED|XFS_MMAPLOCK_EXCL))\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"!(ip1_mode & (XFS_MMAPLOCK_SHARED|XFS_MMAPLOCK_EXCL))\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ip0->i_ino != ip1->i_ino\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Allocated a known in-use inode 0x%llx!\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ip != NULL\00", [21 x i8] zeroinitializer }, align 32
@xfs_params = external dso_local local_unnamed_addr global %struct.xfs_param, align 4
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip->i_nblocks == 0\00", [45 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"error != -ENOSPC\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"!S_ISDIR(VFS_I(sip)->i_mode)\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xfs_isilocked(ip, XFS_ILOCK_EXCL)\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"!atomic_read(&VFS_I(ip)->i_count) || xfs_isilocked(ip, XFS_IOLOCK_EXCL)\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"new_size <= XFS_ISIZE(ip)\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tp->t_flags & XFS_TRANS_PERM_LOG_RES\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip->i_itemp != NULL\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ip->i_itemp->ili_lock_flags == 0\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"!XFS_NOT_DQATTACHED(mp, ip)\00", [36 x i8] zeroinitializer }, align 32
@xfs_itruncate_extents_flags.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tp->t_firstblock == NULLFSBLOCK\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ip->i_df.if_broot_bytes == 0\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"!xfs_iflags_test(ip, XFS_IRECOVERY)\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"!ip->i_afp\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip->i_forkoff == 0\00", [45 x i8] zeroinitializer }, align 32
@xfs_iunlink_hash_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 4, i16 8, i16 0, i32 0, i16 64, i8 1, ptr null, ptr null, ptr @xfs_iunlink_obj_cmpfn }, [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"freed_anything == false || xfs_is_shutdown(pag->pag_mount)\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VFS_I(ip)->i_nlink == 0\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ip->i_df.if_nextents == 0\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ip->i_disk_size == 0 || !S_ISREG(VFS_I(ip)->i_mode)\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VFS_I(ip)->i_nlink >= 2\00", [40 x i8] zeroinitializer }, align 32
@xfs_name_dotdot = external dso_local global %struct.xfs_name, align 4
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"error != -ENOENT\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VFS_I(wip)->i_nlink == 0\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"error != -EEXIST\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"!__xfs_iflags_test(ip, XFS_ISTALE)\00", [61 x i8] zeroinitializer }, align 32
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@xfs_inode_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__tracepoint_xfs_ilock = external dso_local global %struct.tracepoint, align 4
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_ilock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_ilock_nowait = external dso_local global %struct.tracepoint, align 4
@trace_xfs_ilock_nowait.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_iunlock = external dso_local global %struct.tracepoint, align 4
@trace_xfs_iunlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_ilock_demote = external dso_local global %struct.tracepoint, align 4
@trace_xfs_ilock_demote.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.45 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"!(lock_mode & (XFS_ILOCK_PARENT | XFS_ILOCK_RTBITMAP | XFS_ILOCK_RTSUM))\00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xfs_lockdep_subclass_ok(subclass)\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"subclass <= XFS_ILOCK_MAX_SUBCLASS\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_lookup = external dso_local global %struct.tracepoint, align 4
@trace_xfs_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_create = external dso_local global %struct.tracepoint, align 4
@trace_xfs_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_link = external dso_local global %struct.tracepoint, align 4
@trace_xfs_link.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_itruncate_extents_start = external dso_local global %struct.tracepoint, align 4
@trace_xfs_itruncate_extents_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_itruncate_extents_end = external dso_local global %struct.tracepoint, align 4
@trace_xfs_itruncate_extents_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xfs_is_shutdown(mp)\00", [44 x i8] zeroinitializer }, align 32
@xfs_inactive_ifree._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.51, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.xfs_inactive_ifree = private unnamed_addr constant [19 x i8] c"xfs_inactive_ifree\00", align 1
@.str.52 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"Failed to remove inode(s) from unlinked list. Please free space, unmount and run xfs_repair.\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: xfs_ifree returned error %d\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: xfs_trans_commit returned error %d\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VFS_I(ip)->i_mode != 0\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"old_agino == NULLAGINO\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_iunlink = external dso_local global %struct.tracepoint, align 4
@trace_xfs_iunlink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"xfs_verify_agino_or_null(mp, pag->pag_agno, next_agino)\00", [40 x i8] zeroinitializer }, align 32
@__func__.xfs_iunlink_update_inode = private unnamed_addr constant [25 x i8] c"xfs_iunlink_update_inode\00", align 1
@__tracepoint_xfs_iunlink_update_dinode = external dso_local global %struct.tracepoint, align 4
@trace_xfs_iunlink_update_dinode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iunlink cache insert error %d\00", [34 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.63 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.67 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"xfs_verify_agino_or_null(tp->t_mountp, pag->pag_agno, new_agino)\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_iunlink_update_bucket = external dso_local global %struct.tracepoint, align 4
@trace_xfs_iunlink_update_bucket.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.xfs_iunlink_remove = private unnamed_addr constant [19 x i8] c"xfs_iunlink_remove\00", align 1
@__tracepoint_xfs_iunlink_remove = external dso_local global %struct.tracepoint, align 4
@trace_xfs_iunlink_remove.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned.68 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.69 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.71 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.73 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"head_agino != target_agino\00", [37 x i8] zeroinitializer }, align 32
@xfs_iunlink_map_prev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.xfs_iunlink_map_prev = private unnamed_addr constant [21 x i8] c"xfs_iunlink_map_prev\00", align 1
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: xfs_imap returned error %d.\00", [32 x i8] zeroinitializer }, align 32
@__func__.xfs_iunlink_map_ino = private unnamed_addr constant [20 x i8] c"xfs_iunlink_map_ino\00", align 1
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: xfs_imap_to_bp returned error %d.\00", [58 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_iunlink_map_prev_fallback = external dso_local global %struct.tracepoint, align 4
@trace_xfs_iunlink_map_prev_fallback.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.77 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ioffset % igeo->inodes_per_cluster == 0\00", [56 x i8] zeroinitializer }, align 32
@xfs_inode_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"!list_empty(&iip->ili_item.li_bio_list)\00", [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iip->ili_last_fields\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"xfs_isilocked(ip, XFS_ILOCK_EXCL|XFS_ILOCK_SHARED)\00", [45 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_inode_unpin_nowait = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inode_unpin_nowait.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_remove = external dso_local global %struct.tracepoint, align 4
@trace_xfs_remove.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rename = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rename.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.81 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*num_inodes == __XFS_SORT_INODES\00", [63 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ips && inodes >= 2 && inodes <= 5\00", [62 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"!(lock_mode & XFS_ILOCK_EXCL) || inodes <= XFS_ILOCK_MAX_SUBCLASS + 1\00", [58 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ips[i]\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i != 0\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"xfs_iflags_test(ip, XFS_IFLUSHING)\00", [61 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"ip->i_df.if_format != XFS_DINODE_FMT_BTREE || ip->i_df.if_nextents > XFS_IFORK_MAXEXT(ip, XFS_DATA_FORK)\00", [55 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iip->ili_item.li_buf == bp\00", [37 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"dip->di_magic != cpu_to_be16(XFS_DINODE_MAGIC)\00", [49 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Bad inode %Lu magic number 0x%x, ptr %px\00", [51 x i8] zeroinitializer }, align 32
@__func__.xfs_iflush = private unnamed_addr constant [11 x i8] c"xfs_iflush\00", align 1
@.str.96 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"ip->i_df.if_format != XFS_DINODE_FMT_EXTENTS && ip->i_df.if_format != XFS_DINODE_FMT_BTREE\00", [37 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Bad regular inode %Lu, ptr %px\00", [61 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [137 x i8], [55 x i8] } { [137 x i8] c"ip->i_df.if_format != XFS_DINODE_FMT_EXTENTS && ip->i_df.if_format != XFS_DINODE_FMT_BTREE && ip->i_df.if_format != XFS_DINODE_FMT_LOCAL\00", [55 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Bad directory inode %Lu, ptr %px\00", [59 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"ip->i_df.if_nextents + xfs_ifork_nextents(ip->i_afp) > ip->i_nblocks\00", [59 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"%s: detected corrupt incore inode %Lu, total extents = %d, nblocks = %Ld, ptr %px\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ip->i_forkoff > mp->m_sb.sb_inodesize\00", [58 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: bad inode %Lu, forkoff 0x%x, ptr %px\00", [55 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_irele = external dso_local global %struct.tracepoint, align 4
@trace_xfs_irele.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 175, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 177, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 179, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 181, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 305, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 334, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 335, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 390, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 570, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 571, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 572, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 573, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 574, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 575, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 576, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 816, i32 17 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 828, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 854, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1056, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1225, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1365, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1366, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1368, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1369, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1370, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1371, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1372, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1396, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1735, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1740, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1797, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1798, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [24 x i8] c"xfs_iunlink_hash_params\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1865, i32 39 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2018, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2623, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2624, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2625, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2804, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2853, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3293, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3371, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3636, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant [16 x i8] c"xfs_inode_cache\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 39, i32 20 }
@___asan_gen_.249 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 718, i32 1 }
@___asan_gen_.252 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 108, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 423, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 425, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 438, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1528, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1595, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1636, i32 19 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1655, i32 18 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2166, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2201, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2104, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1933, i32 6 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1912, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 715, i32 8 }
@___asan_gen_.300 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 755, i32 10 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 695, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 723, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2037, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2276, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2235, i32 16 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2242, i32 16 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2554, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2484, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2485, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2688, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2896, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 476, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 483, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 495, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 524, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3452, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3453, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3455, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3466, i32 6 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3469, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3474, i32 7 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3479, i32 5 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3484, i32 7 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3490, i32 5 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3495, i32 6 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3498, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3505, i32 6 }
@___asan_gen_.386 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.387 = private constant [22 x i8] c"../fs/xfs/xfs_inode.c\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3508, i32 4 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @xfs_iunlink_hash_params, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @xfs_inode_cache, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.49, ptr @.str.50, ptr @xfs_inactive_ifree._rs, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.86, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_iunlink_hash_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_inode_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_inactive_ifree._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 137, i32 192, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_get_extsz_hint(ptr nocapture noundef readonly %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %m_always_cow.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 67
  %2 = ptrtoint ptr %m_always_cow.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %m_always_cow.i, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %xfs_is_always_cow_inode.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

xfs_is_always_cow_inode.exit:                     ; preds = %entry
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.i.not, label %xfs_is_always_cow_inode.exit.if.end_crit_edge, label %xfs_is_always_cow_inode.exit.return_crit_edge

xfs_is_always_cow_inode.exit.return_crit_edge:    ; preds = %xfs_is_always_cow_inode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

xfs_is_always_cow_inode.exit.if.end_crit_edge:    ; preds = %xfs_is_always_cow_inode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %xfs_is_always_cow_inode.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %6 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %i_diflags, align 2
  %8 = and i16 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %i_extsize = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 21
  %9 = ptrtoint ptr %i_extsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_extsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not = icmp eq i32 %10, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %11 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool8.not = icmp eq i16 %11, 0
  br i1 %tobool8.not, label %if.end4.return_crit_edge, label %land.lhs.true9

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true9:                                   ; preds = %if.end4
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %land.lhs.true9.return_crit_edge, label %if.then11

land.lhs.true9.return_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sb_rextsize, align 16
  br label %return

return:                                           ; preds = %if.then11, %land.lhs.true9.return_crit_edge, %if.end4.return_crit_edge, %land.lhs.true.return_crit_edge, %xfs_is_always_cow_inode.exit.return_crit_edge
  %retval.0 = phi i32 [ %15, %if.then11 ], [ 0, %xfs_is_always_cow_inode.exit.return_crit_edge ], [ %10, %land.lhs.true.return_crit_edge ], [ 0, %land.lhs.true9.return_crit_edge ], [ 0, %if.end4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_get_cowextsz_hint(ptr nocapture noundef readonly %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_diflags2 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %0 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_diflags2, align 8
  %and = and i64 %1, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 22
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %a.0 = phi i32 [ %4, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %5 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ip, align 8
  %m_always_cow.i.i = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 67
  %7 = ptrtoint ptr %m_always_cow.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %m_always_cow.i.i, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %if.end.if.end.i_crit_edge, label %xfs_is_always_cow_inode.exit.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

xfs_is_always_cow_inode.exit.i:                   ; preds = %if.end
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 61
  %9 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i = and i64 %10, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %xfs_is_always_cow_inode.exit.i.if.end.i_crit_edge, label %xfs_is_always_cow_inode.exit.i.xfs_get_extsz_hint.exit_crit_edge

xfs_is_always_cow_inode.exit.i.xfs_get_extsz_hint.exit_crit_edge: ; preds = %xfs_is_always_cow_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_get_extsz_hint.exit

xfs_is_always_cow_inode.exit.i.if.end.i_crit_edge: ; preds = %xfs_is_always_cow_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %xfs_is_always_cow_inode.exit.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %i_diflags.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %11 = ptrtoint ptr %i_diflags.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %i_diflags.i, align 2
  %13 = and i16 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %if.end.i.if.end4.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %i_extsize.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 21
  %14 = ptrtoint ptr %i_extsize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_extsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i = icmp eq i32 %15, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end4.i_crit_edge, label %land.lhs.true.i.xfs_get_extsz_hint.exit_crit_edge

land.lhs.true.i.xfs_get_extsz_hint.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_get_extsz_hint.exit

land.lhs.true.i.if.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.end4.i:                                        ; preds = %land.lhs.true.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %16 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool8.not.i = icmp eq i16 %16, 0
  br i1 %tobool8.not.i, label %if.end4.i.xfs_get_extsz_hint.exit_crit_edge, label %land.lhs.true9.i

if.end4.i.xfs_get_extsz_hint.exit_crit_edge:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_get_extsz_hint.exit

land.lhs.true9.i:                                 ; preds = %if.end4.i
  %m_rtdev_targp.i = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 15
  %17 = ptrtoint ptr %m_rtdev_targp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m_rtdev_targp.i, align 64
  %tobool10.not.i = icmp eq ptr %18, null
  br i1 %tobool10.not.i, label %land.lhs.true9.i.xfs_get_extsz_hint.exit_crit_edge, label %if.then11.i

land.lhs.true9.i.xfs_get_extsz_hint.exit_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_get_extsz_hint.exit

if.then11.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  %sb_rextsize.i = getelementptr inbounds %struct.xfs_sb, ptr %6, i32 0, i32 10
  %19 = ptrtoint ptr %sb_rextsize.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sb_rextsize.i, align 16
  br label %xfs_get_extsz_hint.exit

xfs_get_extsz_hint.exit:                          ; preds = %if.then11.i, %land.lhs.true9.i.xfs_get_extsz_hint.exit_crit_edge, %if.end4.i.xfs_get_extsz_hint.exit_crit_edge, %land.lhs.true.i.xfs_get_extsz_hint.exit_crit_edge, %xfs_is_always_cow_inode.exit.i.xfs_get_extsz_hint.exit_crit_edge
  %retval.0.i = phi i32 [ %20, %if.then11.i ], [ 0, %xfs_is_always_cow_inode.exit.i.xfs_get_extsz_hint.exit_crit_edge ], [ %15, %land.lhs.true.i.xfs_get_extsz_hint.exit_crit_edge ], [ 0, %land.lhs.true9.i.xfs_get_extsz_hint.exit_crit_edge ], [ 0, %if.end4.i.xfs_get_extsz_hint.exit_crit_edge ]
  %21 = tail call i32 @llvm.umax.i32(i32 %a.0, i32 %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1 = icmp eq i32 %21, 0
  %retval.0 = select i1 %cmp1, i32 32, i32 %21
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ilock_data_map_shared(ptr noundef %ip) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %if_format.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 6
  %0 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %if_format.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.i = icmp eq i8 %1, 3
  br i1 %cmp.i, label %xfs_need_iread_extents.exit, label %entry.xfs_need_iread_extents.exit.thread_crit_edge

entry.xfs_need_iread_extents.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_need_iread_extents.exit.thread

xfs_need_iread_extents.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %if_height.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.i = icmp eq i32 %3, 0
  %spec.select = select i1 %cmp2.i, i32 4, i32 8
  br label %xfs_need_iread_extents.exit.thread

xfs_need_iread_extents.exit.thread:               ; preds = %xfs_need_iread_extents.exit, %entry.xfs_need_iread_extents.exit.thread_crit_edge
  %4 = phi i32 [ 8, %entry.xfs_need_iread_extents.exit.thread_crit_edge ], [ %spec.select, %xfs_need_iread_extents.exit ]
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef %4)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_ilock(ptr noundef %ip, i32 noundef %lock_flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_xfs_ilock(ptr noundef %ip, i32 noundef %lock_flags, i32 noundef %1)
  %and = and i32 %lock_flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp.not = icmp eq i32 %and, 3
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !305

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 176) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %and2 = and i32 %lock_flags, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and2)
  %cmp3.not = icmp eq i32 %and2, 48
  br i1 %cmp3.not, label %cond.false11, label %cond.end.cond.end12_crit_edge, !prof !305

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 178) #12
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  %and13 = and i32 %lock_flags, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and13)
  %cmp14.not = icmp eq i32 %and13, 12
  br i1 %cmp14.not, label %cond.false22, label %cond.end12.cond.end23_crit_edge, !prof !305

cond.end12.cond.end23_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 180) #12
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.end12.cond.end23_crit_edge
  %and24 = and i32 %lock_flags, 65472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %cmp25 = icmp eq i32 %and24, 0
  br i1 %cmp25, label %cond.end23.cond.end34_crit_edge, label %cond.false33, !prof !306

cond.end23.cond.end34_crit_edge:                  ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end34

cond.false33:                                     ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 181) #12
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false33, %cond.end23.cond.end34_crit_edge
  %and35 = and i32 %lock_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #14
  %i_rwsem = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25
  %and37 = lshr i32 %lock_flags, 16
  %shr = and i32 %and37, 15
  tail call void @down_write_nested(ptr noundef %i_rwsem, i32 noundef %shr) #12
  br label %if.end45

if.else:                                          ; preds = %cond.end34
  %and38 = and i32 %lock_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else.if.end45_crit_edge, label %if.then40

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %i_rwsem42 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25
  %and43 = lshr i32 %lock_flags, 16
  %shr44 = and i32 %and43, 15
  tail call void @down_read_nested(ptr noundef %i_rwsem42, i32 noundef %shr44) #12
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.else.if.end45_crit_edge, %if.then
  %and46 = and i32 %lock_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else52, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %invalidate_lock = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 2
  %and50 = lshr i32 %lock_flags, 20
  %shr51 = and i32 %and50, 15
  tail call void @down_write_nested(ptr noundef %invalidate_lock, i32 noundef %shr51) #12
  br label %if.end62

if.else52:                                        ; preds = %if.end45
  %and53 = and i32 %lock_flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.else52.if.end62_crit_edge, label %if.then55

if.else52.if.end62_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then55:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #14
  %i_mapping57 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %4 = ptrtoint ptr %i_mapping57 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping57, align 8
  %invalidate_lock58 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 2
  %and59 = lshr i32 %lock_flags, 20
  %shr60 = and i32 %and59, 15
  tail call void @down_read_nested(ptr noundef %invalidate_lock58, i32 noundef %shr60) #12
  br label %if.end62

if.end62:                                         ; preds = %if.then55, %if.else52.if.end62_crit_edge, %if.then48
  %and63 = and i32 %lock_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.else68, label %if.then65

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %i_lock = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10
  %shr67 = lshr i32 %lock_flags, 24
  tail call void @down_write_nested(ptr noundef %i_lock, i32 noundef %shr67) #12
  %mr_writer.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %mr_writer.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %mr_writer.i, align 4
  br label %if.end76

if.else68:                                        ; preds = %if.end62
  %and69 = and i32 %lock_flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else68.if.end76_crit_edge, label %if.then71

if.else68.if.end76_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then71:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #14
  %i_lock72 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10
  %shr74 = lshr i32 %lock_flags, 24
  tail call void @down_read_nested(ptr noundef %i_lock72, i32 noundef %shr74) #12
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %if.else68.if.end76_crit_edge, %if.then65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ilock_attr_map_shared(ptr noundef %ip) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %0 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_afp, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %if_format.i = getelementptr inbounds %struct.xfs_ifork, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_format.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.i = icmp eq i8 %3, 3
  br i1 %cmp.i, label %xfs_need_iread_extents.exit, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

xfs_need_iread_extents.exit:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %if_height.i = getelementptr inbounds %struct.xfs_ifork, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.i = icmp eq i32 %5, 0
  %spec.select = select i1 %cmp2.i, i32 4, i32 8
  br label %if.end

if.end:                                           ; preds = %xfs_need_iread_extents.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %lock_mode.0 = phi i32 [ 8, %entry.if.end_crit_edge ], [ 8, %land.lhs.true.if.end_crit_edge ], [ %spec.select, %xfs_need_iread_extents.exit ]
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef %lock_mode.0)
  ret i32 %lock_mode.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_ilock(ptr noundef %ip, i32 noundef %lock_flags, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ilock, i32 0, i32 1), ptr blockaddress(@trace_xfs_ilock, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !308
  %call42 = tail call i32 @__traceiter_xfs_ilock(ptr noundef null, ptr noundef %ip, i32 noundef %lock_flags, i32 noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !309
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ilock, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ilock, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_ilock.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_ilock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 718, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ilock_nowait(ptr noundef %ip, i32 noundef %lock_flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_xfs_ilock_nowait(ptr noundef %ip, i32 noundef %lock_flags, i32 noundef %1)
  %and = and i32 %lock_flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp.not = icmp eq i32 %and, 3
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !305

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 230) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %and2 = and i32 %lock_flags, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and2)
  %cmp3.not = icmp eq i32 %and2, 48
  br i1 %cmp3.not, label %cond.false11, label %cond.end.cond.end12_crit_edge, !prof !305

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 232) #12
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  %and13 = and i32 %lock_flags, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and13)
  %cmp14.not = icmp eq i32 %and13, 12
  br i1 %cmp14.not, label %cond.false22, label %cond.end12.cond.end23_crit_edge, !prof !305

cond.end12.cond.end23_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 234) #12
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.end12.cond.end23_crit_edge
  %and24 = and i32 %lock_flags, 65472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %cmp25 = icmp eq i32 %and24, 0
  br i1 %cmp25, label %cond.end23.cond.end34_crit_edge, label %cond.false33, !prof !306

cond.end23.cond.end34_crit_edge:                  ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end34

cond.false33:                                     ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 235) #12
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false33, %cond.end23.cond.end34_crit_edge
  %and35 = and i32 %lock_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end34
  %i_rwsem = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25
  %call37 = tail call i32 @down_write_trylock(ptr noundef %i_rwsem) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then.return_crit_edge, label %if.then.if.end50_crit_edge

if.then.if.end50_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.else:                                          ; preds = %cond.end34
  %and40 = and i32 %lock_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else.if.end50_crit_edge, label %if.then42

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then42:                                        ; preds = %if.else
  %i_rwsem44 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25
  %call45 = tail call i32 @down_read_trylock(ptr noundef %i_rwsem44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then42.return_crit_edge, label %if.then42.if.end50_crit_edge

if.then42.if.end50_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then42.return_crit_edge:                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end50:                                         ; preds = %if.then42.if.end50_crit_edge, %if.else.if.end50_crit_edge, %if.then.if.end50_crit_edge
  %and51 = and i32 %lock_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else59, label %if.then53

if.then53:                                        ; preds = %if.end50
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %invalidate_lock = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 2
  %call55 = tail call i32 @down_write_trylock(ptr noundef %invalidate_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then53.out_undo_iolock_crit_edge, label %if.then53.if.end71_crit_edge

if.then53.if.end71_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then53.out_undo_iolock_crit_edge:              ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_undo_iolock

if.else59:                                        ; preds = %if.end50
  %and60 = and i32 %lock_flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.else59.if.end71_crit_edge, label %if.then62

if.else59.if.end71_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then62:                                        ; preds = %if.else59
  %i_mapping64 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %4 = ptrtoint ptr %i_mapping64 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping64, align 8
  %invalidate_lock65 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 2
  %call66 = tail call i32 @down_read_trylock(ptr noundef %invalidate_lock65) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then62.out_undo_iolock_crit_edge, label %if.then62.if.end71_crit_edge

if.then62.if.end71_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then62.out_undo_iolock_crit_edge:              ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_undo_iolock

if.end71:                                         ; preds = %if.then62.if.end71_crit_edge, %if.else59.if.end71_crit_edge, %if.then53.if.end71_crit_edge
  %and72 = and i32 %lock_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.else79, label %if.then74

if.then74:                                        ; preds = %if.end71
  %i_lock = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10
  %call.i = tail call i32 @down_write_trylock(ptr noundef %i_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then74.out_undo_mmaplock_crit_edge, label %mrtryupdate.exit

if.then74.out_undo_mmaplock_crit_edge:            ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_undo_mmaplock

mrtryupdate.exit:                                 ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  %mr_writer.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %mr_writer.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %mr_writer.i, align 4
  br label %return

if.else79:                                        ; preds = %if.end71
  %and80 = and i32 %lock_flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.else79.return_crit_edge, label %if.then82

if.else79.return_crit_edge:                       ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then82:                                        ; preds = %if.else79
  %i_lock83 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10
  %call.i145 = tail call i32 @down_read_trylock(ptr noundef %i_lock83) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool85.not = icmp eq i32 %call.i145, 0
  br i1 %tobool85.not, label %if.then82.out_undo_mmaplock_crit_edge, label %if.then82.return_crit_edge

if.then82.return_crit_edge:                       ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then82.out_undo_mmaplock_crit_edge:            ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_undo_mmaplock

out_undo_mmaplock:                                ; preds = %if.then82.out_undo_mmaplock_crit_edge, %if.then74.out_undo_mmaplock_crit_edge
  br i1 %tobool52.not, label %if.else96, label %if.then92

if.then92:                                        ; preds = %out_undo_mmaplock
  call void @__sanitizer_cov_trace_pc() #14
  %i_mapping94 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %7 = ptrtoint ptr %i_mapping94 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_mapping94, align 8
  %invalidate_lock95 = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 2
  tail call void @up_write(ptr noundef %invalidate_lock95) #12
  br label %out_undo_iolock

if.else96:                                        ; preds = %out_undo_mmaplock
  %and97 = and i32 %lock_flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.else96.out_undo_iolock_crit_edge, label %if.then99

if.else96.out_undo_iolock_crit_edge:              ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_undo_iolock

if.then99:                                        ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #14
  %i_mapping101 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %9 = ptrtoint ptr %i_mapping101 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_mapping101, align 8
  %invalidate_lock102 = getelementptr inbounds %struct.address_space, ptr %10, i32 0, i32 2
  tail call void @up_read(ptr noundef %invalidate_lock102) #12
  br label %out_undo_iolock

out_undo_iolock:                                  ; preds = %if.then99, %if.else96.out_undo_iolock_crit_edge, %if.then92, %if.then62.out_undo_iolock_crit_edge, %if.then53.out_undo_iolock_crit_edge
  br i1 %tobool36.not, label %if.else110, label %if.then107

if.then107:                                       ; preds = %out_undo_iolock
  call void @__sanitizer_cov_trace_pc() #14
  %i_rwsem109 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25
  tail call void @up_write(ptr noundef %i_rwsem109) #12
  br label %return

if.else110:                                       ; preds = %out_undo_iolock
  %and111 = and i32 %lock_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.else110.return_crit_edge, label %if.then113

if.else110.return_crit_edge:                      ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then113:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #14
  %i_rwsem115 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25
  tail call void @up_read(ptr noundef %i_rwsem115) #12
  br label %return

return:                                           ; preds = %if.then113, %if.else110.return_crit_edge, %if.then107, %if.then82.return_crit_edge, %if.else79.return_crit_edge, %mrtryupdate.exit, %if.then42.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.else79.return_crit_edge ], [ 1, %if.then82.return_crit_edge ], [ 1, %mrtryupdate.exit ], [ 0, %if.then107 ], [ 0, %if.then113 ], [ 0, %if.else110.return_crit_edge ], [ 0, %if.then42.return_crit_edge ], [ 0, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_ilock_nowait(ptr noundef %ip, i32 noundef %lock_flags, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ilock_nowait, i32 0, i32 1), ptr blockaddress(@trace_xfs_ilock_nowait, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !312
  %call42 = tail call i32 @__traceiter_xfs_ilock_nowait(ptr noundef null, ptr noundef %ip, i32 noundef %lock_flags, i32 noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !313
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ilock_nowait, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ilock_nowait, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_ilock_nowait.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_ilock_nowait.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 719, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_iunlock(ptr noundef %ip, i32 noundef %lock_flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %lock_flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp.not = icmp eq i32 %and, 3
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !305

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 299) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %and2 = and i32 %lock_flags, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and2)
  %cmp3.not = icmp eq i32 %and2, 48
  br i1 %cmp3.not, label %cond.false11, label %cond.end.cond.end12_crit_edge, !prof !305

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 301) #12
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  %and13 = and i32 %lock_flags, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and13)
  %cmp14.not = icmp eq i32 %and13, 12
  br i1 %cmp14.not, label %cond.false22, label %cond.end12.cond.end23_crit_edge, !prof !305

cond.end12.cond.end23_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 303) #12
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.end12.cond.end23_crit_edge
  %and24 = and i32 %lock_flags, 65472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %cmp25 = icmp eq i32 %and24, 0
  br i1 %cmp25, label %cond.end34, label %cond.end34.thread, !prof !306

cond.end34.thread:                                ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 304) #12
  br label %cond.end44

cond.end34:                                       ; preds = %cond.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock_flags)
  %cmp35.not = icmp eq i32 %lock_flags, 0
  br i1 %cmp35.not, label %if.else69.thread, label %cond.end34.cond.end44_crit_edge, !prof !305

cond.end34.cond.end44_crit_edge:                  ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end44

if.else69.thread:                                 ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 305) #12
  br label %if.end75

cond.end44:                                       ; preds = %cond.end34.cond.end44_crit_edge, %cond.end34.thread
  %and45 = and i32 %lock_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #14
  %i_rwsem = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25
  tail call void @up_write(ptr noundef %i_rwsem) #12
  br label %if.end52

if.else:                                          ; preds = %cond.end44
  %and47 = and i32 %lock_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.else.if.end52_crit_edge, label %if.then49

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %i_rwsem51 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25
  tail call void @up_read(ptr noundef %i_rwsem51) #12
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.else.if.end52_crit_edge, %if.then
  %and53 = and i32 %lock_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.else57, label %if.then55

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %invalidate_lock = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 2
  tail call void @up_write(ptr noundef %invalidate_lock) #12
  br label %if.end65

if.else57:                                        ; preds = %if.end52
  %and58 = and i32 %lock_flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.else57.if.end65_crit_edge, label %if.then60

if.else57.if.end65_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then60:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #14
  %i_mapping62 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %2 = ptrtoint ptr %i_mapping62 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping62, align 8
  %invalidate_lock63 = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 2
  tail call void @up_read(ptr noundef %invalidate_lock63) #12
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.else57.if.end65_crit_edge, %if.then55
  %and66 = and i32 %lock_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.else69, label %if.then68

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %i_lock = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10
  %mr_writer.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %mr_writer.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mr_writer.i, align 4
  tail call void @up_write(ptr noundef %i_lock) #12
  br label %if.end75

if.else69:                                        ; preds = %if.end65
  %and70 = and i32 %lock_flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.else69.if.end75_crit_edge, label %if.then72

if.else69.if.end75_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then72:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #14
  %i_lock73 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10
  tail call void @up_read(ptr noundef %i_lock73) #12
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.else69.if.end75_crit_edge, %if.then68, %if.else69.thread
  %5 = tail call ptr @llvm.returnaddress(i32 0)
  %6 = ptrtoint ptr %5 to i32
  tail call fastcc void @trace_xfs_iunlock(ptr noundef %ip, i32 noundef %lock_flags, i32 noundef %6)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_iunlock(ptr noundef %ip, i32 noundef %lock_flags, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlock, i32 0, i32 1), ptr blockaddress(@trace_xfs_iunlock, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !314
  %call42 = tail call i32 @__traceiter_xfs_iunlock(ptr noundef null, ptr noundef %ip, i32 noundef %lock_flags, i32 noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !315
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlock, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlock, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_iunlock.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_iunlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 721, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
define dso_local void @xfs_ilock_demote(ptr noundef %ip, i32 noundef %lock_flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %lock_flags, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !305

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 334) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %and3 = and i32 %lock_flags, -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp = icmp eq i32 %and3, 0
  br i1 %cmp, label %cond.end.cond.end12_crit_edge, label %cond.false11, !prof !306

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 336) #12
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  %and13 = and i32 %lock_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %cond.end12.if.end_crit_edge, label %if.then

cond.end12.if.end_crit_edge:                      ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #14
  %i_lock = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10
  %mr_writer.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %mr_writer.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mr_writer.i, align 4
  tail call void @downgrade_write(ptr noundef %i_lock) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end12.if.end_crit_edge
  %and15 = and i32 %lock_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end.if.end18_crit_edge, label %if.then17

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %1 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_mapping, align 8
  %invalidate_lock = getelementptr inbounds %struct.address_space, ptr %2, i32 0, i32 2
  tail call void @downgrade_write(ptr noundef %invalidate_lock) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end.if.end18_crit_edge
  %and19 = and i32 %lock_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end23_crit_edge, label %if.then21

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %i_rwsem = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25
  tail call void @downgrade_write(ptr noundef %i_rwsem) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18.if.end23_crit_edge
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  tail call fastcc void @trace_xfs_ilock_demote(ptr noundef %ip, i32 noundef %lock_flags, i32 noundef %4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @downgrade_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_ilock_demote(ptr noundef %ip, i32 noundef %lock_flags, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ilock_demote, i32 0, i32 1), ptr blockaddress(@trace_xfs_ilock_demote, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  %call42 = tail call i32 @__traceiter_xfs_ilock_demote(ptr noundef null, ptr noundef %ip, i32 noundef %lock_flags, i32 noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ilock_demote, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ilock_demote, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_ilock_demote.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_ilock_demote.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 720, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
define dso_local zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef %lock_flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %lock_flags, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %and1 = and i32 %lock_flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %mr_writer = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %mr_writer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mr_writer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4 = icmp ne i32 %1, 0
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %i_lock6 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_lock6, i32 noundef 4) #12
  %2 = ptrtoint ptr %i_lock6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_lock6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp ne i32 %3, 0
  br label %return

if.end8:                                          ; preds = %entry
  %and9 = and i32 %lock_flags, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %i_rwsem = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem, i32 noundef 4) #12
  %5 = ptrtoint ptr %i_rwsem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %i_rwsem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i = icmp ne i32 %6, 0
  %conv.i.i = zext i1 %cmp.i.i to i32
  br label %__xfs_rwsem_islocked.exit

if.end.i:                                         ; preds = %if.then11
  %and13 = and i32 %lock_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %dep_map7.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25, i32 6
  br i1 %tobool14.not, label %if.then3.i, label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map7.i, i32 noundef 0) #12
  br label %__xfs_rwsem_islocked.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map7.i, i32 noundef -1) #12
  br label %__xfs_rwsem_islocked.exit

__xfs_rwsem_islocked.exit:                        ; preds = %if.end6.i, %if.then3.i, %if.then.i
  %retval.0.in.i = phi i32 [ %call8.i, %if.end6.i ], [ %call4.i, %if.then3.i ], [ %conv.i.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.i)
  %retval.0.i = icmp ne i32 %retval.0.in.i, 0
  br label %return

if.end16:                                         ; preds = %if.end8
  %and17 = and i32 %lock_flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end25, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i35 = icmp eq i32 %7, 0
  br i1 %tobool.not.i35, label %if.then.i39, label %if.end.i41

if.then.i39:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %i_rwsem21 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25
  %call.i.i.i.i36 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem21, i32 noundef 4) #12
  %8 = ptrtoint ptr %i_rwsem21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_rwsem21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i37 = icmp ne i32 %9, 0
  %conv.i.i38 = zext i1 %cmp.i.i37 to i32
  br label %__xfs_rwsem_islocked.exit48

if.end.i41:                                       ; preds = %if.then19
  %and22 = and i32 %lock_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %dep_map7.i40 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25, i32 6
  br i1 %tobool23.not, label %if.then3.i43, label %if.end6.i45

if.then3.i43:                                     ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i42 = tail call i32 @lock_is_held_type(ptr noundef %dep_map7.i40, i32 noundef 0) #12
  br label %__xfs_rwsem_islocked.exit48

if.end6.i45:                                      ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i44 = tail call i32 @lock_is_held_type(ptr noundef %dep_map7.i40, i32 noundef -1) #12
  br label %__xfs_rwsem_islocked.exit48

__xfs_rwsem_islocked.exit48:                      ; preds = %if.end6.i45, %if.then3.i43, %if.then.i39
  %retval.0.in.i46 = phi i32 [ %call8.i44, %if.end6.i45 ], [ %call4.i42, %if.then3.i43 ], [ %conv.i.i38, %if.then.i39 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.i46)
  %retval.0.i47 = icmp ne i32 %retval.0.in.i46, 0
  br label %return

if.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 390) #12
  br label %return

return:                                           ; preds = %if.end25, %__xfs_rwsem_islocked.exit48, %__xfs_rwsem_islocked.exit, %if.end, %if.then3
  %retval.0 = phi i1 [ %cmp.i, %if.end ], [ %tobool4, %if.then3 ], [ %retval.0.i, %__xfs_rwsem_islocked.exit ], [ %retval.0.i47, %__xfs_rwsem_islocked.exit48 ], [ false, %if.end25 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_lock_two_inodes(ptr noundef %ip0, i32 noundef %ip0_mode, ptr noundef %ip1, i32 noundef %ip1_mode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %ip0_mode) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 1
  br i1 %cmp, label %entry.cond.false577_crit_edge, label %cond.false287, !prof !306

entry.cond.false577_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false577

cond.false287:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 570) #12
  br label %cond.false577

cond.false577:                                    ; preds = %cond.false287, %entry.cond.false577_crit_edge
  %call.i771 = tail call i32 @__sw_hweight32(i32 noundef %ip1_mode) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i771)
  %cmp581 = icmp eq i32 %call.i771, 1
  br i1 %cmp581, label %cond.false577.cond.end591_crit_edge, label %cond.false590, !prof !306

cond.false577.cond.end591_crit_edge:              ; preds = %cond.false577
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end591

cond.false590:                                    ; preds = %cond.false577
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 571) #12
  br label %cond.end591

cond.end591:                                      ; preds = %cond.false590, %cond.false577.cond.end591_crit_edge
  %and592 = and i32 %ip0_mode, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and592)
  %tobool593.not = icmp eq i32 %and592, 0
  br i1 %tobool593.not, label %cond.end591.cond.end604_crit_edge, label %cond.false603, !prof !306

cond.end591.cond.end604_crit_edge:                ; preds = %cond.end591
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end604

cond.false603:                                    ; preds = %cond.end591
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 572) #12
  br label %cond.end604

cond.end604:                                      ; preds = %cond.false603, %cond.end591.cond.end604_crit_edge
  %and605 = and i32 %ip1_mode, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and605)
  %tobool606.not = icmp eq i32 %and605, 0
  br i1 %tobool606.not, label %cond.end604.cond.end617_crit_edge, label %cond.false616, !prof !306

cond.end604.cond.end617_crit_edge:                ; preds = %cond.end604
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end617

cond.false616:                                    ; preds = %cond.end604
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 573) #12
  br label %cond.end617

cond.end617:                                      ; preds = %cond.false616, %cond.end604.cond.end617_crit_edge
  %and618 = and i32 %ip0_mode, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and618)
  %tobool619.not = icmp eq i32 %and618, 0
  br i1 %tobool619.not, label %cond.end617.cond.end630_crit_edge, label %cond.false629, !prof !306

cond.end617.cond.end630_crit_edge:                ; preds = %cond.end617
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end630

cond.false629:                                    ; preds = %cond.end617
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 574) #12
  br label %cond.end630

cond.end630:                                      ; preds = %cond.false629, %cond.end617.cond.end630_crit_edge
  %and631 = and i32 %ip1_mode, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and631)
  %tobool632.not = icmp eq i32 %and631, 0
  br i1 %tobool632.not, label %cond.end630.cond.end643_crit_edge, label %cond.false642, !prof !306

cond.end630.cond.end643_crit_edge:                ; preds = %cond.end630
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end643

cond.false642:                                    ; preds = %cond.end630
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 575) #12
  br label %cond.end643

cond.end643:                                      ; preds = %cond.false642, %cond.end630.cond.end643_crit_edge
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip0, i32 0, i32 4
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_ino, align 8
  %i_ino644 = getelementptr inbounds %struct.xfs_inode, ptr %ip1, i32 0, i32 4
  %2 = ptrtoint ptr %i_ino644 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_ino644, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp645.not = icmp eq i64 %1, %3
  br i1 %cmp645.not, label %cond.false654, label %cond.end643.cond.end655_crit_edge, !prof !305

cond.end643.cond.end655_crit_edge:                ; preds = %cond.end643
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end655

cond.false654:                                    ; preds = %cond.end643
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 576) #12
  br label %cond.end655

cond.end655:                                      ; preds = %cond.false654, %cond.end643.cond.end655_crit_edge
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_ino, align 8
  %6 = ptrtoint ptr %i_ino644 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_ino644, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp658 = icmp ugt i64 %5, %7
  br i1 %cmp658, label %do.body, label %cond.end655.if.end_crit_edge

cond.end655.if.end_crit_edge:                     ; preds = %cond.end655
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body:                                          ; preds = %cond.end655
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body, %cond.end655.if.end_crit_edge
  %and24.i779.pre-phi = phi i32 [ %and618, %do.body ], [ %and631, %cond.end655.if.end_crit_edge ]
  %and13.i776.pre-phi = phi i32 [ %and592, %do.body ], [ %and605, %cond.end655.if.end_crit_edge ]
  %ip1.addr.0 = phi ptr [ %ip0, %do.body ], [ %ip1, %cond.end655.if.end_crit_edge ]
  %ip1_mode.addr.0 = phi i32 [ %ip0_mode, %do.body ], [ %ip1_mode, %cond.end655.if.end_crit_edge ]
  %ip0_mode.addr.0 = phi i32 [ %ip1_mode, %do.body ], [ %ip0_mode, %cond.end655.if.end_crit_edge ]
  %ip0.addr.0 = phi ptr [ %ip1, %do.body ], [ %ip0, %cond.end655.if.end_crit_edge ]
  %and.i = and i32 %ip0_mode.addr.0, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and56.i = and i32 %ip0_mode.addr.0, 65535
  %i_itemp = getelementptr inbounds %struct.xfs_inode, ptr %ip0.addr.0, i32 0, i32 9
  %and.i772 = and i32 %ip1_mode.addr.0, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i772)
  %tobool.not.i773 = icmp eq i32 %and.i772, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i776.pre-phi)
  %tobool14.not.i777 = icmp eq i32 %and13.i776.pre-phi, 0
  %spec.select = select i1 %tobool14.not.i777, i32 0, i32 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i779.pre-phi)
  %tobool25.not.i780 = icmp eq i32 %and24.i779.pre-phi, 0
  %add38.i = or i32 %spec.select, 1048576
  %class.1.i = select i1 %tobool25.not.i780, i32 %spec.select, i32 %add38.i
  %and40.i783 = and i32 %ip1_mode.addr.0, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i783)
  %tobool41.not.i784 = icmp eq i32 %and40.i783, 0
  %add54.i = or i32 %class.1.i, 16777216
  %class.2.i = select i1 %tobool41.not.i784, i32 %class.1.i, i32 %add54.i
  %and56.i787 = and i32 %ip1_mode.addr.0, 65535
  %or.i = or i32 %class.2.i, %and56.i787
  br label %again

again:                                            ; preds = %again.backedge, %if.end
  %attempts.0 = phi i32 [ 0, %if.end ], [ %inc, %again.backedge ]
  br i1 %tobool.not.i, label %again.xfs_lock_inumorder.exit_crit_edge, label %cond.false.i, !prof !306

again.xfs_lock_inumorder.exit_crit_edge:          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_lock_inumorder.exit

cond.false.i:                                     ; preds = %again
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 424) #12
  br label %xfs_lock_inumorder.exit

xfs_lock_inumorder.exit:                          ; preds = %cond.false.i, %again.xfs_lock_inumorder.exit_crit_edge
  tail call void @xfs_ilock(ptr noundef %ip0.addr.0, i32 noundef %and56.i)
  %8 = ptrtoint ptr %i_itemp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_itemp, align 8
  %tobool665.not = icmp eq ptr %9, null
  br i1 %tobool665.not, label %xfs_lock_inumorder.exit.if.else_crit_edge, label %land.lhs.true

xfs_lock_inumorder.exit.if.else_crit_edge:        ; preds = %xfs_lock_inumorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %xfs_lock_inumorder.exit
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %li_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %li_flags, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool667.not = icmp eq i32 %and1.i, 0
  br i1 %tobool667.not, label %land.lhs.true.if.else_crit_edge, label %if.then668

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then668:                                       ; preds = %land.lhs.true
  br i1 %tobool.not.i773, label %if.then668.cond.end.i775_crit_edge, label %cond.false.i774, !prof !306

if.then668.cond.end.i775_crit_edge:               ; preds = %if.then668
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i775

cond.false.i774:                                  ; preds = %if.then668
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 424) #12
  br label %cond.end.i775

cond.end.i775:                                    ; preds = %cond.false.i774, %if.then668.cond.end.i775_crit_edge
  %call670 = tail call i32 @xfs_ilock_nowait(ptr noundef %ip1.addr.0, i32 noundef %or.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call670)
  %tobool671.not = icmp eq i32 %call670, 0
  br i1 %tobool671.not, label %if.then672, label %cond.end.i775.if.end679_crit_edge

cond.end.i775.if.end679_crit_edge:                ; preds = %cond.end.i775
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end679

if.then672:                                       ; preds = %cond.end.i775
  tail call void @xfs_iunlock(ptr noundef %ip0.addr.0, i32 noundef %ip0_mode.addr.0)
  %inc = add i32 %attempts.0, 1
  %rem = srem i32 %inc, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp673 = icmp eq i32 %rem, 0
  br i1 %cmp673, label %if.then675, label %if.then672.again.backedge_crit_edge

if.then672.again.backedge_crit_edge:              ; preds = %if.then672
  call void @__sanitizer_cov_trace_pc() #14
  br label %again.backedge

if.then675:                                       ; preds = %if.then672
  call void @__sanitizer_cov_trace_pc() #14
  %call.i789 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #12
  br label %again.backedge

again.backedge:                                   ; preds = %if.then675, %if.then672.again.backedge_crit_edge
  br label %again

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %xfs_lock_inumorder.exit.if.else_crit_edge
  br i1 %tobool.not.i773, label %if.else.cond.end.i793_crit_edge, label %cond.false.i792, !prof !306

if.else.cond.end.i793_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i793

cond.false.i792:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 424) #12
  br label %cond.end.i793

cond.end.i793:                                    ; preds = %cond.false.i792, %if.else.cond.end.i793_crit_edge
  tail call void @xfs_ilock(ptr noundef %ip1.addr.0, i32 noundef %or.i)
  br label %if.end679

if.end679:                                        ; preds = %cond.end.i793, %cond.end.i775.if.end679_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_ip2xflags(ptr nocapture noundef readonly %ip) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %0 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_diflags, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end97_crit_edge, label %if.then

entry.if.end97_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and3 = and i32 %conv, 1
  %2 = and i16 %1, 2
  %3 = zext i16 %2 to i32
  %4 = or i32 %and3, %3
  %5 = and i16 %1, 8
  %6 = zext i16 %5 to i32
  %7 = or i32 %4, %6
  %8 = and i16 %1, 16
  %9 = zext i16 %8 to i32
  %10 = or i32 %7, %9
  %11 = and i16 %1, 32
  %12 = zext i16 %11 to i32
  %13 = or i32 %10, %12
  %14 = and i16 %1, 64
  %15 = zext i16 %14 to i32
  %16 = or i32 %13, %15
  %17 = and i16 %1, 128
  %18 = zext i16 %17 to i32
  %19 = or i32 %16, %18
  %20 = and i16 %1, 256
  %21 = zext i16 %20 to i32
  %22 = or i32 %19, %21
  %23 = and i16 %1, 512
  %24 = zext i16 %23 to i32
  %25 = or i32 %22, %24
  %26 = and i16 %1, 1024
  %27 = zext i16 %26 to i32
  %28 = or i32 %25, %27
  %29 = and i16 %1, 2048
  %30 = zext i16 %29 to i32
  %31 = or i32 %28, %30
  %32 = and i16 %1, 4096
  %33 = zext i16 %32 to i32
  %34 = or i32 %31, %33
  %35 = and i16 %1, 8192
  %36 = zext i16 %35 to i32
  %37 = or i32 %34, %36
  %38 = and i16 %1, 16384
  %39 = zext i16 %38 to i32
  %40 = or i32 %37, %39
  br label %if.end97

if.end97:                                         ; preds = %if.then, %entry.if.end97_crit_edge
  %flags.13 = phi i32 [ 0, %entry.if.end97_crit_edge ], [ %40, %if.then ]
  %i_diflags2 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %41 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %i_diflags2, align 8
  %and98 = and i64 %42, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and98)
  %tobool99.not = icmp eq i64 %and98, 0
  %43 = trunc i64 %42 to i32
  %44 = shl i32 %43, 15
  %45 = and i32 %44, 32768
  %46 = or i32 %45, %flags.13
  %47 = shl i32 %43, 14
  %48 = and i32 %47, 65536
  %49 = or i32 %46, %48
  %flags.15 = select i1 %tobool99.not, i32 %flags.13, i32 %49
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %50 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp.not = icmp eq i8 %51, 0
  %or117 = or i32 %flags.15, -2147483648
  %spec.select155 = select i1 %cmp.not, i32 %flags.15, i32 %or117
  ret i32 %spec.select155
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_lookup(ptr noundef %dp, ptr noundef %name, ptr noundef %ipp, ptr noundef %ci_name) local_unnamed_addr #2 align 64 {
entry:
  %inum = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inum) #12
  %0 = ptrtoint ptr %inum to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %inum, align 8, !annotation !318
  tail call fastcc void @trace_xfs_lookup(ptr noundef %dp, ptr noundef %name)
  %1 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp, align 8
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 66
  %3 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %m_opstate.i, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @xfs_dir_lookup(ptr noundef null, ptr noundef %dp, ptr noundef %name, ptr noundef nonnull %inum, ptr noundef %ci_name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dp, align 8
  %8 = ptrtoint ptr %inum to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %inum, align 8
  %call5 = call i32 @xfs_iget(ptr noundef %7, ptr noundef null, i64 noundef %9, i32 noundef 0, i32 noundef 0, ptr noundef %ipp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %out_free_name

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out_free_name:                                    ; preds = %if.end3
  %tobool9.not = icmp eq ptr %ci_name, null
  br i1 %tobool9.not, label %out_free_name.out_unlock_crit_edge, label %if.then10

out_free_name.out_unlock_crit_edge:               ; preds = %out_free_name
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then10:                                        ; preds = %out_free_name
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %ci_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_name, align 4
  call void @kvfree(ptr noundef %11) #12
  br label %out_unlock

out_unlock:                                       ; preds = %if.then10, %out_free_name.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %error.0 = phi i32 [ %call1, %if.end.out_unlock_crit_edge ], [ %call5, %if.then10 ], [ %call5, %out_free_name.out_unlock_crit_edge ]
  %12 = ptrtoint ptr %ipp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ipp, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_unlock ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inum) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_lookup(ptr noundef %dp, ptr noundef %xfs_lookup) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_lookup, i32 0, i32 1), ptr blockaddress(@trace_xfs_lookup, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !319
  %call42 = tail call i32 @__traceiter_xfs_lookup(ptr noundef null, ptr noundef %dp, ptr noundef %xfs_lookup) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !320
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_lookup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_lookup, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_lookup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 963, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
declare dso_local i32 @xfs_dir_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iget(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_init_new_inode(ptr noundef %mnt_userns, ptr noundef %tp, ptr noundef %pip, i64 noundef %ino, i16 noundef zeroext %mode, i32 noundef %nlink, i32 noundef %rdev, i32 noundef %prid, i1 noundef zeroext %init_xattrs, ptr nocapture noundef writeonly %ipp) local_unnamed_addr #2 align 64 {
entry:
  %ip = alloca ptr, align 4
  %tv = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pip, null
  br i1 %tobool.not, label %cond.end.thread, label %land.lhs.true

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %t_mountp149 = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp149 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp149, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #12
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %ip, align 4, !annotation !318
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv)
  %3 = call ptr @memset(ptr %tv, i32 255, i32 16)
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %pip, i32 0, i32 27
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %4 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_mountp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #12
  %6 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %ip, align 4, !annotation !318
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv)
  %7 = call ptr @memset(ptr %tv, i32 255, i32 16)
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %pip, i32 0, i32 4
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %ino)
  %cmp = icmp eq i64 %9, %ino
  br i1 %cmp, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %cond.end.thread
  %10 = phi ptr [ %1, %cond.end.thread ], [ %5, %land.lhs.true.lor.lhs.false_crit_edge ]
  %cond150 = phi ptr [ null, %cond.end.thread ], [ %i_vnode.i, %land.lhs.true.lor.lhs.false_crit_edge ]
  %call2 = tail call zeroext i1 @xfs_verify_dir_ino(ptr noundef %10, i64 noundef %ino) #12
  br i1 %call2, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %11 = phi ptr [ %10, %lor.lhs.false.if.then_crit_edge ], [ %5, %land.lhs.true.if.then_crit_edge ]
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %11, ptr noundef nonnull @.str.16, i64 noundef %ino) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @xfs_iget(ptr noundef %10, ptr noundef %tp, i64 noundef %ino, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %ip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ip, align 4
  %cmp7.not = icmp eq ptr %13, null
  br i1 %cmp7.not, label %cond.false11, label %if.end6.cond.end12_crit_edge, !prof !305

if.end6.cond.end12_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end12

cond.false11:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 828) #12
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %if.end6.cond.end12_crit_edge
  %14 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ip, align 4
  %i_vnode.i137 = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27
  call void @set_nlink(ptr noundef %i_vnode.i137, i32 noundef %nlink) #12
  %i_rdev = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 13
  %16 = ptrtoint ptr %i_rdev to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %rdev, ptr %i_rdev, align 8
  %17 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ip, align 4
  %i_projid = getelementptr inbounds %struct.xfs_inode, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %i_projid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %prid, ptr %i_projid, align 8
  %tobool14.not = icmp eq ptr %cond150, null
  br i1 %tobool14.not, label %cond.end12.if.else_crit_edge, label %land.lhs.true15

cond.end12.if.else_crit_edge:                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true15:                                  ; preds = %cond.end12
  %20 = ptrtoint ptr %cond150 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cond150, align 8
  %22 = and i16 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool16.not = icmp eq i16 %22, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %land.lhs.true15.if.else_crit_edge

land.lhs.true15.if.else_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true17:                                  ; preds = %land.lhs.true15
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 61
  %23 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %24, 36028797018963968
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true17.if.else_crit_edge, label %if.then20

land.lhs.true17.if.else_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then20:                                        ; preds = %land.lhs.true17
  %i_sb.i.i = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 8
  %25 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 53
  %27 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_user_ns.i.i, align 8
  %29 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 99
  %33 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cred.i.i, align 16
  %fsuid.i.i = getelementptr inbounds %struct.cred, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %fsuid.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %agg.tmp.sroa.0.0.copyload.i.i = load i32, ptr %fsuid.i.i, align 4
  %cmp.i.i.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i.i = icmp eq ptr %28, %mnt_userns
  %spec.select.i.i.i.i = or i1 %cmp.i.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %if.then20.inode_fsuid_set.exit_crit_edge, label %if.end.i.i.i

if.then20.inode_fsuid_set.exit_crit_edge:         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %inode_fsuid_set.exit

if.end.i.i.i:                                     ; preds = %if.then20
  %.fca.0.insert.i.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i.i, 0
  %call2.i.i.i = call i32 @from_kuid(ptr noundef %mnt_userns, [1 x i32] %.fca.0.insert.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call2.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.end.i.i.i.inode_fsuid_set.exit_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.inode_fsuid_set.exit_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %inode_fsuid_set.exit

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %cmp.i17.i.i.i = icmp eq ptr %28, @init_user_ns
  br i1 %cmp.i17.i.i.i, label %if.end4.i.i.i.inode_fsuid_set.exit_crit_edge, label %if.end8.i.i.i

if.end4.i.i.i.inode_fsuid_set.exit_crit_edge:     ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %inode_fsuid_set.exit

if.end8.i.i.i:                                    ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i.i.i = call i32 @make_kuid(ptr noundef %28, i32 noundef %call2.i.i.i) #12
  br label %inode_fsuid_set.exit

inode_fsuid_set.exit:                             ; preds = %if.end8.i.i.i, %if.end4.i.i.i.inode_fsuid_set.exit_crit_edge, %if.end.i.i.i.inode_fsuid_set.exit_crit_edge, %if.then20.inode_fsuid_set.exit_crit_edge
  %retval.sroa.0.0.i.i.i = phi i32 [ %call9.i.i.i, %if.end8.i.i.i ], [ -1, %if.end.i.i.i.inode_fsuid_set.exit_crit_edge ], [ %call2.i.i.i, %if.end4.i.i.i.inode_fsuid_set.exit_crit_edge ], [ %agg.tmp.sroa.0.0.copyload.i.i, %if.then20.inode_fsuid_set.exit_crit_edge ]
  %i_uid.i = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 2
  %36 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.sroa.0.0.i.i.i, ptr %i_uid.i, align 4
  %i_gid = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 3
  %i_gid21 = getelementptr inbounds %struct.inode, ptr %cond150, i32 0, i32 3
  %37 = ptrtoint ptr %i_gid21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_gid21, align 8
  %39 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %i_gid, align 8
  %40 = ptrtoint ptr %i_vnode.i137 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %mode, ptr %i_vnode.i137, align 8
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true17.if.else_crit_edge, %land.lhs.true15.if.else_crit_edge, %cond.end12.if.else_crit_edge
  call void @inode_init_owner(ptr noundef %mnt_userns, ptr noundef %i_vnode.i137, ptr noundef %cond150, i16 noundef zeroext %mode) #12
  br label %if.end23

if.end23:                                         ; preds = %if.else, %inode_fsuid_set.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 0, i32 1) to i32))
  %41 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool24.not = icmp eq i32 %41, 0
  br i1 %tobool24.not, label %if.end23.if.end40_crit_edge, label %land.lhs.true25

if.end23.if.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

land.lhs.true25:                                  ; preds = %if.end23
  %42 = ptrtoint ptr %i_vnode.i137 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %i_vnode.i137, align 8
  %44 = and i16 %43, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool29.not = icmp eq i16 %44, 0
  br i1 %tobool29.not, label %land.lhs.true25.if.end40_crit_edge, label %land.lhs.true30

land.lhs.true25.if.end40_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %i_sb.i.i138 = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 8
  %45 = ptrtoint ptr %i_sb.i.i138 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_sb.i.i138, align 4
  %s_user_ns.i.i139 = getelementptr inbounds %struct.super_block, ptr %46, i32 0, i32 53
  %47 = ptrtoint ptr %s_user_ns.i.i139 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_user_ns.i.i139, align 8
  %i_gid.i = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 3
  %49 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.unpack.i = load i32, ptr %i_gid.i, align 8
  %50 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i.i140 = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i141 = icmp eq ptr %48, %mnt_userns
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i140, %cmp.i.i.i141
  br i1 %spec.select.i.i.i, label %land.lhs.true30.i_gid_into_mnt.exit_crit_edge, label %if.end.i.i

land.lhs.true30.i_gid_into_mnt.exit_crit_edge:    ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_gid_into_mnt.exit

if.end.i.i:                                       ; preds = %land.lhs.true30
  %cmp.i21.i.i = icmp eq ptr %48, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i = call i32 @from_kgid(ptr noundef %48, [1 x i32] %50) #12
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %gid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i)
  %cmp.i.i = icmp eq i32 %gid.0.i.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.i_gid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_gid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_gid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call10.i.i = call i32 @make_kgid(ptr noundef %mnt_userns, i32 noundef %gid.0.i.i) #12
  br label %i_gid_into_mnt.exit

i_gid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_gid_into_mnt.exit_crit_edge, %land.lhs.true30.i_gid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_gid_into_mnt.exit_crit_edge ], [ %.unpack.i, %land.lhs.true30.i_gid_into_mnt.exit_crit_edge ]
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i, 0
  %call33 = call i32 @in_group_p([1 x i32] %.fca.0.insert) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %i_gid_into_mnt.exit.if.end40_crit_edge

i_gid_into_mnt.exit.if.end40_crit_edge:           ; preds = %i_gid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then35:                                        ; preds = %i_gid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %i_vnode.i137 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %i_vnode.i137, align 8
  %53 = and i16 %52, -1025
  store i16 %53, ptr %i_vnode.i137, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %i_gid_into_mnt.exit.if.end40_crit_edge, %land.lhs.true25.if.end40_crit_edge, %if.end23.if.end40_crit_edge
  %54 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ip, align 4
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %55, i32 0, i32 18
  %56 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 0, ptr %i_disk_size, align 8
  %if_nextents = getelementptr inbounds %struct.xfs_inode, ptr %55, i32 0, i32 8, i32 7
  %57 = ptrtoint ptr %if_nextents to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %if_nextents, align 4
  %i_nblocks = getelementptr inbounds %struct.xfs_inode, ptr %55, i32 0, i32 19
  %58 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %i_nblocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %cmp41 = icmp eq i64 %59, 0
  br i1 %cmp41, label %if.end40.cond.end51_crit_edge, label %cond.false50, !prof !306

if.end40.cond.end51_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end51

cond.false50:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 854) #12
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false50, %if.end40.cond.end51_crit_edge
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tv, ptr noundef %i_vnode.i137) #12
  %i_mtime = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 16
  %60 = call ptr @memcpy(ptr %i_mtime, ptr %tv, i32 16)
  %i_atime = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 15
  %61 = call ptr @memcpy(ptr %i_atime, ptr %tv, i32 16)
  %i_ctime = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 17
  %62 = call ptr @memcpy(ptr %i_ctime, ptr %tv, i32 16)
  %63 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ip, align 4
  %i_extsize = getelementptr inbounds %struct.xfs_inode, ptr %64, i32 0, i32 21
  %65 = ptrtoint ptr %i_extsize to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %i_extsize, align 4
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %64, i32 0, i32 24
  %66 = ptrtoint ptr %i_diflags to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %i_diflags, align 2
  %m_features.i142 = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 61
  %67 = ptrtoint ptr %m_features.i142 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %m_features.i142, align 8
  %and.i143 = and i64 %68, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i143)
  %tobool.i144.not = icmp eq i64 %and.i143, 0
  br i1 %tobool.i144.not, label %cond.end51.if.end54_crit_edge, label %if.then53

cond.end51.if.end54_crit_edge:                    ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then53:                                        ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #14
  %i_version.i.i = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 38
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #12
  call void @generic_atomic64_set(ptr noundef %i_version.i.i, i64 noundef 2) #12
  %69 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ip, align 4
  %71 = getelementptr inbounds %struct.xfs_inode, ptr %70, i32 0, i32 22
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %71, align 8
  %i_crtime = getelementptr inbounds %struct.xfs_inode, ptr %70, i32 0, i32 26
  %73 = call ptr @memcpy(ptr %i_crtime, ptr %tv, i32 16)
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %cond.end51.if.end54_crit_edge
  %74 = and i16 %mode, -4096
  %and56 = zext i16 %74 to i32
  %75 = add nsw i32 %and56, -4096
  %76 = lshr exact i32 %75, 12
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values)
  switch i32 %76, label %sw.default [
    i32 0, label %if.end54.sw.bb_crit_edge
    i32 1, label %if.end54.sw.bb_crit_edge151
    i32 5, label %if.end54.sw.bb_crit_edge152
    i32 11, label %if.end54.sw.bb_crit_edge153
    i32 7, label %if.end54.sw.bb58_crit_edge
    i32 3, label %if.end54.sw.bb58_crit_edge154
    i32 9, label %if.end54.sw.bb73_crit_edge
  ]

if.end54.sw.bb73_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb73

if.end54.sw.bb58_crit_edge154:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb58

if.end54.sw.bb58_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb58

if.end54.sw.bb_crit_edge153:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end54.sw.bb_crit_edge152:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end54.sw.bb_crit_edge151:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end54.sw.bb_crit_edge:                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end54.sw.bb_crit_edge, %if.end54.sw.bb_crit_edge151, %if.end54.sw.bb_crit_edge152, %if.end54.sw.bb_crit_edge153
  %78 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ip, align 4
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %79, i32 0, i32 8, i32 6
  %80 = ptrtoint ptr %if_format to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %if_format, align 2
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end54.sw.bb58_crit_edge, %if.end54.sw.bb58_crit_edge154
  br i1 %tobool.not, label %sw.bb58.sw.bb73_crit_edge, label %land.lhs.true60

sw.bb58.sw.bb73_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb73

land.lhs.true60:                                  ; preds = %sw.bb58
  %i_diflags61 = getelementptr inbounds %struct.xfs_inode, ptr %pip, i32 0, i32 24
  %81 = ptrtoint ptr %i_diflags61 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %i_diflags61, align 2
  %83 = and i16 %82, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool64.not = icmp eq i16 %83, 0
  br i1 %tobool64.not, label %land.lhs.true60.land.lhs.true68_crit_edge, label %if.then65

land.lhs.true60.land.lhs.true68_crit_edge:        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true68

if.then65:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ip, align 4
  call fastcc void @xfs_inode_inherit_flags(ptr noundef %85, ptr noundef nonnull %pip)
  br label %land.lhs.true68

land.lhs.true68:                                  ; preds = %if.then65, %land.lhs.true60.land.lhs.true68_crit_edge
  %i_diflags2 = getelementptr inbounds %struct.xfs_inode, ptr %pip, i32 0, i32 25
  %86 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %i_diflags2, align 8
  %and69 = and i64 %87, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and69)
  %tobool70.not = icmp eq i64 %and69, 0
  br i1 %tobool70.not, label %land.lhs.true68.sw.bb73_crit_edge, label %if.then71

land.lhs.true68.sw.bb73_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb73

if.then71:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ip, align 4
  call fastcc void @xfs_inode_inherit_flags2(ptr noundef %89, ptr noundef nonnull %pip)
  br label %sw.bb73

sw.bb73:                                          ; preds = %if.then71, %land.lhs.true68.sw.bb73_crit_edge, %sw.bb58.sw.bb73_crit_edge, %if.end54.sw.bb73_crit_edge
  %90 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ip, align 4
  %if_format75 = getelementptr inbounds %struct.xfs_inode, ptr %91, i32 0, i32 8, i32 6
  %92 = ptrtoint ptr %if_format75 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 2, ptr %if_format75, align 2
  %i_df76 = getelementptr inbounds %struct.xfs_inode, ptr %91, i32 0, i32 8
  %93 = ptrtoint ptr %i_df76 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 0, ptr %i_df76, align 8
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %91, i32 0, i32 8, i32 4
  %94 = ptrtoint ptr %if_u1 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %if_u1, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 892) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb73, %sw.bb
  %flags.0 = phi i32 [ 1, %sw.default ], [ 1, %sw.bb73 ], [ 17, %sw.bb ]
  br i1 %init_xattrs, label %land.lhs.true80, label %sw.epilog.if.end87_crit_edge

sw.epilog.if.end87_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

land.lhs.true80:                                  ; preds = %sw.epilog
  %95 = ptrtoint ptr %m_features.i142 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %m_features.i142, align 8
  %and.i146 = and i64 %96, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i146)
  %tobool.i147.not = icmp eq i64 %and.i146, 0
  br i1 %tobool.i147.not, label %land.lhs.true80.if.end87_crit_edge, label %if.then83

land.lhs.true80.if.end87_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then83:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ip, align 4
  %call84 = call i32 @xfs_default_attroffset(ptr noundef %98) #12
  %shr = lshr i32 %call84, 3
  %conv85 = trunc i32 %shr to i8
  %99 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ip, align 4
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %100, i32 0, i32 23
  %101 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv85, ptr %i_forkoff, align 4
  %call86 = call ptr @xfs_ifork_alloc(i32 noundef 2, i32 noundef 0) #12
  %102 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ip, align 4
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %103, i32 0, i32 6
  %104 = ptrtoint ptr %i_afp to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call86, ptr %i_afp, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then83, %land.lhs.true80.if.end87_crit_edge, %sw.epilog.if.end87_crit_edge
  %105 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ip, align 4
  call void @xfs_trans_ijoin(ptr noundef %tp, ptr noundef %106, i32 noundef 4) #12
  %107 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ip, align 4
  call void @xfs_trans_log_inode(ptr noundef %tp, ptr noundef %108, i32 noundef %flags.0) #12
  %109 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ip, align 4
  call void @xfs_setup_inode(ptr noundef %110) #12
  %111 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ip, align 4
  %113 = ptrtoint ptr %ipp to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %ipp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -117, %if.then ], [ 0, %if.end87 ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_dir_ino(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_inode_inherit_flags(ptr nocapture noundef %ip, ptr nocapture noundef readonly %pip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %0 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_vnode.i, align 8
  %2 = and i16 %1, -4096
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.104)
  switch i16 %2, label %entry.if.end44_crit_edge [
    i16 16384, label %if.then
    i16 -32768, label %if.then24
  ]

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then:                                          ; preds = %entry
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %pip, i32 0, i32 24
  %4 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %i_diflags, align 2
  %6 = and i16 %5, 256
  %7 = zext i16 %6 to i32
  %8 = and i16 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool8.not = icmp eq i16 %8, 0
  br i1 %tobool8.not, label %if.then.if.end12_crit_edge, label %if.then9

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %or10 = or i32 %7, 4096
  %i_extsize = getelementptr inbounds %struct.xfs_inode, ptr %pip, i32 0, i32 21
  %9 = ptrtoint ptr %i_extsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_extsize, align 4
  %i_extsize11 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 21
  %11 = ptrtoint ptr %i_extsize11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %i_extsize11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then.if.end12_crit_edge
  %di_flags.1 = phi i32 [ %or10, %if.then9 ], [ %7, %if.then.if.end12_crit_edge ]
  %12 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %i_diflags, align 2
  %14 = and i16 %13, 512
  %15 = zext i16 %14 to i32
  %16 = or i32 %di_flags.1, %15
  br label %if.end44

if.then24:                                        ; preds = %entry
  %i_diflags25 = getelementptr inbounds %struct.xfs_inode, ptr %pip, i32 0, i32 24
  %17 = ptrtoint ptr %i_diflags25 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %i_diflags25, align 2
  %19 = and i16 %18, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool28.not = icmp eq i16 %19, 0
  br i1 %tobool28.not, label %if.then24.if.end33_crit_edge, label %land.lhs.true

if.then24.if.end33_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true:                                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ip, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %21, i32 0, i32 61
  %22 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %m_features.i, align 8
  %24 = trunc i64 %23 to i32
  %25 = lshr i32 %24, 22
  %26 = and i32 %25, 1
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true, %if.then24.if.end33_crit_edge
  %di_flags.2 = phi i32 [ 0, %if.then24.if.end33_crit_edge ], [ %26, %land.lhs.true ]
  %27 = and i16 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool37.not = icmp eq i16 %27, 0
  br i1 %tobool37.not, label %if.end33.if.end44_crit_edge, label %if.then38

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %or39 = or i32 %di_flags.2, 2048
  %i_extsize40 = getelementptr inbounds %struct.xfs_inode, ptr %pip, i32 0, i32 21
  %28 = ptrtoint ptr %i_extsize40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_extsize40, align 4
  %i_extsize41 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 21
  %30 = ptrtoint ptr %i_extsize41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %i_extsize41, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %if.end33.if.end44_crit_edge, %if.end12, %entry.if.end44_crit_edge
  %di_flags.3 = phi i32 [ %or39, %if.then38 ], [ %di_flags.2, %if.end33.if.end44_crit_edge ], [ %16, %if.end12 ], [ 0, %entry.if.end44_crit_edge ]
  %i_diflags45 = getelementptr inbounds %struct.xfs_inode, ptr %pip, i32 0, i32 24
  %31 = ptrtoint ptr %i_diflags45 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %i_diflags45, align 2
  %33 = and i16 %32, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool48.not = icmp eq i16 %33, 0
  br i1 %tobool48.not, label %if.end44.if.end53_crit_edge, label %land.lhs.true49

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

land.lhs.true49:                                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 8, i32 1) to i32))
  %34 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 8, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool50.not = icmp eq i32 %34, 0
  %or52 = or i32 %di_flags.3, 64
  %spec.select151 = select i1 %tobool50.not, i32 %di_flags.3, i32 %or52
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true49, %if.end44.if.end53_crit_edge
  %di_flags.4 = phi i32 [ %di_flags.3, %if.end44.if.end53_crit_edge ], [ %spec.select151, %land.lhs.true49 ]
  %35 = and i16 %32, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool57.not = icmp eq i16 %35, 0
  br i1 %tobool57.not, label %if.end53.if.end62_crit_edge, label %land.lhs.true58

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

land.lhs.true58:                                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 7, i32 1) to i32))
  %36 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 7, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool59.not = icmp eq i32 %36, 0
  %or61 = or i32 %di_flags.4, 128
  %spec.select152 = select i1 %tobool59.not, i32 %di_flags.4, i32 %or61
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true58, %if.end53.if.end62_crit_edge
  %di_flags.5 = phi i32 [ %di_flags.4, %if.end53.if.end62_crit_edge ], [ %spec.select152, %land.lhs.true58 ]
  %37 = and i16 %32, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool66.not = icmp eq i16 %37, 0
  br i1 %tobool66.not, label %if.end62.if.end71_crit_edge, label %land.lhs.true67

if.end62.if.end71_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

land.lhs.true67:                                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 6, i32 1) to i32))
  %38 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 6, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool68.not = icmp eq i32 %38, 0
  %or70 = or i32 %di_flags.5, 32
  %spec.select153 = select i1 %tobool68.not, i32 %di_flags.5, i32 %or70
  br label %if.end71

if.end71:                                         ; preds = %land.lhs.true67, %if.end62.if.end71_crit_edge
  %di_flags.6 = phi i32 [ %di_flags.5, %if.end62.if.end71_crit_edge ], [ %spec.select153, %land.lhs.true67 ]
  %39 = and i16 %32, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool75.not = icmp eq i16 %39, 0
  br i1 %tobool75.not, label %if.end71.if.end80_crit_edge, label %land.lhs.true76

if.end71.if.end80_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

land.lhs.true76:                                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 11, i32 1) to i32))
  %40 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 11, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool77.not = icmp eq i32 %40, 0
  %or79 = or i32 %di_flags.6, 1024
  %spec.select154 = select i1 %tobool77.not, i32 %di_flags.6, i32 %or79
  br label %if.end80

if.end80:                                         ; preds = %land.lhs.true76, %if.end71.if.end80_crit_edge
  %di_flags.7 = phi i32 [ %di_flags.6, %if.end71.if.end80_crit_edge ], [ %spec.select154, %land.lhs.true76 ]
  %41 = and i16 %32, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool84.not = icmp eq i16 %41, 0
  br i1 %tobool84.not, label %if.end80.if.end89_crit_edge, label %land.lhs.true85

if.end80.if.end89_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

land.lhs.true85:                                  ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 13, i32 1) to i32))
  %42 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 13, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool86.not = icmp eq i32 %42, 0
  %or88 = or i32 %di_flags.7, 8192
  %spec.select155 = select i1 %tobool86.not, i32 %di_flags.7, i32 %or88
  br label %if.end89

if.end89:                                         ; preds = %land.lhs.true85, %if.end80.if.end89_crit_edge
  %di_flags.8 = phi i32 [ %di_flags.7, %if.end80.if.end89_crit_edge ], [ %spec.select155, %land.lhs.true85 ]
  %43 = and i16 %32, 16384
  %i_diflags97 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %44 = ptrtoint ptr %i_diflags97 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %i_diflags97, align 2
  %46 = trunc i32 %di_flags.8 to i16
  %47 = or i16 %43, %46
  %conv100 = or i16 %47, %45
  store i16 %conv100, ptr %i_diflags97, align 2
  %48 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ip, align 8
  %i_extsize102 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 21
  %50 = ptrtoint ptr %i_extsize102 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %i_extsize102, align 4
  %call106 = tail call ptr @xfs_inode_validate_extsize(ptr noundef %49, i32 noundef %51, i16 noundef zeroext %1, i16 noundef zeroext %conv100) #12
  %tobool107.not = icmp eq ptr %call106, null
  br i1 %tobool107.not, label %if.end89.if.end114_crit_edge, label %if.then108

if.end89.if.end114_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

if.then108:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %i_diflags97 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %i_diflags97, align 2
  %54 = and i16 %53, -6145
  store i16 %54, ptr %i_diflags97, align 2
  %55 = ptrtoint ptr %i_extsize102 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %i_extsize102, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then108, %if.end89.if.end114_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_inode_inherit_flags2(ptr nocapture noundef %ip, ptr nocapture noundef readonly %pip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_diflags2 = getelementptr inbounds %struct.xfs_inode, ptr %pip, i32 0, i32 25
  %0 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_diflags2, align 8
  %and = and i64 %1, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %i_diflags21 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %2 = ptrtoint ptr %i_diflags21 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_diflags21, align 8
  %or = or i64 %3, 4
  store i64 %or, ptr %i_diflags21, align 8
  %4 = getelementptr inbounds %struct.xfs_inode, ptr %pip, i32 0, i32 22
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %7 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 22
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_diflags2, align 8
  %and3 = and i64 %10, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %i_diflags26 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %11 = ptrtoint ptr %i_diflags26 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_diflags26, align 8
  %or7 = or i64 %12, 1
  store i64 %or7, ptr %i_diflags26, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %13 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ip, align 8
  %15 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 22
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %18 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %i_vnode.i, align 8
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %20 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %i_diflags, align 2
  %i_diflags29 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %22 = ptrtoint ptr %i_diflags29 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_diflags29, align 8
  %call10 = tail call ptr @xfs_inode_validate_cowextsize(ptr noundef %14, i32 noundef %17, i16 noundef zeroext %19, i16 noundef zeroext %21, i64 noundef %23) #12
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end8.if.end15_crit_edge, label %if.then12

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %i_diflags29 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_diflags29, align 8
  %and14 = and i64 %25, -5
  store i64 %and14, ptr %i_diflags29, align 8
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %15, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end8.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_default_attroffset(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_ifork_alloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ijoin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_setup_inode(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_create(ptr noundef %mnt_userns, ptr noundef %dp, ptr noundef %name, i16 noundef zeroext %mode, i32 noundef %rdev, i1 noundef zeroext %init_xattrs, ptr nocapture noundef writeonly %ipp) local_unnamed_addr #2 align 64 {
entry:
  %ip = alloca ptr, align 4
  %tp = alloca ptr, align 4
  %udqp = alloca ptr, align 4
  %gdqp = alloca ptr, align 4
  %pdqp = alloca ptr, align 4
  %ino = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %mode, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %0)
  %cmp = icmp eq i16 %0, 16384
  %1 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #12
  %3 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %ip, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #12
  %4 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %udqp) #12
  %5 = ptrtoint ptr %udqp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %udqp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gdqp) #12
  %6 = ptrtoint ptr %gdqp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %gdqp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pdqp) #12
  %7 = ptrtoint ptr %pdqp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pdqp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ino) #12
  %8 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %ino, align 8, !annotation !318
  tail call fastcc void @trace_xfs_create(ptr noundef %dp, ptr noundef %name)
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 66
  %9 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %m_opstate.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_diflags.i = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 24
  %12 = ptrtoint ptr %i_diflags.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %i_diflags.i, align 2
  %14 = and i16 %13, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i, label %if.end.xfs_get_initial_prid.exit_crit_edge, label %if.then.i

if.end.xfs_get_initial_prid.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_get_initial_prid.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %i_projid.i = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 20
  %15 = ptrtoint ptr %i_projid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_projid.i, align 8
  br label %xfs_get_initial_prid.exit

xfs_get_initial_prid.exit:                        ; preds = %if.then.i, %if.end.xfs_get_initial_prid.exit_crit_edge
  %retval.0.i = phi i32 [ %16, %if.then.i ], [ 0, %if.end.xfs_get_initial_prid.exit_crit_edge ]
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 99
  %21 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %cmp.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  br i1 %cmp.i.i.i, label %xfs_get_initial_prid.exit.mapped_fsuid.exit_crit_edge, label %if.end.i.i

xfs_get_initial_prid.exit.mapped_fsuid.exit_crit_edge: ; preds = %xfs_get_initial_prid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mapped_fsuid.exit

if.end.i.i:                                       ; preds = %xfs_get_initial_prid.exit
  call void @__sanitizer_cov_trace_pc() #14
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call2.i.i = tail call i32 @from_kuid(ptr noundef %mnt_userns, [1 x i32] %.fca.0.insert.i) #12
  br label %mapped_fsuid.exit

mapped_fsuid.exit:                                ; preds = %if.end.i.i, %xfs_get_initial_prid.exit.mapped_fsuid.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %agg.tmp.sroa.0.0.copyload.i, %xfs_get_initial_prid.exit.mapped_fsuid.exit_crit_edge ], [ %call2.i.i, %if.end.i.i ]
  %24 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i225 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i225 to ptr
  %task.i226 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i226 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i226, align 8
  %cred.i227 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 99
  %28 = ptrtoint ptr %cred.i227 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cred.i227, align 16
  %fsgid.i = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %fsgid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %agg.tmp.sroa.0.0.copyload.i228 = load i32, ptr %fsgid.i, align 4
  br i1 %cmp.i.i.i, label %mapped_fsuid.exit.mapped_fsgid.exit_crit_edge, label %if.end.i.i232

mapped_fsuid.exit.mapped_fsgid.exit_crit_edge:    ; preds = %mapped_fsuid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mapped_fsgid.exit

if.end.i.i232:                                    ; preds = %mapped_fsuid.exit
  call void @__sanitizer_cov_trace_pc() #14
  %.fca.0.insert.i230 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i228, 0
  %call2.i.i231 = tail call i32 @from_kgid(ptr noundef %mnt_userns, [1 x i32] %.fca.0.insert.i230) #12
  br label %mapped_fsgid.exit

mapped_fsgid.exit:                                ; preds = %if.end.i.i232, %mapped_fsuid.exit.mapped_fsgid.exit_crit_edge
  %retval.sroa.0.0.i.i233 = phi i32 [ %call2.i.i231, %if.end.i.i232 ], [ %agg.tmp.sroa.0.0.copyload.i228, %mapped_fsuid.exit.mapped_fsgid.exit_crit_edge ]
  %.fca.0.insert153 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i, 0
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i233, 0
  %call9 = call i32 @xfs_qm_vop_dqalloc(ptr noundef %dp, [1 x i32] %.fca.0.insert153, [1 x i32] %.fca.0.insert, i32 noundef %retval.0.i, i32 noundef 16785420, ptr noundef nonnull %udqp, ptr noundef nonnull %gdqp, ptr noundef nonnull %pdqp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %mapped_fsgid.exit.cleanup_crit_edge

mapped_fsgid.exit.cleanup_crit_edge:              ; preds = %mapped_fsgid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %mapped_fsgid.exit
  %ialloc_blks = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 64, i32 12
  %31 = ptrtoint ptr %ialloc_blks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ialloc_blks, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 61
  %33 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %34, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i234.not = icmp eq i64 %and.i, 0
  %cond = select i1 %tobool.i234.not, i32 1, i32 2
  %inobt_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 64, i32 10
  %35 = ptrtoint ptr %inobt_maxlevels to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %inobt_maxlevels, align 4
  %mul = mul i32 %cond, %36
  %add = add i32 %mul, %32
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 6
  %37 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %m_dir_geo, align 4
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fsbcount, align 4
  %m_alloc_mxr = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 34
  %41 = ptrtoint ptr %m_alloc_mxr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %m_alloc_mxr, align 4
  %m_alloc_mnr = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 35
  %43 = ptrtoint ptr %m_alloc_mnr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %m_alloc_mnr, align 4
  %sub = sub i32 %42, %44
  %add21 = add i32 %40, -1
  %sub22 = add i32 %add21, %sub
  %div = udiv i32 %sub22, %sub
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 43
  %45 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %m_bm_maxlevels, align 8
  %sub29 = add i32 %46, -1
  %mul30 = mul i32 %sub29, %div
  %mul17224 = add i32 %mul30, %40
  %add32 = mul i32 %mul17224, 7
  %add34 = add i32 %add, %add32
  %tr_mkdir = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 65, i32 8
  %tr_create = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 65, i32 6
  %tres.0 = select i1 %cmp, ptr %tr_mkdir, ptr %tr_create
  %47 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %udqp, align 4
  %49 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gdqp, align 4
  %51 = ptrtoint ptr %pdqp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdqp, align 4
  %call72 = call i32 @xfs_trans_alloc_icreate(ptr noundef %2, ptr noundef %tres.0, ptr noundef %48, ptr noundef %50, ptr noundef %52, i32 noundef %add34, ptr noundef nonnull %tp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call72)
  %cmp73 = icmp eq i32 %call72, -28
  br i1 %cmp73, label %if.then75, label %if.end11.if.end77_crit_edge

if.end11.if.end77_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then75:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_flush_inodes(ptr noundef %2) #12
  %53 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %udqp, align 4
  %55 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %gdqp, align 4
  %57 = ptrtoint ptr %pdqp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdqp, align 4
  %call76 = call i32 @xfs_trans_alloc_icreate(ptr noundef %2, ptr noundef %tres.0, ptr noundef %54, ptr noundef %56, ptr noundef %58, i32 noundef %add34, ptr noundef nonnull %tp) #12
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end11.if.end77_crit_edge
  %error.0 = phi i32 [ %call76, %if.then75 ], [ %call72, %if.end11.if.end77_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool78.not = icmp eq i32 %error.0, 0
  br i1 %tobool78.not, label %if.end80, label %if.end77.out_release_dquots_crit_edge

if.end77.out_release_dquots_crit_edge:            ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release_dquots

if.end80:                                         ; preds = %if.end77
  %59 = call ptr @llvm.returnaddress(i32 0) #12
  %60 = ptrtoint ptr %59 to i32
  call fastcc void @trace_xfs_ilock(ptr noundef %dp, i32 noundef 83886084, i32 noundef %60) #12
  %i_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 10
  call void @down_write_nested(ptr noundef %i_lock.i, i32 noundef 5) #12
  %mr_writer.i.i = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 10, i32 1
  %61 = ptrtoint ptr %mr_writer.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %mr_writer.i.i, align 4
  %m_dir_geo81 = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 6
  %62 = ptrtoint ptr %m_dir_geo81 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %m_dir_geo81, align 4
  %fsbcount82 = getelementptr inbounds %struct.xfs_da_geometry, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %fsbcount82 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fsbcount82, align 4
  %mul83 = mul i32 %65, 7
  %call84 = call i32 @xfs_iext_count_may_overflow(ptr noundef %dp, i32 noundef 0, i32 noundef %mul83) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end80.out_trans_cancel_crit_edge

if.end80.out_trans_cancel_crit_edge:              ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end87:                                         ; preds = %if.end80
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 4
  %66 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %i_ino, align 8
  %call88 = call i32 @xfs_dialloc(ptr noundef nonnull %tp, i64 noundef %67, i16 noundef zeroext %mode, ptr noundef nonnull %ino) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end95, label %if.end87.out_trans_cancel_crit_edge

if.end87.out_trans_cancel_crit_edge:              ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end95:                                         ; preds = %if.end87
  %68 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tp, align 4
  %70 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %ino, align 8
  %cond92 = select i1 %cmp, i32 2, i32 1
  %call94 = call i32 @xfs_init_new_inode(ptr noundef %mnt_userns, ptr noundef %69, ptr noundef %dp, i64 noundef %71, i16 noundef zeroext %mode, i32 noundef %cond92, i32 noundef %rdev, i32 noundef %retval.0.i, i1 noundef zeroext %init_xattrs, ptr noundef nonnull %ip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool96.not = icmp eq i32 %call94, 0
  br i1 %tobool96.not, label %if.end98, label %if.end95.out_trans_cancel_crit_edge

if.end95.out_trans_cancel_crit_edge:              ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end98:                                         ; preds = %if.end95
  %72 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %73, ptr noundef %dp, i32 noundef 4) #12
  %74 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tp, align 4
  %76 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ip, align 4
  %i_ino99 = getelementptr inbounds %struct.xfs_inode, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %i_ino99 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %i_ino99, align 8
  %ialloc_blks101 = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 64, i32 12
  %80 = ptrtoint ptr %ialloc_blks101 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ialloc_blks101, align 4
  %m_features.i238 = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 61
  %82 = ptrtoint ptr %m_features.i238 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %m_features.i238, align 8
  %and.i239 = and i64 %83, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i239)
  %tobool.i240.not = icmp eq i64 %and.i239, 0
  %cond104.neg = select i1 %tobool.i240.not, i32 -1, i32 -2
  %inobt_maxlevels106 = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 64, i32 10
  %84 = ptrtoint ptr %inobt_maxlevels106 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %inobt_maxlevels106, align 4
  %mul107.neg253 = mul i32 %cond104.neg, %85
  %add108.neg = sub i32 %add34, %81
  %sub109 = add i32 %add108.neg, %mul107.neg253
  %call110 = call i32 @xfs_dir_createname(ptr noundef %75, ptr noundef %dp, ptr noundef %name, i64 noundef %79, i32 noundef %sub109) #12
  %86 = zext i32 %call110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %call110, label %if.end98.out_trans_cancel_crit_edge [
    i32 0, label %if.end117
    i32 -28, label %cond.false
  ], !prof !321

if.end98.out_trans_cancel_crit_edge:              ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

cond.false:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1056) #12
  br label %out_trans_cancel

if.end117:                                        ; preds = %if.end98
  %87 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ichgtime(ptr noundef %88, ptr noundef %dp, i32 noundef 3) #12
  %89 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %90, ptr noundef %dp, i32 noundef 1) #12
  br i1 %cmp, label %if.then119, label %if.end117.if.end124_crit_edge

if.end117.if.end124_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

if.then119:                                       ; preds = %if.end117
  %91 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tp, align 4
  %call120 = call i32 @xfs_dir_init(ptr noundef %92, ptr noundef %77, ptr noundef %dp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %if.then119.out_trans_cancel_crit_edge

if.then119.out_trans_cancel_crit_edge:            ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end123:                                        ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %tp, align 4
  call fastcc void @xfs_bumplink(ptr noundef %94, ptr noundef %dp)
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.end117.if.end124_crit_edge
  %95 = ptrtoint ptr %m_features.i238 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %m_features.i238, align 8
  %97 = and i64 %96, 13510798882111488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %97)
  %.not = icmp eq i64 %97, 0
  br i1 %.not, label %if.end124.if.end130_crit_edge, label %if.then129

if.end124.if.end130_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130

if.then129:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tp, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %99, i32 0, i32 7
  %100 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %t_flags, align 4
  %or = or i32 %101, 8
  store i32 %or, ptr %t_flags, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.end124.if.end130_crit_edge
  %102 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tp, align 4
  %104 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %udqp, align 4
  %106 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %gdqp, align 4
  %108 = ptrtoint ptr %pdqp to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdqp, align 4
  call void @xfs_qm_vop_create_dqattach(ptr noundef %103, ptr noundef %77, ptr noundef %105, ptr noundef %107, ptr noundef %109) #12
  %110 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tp, align 4
  %call131 = call i32 @xfs_trans_commit(ptr noundef %111) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %if.end130.out_release_inode_crit_edge

if.end130.out_release_inode_crit_edge:            ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release_inode

if.end134:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %udqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %113) #12
  %114 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %gdqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %115) #12
  %116 = ptrtoint ptr %pdqp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pdqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %117) #12
  %118 = ptrtoint ptr %ipp to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %77, ptr %ipp, align 4
  br label %cleanup

out_trans_cancel:                                 ; preds = %if.then119.out_trans_cancel_crit_edge, %cond.false, %if.end98.out_trans_cancel_crit_edge, %if.end95.out_trans_cancel_crit_edge, %if.end87.out_trans_cancel_crit_edge, %if.end80.out_trans_cancel_crit_edge
  %error.2 = phi i32 [ %call84, %if.end80.out_trans_cancel_crit_edge ], [ %call94, %if.end95.out_trans_cancel_crit_edge ], [ -28, %cond.false ], [ %call120, %if.then119.out_trans_cancel_crit_edge ], [ %call110, %if.end98.out_trans_cancel_crit_edge ], [ %call88, %if.end87.out_trans_cancel_crit_edge ]
  %unlock_dp_on_error.0 = phi i1 [ true, %if.end80.out_trans_cancel_crit_edge ], [ true, %if.end95.out_trans_cancel_crit_edge ], [ false, %cond.false ], [ false, %if.then119.out_trans_cancel_crit_edge ], [ false, %if.end98.out_trans_cancel_crit_edge ], [ true, %if.end87.out_trans_cancel_crit_edge ]
  %119 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %120) #12
  br label %out_release_inode

out_release_inode:                                ; preds = %out_trans_cancel, %if.end130.out_release_inode_crit_edge
  %error.3 = phi i32 [ %error.2, %out_trans_cancel ], [ %call131, %if.end130.out_release_inode_crit_edge ]
  %unlock_dp_on_error.1.off0 = phi i1 [ %unlock_dp_on_error.0, %out_trans_cancel ], [ false, %if.end130.out_release_inode_crit_edge ]
  %121 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ip, align 4
  %tobool135.not = icmp eq ptr %122, null
  br i1 %tobool135.not, label %out_release_inode.out_release_dquots_crit_edge, label %if.then136

out_release_inode.out_release_dquots_crit_edge:   ; preds = %out_release_inode
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release_dquots

if.then136:                                       ; preds = %out_release_inode
  call void @__sanitizer_cov_trace_pc() #14
  %i_flags_lock.i.i = getelementptr inbounds %struct.xfs_inode, ptr %122, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i) #12
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %122, i32 0, i32 16
  %123 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i247 = and i32 %124, -9
  store i32 %and.i.i247, ptr %i_flags.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !322
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %122, i32 0, i32 27
  call void @unlock_new_inode(ptr noundef %i_vnode.i.i) #12
  call fastcc void @trace_xfs_irele(ptr noundef nonnull %122, i32 noundef %60) #12
  call void @iput(ptr noundef %i_vnode.i.i) #12
  br label %out_release_dquots

out_release_dquots:                               ; preds = %if.then136, %out_release_inode.out_release_dquots_crit_edge, %if.end77.out_release_dquots_crit_edge
  %error.4 = phi i32 [ %error.0, %if.end77.out_release_dquots_crit_edge ], [ %error.3, %if.then136 ], [ %error.3, %out_release_inode.out_release_dquots_crit_edge ]
  %unlock_dp_on_error.2.off0 = phi i1 [ false, %if.end77.out_release_dquots_crit_edge ], [ %unlock_dp_on_error.1.off0, %if.then136 ], [ %unlock_dp_on_error.1.off0, %out_release_inode.out_release_dquots_crit_edge ]
  %125 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %udqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %126) #12
  %127 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %gdqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %128) #12
  %129 = ptrtoint ptr %pdqp to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pdqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %130) #12
  br i1 %unlock_dp_on_error.2.off0, label %if.then139, label %out_release_dquots.cleanup_crit_edge

out_release_dquots.cleanup_crit_edge:             ; preds = %out_release_dquots
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then139:                                       ; preds = %out_release_dquots
  call void @__sanitizer_cov_trace_pc() #14
  %i_lock.i249 = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 10
  %mr_writer.i.i250 = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 10, i32 1
  %131 = ptrtoint ptr %mr_writer.i.i250 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %mr_writer.i.i250, align 4
  call void @up_write(ptr noundef %i_lock.i249) #12
  %132 = call ptr @llvm.returnaddress(i32 0) #12
  %133 = ptrtoint ptr %132 to i32
  call fastcc void @trace_xfs_iunlock(ptr noundef %dp, i32 noundef 4, i32 noundef %133) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then139, %out_release_dquots.cleanup_crit_edge, %if.end134, %mapped_fsgid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end134 ], [ -5, %entry.cleanup_crit_edge ], [ %call9, %mapped_fsgid.exit.cleanup_crit_edge ], [ %error.4, %if.then139 ], [ %error.4, %out_release_dquots.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ino) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdqp) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gdqp) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %udqp) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_create(ptr noundef %dp, ptr noundef %xfs_create) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_create, i32 0, i32 1), ptr blockaddress(@trace_xfs_create, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !323
  %call42 = tail call i32 @__traceiter_xfs_create(ptr noundef null, ptr noundef %dp, ptr noundef %xfs_create) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !324
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_create, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_create, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_create.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_create.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 964, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
declare dso_local i32 @xfs_qm_vop_dqalloc(ptr noundef, [1 x i32], [1 x i32], i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc_icreate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_flush_inodes(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iext_count_may_overflow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dialloc(ptr noundef, i64 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir_createname(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ichgtime(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_bumplink(ptr noundef %tp, ptr noundef %ip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xfs_trans_ichgtime(ptr noundef %tp, ptr noundef %ip, i32 noundef 2) #12
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  tail call void @inc_nlink(ptr noundef %i_vnode.i) #12
  tail call void @xfs_trans_log_inode(ptr noundef %tp, ptr noundef %ip, i32 noundef 1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_vop_create_dqattach(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_dqrele(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_irele(ptr noundef %ip) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_xfs_irele(ptr noundef %ip, i32 noundef %1)
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  tail call void @iput(ptr noundef %i_vnode.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_create_tmpfile(ptr noundef %mnt_userns, ptr noundef %dp, i16 noundef zeroext %mode, ptr nocapture noundef writeonly %ipp) local_unnamed_addr #2 align 64 {
entry:
  %ip = alloca ptr, align 4
  %tp = alloca ptr, align 4
  %udqp = alloca ptr, align 4
  %gdqp = alloca ptr, align 4
  %pdqp = alloca ptr, align 4
  %ino = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #12
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ip, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #12
  %3 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %tp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %udqp) #12
  %4 = ptrtoint ptr %udqp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %udqp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gdqp) #12
  %5 = ptrtoint ptr %gdqp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %gdqp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pdqp) #12
  %6 = ptrtoint ptr %pdqp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pdqp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ino) #12
  %7 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %ino, align 8, !annotation !318
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %8 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %m_opstate.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_diflags.i = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 24
  %11 = ptrtoint ptr %i_diflags.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %i_diflags.i, align 2
  %13 = and i16 %12, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %if.end.xfs_get_initial_prid.exit_crit_edge, label %if.then.i

if.end.xfs_get_initial_prid.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_get_initial_prid.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %i_projid.i = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 20
  %14 = ptrtoint ptr %i_projid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_projid.i, align 8
  br label %xfs_get_initial_prid.exit

xfs_get_initial_prid.exit:                        ; preds = %if.then.i, %if.end.xfs_get_initial_prid.exit_crit_edge
  %retval.0.i = phi i32 [ %15, %if.then.i ], [ 0, %if.end.xfs_get_initial_prid.exit_crit_edge ]
  %16 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %cmp.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  br i1 %cmp.i.i.i, label %xfs_get_initial_prid.exit.mapped_fsuid.exit_crit_edge, label %if.end.i.i

xfs_get_initial_prid.exit.mapped_fsuid.exit_crit_edge: ; preds = %xfs_get_initial_prid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mapped_fsuid.exit

if.end.i.i:                                       ; preds = %xfs_get_initial_prid.exit
  call void @__sanitizer_cov_trace_pc() #14
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call2.i.i = tail call i32 @from_kuid(ptr noundef %mnt_userns, [1 x i32] %.fca.0.insert.i) #12
  br label %mapped_fsuid.exit

mapped_fsuid.exit:                                ; preds = %if.end.i.i, %xfs_get_initial_prid.exit.mapped_fsuid.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %agg.tmp.sroa.0.0.copyload.i, %xfs_get_initial_prid.exit.mapped_fsuid.exit_crit_edge ], [ %call2.i.i, %if.end.i.i ]
  %23 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i71 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i71 to ptr
  %task.i72 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i72 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i72, align 8
  %cred.i73 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 99
  %27 = ptrtoint ptr %cred.i73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cred.i73, align 16
  %fsgid.i = getelementptr inbounds %struct.cred, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %fsgid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %agg.tmp.sroa.0.0.copyload.i74 = load i32, ptr %fsgid.i, align 4
  br i1 %cmp.i.i.i, label %mapped_fsuid.exit.mapped_fsgid.exit_crit_edge, label %if.end.i.i78

mapped_fsuid.exit.mapped_fsgid.exit_crit_edge:    ; preds = %mapped_fsuid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mapped_fsgid.exit

if.end.i.i78:                                     ; preds = %mapped_fsuid.exit
  call void @__sanitizer_cov_trace_pc() #14
  %.fca.0.insert.i76 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i74, 0
  %call2.i.i77 = tail call i32 @from_kgid(ptr noundef %mnt_userns, [1 x i32] %.fca.0.insert.i76) #12
  br label %mapped_fsgid.exit

mapped_fsgid.exit:                                ; preds = %if.end.i.i78, %mapped_fsuid.exit.mapped_fsgid.exit_crit_edge
  %retval.sroa.0.0.i.i79 = phi i32 [ %call2.i.i77, %if.end.i.i78 ], [ %agg.tmp.sroa.0.0.copyload.i74, %mapped_fsuid.exit.mapped_fsgid.exit_crit_edge ]
  %.fca.0.insert49 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i, 0
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i79, 0
  %call8 = call i32 @xfs_qm_vop_dqalloc(ptr noundef %dp, [1 x i32] %.fca.0.insert49, [1 x i32] %.fca.0.insert, i32 noundef %retval.0.i, i32 noundef 16785420, ptr noundef nonnull %udqp, ptr noundef nonnull %gdqp, ptr noundef nonnull %pdqp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %mapped_fsgid.exit.cleanup_crit_edge

mapped_fsgid.exit.cleanup_crit_edge:              ; preds = %mapped_fsgid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %mapped_fsgid.exit
  %ialloc_blks = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 12
  %30 = ptrtoint ptr %ialloc_blks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ialloc_blks, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %32 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %33, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i80.not = icmp eq i64 %and.i, 0
  %cond = select i1 %tobool.i80.not, i32 1, i32 2
  %inobt_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 10
  %34 = ptrtoint ptr %inobt_maxlevels to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %inobt_maxlevels, align 4
  %mul = mul i32 %cond, %35
  %add = add i32 %mul, %31
  %tr_create_tmpfile = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65, i32 7
  %36 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %udqp, align 4
  %38 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gdqp, align 4
  %40 = ptrtoint ptr %pdqp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdqp, align 4
  %call13 = call i32 @xfs_trans_alloc_icreate(ptr noundef %1, ptr noundef %tr_create_tmpfile, ptr noundef %37, ptr noundef %39, ptr noundef %41, i32 noundef %add, ptr noundef nonnull %tp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.out_release_dquots_crit_edge

if.end10.out_release_dquots_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release_dquots

if.end16:                                         ; preds = %if.end10
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 4
  %42 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %i_ino, align 8
  %call17 = call i32 @xfs_dialloc(ptr noundef nonnull %tp, i64 noundef %43, i16 noundef zeroext %mode, ptr noundef nonnull %ino) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end21, label %if.end16.out_trans_cancel_crit_edge

if.end16.out_trans_cancel_crit_edge:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end21:                                         ; preds = %if.end16
  %44 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tp, align 4
  %46 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ino, align 8
  %call20 = call i32 @xfs_init_new_inode(ptr noundef %mnt_userns, ptr noundef %45, ptr noundef %dp, i64 noundef %47, i16 noundef zeroext %mode, i32 noundef 0, i32 noundef 0, i32 noundef %retval.0.i, i1 noundef zeroext false, ptr noundef nonnull %ip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool22.not = icmp eq i32 %call20, 0
  br i1 %tobool22.not, label %if.end24, label %if.end21.out_trans_cancel_crit_edge

if.end21.out_trans_cancel_crit_edge:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end24:                                         ; preds = %if.end21
  %48 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %m_features.i, align 8
  %and.i82 = and i64 %49, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i82)
  %tobool.i83.not = icmp eq i64 %and.i82, 0
  br i1 %tobool.i83.not, label %if.end24.if.end27_crit_edge, label %if.then26

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tp, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %t_flags, align 4
  %or = or i32 %53, 8
  store i32 %or, ptr %t_flags, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
  %54 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tp, align 4
  %56 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ip, align 4
  %58 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %udqp, align 4
  %60 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %gdqp, align 4
  %62 = ptrtoint ptr %pdqp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdqp, align 4
  call void @xfs_qm_vop_create_dqattach(ptr noundef %55, ptr noundef %57, ptr noundef %59, ptr noundef %61, ptr noundef %63) #12
  %64 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tp, align 4
  %call28 = call fastcc i32 @xfs_iunlink(ptr noundef %65, ptr noundef %57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.out_trans_cancel_crit_edge

if.end27.out_trans_cancel_crit_edge:              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end31:                                         ; preds = %if.end27
  %66 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tp, align 4
  %call32 = call i32 @xfs_trans_commit(ptr noundef %67) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.out_release_inode_crit_edge

if.end31.out_release_inode_crit_edge:             ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release_inode

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %udqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %69) #12
  %70 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %gdqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %71) #12
  %72 = ptrtoint ptr %pdqp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %73) #12
  %74 = ptrtoint ptr %ipp to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %57, ptr %ipp, align 4
  br label %cleanup

out_trans_cancel:                                 ; preds = %if.end27.out_trans_cancel_crit_edge, %if.end21.out_trans_cancel_crit_edge, %if.end16.out_trans_cancel_crit_edge
  %error.1 = phi i32 [ %call20, %if.end21.out_trans_cancel_crit_edge ], [ %call28, %if.end27.out_trans_cancel_crit_edge ], [ %call17, %if.end16.out_trans_cancel_crit_edge ]
  %75 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %76) #12
  br label %out_release_inode

out_release_inode:                                ; preds = %out_trans_cancel, %if.end31.out_release_inode_crit_edge
  %error.2 = phi i32 [ %error.1, %out_trans_cancel ], [ %call32, %if.end31.out_release_inode_crit_edge ]
  %77 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ip, align 4
  %tobool36.not = icmp eq ptr %78, null
  br i1 %tobool36.not, label %out_release_inode.out_release_dquots_crit_edge, label %if.then37

out_release_inode.out_release_dquots_crit_edge:   ; preds = %out_release_inode
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release_dquots

if.then37:                                        ; preds = %out_release_inode
  call void @__sanitizer_cov_trace_pc() #14
  %i_flags_lock.i.i = getelementptr inbounds %struct.xfs_inode, ptr %78, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i) #12
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %78, i32 0, i32 16
  %79 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i84 = and i32 %80, -9
  store i32 %and.i.i84, ptr %i_flags.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !322
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %78, i32 0, i32 27
  call void @unlock_new_inode(ptr noundef %i_vnode.i.i) #12
  %81 = call ptr @llvm.returnaddress(i32 0) #12
  %82 = ptrtoint ptr %81 to i32
  call fastcc void @trace_xfs_irele(ptr noundef nonnull %78, i32 noundef %82) #12
  call void @iput(ptr noundef %i_vnode.i.i) #12
  br label %out_release_dquots

out_release_dquots:                               ; preds = %if.then37, %out_release_inode.out_release_dquots_crit_edge, %if.end10.out_release_dquots_crit_edge
  %error.3 = phi i32 [ %call13, %if.end10.out_release_dquots_crit_edge ], [ %error.2, %if.then37 ], [ %error.2, %out_release_inode.out_release_dquots_crit_edge ]
  %83 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %udqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %84) #12
  %85 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %gdqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %86) #12
  %87 = ptrtoint ptr %pdqp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %88) #12
  br label %cleanup

cleanup:                                          ; preds = %out_release_dquots, %if.end35, %mapped_fsgid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.3, %out_release_dquots ], [ 0, %if.end35 ], [ -5, %entry.cleanup_crit_edge ], [ %call8, %mapped_fsgid.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ino) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdqp) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gdqp) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %udqp) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_iunlink(ptr noundef %tp, ptr noundef %ip) #7 align 64 {
entry:
  %agibp = alloca ptr, align 4
  %old_agino = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agibp) #12
  %2 = ptrtoint ptr %agibp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %agibp, align 4, !annotation !318
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %3 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %i_ino, align 8
  %conv = trunc i64 %4 to i32
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  %5 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %6 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %7 = trunc i64 %notmask to i32
  %conv1 = xor i32 %7, -1
  %and = and i32 %conv1, %conv
  %conv2 = and i32 %and, 63
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %8 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 12
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !306

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 2165) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %11 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %i_vnode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp7.not = icmp eq i16 %12, 0
  br i1 %cmp7.not, label %cond.false16, label %cond.end.cond.end17_crit_edge, !prof !305

cond.end.cond.end17_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end17

cond.false16:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 2166) #12
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %cond.end.cond.end17_crit_edge
  tail call fastcc void @trace_xfs_iunlink(ptr noundef %ip)
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_ino, align 8
  %15 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %agino_log, align 8
  %sh_prom21 = zext i32 %16 to i64
  %shr = lshr i64 %14, %sh_prom21
  %conv22 = trunc i64 %shr to i32
  %call23 = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %conv22) #12
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %call23, i32 0, i32 1
  %17 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pag_agno, align 4
  %call24 = call i32 @xfs_read_agi(ptr noundef %1, ptr noundef %tp, i32 noundef %18, ptr noundef nonnull %agibp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end, label %cond.end17.out_crit_edge

cond.end17.out_crit_edge:                         ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %cond.end17
  %19 = ptrtoint ptr %agibp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %agibp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_addr, align 4
  %arrayidx = getelementptr %struct.xfs_agi, ptr %22, i32 0, i32 10, i32 %conv2
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %and)
  %cmp26 = icmp eq i32 %24, %and
  br i1 %cmp26, label %if.end.__here_crit_edge, label %lor.lhs.false

if.end.__here_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

lor.lhs.false:                                    ; preds = %if.end
  %25 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pag_agno, align 4
  %call29 = call zeroext i1 @xfs_verify_agino_or_null(ptr noundef %1, i32 noundef %26, i32 noundef %24) #12
  br i1 %call29, label %if.end31, label %lor.lhs.false.__here_crit_edge

lor.lhs.false.__here_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %lor.lhs.false.__here_crit_edge, %if.end.__here_crit_edge
  %27 = ptrtoint ptr %agibp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %agibp, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !325
  call void @__xfs_buf_mark_corrupt(ptr noundef %28, ptr noundef blockaddress(@xfs_iunlink, %__here)) #12
  br label %out

if.end31:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp32.not = icmp eq i32 %24, -1
  br i1 %cmp32.not, label %if.end31.if.end54_crit_edge, label %if.then34

if.end31.if.end54_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then34:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_agino) #12
  %29 = ptrtoint ptr %old_agino to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %old_agino, align 4, !annotation !318
  %call35 = call fastcc i32 @xfs_iunlink_update_inode(ptr noundef %tp, ptr noundef %ip, ptr noundef %call23, i32 noundef %24, ptr noundef nonnull %old_agino)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then34.cleanup.thread_crit_edge

if.then34.cleanup.thread_crit_edge:               ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end38:                                         ; preds = %if.then34
  %30 = ptrtoint ptr %old_agino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %old_agino, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp39 = icmp eq i32 %31, -1
  br i1 %cmp39, label %if.end38.cond.end49_crit_edge, label %cond.false48, !prof !306

if.end38.cond.end49_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end49

cond.false48:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.1, i32 noundef 2201) #12
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false48, %if.end38.cond.end49_crit_edge
  %32 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call23, align 4
  %call.i = call zeroext i1 @xfs_errortag_test(ptr noundef %33, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1, i32 noundef 1933, i32 noundef 34) #12
  br i1 %call.i, label %cond.end49.cleanup_crit_edge, label %xfs_iunlink_add_backref.exit

cond.end49.cleanup_crit_edge:                     ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

xfs_iunlink_add_backref.exit:                     ; preds = %cond.end49
  %call.i.i = call ptr @kmem_alloc(i32 noundef 12, i32 noundef 20) #12
  %iu_agino.i = getelementptr inbounds %struct.xfs_iunlink, ptr %call.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %iu_agino.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and, ptr %iu_agino.i, align 4
  %iu_next_unlinked.i = getelementptr inbounds %struct.xfs_iunlink, ptr %call.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %iu_next_unlinked.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %24, ptr %iu_next_unlinked.i, align 4
  %call2.i = call fastcc i32 @xfs_iunlink_insert_backref(ptr noundef %call23, ptr noundef %call.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool51.not = icmp eq i32 %call2.i, 0
  br i1 %tobool51.not, label %xfs_iunlink_add_backref.exit.cleanup_crit_edge, label %xfs_iunlink_add_backref.exit.cleanup.thread_crit_edge

xfs_iunlink_add_backref.exit.cleanup.thread_crit_edge: ; preds = %xfs_iunlink_add_backref.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

xfs_iunlink_add_backref.exit.cleanup_crit_edge:   ; preds = %xfs_iunlink_add_backref.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.thread:                                   ; preds = %xfs_iunlink_add_backref.exit.cleanup.thread_crit_edge, %if.then34.cleanup.thread_crit_edge
  %error.0.ph = phi i32 [ %call2.i, %xfs_iunlink_add_backref.exit.cleanup.thread_crit_edge ], [ %call35, %if.then34.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_agino) #12
  br label %out

cleanup:                                          ; preds = %xfs_iunlink_add_backref.exit.cleanup_crit_edge, %cond.end49.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_agino) #12
  br label %if.end54

if.end54:                                         ; preds = %cleanup, %if.end31.if.end54_crit_edge
  %36 = ptrtoint ptr %agibp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %agibp, align 4
  %call56 = call fastcc i32 @xfs_iunlink_update_bucket(ptr noundef %tp, ptr noundef %call23, ptr noundef %37, i32 noundef %conv2, i32 noundef %and)
  br label %out

out:                                              ; preds = %if.end54, %cleanup.thread, %__here, %cond.end17.out_crit_edge
  %error.1 = phi i32 [ %call24, %cond.end17.out_crit_edge ], [ -117, %__here ], [ %call56, %if.end54 ], [ %error.0.ph, %cleanup.thread ]
  call void @xfs_perag_put(ptr noundef %call23) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agibp) #12
  ret i32 %error.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_link(ptr noundef %tdp, ptr noundef %sip, ptr noundef %target_name) local_unnamed_addr #2 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tdp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #12
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !318
  tail call fastcc void @trace_xfs_link(ptr noundef %tdp, ptr noundef %target_name)
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %sip, i32 0, i32 27
  %3 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %i_vnode.i, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %5)
  %cmp.not = icmp eq i16 %5, 16384
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !305

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 1225) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %6 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %m_opstate.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %cond.end.cleanup90_crit_edge

cond.end.cleanup90_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup90

if.end:                                           ; preds = %cond.end
  %call5 = tail call i32 @xfs_qm_dqattach(ptr noundef %sip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup90_crit_edge

if.end.cleanup90_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup90

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @xfs_qm_dqattach(ptr noundef %tdp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup90_crit_edge

if.end8.cleanup90_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup90

if.end12:                                         ; preds = %if.end8
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_dir_geo, align 4
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fsbcount, align 4
  %m_alloc_mxr = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 34
  %13 = ptrtoint ptr %m_alloc_mxr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m_alloc_mxr, align 4
  %m_alloc_mnr = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 35
  %15 = ptrtoint ptr %m_alloc_mnr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_alloc_mnr, align 4
  %sub = sub i32 %14, %16
  %add = add i32 %12, -1
  %sub16 = add i32 %add, %sub
  %div = udiv i32 %sub16, %sub
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 43
  %17 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m_bm_maxlevels, align 8
  %sub23 = add i32 %18, -1
  %mul24 = mul i32 %sub23, %div
  %mul143 = add i32 %mul24, %12
  %add26 = mul i32 %mul143, 7
  %tr_link = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65, i32 3
  %call28 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %tr_link, i32 noundef %add26, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call28)
  %cmp29 = icmp eq i32 %call28, -28
  br i1 %cmp29, label %if.then31, label %if.end12.if.end35_crit_edge

if.end12.if.end35_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then31:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %call34 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %tr_link, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end12.if.end35_crit_edge
  %error.0 = phi i32 [ %call34, %if.then31 ], [ %call28, %if.end12.if.end35_crit_edge ]
  %resblks.0 = phi i32 [ 0, %if.then31 ], [ %add26, %if.end12.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool36.not = icmp eq i32 %error.0, 0
  br i1 %tobool36.not, label %if.end38, label %if.end35.cleanup90_crit_edge

if.end35.cleanup90_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup90

if.end38:                                         ; preds = %if.end35
  call void @xfs_lock_two_inodes(ptr noundef %sip, i32 noundef 4, ptr noundef %tdp, i32 noundef 4)
  %19 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %20, ptr noundef %sip, i32 noundef 4) #12
  %21 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %22, ptr noundef %tdp, i32 noundef 4) #12
  %23 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m_dir_geo, align 4
  %fsbcount40 = getelementptr inbounds %struct.xfs_da_geometry, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %fsbcount40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fsbcount40, align 4
  %mul41 = mul i32 %26, 7
  %call42 = call i32 @xfs_iext_count_may_overflow(ptr noundef %tdp, i32 noundef 0, i32 noundef %mul41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end38.error_return_crit_edge

if.end38.error_return_crit_edge:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_return

if.end45:                                         ; preds = %if.end38
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %tdp, i32 0, i32 24
  %27 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %i_diflags, align 2
  %29 = and i16 %28, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool48.not = icmp eq i16 %29, 0
  br i1 %tobool48.not, label %if.end45.if.end59_crit_edge, label %land.rhs

if.end45.if.end59_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

land.rhs:                                         ; preds = %if.end45
  %i_projid = getelementptr inbounds %struct.xfs_inode, ptr %tdp, i32 0, i32 20
  %30 = ptrtoint ptr %i_projid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_projid, align 8
  %i_projid49 = getelementptr inbounds %struct.xfs_inode, ptr %sip, i32 0, i32 20
  %32 = ptrtoint ptr %i_projid49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_projid49, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp50.not = icmp eq i32 %31, %33
  br i1 %cmp50.not, label %land.rhs.if.end59_crit_edge, label %land.rhs.error_return_crit_edge, !prof !306

land.rhs.error_return_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_return

land.rhs.if.end59_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.end59:                                         ; preds = %land.rhs.if.end59_crit_edge, %if.end45.if.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resblks.0)
  %tobool60.not = icmp eq i32 %resblks.0, 0
  br i1 %tobool60.not, label %if.then61, label %if.end59.if.end66_crit_edge

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then61:                                        ; preds = %if.end59
  %34 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tp, align 4
  %call62 = call i32 @xfs_dir_canenter(ptr noundef %35, ptr noundef %tdp, ptr noundef %target_name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then61.if.end66_crit_edge, label %if.then61.error_return_crit_edge

if.then61.error_return_crit_edge:                 ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_return

if.then61.if.end66_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.end66:                                         ; preds = %if.then61.if.end66_crit_edge, %if.end59.if.end66_crit_edge
  %36 = getelementptr inbounds %struct.xfs_inode, ptr %sip, i32 0, i32 27, i32 12
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp68 = icmp eq i32 %38, 0
  br i1 %cmp68, label %if.then70, label %if.end66.if.end77_crit_edge

if.end66.if.end77_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then70:                                        ; preds = %if.end66
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %sip, i32 0, i32 4
  %39 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %i_ino, align 8
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  %41 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %42 to i64
  %shr = lshr i64 %40, %sh_prom
  %conv71 = trunc i64 %shr to i32
  %call72 = call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %conv71) #12
  %43 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tp, align 4
  %call73 = call fastcc i32 @xfs_iunlink_remove(ptr noundef %44, ptr noundef %call72, ptr noundef %sip)
  call void @xfs_perag_put(ptr noundef %call72) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then70.if.end77_crit_edge, label %if.then70.error_return_crit_edge

if.then70.error_return_crit_edge:                 ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_return

if.then70.if.end77_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.end77:                                         ; preds = %if.then70.if.end77_crit_edge, %if.end66.if.end77_crit_edge
  %45 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tp, align 4
  %i_ino78 = getelementptr inbounds %struct.xfs_inode, ptr %sip, i32 0, i32 4
  %47 = ptrtoint ptr %i_ino78 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %i_ino78, align 8
  %call79 = call i32 @xfs_dir_createname(ptr noundef %46, ptr noundef %tdp, ptr noundef %target_name, i64 noundef %48, i32 noundef %resblks.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end77.error_return_crit_edge

if.end77.error_return_crit_edge:                  ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_return

if.end82:                                         ; preds = %if.end77
  %49 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ichgtime(ptr noundef %50, ptr noundef %tdp, i32 noundef 3) #12
  %51 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %52, ptr noundef %tdp, i32 noundef 1) #12
  %53 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tp, align 4
  call fastcc void @xfs_bumplink(ptr noundef %54, ptr noundef %sip)
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %55 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %m_features.i, align 8
  %57 = and i64 %56, 13510798882111488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %57)
  %.not = icmp eq i64 %57, 0
  br i1 %.not, label %if.end82.if.end88_crit_edge, label %if.then87

if.end82.if.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tp, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %t_flags, align 4
  %or = or i32 %61, 8
  store i32 %or, ptr %t_flags, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.end82.if.end88_crit_edge
  %62 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tp, align 4
  %call89 = call i32 @xfs_trans_commit(ptr noundef %63) #12
  br label %cleanup90

error_return:                                     ; preds = %if.end77.error_return_crit_edge, %if.then70.error_return_crit_edge, %if.then61.error_return_crit_edge, %land.rhs.error_return_crit_edge, %if.end38.error_return_crit_edge
  %error.1 = phi i32 [ %call42, %if.end38.error_return_crit_edge ], [ %call73, %if.then70.error_return_crit_edge ], [ %call79, %if.end77.error_return_crit_edge ], [ %call62, %if.then61.error_return_crit_edge ], [ -18, %land.rhs.error_return_crit_edge ]
  %64 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %65) #12
  br label %cleanup90

cleanup90:                                        ; preds = %error_return, %if.end88, %if.end35.cleanup90_crit_edge, %if.end8.cleanup90_crit_edge, %if.end.cleanup90_crit_edge, %cond.end.cleanup90_crit_edge
  %retval.0 = phi i32 [ %call89, %if.end88 ], [ -5, %cond.end.cleanup90_crit_edge ], [ %call5, %if.end.cleanup90_crit_edge ], [ %call9, %if.end8.cleanup90_crit_edge ], [ %error.0, %if.end35.cleanup90_crit_edge ], [ %error.1, %error_return ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_link(ptr noundef %dp, ptr noundef %xfs_link) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_link, i32 0, i32 1), ptr blockaddress(@trace_xfs_link, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !326
  %call42 = tail call i32 @__traceiter_xfs_link(ptr noundef null, ptr noundef %dp, ptr noundef %xfs_link) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !327
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_link, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_link, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_link.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_link.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 962, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
declare dso_local i32 @xfs_qm_dqattach(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir_canenter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_iunlink_remove(ptr noundef %tp, ptr noundef %pag, ptr noundef %ip) unnamed_addr #7 align 64 {
entry:
  %agibp = alloca ptr, align 4
  %last_ibp = alloca ptr, align 4
  %last_dip = alloca ptr, align 4
  %next_agino = alloca i32, align 4
  %imap = alloca %struct.xfs_imap, align 8
  %prev_agino = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agibp) #12
  %2 = ptrtoint ptr %agibp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %agibp, align 4, !annotation !318
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_ibp) #12
  %3 = ptrtoint ptr %last_ibp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %last_ibp, align 4, !annotation !318
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_dip) #12
  %4 = ptrtoint ptr %last_dip to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %last_dip, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_ino, align 8
  %conv = trunc i64 %6 to i32
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  %7 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %8 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %9 = trunc i64 %notmask to i32
  %conv1 = xor i32 %9, -1
  %and = and i32 %conv1, %conv
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_agino) #12
  %10 = ptrtoint ptr %next_agino to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %next_agino, align 4, !annotation !318
  tail call fastcc void @trace_xfs_iunlink_remove(ptr noundef %ip)
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %11 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pag_agno, align 4
  %call = call i32 @xfs_read_agi(ptr noundef %1, ptr noundef %tp, i32 noundef %12, ptr noundef nonnull %agibp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup30_crit_edge

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup30

if.end:                                           ; preds = %entry
  %conv2 = and i32 %and, 63
  %13 = ptrtoint ptr %agibp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %agibp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_addr, align 4
  %arrayidx = getelementptr %struct.xfs_agi, ptr %16, i32 0, i32 10, i32 %conv2
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pag_agno, align 4
  %call4 = call zeroext i1 @xfs_verify_agino(ptr noundef %1, i32 noundef %20, i32 noundef %18) #12
  br i1 %call4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %21 = call ptr @llvm.returnaddress(i32 0)
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_iunlink_remove, i32 noundef 1, ptr noundef %1, ptr noundef %16, i32 noundef 344, ptr noundef nonnull @.str.1, i32 noundef 2369, ptr noundef %21) #12
  br label %cleanup30

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @xfs_iunlink_update_inode(ptr noundef %tp, ptr noundef %ip, ptr noundef %pag, i32 noundef -1, ptr noundef nonnull %next_agino)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup30_crit_edge

if.end6.cleanup30_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup30

if.end10:                                         ; preds = %if.end6
  %22 = ptrtoint ptr %next_agino to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %next_agino, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.not = icmp eq i32 %23, -1
  br i1 %cmp.not, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  %call13 = call fastcc i32 @xfs_iunlink_change_backref(ptr noundef %pag, i32 noundef %23, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end17_crit_edge, label %if.then12.cleanup30_crit_edge

if.then12.cleanup30_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup30

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %and)
  %cmp18.not = icmp eq i32 %18, %and
  br i1 %cmp18.not, label %if.end27, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %imap) #12
  %24 = call ptr @memset(ptr %imap, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev_agino) #12
  %25 = ptrtoint ptr %prev_agino to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %prev_agino, align 4, !annotation !318
  %call21 = call fastcc i32 @xfs_iunlink_map_prev(ptr noundef %tp, ptr noundef %pag, i32 noundef %18, i32 noundef %and, ptr noundef nonnull %prev_agino, ptr noundef nonnull %imap, ptr noundef nonnull %last_dip, ptr noundef nonnull %last_ibp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %prev_agino to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %prev_agino, align 4
  %28 = ptrtoint ptr %last_ibp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %last_ibp, align 4
  %30 = ptrtoint ptr %last_dip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %last_dip, align 4
  call fastcc void @xfs_iunlink_update_dinode(ptr noundef %tp, ptr noundef %pag, i32 noundef %27, ptr noundef %29, ptr noundef %31, ptr noundef nonnull %imap, i32 noundef %23)
  %32 = ptrtoint ptr %agibp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %agibp, align 4
  %b_pag = getelementptr inbounds %struct.xfs_buf, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %b_pag to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_pag, align 8
  %call25 = call fastcc i32 @xfs_iunlink_change_backref(ptr noundef %35, i32 noundef %and, i32 noundef %23)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then20.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end24 ], [ %call21, %if.then20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev_agino) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %imap) #12
  br label %cleanup30

if.end27:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %agibp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %agibp, align 4
  %call29 = call fastcc i32 @xfs_iunlink_update_bucket(ptr noundef %tp, ptr noundef %pag, ptr noundef %37, i32 noundef %conv2, i32 noundef %23)
  br label %cleanup30

cleanup30:                                        ; preds = %if.end27, %cleanup, %if.then12.cleanup30_crit_edge, %if.end6.cleanup30_crit_edge, %if.then5, %entry.cleanup30_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %call29, %if.end27 ], [ -117, %if.then5 ], [ %call, %entry.cleanup30_crit_edge ], [ %call7, %if.end6.cleanup30_crit_edge ], [ %call13, %if.then12.cleanup30_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_agino) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_dip) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_ibp) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agibp) #12
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_itruncate_extents_flags(ptr nocapture noundef %tpp, ptr noundef %ip, i32 noundef %whichfork, i64 noundef %new_size, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  %tp = alloca ptr, align 4
  %unmap_len = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #12
  %2 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpp, align 4
  %4 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %tp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %unmap_len) #12
  %5 = ptrtoint ptr %unmap_len to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %unmap_len, align 8, !annotation !318
  %mr_writer.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %mr_writer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mr_writer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.i.not = icmp eq i32 %7, 0
  br i1 %tobool4.i.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !305

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 1365) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i_count = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_count, i32 noundef 4) #12
  %8 = ptrtoint ptr %i_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %cond.end.cond.end14_crit_edge, label %lor.rhs

cond.end.cond.end14_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end14

lor.rhs:                                          ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i35.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i35.i, label %if.then.i39.i, label %if.end.i41.i

if.then.i39.i:                                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %i_rwsem21.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25
  %call.i.i.i.i36.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem21.i, i32 noundef 4) #12
  %11 = ptrtoint ptr %i_rwsem21.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %i_rwsem21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i37.i = icmp ne i32 %12, 0
  %conv.i.i38.i = zext i1 %cmp.i.i37.i to i32
  br label %xfs_isilocked.exit

if.end.i41.i:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %dep_map7.i40.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25, i32 6
  %call4.i42.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map7.i40.i, i32 noundef 0) #12
  br label %xfs_isilocked.exit

xfs_isilocked.exit:                               ; preds = %if.end.i41.i, %if.then.i39.i
  %retval.0.in.i46.i = phi i32 [ %call4.i42.i, %if.end.i41.i ], [ %conv.i.i38.i, %if.then.i39.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.i46.i)
  %retval.0.i47.i.not = icmp eq i32 %retval.0.in.i46.i, 0
  br i1 %retval.0.i47.i.not, label %cond.false13, label %xfs_isilocked.exit.cond.end14_crit_edge, !prof !305

xfs_isilocked.exit.cond.end14_crit_edge:          ; preds = %xfs_isilocked.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end14

cond.false13:                                     ; preds = %xfs_isilocked.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 1367) #12
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %xfs_isilocked.exit.cond.end14_crit_edge, %cond.end.cond.end14_crit_edge
  %call15 = tail call fastcc i64 @XFS_ISIZE(ptr noundef %ip)
  call void @__sanitizer_cov_trace_cmp8(i64 %call15, i64 %new_size)
  %cmp.not = icmp slt i64 %call15, %new_size
  br i1 %cmp.not, label %cond.false23, label %cond.end14.cond.end24_crit_edge, !prof !305

cond.end14.cond.end24_crit_edge:                  ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end24

cond.false23:                                     ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 1368) #12
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %cond.end14.cond.end24_crit_edge
  %13 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tp, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %t_flags, align 4
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %cond.false33, label %cond.end24.cond.end34_crit_edge, !prof !305

cond.end24.cond.end34_crit_edge:                  ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end34

cond.false33:                                     ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 1369) #12
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false33, %cond.end24.cond.end34_crit_edge
  %i_itemp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 9
  %17 = ptrtoint ptr %i_itemp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_itemp, align 8
  %cmp35.not = icmp eq ptr %18, null
  br i1 %cmp35.not, label %cond.false43, label %cond.end34.cond.end44_crit_edge, !prof !305

cond.end34.cond.end44_crit_edge:                  ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end44

cond.false43:                                     ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 1370) #12
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false43, %cond.end34.cond.end44_crit_edge
  %19 = ptrtoint ptr %i_itemp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_itemp, align 8
  %ili_lock_flags = getelementptr inbounds %struct.xfs_inode_log_item, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %ili_lock_flags to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ili_lock_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp46 = icmp eq i16 %22, 0
  br i1 %cmp46, label %cond.end44.cond.end56_crit_edge, label %cond.false55, !prof !306

cond.end44.cond.end56_crit_edge:                  ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end56

cond.false55:                                     ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 1371) #12
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %cond.end44.cond.end56_crit_edge
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %23 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %m_qflags, align 4
  %and57 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %cond.end56.lor.lhs.false_crit_edge, label %land.lhs.true

cond.end56.lor.lhs.false_crit_edge:               ; preds = %cond.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %cond.end56
  %i_udquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  %25 = ptrtoint ptr %i_udquot to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_udquot, align 4
  %cmp59 = icmp eq ptr %26, null
  br i1 %cmp59, label %land.lhs.true.cond.false83_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge, !prof !305

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true.cond.false83_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false83

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %cond.end56.lor.lhs.false_crit_edge
  %and62 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %lor.lhs.false.lor.rhs67_crit_edge, label %land.lhs.true64

lor.lhs.false.lor.rhs67_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs67

land.lhs.true64:                                  ; preds = %lor.lhs.false
  %i_gdquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  %27 = ptrtoint ptr %i_gdquot to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_gdquot, align 8
  %cmp65 = icmp eq ptr %28, null
  br i1 %cmp65, label %land.lhs.true64.cond.false83_crit_edge, label %land.lhs.true64.lor.rhs67_crit_edge, !prof !305

land.lhs.true64.lor.rhs67_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs67

land.lhs.true64.cond.false83_crit_edge:           ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false83

lor.rhs67:                                        ; preds = %land.lhs.true64.lor.rhs67_crit_edge, %lor.lhs.false.lor.rhs67_crit_edge
  %and69 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %lor.rhs67.cond.end84_crit_edge, label %land.rhs

lor.rhs67.cond.end84_crit_edge:                   ; preds = %lor.rhs67
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end84

land.rhs:                                         ; preds = %lor.rhs67
  %i_pdquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 3
  %29 = ptrtoint ptr %i_pdquot to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_pdquot, align 4
  %cmp71.not = icmp eq ptr %30, null
  br i1 %cmp71.not, label %land.rhs.cond.false83_crit_edge, label %land.rhs.cond.end84_crit_edge, !prof !305

land.rhs.cond.end84_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end84

land.rhs.cond.false83_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false83

cond.false83:                                     ; preds = %land.rhs.cond.false83_crit_edge, %land.lhs.true64.cond.false83_crit_edge, %land.lhs.true.cond.false83_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 1372) #12
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false83, %land.rhs.cond.end84_crit_edge, %lor.rhs67.cond.end84_crit_edge
  tail call fastcc void @trace_xfs_itruncate_extents_start(ptr noundef %ip, i64 noundef %new_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp.i = icmp eq i32 %whichfork, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whichfork)
  %cmp1.i = icmp eq i32 %whichfork, 2
  %cond.i = select i1 %cmp1.i, i32 512, i32 0
  %cond2.i = select i1 %cmp.i, i32 4, i32 %cond.i
  %or = or i32 %cond2.i, %flags
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %31 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %m_blockmask, align 8
  %conv86 = zext i32 %32 to i64
  %add = add i64 %conv86, %new_size
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %33 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %34 to i64
  %shr = lshr i64 %add, %sh_prom
  %call88 = tail call zeroext i1 @xfs_verify_fileoff(ptr noundef %1, i64 noundef %shr) #12
  br i1 %call88, label %if.end137, label %if.then

if.then:                                          ; preds = %cond.end84
  call void @__sanitizer_cov_trace_const_cmp8(i64 18014398511579134, i64 %shr)
  %cmp89 = icmp ugt i64 %shr, 18014398511579134
  br i1 %cmp89, label %land.rhs97, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs97:                                       ; preds = %if.then
  %.b207 = load i1, ptr @xfs_itruncate_extents_flags.__already_done, align 1
  br i1 %.b207, label %land.rhs97.cleanup_crit_edge, label %if.then108, !prof !306

land.rhs97.cleanup_crit_edge:                     ; preds = %land.rhs97
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then108:                                       ; preds = %land.rhs97
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @xfs_itruncate_extents_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1390, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end137:                                        ; preds = %cond.end84
  %add138 = sub i64 18014398511579135, %shr
  %35 = ptrtoint ptr %unmap_len to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %add138, ptr %unmap_len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 18014398511579135, i64 %shr)
  %cmp139.not210 = icmp eq i64 %shr, 18014398511579135
  br i1 %cmp139.not210, label %if.end137.while.end_crit_edge, label %if.end137.while.body_crit_edge

if.end137.while.body_crit_edge:                   ; preds = %if.end137
  br label %while.body

if.end137.while.end_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.condthread-pre-split:                       ; preds = %if.end155
  %36 = ptrtoint ptr %unmap_len to i32
  call void @__asan_load8_noabort(i32 %36)
  %.pr = load i64, ptr %unmap_len, align 8
  %cmp139.not = icmp eq i64 %.pr, 0
  br i1 %cmp139.not, label %while.condthread-pre-split.while.end_crit_edge, label %while.condthread-pre-split.while.body_crit_edge

while.condthread-pre-split.while.body_crit_edge:  ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.condthread-pre-split.while.end_crit_edge:   ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.condthread-pre-split.while.body_crit_edge, %if.end137.while.body_crit_edge
  %37 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tp, align 4
  %t_firstblock = getelementptr inbounds %struct.xfs_trans, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %t_firstblock to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %t_firstblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %40)
  %cmp141 = icmp eq i64 %40, -1
  br i1 %cmp141, label %while.body.cond.end151_crit_edge, label %cond.false150, !prof !306

while.body.cond.end151_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end151

cond.false150:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 1396) #12
  br label %cond.end151

cond.end151:                                      ; preds = %cond.false150, %while.body.cond.end151_crit_edge
  %41 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tp, align 4
  %call152 = call i32 @__xfs_bunmapi(ptr noundef %42, ptr noundef %ip, i64 noundef %shr, ptr noundef nonnull %unmap_len, i32 noundef %or, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end155, label %cond.end151.out_crit_edge

cond.end151.out_crit_edge:                        ; preds = %cond.end151
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end155:                                        ; preds = %cond.end151
  %call156 = call i32 @xfs_defer_finish(ptr noundef nonnull %tp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %while.condthread-pre-split, label %if.end155.out_crit_edge

if.end155.out_crit_edge:                          ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

while.end:                                        ; preds = %while.condthread-pre-split.while.end_crit_edge, %if.end137.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whichfork)
  %cmp160 = icmp eq i32 %whichfork, 0
  br i1 %cmp160, label %if.then162, label %while.end.if.end167_crit_edge

while.end.if.end167_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167

if.then162:                                       ; preds = %while.end
  %call163 = call i32 @xfs_reflink_cancel_cow_blocks(ptr noundef %ip, ptr noundef nonnull %tp, i64 noundef %shr, i64 noundef 18014398511579134, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end166, label %if.then162.out_crit_edge

if.then162.out_crit_edge:                         ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end166:                                        ; preds = %if.then162
  %i_diflags2.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %43 = ptrtoint ptr %i_diflags2.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %i_diflags2.i.i, align 8
  %and.i.i = and i64 %44, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end166.if.end167_crit_edge, label %if.end.i

if.end166.if.end167_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167

if.end.i:                                         ; preds = %if.end166
  %i_df.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  %i_cowfp.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %45 = ptrtoint ptr %i_cowfp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_cowfp.i, align 4
  %47 = ptrtoint ptr %i_df.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %i_df.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %cmp.i209 = icmp eq i64 %48, 0
  br i1 %cmp.i209, label %land.lhs.true.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %46, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %cmp2.i = icmp eq i64 %50, 0
  br i1 %cmp2.i, label %if.then3.i, label %land.lhs.true.i.if.end167_crit_edge

land.lhs.true.i.if.end167_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i = and i64 %44, -3
  %51 = ptrtoint ptr %i_diflags2.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %and.i, ptr %i_diflags2.i.i, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %52)
  %.pr.i = load i64, ptr %46, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr.i)
  %cmp6.i = icmp eq i64 %.pr.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.end4.i.if.end167_crit_edge

if.end4.i.if.end167_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_inode_clear_cowblocks_tag(ptr noundef %ip) #12
  br label %if.end167

if.end167:                                        ; preds = %if.then7.i, %if.end4.i.if.end167_crit_edge, %land.lhs.true.i.if.end167_crit_edge, %if.end166.if.end167_crit_edge, %while.end.if.end167_crit_edge
  %53 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %54, ptr noundef %ip, i32 noundef 1) #12
  call fastcc void @trace_xfs_itruncate_extents_end(ptr noundef %ip, i64 noundef %new_size)
  br label %out

out:                                              ; preds = %if.end167, %if.then162.out_crit_edge, %if.end155.out_crit_edge, %cond.end151.out_crit_edge
  %error.2 = phi i32 [ %call163, %if.then162.out_crit_edge ], [ 0, %if.end167 ], [ %call156, %if.end155.out_crit_edge ], [ %call152, %cond.end151.out_crit_edge ]
  %55 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tp, align 4
  %57 = ptrtoint ptr %tpp to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %tpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then108, %land.rhs97.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.2, %out ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then108 ], [ 0, %land.rhs97.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %unmap_len) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @XFS_ISIZE(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %0 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_vnode.i, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %2)
  %cmp = icmp eq i16 %2, -32768
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %i_size_seqcount.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.then
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !328
  %and.i.i.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %4 = tail call ptr @llvm.returnaddress(i32 0) #12
  %5 = ptrtoint ptr %4 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %5) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %5) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call ptr @llvm.returnaddress(i32 0) #12
  %7 = ptrtoint ptr %6 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %7) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %7) #12
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !329
  %and.i.i.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !305

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #12, !srcloc !330
  %9 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !332
  %11 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %12, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %10, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %12, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !333
  %13 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !334
  %15 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %16, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %while.end.i.return_crit_edge, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

while.end.i.return_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %17 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_disk_size, align 8
  br label %return

return:                                           ; preds = %if.end, %while.end.i.return_crit_edge
  %retval.0 = phi i64 [ %18, %if.end ], [ %14, %while.end.i.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_itruncate_extents_start(ptr noundef %ip, i64 noundef %new_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_itruncate_extents_start, i32 0, i32 1), ptr blockaddress(@trace_xfs_itruncate_extents_start, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !335
  %call42 = tail call i32 @__traceiter_xfs_itruncate_extents_start(ptr noundef null, ptr noundef %ip, i64 noundef %new_size) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !336
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_itruncate_extents_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_itruncate_extents_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_itruncate_extents_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_itruncate_extents_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 1564, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
declare dso_local zeroext i1 @xfs_verify_fileoff(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfs_bunmapi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_defer_finish(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reflink_cancel_cow_blocks(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_itruncate_extents_end(ptr noundef %ip, i64 noundef %new_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_itruncate_extents_end, i32 0, i32 1), ptr blockaddress(@trace_xfs_itruncate_extents_end, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !337
  %call42 = tail call i32 @__traceiter_xfs_itruncate_extents_end(ptr noundef null, ptr noundef %ip, i64 noundef %new_size) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !338
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_itruncate_extents_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_itruncate_extents_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_itruncate_extents_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_itruncate_extents_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 1565, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
define dso_local i32 @xfs_release(ptr noundef %ip) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %0 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_vnode.i, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %2)
  %cmp = icmp eq i16 %2, -32768
  br i1 %cmp, label %if.end, label %entry.cleanup49_crit_edge

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ip, align 8
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 66
  %5 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %m_opstate.i, align 4
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %if.end9, label %if.end.cleanup49_crit_edge

if.end.cleanup49_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

if.end9:                                          ; preds = %if.end
  %8 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %m_opstate.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i71.not = icmp eq i32 %10, 0
  br i1 %tobool.i71.not, label %if.then11, label %if.end9.if.end24_crit_edge

if.end9.if.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then11:                                        ; preds = %if.end9
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #12
  %i_flags.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %11 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_flags.i, align 8
  %and.i = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %xfs_iflags_test_and_clear.exit.thread, label %if.then13

xfs_iflags_test_and_clear.exit.thread:            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  br label %if.end24

if.then13:                                        ; preds = %if.then11
  %and3.i = and i32 %12, -33
  %13 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and3.i, ptr %i_flags.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #12
  %14 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_flags.i, align 8
  %and.i74 = and i32 %15, -65
  store i32 %and.i74, ptr %i_flags.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  %i_delayed_blks = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 17
  %16 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_delayed_blks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp14.not = icmp eq i64 %17, 0
  br i1 %cmp14.not, label %if.then13.if.end24_crit_edge, label %if.then16

if.then13.if.end24_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then16:                                        ; preds = %if.then13
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %18 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_mapping, align 8
  %call18 = tail call i32 @filemap_flush(ptr noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then16.if.end24_crit_edge, label %if.then16.cleanup49_crit_edge

if.then16.cleanup49_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.end24:                                         ; preds = %if.then16.if.end24_crit_edge, %if.then13.if.end24_crit_edge, %xfs_iflags_test_and_clear.exit.thread, %if.end9.if.end24_crit_edge
  %20 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 12
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp26 = icmp eq i32 %22, 0
  br i1 %cmp26, label %if.end24.cleanup49_crit_edge, label %if.end29

if.end24.cleanup49_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

if.end29:                                         ; preds = %if.end24
  %23 = tail call ptr @llvm.returnaddress(i32 0) #12
  %24 = ptrtoint ptr %23 to i32
  tail call fastcc void @trace_xfs_ilock_nowait(ptr noundef %ip, i32 noundef 1, i32 noundef %24) #12
  %i_rwsem.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25
  %call37.i = tail call i32 @down_write_trylock(ptr noundef %i_rwsem.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end29.cleanup49_crit_edge, label %if.end33

if.end29.cleanup49_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

if.end33:                                         ; preds = %if.end29
  %call34 = tail call zeroext i1 @xfs_can_free_eofblocks(ptr noundef %ip, i1 noundef zeroext false) #12
  br i1 %call34, label %if.then35, label %if.end33.out_unlock_crit_edge

if.end33.out_unlock_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then35:                                        ; preds = %if.end33
  %i_flags_lock.i78 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i78) #12
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %25 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i = and i32 %26, 64
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i78) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool37.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool37.not, label %if.end39, label %if.then35.out_unlock_crit_edge

if.then35.out_unlock_crit_edge:                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end39:                                         ; preds = %if.then35
  %call40 = tail call i32 @xfs_free_eofblocks(ptr noundef %ip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.out_unlock_crit_edge

if.end39.out_unlock_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end43:                                         ; preds = %if.end39
  %i_delayed_blks44 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 17
  %27 = ptrtoint ptr %i_delayed_blks44 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_delayed_blks44, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool45.not = icmp eq i64 %28, 0
  br i1 %tobool45.not, label %if.end43.out_unlock_crit_edge, label %if.then46

if.end43.out_unlock_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @xfs_iflags_set(ptr noundef %ip)
  br label %out_unlock

out_unlock:                                       ; preds = %if.then46, %if.end43.out_unlock_crit_edge, %if.end39.out_unlock_crit_edge, %if.then35.out_unlock_crit_edge, %if.end33.out_unlock_crit_edge
  %error.3 = phi i32 [ 0, %if.then35.out_unlock_crit_edge ], [ %call40, %if.end39.out_unlock_crit_edge ], [ 0, %if.then46 ], [ 0, %if.end43.out_unlock_crit_edge ], [ 0, %if.end33.out_unlock_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #12
  tail call fastcc void @trace_xfs_iunlock(ptr noundef %ip, i32 noundef 1, i32 noundef %24) #12
  br label %cleanup49

cleanup49:                                        ; preds = %out_unlock, %if.end29.cleanup49_crit_edge, %if.end24.cleanup49_crit_edge, %if.then16.cleanup49_crit_edge, %if.end.cleanup49_crit_edge, %entry.cleanup49_crit_edge
  %retval.1 = phi i32 [ %error.3, %out_unlock ], [ 0, %entry.cleanup49_crit_edge ], [ 0, %if.end.cleanup49_crit_edge ], [ 0, %if.end24.cleanup49_crit_edge ], [ %call18, %if.then16.cleanup49_crit_edge ], [ 0, %if.end29.cleanup49_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_flush(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_can_free_eofblocks(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_free_eofblocks(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_iflags_set(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_flags_lock = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock) #12
  %i_flags.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %0 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags.i, align 8
  %or.i = or i32 %1, 64
  store i32 %or.i, ptr %i_flags.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_inode_needs_inactive(ptr noundef %ip) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %2 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_cowfp, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %4 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %i_vnode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp eq i16 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %6 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %m_opstate.i, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %m_opstate.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i34.not = icmp eq i32 %11, 0
  br i1 %tobool.i34.not, label %lor.lhs.false, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %12 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %13, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i35.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i35.not, label %if.end10, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %m_rbmip.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %m_rbmip.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m_rbmip.i, align 8
  %cmp.i = icmp eq ptr %15, %ip
  br i1 %cmp.i, label %if.end10.cleanup_crit_edge, label %lor.lhs.false.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end10
  %m_rsumip.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %m_rsumip.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m_rsumip.i, align 4
  %cmp1.i = icmp eq ptr %17, %ip
  br i1 %cmp1.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.rhs.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %i_ino.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %18 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_ino.i, align 8
  %sb_uquotino.i.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 32
  %20 = ptrtoint ptr %sb_uquotino.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %sb_uquotino.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %19)
  %cmp.i.i = icmp eq i64 %21, %19
  br i1 %cmp.i.i, label %lor.rhs.i.cleanup_crit_edge, label %lor.lhs.false.i.i

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %lor.rhs.i
  %sb_gquotino.i.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 33
  %22 = ptrtoint ptr %sb_gquotino.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sb_gquotino.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %19)
  %cmp1.i.i = icmp eq i64 %23, %19
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %xfs_is_metadata_inode.exit

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

xfs_is_metadata_inode.exit:                       ; preds = %lor.lhs.false.i.i
  %sb_pquotino.i.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 52
  %24 = ptrtoint ptr %sb_pquotino.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %sb_pquotino.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %19)
  %cmp2.i.i = icmp eq i64 %25, %19
  br i1 %cmp2.i.i, label %xfs_is_metadata_inode.exit.cleanup_crit_edge, label %if.end13

xfs_is_metadata_inode.exit.cleanup_crit_edge:     ; preds = %xfs_is_metadata_inode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %xfs_is_metadata_inode.exit
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end13.if.end17_crit_edge, label %land.lhs.true

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end13
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp14 = icmp sgt i64 %27, 0
  br i1 %cmp14, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end13.if.end17_crit_edge
  %28 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 12
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp19 = icmp eq i32 %30, 0
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %call23 = tail call zeroext i1 @xfs_can_free_eofblocks(ptr noundef %ip, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end17.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %xfs_is_metadata_inode.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call23, %if.end22 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ], [ false, %xfs_is_metadata_inode.exit.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %if.end17.cleanup_crit_edge ], [ false, %lor.lhs.false.i.cleanup_crit_edge ], [ false, %if.end10.cleanup_crit_edge ], [ false, %lor.lhs.false.i.i.cleanup_crit_edge ], [ false, %lor.rhs.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_inactive(ptr noundef %ip) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %0 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_vnode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %if_broot_bytes = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 5
  %2 = ptrtoint ptr %if_broot_bytes to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %if_broot_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp3 = icmp eq i16 %3, 0
  br i1 %cmp3, label %if.then.out_crit_edge, label %cond.false, !prof !306

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 1735) #12
  br label %out

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ip, align 8
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #12
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %6 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i = and i32 %7, 2048
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not, label %if.end.cond.end18_crit_edge, label %cond.false17, !prof !306

if.end.cond.end18_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end18

cond.false17:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1740) #12
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %if.end.cond.end18_crit_edge
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 66
  %8 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %m_opstate.i, align 4
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %if.end21, label %cond.end18.out_crit_edge

cond.end18.out_crit_edge:                         ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end21:                                         ; preds = %cond.end18
  %11 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ip, align 8
  %m_rbmip.i = getelementptr inbounds %struct.xfs_mount, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %m_rbmip.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m_rbmip.i, align 8
  %cmp.i = icmp eq ptr %14, %ip
  br i1 %cmp.i, label %if.end21.out_crit_edge, label %lor.lhs.false.i

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false.i:                                  ; preds = %if.end21
  %m_rsumip.i = getelementptr inbounds %struct.xfs_mount, ptr %12, i32 0, i32 10
  %15 = ptrtoint ptr %m_rsumip.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_rsumip.i, align 4
  %cmp1.i = icmp eq ptr %16, %ip
  br i1 %cmp1.i, label %lor.lhs.false.i.out_crit_edge, label %lor.rhs.i

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %i_ino.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %17 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_ino.i, align 8
  %sb_uquotino.i.i = getelementptr inbounds %struct.xfs_sb, ptr %12, i32 0, i32 32
  %19 = ptrtoint ptr %sb_uquotino.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %sb_uquotino.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %18)
  %cmp.i.i = icmp eq i64 %20, %18
  br i1 %cmp.i.i, label %lor.rhs.i.out_crit_edge, label %lor.lhs.false.i.i

lor.rhs.i.out_crit_edge:                          ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false.i.i:                                ; preds = %lor.rhs.i
  %sb_gquotino.i.i = getelementptr inbounds %struct.xfs_sb, ptr %12, i32 0, i32 33
  %21 = ptrtoint ptr %sb_gquotino.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %sb_gquotino.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %18)
  %cmp1.i.i = icmp eq i64 %22, %18
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.out_crit_edge, label %xfs_is_metadata_inode.exit

lor.lhs.false.i.i.out_crit_edge:                  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

xfs_is_metadata_inode.exit:                       ; preds = %lor.lhs.false.i.i
  %sb_pquotino.i.i = getelementptr inbounds %struct.xfs_sb, ptr %12, i32 0, i32 52
  %23 = ptrtoint ptr %sb_pquotino.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %sb_pquotino.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %18)
  %cmp2.i.i = icmp eq i64 %24, %18
  br i1 %cmp2.i.i, label %xfs_is_metadata_inode.exit.out_crit_edge, label %if.end24

xfs_is_metadata_inode.exit.out_crit_edge:         ; preds = %xfs_is_metadata_inode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end24:                                         ; preds = %xfs_is_metadata_inode.exit
  %i_cowfp.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %25 = ptrtoint ptr %i_cowfp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_cowfp.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end24.if.end28_crit_edge, label %xfs_inode_has_cow_data.exit

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

xfs_inode_has_cow_data.exit:                      ; preds = %if.end24
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %26, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool2.i.not = icmp eq i64 %28, 0
  br i1 %tobool2.i.not, label %xfs_inode_has_cow_data.exit.if.end28_crit_edge, label %if.then26

xfs_inode_has_cow_data.exit.if.end28_crit_edge:   ; preds = %xfs_inode_has_cow_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then26:                                        ; preds = %xfs_inode_has_cow_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = tail call i32 @xfs_reflink_cancel_cow_range(ptr noundef %ip, i64 noundef 0, i64 noundef -1, i1 noundef zeroext true) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %xfs_inode_has_cow_data.exit.if.end28_crit_edge, %if.end24.if.end28_crit_edge
  %29 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 12
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp30.not = icmp eq i32 %31, 0
  br i1 %cmp30.not, label %if.end37, label %if.then32

if.then32:                                        ; preds = %if.end28
  %call33 = tail call zeroext i1 @xfs_can_free_eofblocks(ptr noundef %ip, i1 noundef zeroext true) #12
  br i1 %call33, label %if.then34, label %if.then32.out_crit_edge

if.then32.out_crit_edge:                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %call35 = tail call i32 @xfs_free_eofblocks(ptr noundef %ip) #12
  br label %out

if.end37:                                         ; preds = %if.end28
  %32 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %i_vnode.i, align 8
  %34 = and i16 %33, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %34)
  %cmp41 = icmp eq i16 %34, -32768
  br i1 %cmp41, label %land.lhs.true, label %if.end37.if.end56_crit_edge

if.end37.if.end56_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end37
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %35 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %cmp43.not = icmp eq i64 %36, 0
  br i1 %cmp43.not, label %lor.lhs.false, label %land.lhs.true.if.then55_crit_edge

land.lhs.true.if.then55_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call45 = tail call fastcc i64 @XFS_ISIZE(ptr noundef %ip)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call45)
  %cmp46.not = icmp eq i64 %call45, 0
  br i1 %cmp46.not, label %lor.lhs.false48, label %lor.lhs.false.if.then55_crit_edge

lor.lhs.false.if.then55_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

lor.lhs.false48:                                  ; preds = %lor.lhs.false
  %if_nextents = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 7
  %37 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp50 = icmp sgt i32 %38, 0
  br i1 %cmp50, label %lor.lhs.false48.if.then55_crit_edge, label %lor.lhs.false52

lor.lhs.false48.if.then55_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

lor.lhs.false52:                                  ; preds = %lor.lhs.false48
  %i_delayed_blks = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 17
  %39 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %i_delayed_blks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %cmp53.not = icmp eq i64 %40, 0
  br i1 %cmp53.not, label %lor.lhs.false52.if.end56_crit_edge, label %lor.lhs.false52.if.then55_crit_edge

lor.lhs.false52.if.then55_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

lor.lhs.false52.if.end56_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then55:                                        ; preds = %lor.lhs.false52.if.then55_crit_edge, %lor.lhs.false48.if.then55_crit_edge, %lor.lhs.false.if.then55_crit_edge, %land.lhs.true.if.then55_crit_edge
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %lor.lhs.false52.if.end56_crit_edge, %if.end37.if.end56_crit_edge
  %tobool69.not = phi i1 [ false, %if.then55 ], [ true, %lor.lhs.false52.if.end56_crit_edge ], [ true, %if.end37.if.end56_crit_edge ]
  %call57 = tail call i32 @xfs_qm_dqattach(ptr noundef %ip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.out_crit_edge

if.end56.out_crit_edge:                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end60:                                         ; preds = %if.end56
  %41 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %i_vnode.i, align 8
  %43 = and i16 %42, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %43)
  %cmp65 = icmp eq i16 %43, -24576
  br i1 %cmp65, label %if.then67, label %if.else

if.then67:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %call68 = tail call i32 @xfs_inactive_symlink(ptr noundef %ip) #12
  br label %if.end73

if.else:                                          ; preds = %if.end60
  br i1 %tobool69.not, label %if.else.if.end76_crit_edge, label %if.then70

if.else.if.end76_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call71 = tail call fastcc i32 @xfs_inactive_truncate(ptr noundef %ip)
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.then67
  %error.0 = phi i32 [ %call68, %if.then67 ], [ %call71, %if.then70 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool74.not = icmp eq i32 %error.0, 0
  br i1 %tobool74.not, label %if.end73.if.end76_crit_edge, label %if.end73.out_crit_edge

if.end73.out_crit_edge:                           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end73.if.end76_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.end76:                                         ; preds = %if.end73.if.end76_crit_edge, %if.else.if.end76_crit_edge
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %44 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp78.not = icmp eq i8 %45, 0
  br i1 %cmp78.not, label %if.end76.if.end85_crit_edge, label %if.then80

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then80:                                        ; preds = %if.end76
  %call81 = tail call i32 @xfs_attr_inactive(ptr noundef %ip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then80.if.end85_crit_edge, label %if.then80.out_crit_edge

if.then80.out_crit_edge:                          ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then80.if.end85_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.end85:                                         ; preds = %if.then80.if.end85_crit_edge, %if.end76.if.end85_crit_edge
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %46 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_afp, align 8
  %tobool86.not = icmp eq ptr %47, null
  br i1 %tobool86.not, label %if.end85.cond.end97_crit_edge, label %cond.false96, !prof !306

if.end85.cond.end97_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end97

cond.false96:                                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 1797) #12
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false96, %if.end85.cond.end97_crit_edge
  %48 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp100 = icmp eq i8 %49, 0
  br i1 %cmp100, label %cond.end97.cond.end110_crit_edge, label %cond.false109, !prof !306

cond.end97.cond.end110_crit_edge:                 ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end110

cond.false109:                                    ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 1798) #12
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false109, %cond.end97.cond.end110_crit_edge
  tail call fastcc void @xfs_inactive_ifree(ptr noundef %ip)
  br label %out

out:                                              ; preds = %cond.end110, %if.then80.out_crit_edge, %if.end73.out_crit_edge, %if.end56.out_crit_edge, %if.then34, %if.then32.out_crit_edge, %xfs_is_metadata_inode.exit.out_crit_edge, %lor.lhs.false.i.i.out_crit_edge, %lor.rhs.i.out_crit_edge, %lor.lhs.false.i.out_crit_edge, %if.end21.out_crit_edge, %cond.end18.out_crit_edge, %cond.false, %if.then.out_crit_edge
  tail call void @xfs_qm_dqdetach(ptr noundef %ip) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reflink_cancel_cow_range(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_inactive_symlink(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_inactive_truncate(ptr noundef %ip) unnamed_addr #7 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #12
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !318
  %tr_itruncate = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65, i32 1
  %call = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %tr_itruncate, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %3 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %m_opstate.i, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %cond.false, label %if.then.cleanup_crit_edge, !prof !305

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 1528) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = call ptr @llvm.returnaddress(i32 0) #12
  %7 = ptrtoint ptr %6 to i32
  call fastcc void @trace_xfs_ilock(ptr noundef %ip, i32 noundef 4, i32 noundef %7) #12
  %i_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10
  call void @down_write_nested(ptr noundef %i_lock.i, i32 noundef 0) #12
  %mr_writer.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %mr_writer.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %mr_writer.i.i, align 4
  %9 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %10, ptr noundef %ip, i32 noundef 0) #12
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %11 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %i_disk_size, align 8
  %12 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %13, ptr noundef %ip, i32 noundef 1) #12
  %call.i = call i32 @xfs_itruncate_extents_flags(ptr noundef nonnull %tp, ptr noundef %ip, i32 noundef 0, i64 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %error_trans_cancel

if.end7:                                          ; preds = %if.end
  %if_nextents = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 7
  %14 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.end7.cond.end16_crit_edge, label %cond.false15, !prof !306

if.end7.cond.end16_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end16

cond.false15:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 1546) #12
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %if.end7.cond.end16_crit_edge
  %16 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tp, align 4
  %call17 = call i32 @xfs_trans_commit(ptr noundef %17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %cond.end16.error_unlock_crit_edge

cond.end16.error_unlock_crit_edge:                ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_unlock

if.end20:                                         ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %mr_writer.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %mr_writer.i.i, align 4
  call void @up_write(ptr noundef %i_lock.i) #12
  call fastcc void @trace_xfs_iunlock(ptr noundef %ip, i32 noundef 4, i32 noundef %7) #12
  br label %cleanup

error_trans_cancel:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %20) #12
  br label %error_unlock

error_unlock:                                     ; preds = %error_trans_cancel, %cond.end16.error_unlock_crit_edge
  %error.0 = phi i32 [ %call.i, %error_trans_cancel ], [ %call17, %cond.end16.error_unlock_crit_edge ]
  %21 = ptrtoint ptr %mr_writer.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %mr_writer.i.i, align 4
  call void @up_write(ptr noundef %i_lock.i) #12
  call fastcc void @trace_xfs_iunlock(ptr noundef %ip, i32 noundef 4, i32 noundef %7) #12
  br label %cleanup

cleanup:                                          ; preds = %error_unlock, %if.end20, %cond.false, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %error_unlock ], [ 0, %if.end20 ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_inactive(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_inactive_ifree(ptr noundef %ip) unnamed_addr #7 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #12
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !318
  %m_finobt_nores = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 69
  %3 = ptrtoint ptr %m_finobt_nores to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %m_finobt_nores, align 2, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %tr_ifree5 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65, i32 9
  br i1 %tobool.not, label %if.else, label %if.then, !prof !306

if.then:                                          ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %5 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %inobt_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 10
  %7 = ptrtoint ptr %inobt_maxlevels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inobt_maxlevels, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ 0, %if.then.cond.end_crit_edge ]
  %call3 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %tr_ifree5, i32 noundef %cond, i32 noundef 0, i32 noundef 32, ptr noundef nonnull %tp) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %tr_ifree5, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %error.0 = phi i32 [ %call3, %cond.end ], [ %call6, %if.else ]
  %9 = zext i32 %error.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %error.0, label %if.else14 [
    i32 0, label %if.end26
    i32 -28, label %do.body
  ]

do.body:                                          ; preds = %if.end
  %call10 = call i32 @___ratelimit(ptr noundef nonnull @xfs_inactive_ifree._rs, ptr noundef nonnull @__func__.xfs_inactive_ifree) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %if.then12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.52) #12
  br label %cleanup

if.else14:                                        ; preds = %if.end
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %10 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %m_opstate.i, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i1.not = icmp eq i32 %12, 0
  br i1 %tobool.i1.not, label %cond.false23, label %if.else14.cleanup_crit_edge, !prof !305

if.else14.cleanup_crit_edge:                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false23:                                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 1599) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %13 = call ptr @llvm.returnaddress(i32 0) #12
  %14 = ptrtoint ptr %13 to i32
  call fastcc void @trace_xfs_ilock(ptr noundef %ip, i32 noundef 4, i32 noundef %14) #12
  %i_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10
  call void @down_write_nested(ptr noundef %i_lock.i, i32 noundef 0) #12
  %mr_writer.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %mr_writer.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %mr_writer.i.i, align 4
  %16 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %17, ptr noundef %ip, i32 noundef 4) #12
  %18 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tp, align 4
  %call27 = call i32 @xfs_ifree(ptr noundef %19, ptr noundef %ip)
  %20 = ptrtoint ptr %mr_writer.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mr_writer.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.i.not = icmp eq i32 %21, 0
  br i1 %tobool4.i.not, label %cond.false36, label %if.end26.cond.end37_crit_edge, !prof !305

if.end26.cond.end37_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end37

cond.false36:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 1628) #12
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false36, %if.end26.cond.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool38.not = icmp eq i32 %call27, 0
  br i1 %tobool38.not, label %if.end43, label %if.then39

if.then39:                                        ; preds = %cond.end37
  %m_opstate.i2 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %22 = ptrtoint ptr %m_opstate.i2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %m_opstate.i2, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i3.not = icmp eq i32 %24, 0
  br i1 %tobool.i3.not, label %if.then41, label %if.then39.if.end42_crit_edge

if.then39.if.end42_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then41:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @xfs_notice(ptr noundef %1, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.xfs_inactive_ifree, i32 noundef %call27) #12
  call void @xfs_do_force_shutdown(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 1638) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.then39.if.end42_crit_edge
  %25 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %26) #12
  br label %cleanup

if.end43:                                         ; preds = %cond.end37
  %27 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tp, align 4
  call void @xfs_trans_mod_dquot_byino(ptr noundef %28, ptr noundef %ip, i32 noundef 524288, i64 noundef -1) #12
  %29 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tp, align 4
  %call44 = call i32 @xfs_trans_commit(ptr noundef %30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end43.cleanup_crit_edge, label %if.then46

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @xfs_notice(ptr noundef %1, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.xfs_inactive_ifree, i32 noundef %call44) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end43.cleanup_crit_edge, %if.end42, %cond.false23, %if.else14.cleanup_crit_edge, %if.then12, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_dqdetach(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_iunlink_init(ptr noundef %pag) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pagi_unlinked_hash = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 38
  %call = tail call i32 @rhashtable_init(ptr noundef %pagi_unlinked_hash, ptr noundef nonnull @xfs_iunlink_hash_params) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_iunlink_destroy(ptr noundef %pag) local_unnamed_addr #2 align 64 {
entry:
  %freed_anything = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %freed_anything) #12
  %0 = ptrtoint ptr %freed_anything to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %freed_anything, align 1
  %pagi_unlinked_hash = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 38
  call void @rhashtable_free_and_destroy(ptr noundef %pagi_unlinked_hash, ptr noundef nonnull @xfs_iunlink_free_item, ptr noundef nonnull %freed_anything) #12
  %1 = ptrtoint ptr %freed_anything to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %freed_anything, align 1, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %lor.rhs

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

lor.rhs:                                          ; preds = %entry
  %3 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pag, align 4
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 66
  %5 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %m_opstate.i, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %cond.false, label %lor.rhs.cond.end_crit_edge, !prof !305

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 2018) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.rhs.cond.end_crit_edge, %entry.cond.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %freed_anything) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_iunlink_free_item(ptr noundef %ptr, ptr nocapture noundef writeonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %arg, align 1
  tail call void @kvfree(ptr noundef %ptr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ifree(ptr noundef %tp, ptr noundef %ip) local_unnamed_addr #2 align 64 {
entry:
  %map.i.i = alloca %struct.xfs_buf_map, align 8
  %bp.i = alloca ptr, align 4
  %xic = alloca %struct.xfs_icluster, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xic) #12
  %2 = call ptr @memset(ptr %xic, i32 0, i32 24)
  %i_itemp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 9
  %3 = ptrtoint ptr %i_itemp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_itemp, align 8
  %mr_writer.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %mr_writer.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mr_writer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.i.not = icmp eq i32 %6, 0
  br i1 %tobool4.i.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !305

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 2622) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %7 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %cond.end.cond.end11_crit_edge, label %cond.false10, !prof !306

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 2623) #12
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  %if_nextents = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 7
  %10 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp12 = icmp eq i32 %11, 0
  br i1 %cmp12, label %cond.end11.cond.end21_crit_edge, label %cond.false20, !prof !306

cond.end11.cond.end21_crit_edge:                  ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end21

cond.false20:                                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 2624) #12
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.end11.cond.end21_crit_edge
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %12 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp22 = icmp eq i64 %13, 0
  br i1 %cmp22, label %cond.end21.cond.end36_crit_edge, label %lor.rhs

cond.end21.cond.end36_crit_edge:                  ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end36

lor.rhs:                                          ; preds = %cond.end21
  %14 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %i_vnode.i, align 8
  %16 = and i16 %15, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %16)
  %cmp24.not = icmp eq i16 %16, -32768
  br i1 %cmp24.not, label %cond.false35, label %lor.rhs.cond.end36_crit_edge, !prof !305

lor.rhs.cond.end36_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end36

cond.false35:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 2625) #12
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false35, %lor.rhs.cond.end36_crit_edge, %cond.end21.cond.end36_crit_edge
  %i_nblocks = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 19
  %17 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_nblocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %cmp37 = icmp eq i64 %18, 0
  br i1 %cmp37, label %cond.end36.cond.end47_crit_edge, label %cond.false46, !prof !306

cond.end36.cond.end47_crit_edge:                  ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end47

cond.false46:                                     ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 2626) #12
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %cond.end36.cond.end47_crit_edge
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %19 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_ino, align 8
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  %21 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %22 to i64
  %shr = lshr i64 %20, %sh_prom
  %conv48 = trunc i64 %shr to i32
  %call49 = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %conv48) #12
  %call50 = tail call fastcc i32 @xfs_iunlink_remove(ptr noundef %tp, ptr noundef %call49, ptr noundef %ip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end, label %cond.end47.out_crit_edge

cond.end47.out_crit_edge:                         ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %cond.end47
  %23 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_ino, align 8
  %call53 = call i32 @xfs_difree(ptr noundef %tp, ptr noundef %call49, i64 noundef %24, ptr noundef nonnull %xic) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end56:                                         ; preds = %if.end
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 6
  %25 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp59 = icmp eq i8 %26, 1
  br i1 %cmp59, label %if.then61, label %if.end56.if.end66_crit_edge

if.end56.if.end66_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 4
  %27 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %if_u1, align 4
  call void @kvfree(ptr noundef %28) #12
  %29 = ptrtoint ptr %if_u1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %if_u1, align 4
  %30 = ptrtoint ptr %i_df to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %i_df, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end56.if.end66_crit_edge
  %31 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %i_vnode.i, align 8
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %32 = ptrtoint ptr %i_diflags to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %i_diflags, align 2
  %new_diflags2 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 17
  %33 = ptrtoint ptr %new_diflags2 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %new_diflags2, align 16
  %i_diflags2 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %35 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %i_diflags2, align 8
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %36 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %i_forkoff, align 4
  %37 = ptrtoint ptr %if_format to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %if_format, align 2
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #12
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %38 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i = and i32 %39, 16
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool73.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool73.not, label %if.end66.if.end75_crit_edge, label %if.then74

if.end66.if.end75_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then74:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #12
  %40 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_flags.i.i, align 8
  %and.i = and i32 %41, -17
  store i32 %and.i, ptr %i_flags.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end66.if.end75_crit_edge
  %ili_lock = getelementptr inbounds %struct.xfs_inode_log_item, ptr %4, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %ili_lock) #12
  %ili_fields = getelementptr inbounds %struct.xfs_inode_log_item, ptr %4, i32 0, i32 5
  %42 = ptrtoint ptr %ili_fields to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ili_fields, align 8
  %and76 = and i32 %43, -1537
  store i32 %and76, ptr %ili_fields, align 8
  call void @_raw_spin_unlock(ptr noundef %ili_lock) #12
  %i_generation = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 49
  %44 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_generation, align 8
  %inc = add i32 %45, 1
  store i32 %inc, ptr %i_generation, align 8
  call void @xfs_trans_log_inode(ptr noundef %tp, ptr noundef %ip, i32 noundef 1) #12
  %46 = ptrtoint ptr %xic to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %xic, align 8, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool79.not = icmp eq i8 %47, 0
  br i1 %tobool79.not, label %if.end75.out_crit_edge, label %if.then80

if.end75.out_crit_edge:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then80:                                        ; preds = %if.end75
  %48 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp.i) #12
  %50 = ptrtoint ptr %bp.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp.i, align 4, !annotation !318
  %first_ino.i = getelementptr inbounds %struct.xfs_icluster, ptr %xic, i32 0, i32 1
  %ialloc_blks.i = getelementptr inbounds %struct.xfs_mount, ptr %49, i32 0, i32 64, i32 12
  %51 = ptrtoint ptr %ialloc_blks.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ialloc_blks.i, align 4
  %blocks_per_cluster.i = getelementptr inbounds %struct.xfs_mount, ptr %49, i32 0, i32 64, i32 4
  %53 = ptrtoint ptr %blocks_per_cluster.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %blocks_per_cluster.i, align 4
  %div.i = udiv i32 %52, %54
  %agino_log.i = getelementptr inbounds %struct.xfs_mount, ptr %49, i32 0, i32 64, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i)
  %cmp93.i = icmp sgt i32 %div.i, 0
  br i1 %cmp93.i, label %for.body.lr.ph.i, label %if.then80.xfs_ifree_cluster.exit_crit_edge

if.then80.xfs_ifree_cluster.exit_crit_edge:       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_ifree_cluster.exit

for.body.lr.ph.i:                                 ; preds = %if.then80
  %55 = ptrtoint ptr %first_ino.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %first_ino.i, align 8
  %alloc.i = getelementptr inbounds %struct.xfs_icluster, ptr %xic, i32 0, i32 2
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %49, i32 0, i32 11
  %sb_inopblog.i = getelementptr inbounds %struct.xfs_sb, ptr %49, i32 0, i32 23
  %sb_agblklog.i = getelementptr inbounds %struct.xfs_sb, ptr %49, i32 0, i32 24
  %m_blkbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %49, i32 0, i32 28
  %m_ddev_targp.i = getelementptr inbounds %struct.xfs_mount, ptr %49, i32 0, i32 13
  %m_bsize.i = getelementptr inbounds %struct.xfs_mount, ptr %49, i32 0, i32 26
  %57 = getelementptr inbounds i8, ptr %map.i.i, i32 8
  %inodes_per_cluster33.i = getelementptr inbounds %struct.xfs_mount, ptr %49, i32 0, i32 64, i32 3
  %pag_ici_root.i.i = getelementptr inbounds %struct.xfs_perag, ptr %call49, i32 0, i32 32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc39.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.097.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc40.i, %for.inc39.i.for.body.i_crit_edge ]
  %inum.094.i = phi i64 [ %56, %for.body.lr.ph.i ], [ %add43.i, %for.inc39.i.for.body.i_crit_edge ]
  %58 = ptrtoint ptr %first_ino.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %first_ino.i, align 8
  %sub.i = sub i64 %inum.094.i, %59
  %60 = ptrtoint ptr %alloc.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %alloc.i, align 8
  %sh_prom.i = and i64 %sub.i, 4294967295
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and.i123 = and i64 %shl.i, %61
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i123)
  %cmp2.i = icmp eq i64 %and.i123, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %conv.i = trunc i64 %sub.i to i32
  %62 = ptrtoint ptr %inodes_per_cluster33.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %inodes_per_cluster33.i, align 8
  %rem.i = urem i32 %conv.i, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp4.i = icmp eq i32 %rem.i, 0
  br i1 %cmp4.i, label %if.then.i.for.inc39.i_crit_edge, label %cond.false.i, !prof !306

if.then.i.for.inc39.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc39.i

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.1, i32 noundef 2554) #12
  br label %for.inc39.i

if.end.i:                                         ; preds = %for.body.i
  %64 = ptrtoint ptr %agino_log.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %agino_log.i, align 8
  %sh_prom8.i = zext i32 %65 to i64
  %shr.i = lshr i64 %inum.094.i, %sh_prom8.i
  %conv10.i = and i64 %shr.i, 4294967295
  %66 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sb_agblocks.i, align 4
  %conv11.i = zext i32 %67 to i64
  %mul.i = mul nuw i64 %conv10.i, %conv11.i
  %conv12.i = trunc i64 %inum.094.i to i32
  %68 = ptrtoint ptr %sb_inopblog.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %sb_inopblog.i, align 1
  %conv14.i = zext i8 %69 to i32
  %shr15.i = lshr i32 %conv12.i, %conv14.i
  %70 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %sb_agblklog.i, align 4
  %sh_prom18.i = zext i8 %71 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom18.i
  %72 = trunc i64 %notmask.i to i32
  %conv21.i = xor i32 %72, -1
  %and22.i = and i32 %shr15.i, %conv21.i
  %conv23.i = zext i32 %and22.i to i64
  %add.i = add nuw i64 %mul.i, %conv23.i
  %73 = ptrtoint ptr %m_blkbb_log.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %m_blkbb_log.i, align 1
  %sh_prom25.i = zext i8 %74 to i64
  %shl26.i = shl i64 %add.i, %sh_prom25.i
  %75 = ptrtoint ptr %m_ddev_targp.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %m_ddev_targp.i, align 8
  %77 = ptrtoint ptr %m_bsize.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %m_bsize.i, align 16
  %79 = ptrtoint ptr %blocks_per_cluster.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %blocks_per_cluster.i, align 4
  %mul28.i = mul i32 %80, %78
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i.i) #12
  %81 = ptrtoint ptr %57 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 -1, ptr %57, align 8
  %82 = ptrtoint ptr %map.i.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %shl26.i, ptr %map.i.i, align 8
  store i32 %mul28.i, ptr %57, align 8
  %call.i.i = call i32 @xfs_trans_get_buf_map(ptr noundef %tp, ptr noundef %76, ptr noundef nonnull %map.i.i, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %bp.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool29.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end.i.xfs_ifree_cluster.exit_crit_edge

if.end.i.xfs_ifree_cluster.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_ifree_cluster.exit

if.end31.i:                                       ; preds = %if.end.i
  %83 = ptrtoint ptr %bp.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bp.i, align 4
  %b_ops.i = getelementptr inbounds %struct.xfs_buf, ptr %84, i32 0, i32 35
  %85 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @xfs_inode_buf_ops, ptr %b_ops.i, align 4
  %86 = ptrtoint ptr %inodes_per_cluster33.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %inodes_per_cluster33.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp3491.not.i = icmp eq i32 %87, 0
  br i1 %cmp3491.not.i, label %if.end31.i.for.end.i_crit_edge, label %if.end31.i.for.body36.i_crit_edge

if.end31.i.for.body36.i_crit_edge:                ; preds = %if.end31.i
  br label %for.body36.i

if.end31.i.for.end.i_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body36.i:                                     ; preds = %xfs_ifree_mark_inode_stale.exit.i.for.body36.i_crit_edge, %if.end31.i.for.body36.i_crit_edge
  %i.092.i = phi i32 [ %inc.i, %xfs_ifree_mark_inode_stale.exit.i.for.body36.i_crit_edge ], [ 0, %if.end31.i.for.body36.i_crit_edge ]
  %conv37.i = sext i32 %i.092.i to i64
  %add38.i = add i64 %inum.094.i, %conv37.i
  %88 = ptrtoint ptr %call49 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call49, align 4
  %conv.i.i = trunc i64 %add38.i to i32
  %agino_log.i.i = getelementptr inbounds %struct.xfs_mount, ptr %89, i32 0, i32 64, i32 15
  br label %retry.i.i

retry.i.i:                                        ; preds = %rcu_read_unlock.exit118.i.i, %for.body36.i
  %90 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i.i.i.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %93, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !339
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i, label %retry.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

retry.i.i.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %retry.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 696, ptr noundef nonnull @.str.65) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %retry.i.i.rcu_read_lock.exit.i.i_crit_edge
  %94 = ptrtoint ptr %agino_log.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %agino_log.i.i, align 8
  %sh_prom.i.i = zext i32 %95 to i64
  %notmask.i.i = shl nsw i64 -1, %sh_prom.i.i
  %96 = trunc i64 %notmask.i.i to i32
  %conv1.i.i = xor i32 %96, -1
  %and.i.i124 = and i32 %conv1.i.i, %conv.i.i
  %call.i80.i = call ptr @radix_tree_lookup(ptr noundef %pag_ici_root.i.i, i32 noundef %and.i.i124) #12
  %tobool.not.i.i = icmp eq ptr %call.i80.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %call.i99.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i99.i.i, label %if.then.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i102.i.i

if.then.i.i.rcu_read_unlock.exit.i.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i102.i.i:                           ; preds = %if.then.i.i
  %call1.i100.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i100.i.i)
  %tobool.not.i101.i.i = icmp eq i32 %call1.i100.i.i, 0
  br i1 %tobool.not.i101.i.i, label %land.lhs.true.i102.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i104.i.i

land.lhs.true.i102.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i102.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i104.i.i:                          ; preds = %land.lhs.true.i102.i.i
  %.b4.i103.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i103.i.i, label %land.lhs.true2.i104.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i105.i.i

land.lhs.true2.i104.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

if.then.i105.i.i:                                 ; preds = %land.lhs.true2.i104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 724, ptr noundef nonnull @.str.66) #12
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i105.i.i, %land.lhs.true2.i104.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i102.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.then.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !340
  %97 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i.i106.i.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i.i.i106.i.i to ptr
  %preempt_count.i.i.i.i107.i.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %preempt_count.i.i.i.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %preempt_count.i.i.i.i107.i.i, align 4
  %sub.i.i.i.i.i = add i32 %100, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i107.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %xfs_ifree_mark_inode_stale.exit.i

if.end.i.i:                                       ; preds = %rcu_read_lock.exit.i.i
  %i_flags_lock.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call.i80.i, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i) #12
  %i_ino.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call.i80.i, i32 0, i32 4
  %101 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %i_ino.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %102, i64 %add38.i)
  %cmp.not.i.i = icmp eq i64 %102, %add38.i
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.out_iflags_unlock.i.i_crit_edge

if.end.i.i.out_iflags_unlock.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_iflags_unlock.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %i_flags.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call.i80.i, i32 0, i32 16
  %103 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %i_flags.i.i.i, align 8
  %and.i.i.i = and i32 %104, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %lor.lhs.false.i.i.out_iflags_unlock.i.i_crit_edge

lor.lhs.false.i.i.out_iflags_unlock.i.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_iflags_unlock.i.i

if.end6.i.i:                                      ; preds = %lor.lhs.false.i.i
  %cmp7.not.i.i = icmp eq ptr %call.i80.i, %ip
  br i1 %cmp7.not.i.i, label %if.end6.i.i.if.end15.i.i_crit_edge, label %if.then9.i.i

if.end6.i.i.if.end15.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  %105 = call ptr @llvm.returnaddress(i32 0) #12
  %106 = ptrtoint ptr %105 to i32
  call fastcc void @trace_xfs_ilock_nowait(ptr noundef nonnull %call.i80.i, i32 noundef 4, i32 noundef %106) #12
  %i_lock.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call.i80.i, i32 0, i32 10
  %call.i.i.i.i = call i32 @down_write_trylock(ptr noundef %i_lock.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then12.i.i, label %xfs_ilock_nowait.exit.i.i

xfs_ilock_nowait.exit.i.i:                        ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %mr_writer.i.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call.i80.i, i32 0, i32 10, i32 1
  %107 = ptrtoint ptr %mr_writer.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %mr_writer.i.i.i.i, align 4
  br label %if.end15.i.i

if.then12.i.i:                                    ; preds = %if.then9.i.i
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i) #12
  %call.i108.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i108.i.i, label %if.then12.i.i.rcu_read_unlock.exit118.i.i_crit_edge, label %land.lhs.true.i111.i.i

if.then12.i.i.rcu_read_unlock.exit118.i.i_crit_edge: ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit118.i.i

land.lhs.true.i111.i.i:                           ; preds = %if.then12.i.i
  %call1.i109.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i109.i.i)
  %tobool.not.i110.i.i = icmp eq i32 %call1.i109.i.i, 0
  br i1 %tobool.not.i110.i.i, label %land.lhs.true.i111.i.i.rcu_read_unlock.exit118.i.i_crit_edge, label %land.lhs.true2.i113.i.i

land.lhs.true.i111.i.i.rcu_read_unlock.exit118.i.i_crit_edge: ; preds = %land.lhs.true.i111.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit118.i.i

land.lhs.true2.i113.i.i:                          ; preds = %land.lhs.true.i111.i.i
  %.b4.i112.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i112.i.i, label %land.lhs.true2.i113.i.i.rcu_read_unlock.exit118.i.i_crit_edge, label %if.then.i114.i.i

land.lhs.true2.i113.i.i.rcu_read_unlock.exit118.i.i_crit_edge: ; preds = %land.lhs.true2.i113.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit118.i.i

if.then.i114.i.i:                                 ; preds = %land.lhs.true2.i113.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 724, ptr noundef nonnull @.str.66) #12
  br label %rcu_read_unlock.exit118.i.i

rcu_read_unlock.exit118.i.i:                      ; preds = %if.then.i114.i.i, %land.lhs.true2.i113.i.i.rcu_read_unlock.exit118.i.i_crit_edge, %land.lhs.true.i111.i.i.rcu_read_unlock.exit118.i.i_crit_edge, %if.then12.i.i.rcu_read_unlock.exit118.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !340
  %108 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i.i115.i.i = and i32 %108, -16384
  %109 = inttoptr i32 %and.i.i.i.i.i115.i.i to ptr
  %preempt_count.i.i.i.i116.i.i = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %preempt_count.i.i.i.i116.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %preempt_count.i.i.i.i116.i.i, align 4
  %sub.i.i.i117.i.i = add i32 %111, -1
  store volatile i32 %sub.i.i.i117.i.i, ptr %preempt_count.i.i.i.i116.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call.i119.i.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #12
  br label %retry.i.i

if.end15.i.i:                                     ; preds = %xfs_ilock_nowait.exit.i.i, %if.end6.i.i.if.end15.i.i_crit_edge
  %call171.i.i = phi ptr [ %call.i80.i, %xfs_ilock_nowait.exit.i.i ], [ %ip, %if.end6.i.i.if.end15.i.i_crit_edge ]
  %i_flags.i162.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call171.i.i, i32 0, i32 16
  %112 = ptrtoint ptr %i_flags.i162.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %i_flags.i162.i.i, align 8
  %or.i.i = or i32 %113, 2
  store i32 %or.i.i, ptr %i_flags.i162.i.i, align 8
  %i_itemp.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call171.i.i, i32 0, i32 9
  %114 = ptrtoint ptr %i_itemp.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %i_itemp.i.i, align 8
  %and.i121.i.i = and i32 %113, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i121.i.i)
  %tobool17.not.i.i = icmp eq i32 %and.i121.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end34.i.i, label %if.then18.i.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  %li_bio_list.i.i = getelementptr inbounds %struct.xfs_log_item, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %li_bio_list.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile ptr, ptr %li_bio_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %117, %li_bio_list.i.i
  br i1 %cmp.i.not.i.i, label %cond.false.i.i, label %if.then18.i.i.cond.end.i.i_crit_edge, !prof !305

if.then18.i.i.cond.end.i.i_crit_edge:             ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 2484) #12
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.then18.i.i.cond.end.i.i_crit_edge
  %ili_last_fields.i.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %115, i32 0, i32 4
  %118 = ptrtoint ptr %ili_last_fields.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ili_last_fields.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool24.not.i.i = icmp eq i32 %119, 0
  br i1 %tobool24.not.i.i, label %cond.false32.i.i, label %cond.end.i.i.out_iunlock.i.i_crit_edge, !prof !305

cond.end.i.i.out_iunlock.i.i_crit_edge:           ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_iunlock.i.i

cond.false32.i.i:                                 ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.1, i32 noundef 2485) #12
  br label %out_iunlock.i.i

if.end34.i.i:                                     ; preds = %if.end15.i.i
  %tobool35.not.i.i = icmp eq ptr %115, null
  br i1 %tobool35.not.i.i, label %if.end34.i.i.out_iunlock.i.i_crit_edge, label %lor.lhs.false36.i.i

if.end34.i.i.out_iunlock.i.i_crit_edge:           ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_iunlock.i.i

lor.lhs.false36.i.i:                              ; preds = %if.end34.i.i
  %li_bio_list38.i.i = getelementptr inbounds %struct.xfs_log_item, ptr %115, i32 0, i32 8
  %120 = ptrtoint ptr %li_bio_list38.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile ptr, ptr %li_bio_list38.i.i, align 4
  %cmp.i122.not.i.i = icmp eq ptr %121, %li_bio_list38.i.i
  br i1 %cmp.i122.not.i.i, label %lor.lhs.false36.i.i.out_iunlock.i.i_crit_edge, label %if.end42.i.i

lor.lhs.false36.i.i.out_iunlock.i.i_crit_edge:    ; preds = %lor.lhs.false36.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_iunlock.i.i

if.end42.i.i:                                     ; preds = %lor.lhs.false36.i.i
  %or.i.i.i = or i32 %113, 130
  %122 = ptrtoint ptr %i_flags.i162.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %or.i.i.i, ptr %i_flags.i162.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i) #12
  %call.i125.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i125.i.i, label %if.end42.i.i.rcu_read_unlock.exit135.i.i_crit_edge, label %land.lhs.true.i128.i.i

if.end42.i.i.rcu_read_unlock.exit135.i.i_crit_edge: ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit135.i.i

land.lhs.true.i128.i.i:                           ; preds = %if.end42.i.i
  %call1.i126.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i126.i.i)
  %tobool.not.i127.i.i = icmp eq i32 %call1.i126.i.i, 0
  br i1 %tobool.not.i127.i.i, label %land.lhs.true.i128.i.i.rcu_read_unlock.exit135.i.i_crit_edge, label %land.lhs.true2.i130.i.i

land.lhs.true.i128.i.i.rcu_read_unlock.exit135.i.i_crit_edge: ; preds = %land.lhs.true.i128.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit135.i.i

land.lhs.true2.i130.i.i:                          ; preds = %land.lhs.true.i128.i.i
  %.b4.i129.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i129.i.i, label %land.lhs.true2.i130.i.i.rcu_read_unlock.exit135.i.i_crit_edge, label %if.then.i131.i.i

land.lhs.true2.i130.i.i.rcu_read_unlock.exit135.i.i_crit_edge: ; preds = %land.lhs.true2.i130.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit135.i.i

if.then.i131.i.i:                                 ; preds = %land.lhs.true2.i130.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 724, ptr noundef nonnull @.str.66) #12
  br label %rcu_read_unlock.exit135.i.i

rcu_read_unlock.exit135.i.i:                      ; preds = %if.then.i131.i.i, %land.lhs.true2.i130.i.i.rcu_read_unlock.exit135.i.i_crit_edge, %land.lhs.true.i128.i.i.rcu_read_unlock.exit135.i.i_crit_edge, %if.end42.i.i.rcu_read_unlock.exit135.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !340
  %123 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i.i132.i.i = and i32 %123, -16384
  %124 = inttoptr i32 %and.i.i.i.i.i132.i.i to ptr
  %preempt_count.i.i.i.i133.i.i = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %preempt_count.i.i.i.i133.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %preempt_count.i.i.i.i133.i.i, align 4
  %sub.i.i.i134.i.i = add i32 %126, -1
  store volatile i32 %sub.i.i.i134.i.i, ptr %preempt_count.i.i.i.i133.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %ili_lock.i.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %115, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %ili_lock.i.i) #12
  %ili_fields.i.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %115, i32 0, i32 5
  %127 = ptrtoint ptr %ili_fields.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ili_fields.i.i, align 8
  %ili_last_fields44.i.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %115, i32 0, i32 4
  %129 = ptrtoint ptr %ili_last_fields44.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %ili_last_fields44.i.i, align 4
  store i32 0, ptr %ili_fields.i.i, align 8
  %ili_fsync_fields.i.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %115, i32 0, i32 6
  %130 = ptrtoint ptr %ili_fsync_fields.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %ili_fsync_fields.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %ili_lock.i.i) #12
  %131 = ptrtoint ptr %ili_last_fields44.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ili_last_fields44.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool48.not.i.i = icmp eq i32 %132, 0
  br i1 %tobool48.not.i.i, label %cond.false56.i.i, label %rcu_read_unlock.exit135.i.i.cond.end57.i.i_crit_edge, !prof !305

rcu_read_unlock.exit135.i.i.cond.end57.i.i_crit_edge: ; preds = %rcu_read_unlock.exit135.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end57.i.i

cond.false56.i.i:                                 ; preds = %rcu_read_unlock.exit135.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.1, i32 noundef 2508) #12
  br label %cond.end57.i.i

cond.end57.i.i:                                   ; preds = %cond.false56.i.i, %rcu_read_unlock.exit135.i.i.cond.end57.i.i_crit_edge
  br i1 %cmp7.not.i.i, label %cond.end57.i.i.xfs_ifree_mark_inode_stale.exit.i_crit_edge, label %if.then60.i.i

cond.end57.i.i.xfs_ifree_mark_inode_stale.exit.i_crit_edge: ; preds = %cond.end57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_ifree_mark_inode_stale.exit.i

if.then60.i.i:                                    ; preds = %cond.end57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_lock.i136.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call171.i.i, i32 0, i32 10
  %mr_writer.i.i137.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call171.i.i, i32 0, i32 10, i32 1
  %133 = ptrtoint ptr %mr_writer.i.i137.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %mr_writer.i.i137.i.i, align 4
  call void @up_write(ptr noundef %i_lock.i136.i.i) #12
  %134 = call ptr @llvm.returnaddress(i32 0) #12
  %135 = ptrtoint ptr %134 to i32
  call fastcc void @trace_xfs_iunlock(ptr noundef nonnull %call171.i.i, i32 noundef 4, i32 noundef %135) #12
  br label %xfs_ifree_mark_inode_stale.exit.i

out_iunlock.i.i:                                  ; preds = %lor.lhs.false36.i.i.out_iunlock.i.i_crit_edge, %if.end34.i.i.out_iunlock.i.i_crit_edge, %cond.false32.i.i, %cond.end.i.i.out_iunlock.i.i_crit_edge
  br i1 %cmp7.not.i.i, label %out_iunlock.i.i.out_iflags_unlock.i.i_crit_edge, label %if.then64.i.i

out_iunlock.i.i.out_iflags_unlock.i.i_crit_edge:  ; preds = %out_iunlock.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_iflags_unlock.i.i

if.then64.i.i:                                    ; preds = %out_iunlock.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_lock.i138.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call171.i.i, i32 0, i32 10
  %mr_writer.i.i139.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call171.i.i, i32 0, i32 10, i32 1
  %136 = ptrtoint ptr %mr_writer.i.i139.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %mr_writer.i.i139.i.i, align 4
  call void @up_write(ptr noundef %i_lock.i138.i.i) #12
  %137 = call ptr @llvm.returnaddress(i32 0) #12
  %138 = ptrtoint ptr %137 to i32
  call fastcc void @trace_xfs_iunlock(ptr noundef nonnull %call171.i.i, i32 noundef 4, i32 noundef %138) #12
  br label %out_iflags_unlock.i.i

out_iflags_unlock.i.i:                            ; preds = %if.then64.i.i, %out_iunlock.i.i.out_iflags_unlock.i.i_crit_edge, %lor.lhs.false.i.i.out_iflags_unlock.i.i_crit_edge, %if.end.i.i.out_iflags_unlock.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i) #12
  %call.i140.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i140.i.i, label %out_iflags_unlock.i.i.rcu_read_unlock.exit150.i.i_crit_edge, label %land.lhs.true.i143.i.i

out_iflags_unlock.i.i.rcu_read_unlock.exit150.i.i_crit_edge: ; preds = %out_iflags_unlock.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit150.i.i

land.lhs.true.i143.i.i:                           ; preds = %out_iflags_unlock.i.i
  %call1.i141.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i141.i.i)
  %tobool.not.i142.i.i = icmp eq i32 %call1.i141.i.i, 0
  br i1 %tobool.not.i142.i.i, label %land.lhs.true.i143.i.i.rcu_read_unlock.exit150.i.i_crit_edge, label %land.lhs.true2.i145.i.i

land.lhs.true.i143.i.i.rcu_read_unlock.exit150.i.i_crit_edge: ; preds = %land.lhs.true.i143.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit150.i.i

land.lhs.true2.i145.i.i:                          ; preds = %land.lhs.true.i143.i.i
  %.b4.i144.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i144.i.i, label %land.lhs.true2.i145.i.i.rcu_read_unlock.exit150.i.i_crit_edge, label %if.then.i146.i.i

land.lhs.true2.i145.i.i.rcu_read_unlock.exit150.i.i_crit_edge: ; preds = %land.lhs.true2.i145.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit150.i.i

if.then.i146.i.i:                                 ; preds = %land.lhs.true2.i145.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 724, ptr noundef nonnull @.str.66) #12
  br label %rcu_read_unlock.exit150.i.i

rcu_read_unlock.exit150.i.i:                      ; preds = %if.then.i146.i.i, %land.lhs.true2.i145.i.i.rcu_read_unlock.exit150.i.i_crit_edge, %land.lhs.true.i143.i.i.rcu_read_unlock.exit150.i.i_crit_edge, %out_iflags_unlock.i.i.rcu_read_unlock.exit150.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !340
  %139 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i.i147.i.i = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i.i.i147.i.i to ptr
  %preempt_count.i.i.i.i148.i.i = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %preempt_count.i.i.i.i148.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %preempt_count.i.i.i.i148.i.i, align 4
  %sub.i.i.i149.i.i = add i32 %142, -1
  store volatile i32 %sub.i.i.i149.i.i, ptr %preempt_count.i.i.i.i148.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %xfs_ifree_mark_inode_stale.exit.i

xfs_ifree_mark_inode_stale.exit.i:                ; preds = %rcu_read_unlock.exit150.i.i, %if.then60.i.i, %cond.end57.i.i.xfs_ifree_mark_inode_stale.exit.i_crit_edge, %rcu_read_unlock.exit.i.i
  %inc.i = add nuw i32 %i.092.i, 1
  %143 = ptrtoint ptr %inodes_per_cluster33.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %inodes_per_cluster33.i, align 8
  %cmp34.i = icmp ult i32 %inc.i, %144
  br i1 %cmp34.i, label %xfs_ifree_mark_inode_stale.exit.i.for.body36.i_crit_edge, label %xfs_ifree_mark_inode_stale.exit.i.for.end.i_crit_edge

xfs_ifree_mark_inode_stale.exit.i.for.end.i_crit_edge: ; preds = %xfs_ifree_mark_inode_stale.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

xfs_ifree_mark_inode_stale.exit.i.for.body36.i_crit_edge: ; preds = %xfs_ifree_mark_inode_stale.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body36.i

for.end.i:                                        ; preds = %xfs_ifree_mark_inode_stale.exit.i.for.end.i_crit_edge, %if.end31.i.for.end.i_crit_edge
  %145 = ptrtoint ptr %bp.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bp.i, align 4
  call void @xfs_trans_stale_inode_buf(ptr noundef %tp, ptr noundef %146) #12
  %147 = ptrtoint ptr %bp.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bp.i, align 4
  call void @xfs_trans_binval(ptr noundef %tp, ptr noundef %148) #12
  br label %for.inc39.i

for.inc39.i:                                      ; preds = %for.end.i, %cond.false.i, %if.then.i.for.inc39.i_crit_edge
  %inc40.i = add nuw nsw i32 %j.097.i, 1
  %149 = ptrtoint ptr %inodes_per_cluster33.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %inodes_per_cluster33.i, align 8
  %conv42.i = zext i32 %150 to i64
  %add43.i = add i64 %inum.094.i, %conv42.i
  %exitcond.not.i = icmp eq i32 %inc40.i, %div.i
  br i1 %exitcond.not.i, label %for.inc39.i.xfs_ifree_cluster.exit_crit_edge, label %for.inc39.i.for.body.i_crit_edge

for.inc39.i.for.body.i_crit_edge:                 ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc39.i.xfs_ifree_cluster.exit_crit_edge:     ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_ifree_cluster.exit

xfs_ifree_cluster.exit:                           ; preds = %for.inc39.i.xfs_ifree_cluster.exit_crit_edge, %if.end.i.xfs_ifree_cluster.exit_crit_edge, %if.then80.xfs_ifree_cluster.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then80.xfs_ifree_cluster.exit_crit_edge ], [ %call.i.i, %if.end.i.xfs_ifree_cluster.exit_crit_edge ], [ 0, %for.inc39.i.xfs_ifree_cluster.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp.i) #12
  br label %out

out:                                              ; preds = %xfs_ifree_cluster.exit, %if.end75.out_crit_edge, %if.end.out_crit_edge, %cond.end47.out_crit_edge
  %error.0 = phi i32 [ %call50, %cond.end47.out_crit_edge ], [ %call53, %if.end.out_crit_edge ], [ %retval.0.i, %xfs_ifree_cluster.exit ], [ 0, %if.end75.out_crit_edge ]
  call void @xfs_perag_put(ptr noundef %call49) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xic) #12
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_difree(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_iunpin_wait(ptr noundef %ip) local_unnamed_addr #2 align 64 {
entry:
  %wait.i = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_pincount = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_pincount, i32 noundef 4) #12
  %0 = ptrtoint ptr %i_pincount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %i_flags.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %call.i = tail call ptr @bit_waitqueue(ptr noundef %i_flags.i, i32 noundef 8) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wait.i) #12
  %2 = getelementptr inbounds %struct.wait_bit_key, ptr %wait.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_bit_key, ptr %wait.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait.i, i32 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait.i, i32 0, i32 1, i32 2
  %7 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait.i, i32 0, i32 1, i32 3
  %8 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait.i, i32 0, i32 1, i32 3, i32 1
  %9 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %i_flags.i, ptr %wait.i, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %4, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %5, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @wake_bit_function, ptr %6, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %7, ptr %7, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %7, ptr %8, align 4
  %i_lock6.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_lock6.i.i.i, i32 noundef 4) #12
  %21 = ptrtoint ptr %i_lock6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %i_lock6.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i.not.i.i = icmp eq i32 %22, 0
  br i1 %cmp.i.i.not.i.i, label %cond.false.i.i, label %if.then.xfs_iunpin.exit.i_crit_edge, !prof !305

if.then.xfs_iunpin.exit.i_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_iunpin.exit.i

cond.false.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.1, i32 noundef 2688) #12
  br label %xfs_iunpin.exit.i

xfs_iunpin.exit.i:                                ; preds = %cond.false.i.i, %if.then.xfs_iunpin.exit.i_crit_edge
  %23 = call ptr @llvm.returnaddress(i32 0) #12
  %24 = ptrtoint ptr %23 to i32
  call fastcc void @trace_xfs_inode_unpin_nowait(ptr noundef %ip, i32 noundef %24) #12
  %25 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ip, align 8
  %i_itemp.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 9
  %27 = ptrtoint ptr %i_itemp.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_itemp.i.i, align 8
  %ili_commit_seq.i.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %ili_commit_seq.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ili_commit_seq.i.i, align 8
  %call2.i.i = call i32 @xfs_log_force_seq(ptr noundef %26, i64 noundef %30, i32 noundef 0, ptr noundef null) #12
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %xfs_iunpin.exit.i
  call void @prepare_to_wait(ptr noundef %call.i, ptr noundef %4, i32 noundef 2) #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_pincount, i32 noundef 4) #12
  %31 = ptrtoint ptr %i_pincount to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %i_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %do.body.i.do.cond.i_crit_edge, label %if.then.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @io_schedule() #12
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then.i, %do.body.i.do.cond.i_crit_edge
  %call.i.i20.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_pincount, i32 noundef 4) #12
  %33 = ptrtoint ptr %i_pincount to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %i_pincount, align 4
  %tobool13.not.i = icmp eq i32 %34, 0
  br i1 %tobool13.not.i, label %__xfs_iunpin_wait.exit, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

__xfs_iunpin_wait.exit:                           ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @finish_wait(ptr noundef %call.i, ptr noundef %4) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wait.i) #12
  br label %if.end

if.end:                                           ; preds = %__xfs_iunpin_wait.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_remove(ptr noundef %dp, ptr noundef %name, ptr noundef %ip) local_unnamed_addr #2 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #12
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tp, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %3 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %i_vnode.i, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %5)
  %cmp = icmp eq i16 %5, 16384
  tail call fastcc void @trace_xfs_remove(ptr noundef %dp, ptr noundef %name)
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %6 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %m_opstate.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @xfs_qm_dqattach(ptr noundef %dp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @xfs_qm_dqattach(ptr noundef %ip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_dir_geo, align 4
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fsbcount, align 4
  %m_alloc_mxr = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 34
  %13 = ptrtoint ptr %m_alloc_mxr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m_alloc_mxr, align 4
  %m_alloc_mnr = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 35
  %15 = ptrtoint ptr %m_alloc_mnr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_alloc_mnr, align 4
  %sub = sub i32 %14, %16
  %add = add i32 %12, -1
  %sub11 = add i32 %add, %sub
  %div = udiv i32 %sub11, %sub
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 43
  %17 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m_bm_maxlevels, align 8
  %sub18 = add i32 %18, -1
  %mul = mul i32 %div, 7
  %mul19 = mul i32 %mul, %sub18
  %tr_remove = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65, i32 4
  %call20 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %tr_remove, i32 noundef %mul19, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call20)
  %cmp21 = icmp eq i32 %call20, -28
  br i1 %cmp21, label %if.then23, label %if.end9.if.end27_crit_edge

if.end9.if.end27_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then23:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %tr_remove, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end9.if.end27_crit_edge
  %error.0 = phi i32 [ %call26, %if.then23 ], [ %call20, %if.end9.if.end27_crit_edge ]
  %resblks.0 = phi i32 [ 0, %if.then23 ], [ %mul19, %if.end9.if.end27_crit_edge ]
  %19 = zext i32 %error.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %error.0, label %if.end27.cleanup_crit_edge [
    i32 0, label %if.end34
    i32 -28, label %cond.false
  ], !prof !321

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 2791) #12
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  call void @xfs_lock_two_inodes(ptr noundef %dp, i32 noundef 4, ptr noundef %ip, i32 noundef 4)
  %20 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %21, ptr noundef %dp, i32 noundef 4) #12
  %22 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %23, ptr noundef %ip, i32 noundef 4) #12
  br i1 %cmp, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end34
  %24 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 12
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp38 = icmp ugt i32 %26, 1
  br i1 %cmp38, label %if.then36.cond.end48_crit_edge, label %cond.false47, !prof !306

if.then36.cond.end48_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end48

cond.false47:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 2804) #12
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load i32, ptr %24, align 4
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false47, %if.then36.cond.end48_crit_edge
  %28 = phi i32 [ %26, %if.then36.cond.end48_crit_edge ], [ %.pr, %cond.false47 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp50.not = icmp eq i32 %28, 2
  br i1 %cmp50.not, label %if.end53, label %cond.end48.out_trans_cancel_crit_edge

cond.end48.out_trans_cancel_crit_edge:            ; preds = %cond.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end53:                                         ; preds = %cond.end48
  %call54 = call i32 @xfs_dir_isempty(ptr noundef %ip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end53.out_trans_cancel_crit_edge, label %if.end57

if.end53.out_trans_cancel_crit_edge:              ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end57:                                         ; preds = %if.end53
  %29 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tp, align 4
  %call58 = call fastcc i32 @xfs_droplink(ptr noundef %30, ptr noundef %dp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end57.out_trans_cancel_crit_edge

if.end57.out_trans_cancel_crit_edge:              ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end61:                                         ; preds = %if.end57
  %31 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tp, align 4
  %call62 = call fastcc i32 @xfs_droplink(ptr noundef %32, ptr noundef %ip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.out_trans_cancel_crit_edge

if.end61.out_trans_cancel_crit_edge:              ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end65:                                         ; preds = %if.end61
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 4
  %33 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_ino, align 8
  %35 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tp, align 4
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %t_mountp, align 4
  %sb_rootino = getelementptr inbounds %struct.xfs_sb, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %sb_rootino to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %sb_rootino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %40)
  %cmp66.not = icmp eq i64 %34, %40
  br i1 %cmp66.not, label %if.end65.if.end77_crit_edge, label %if.then68

if.end65.if.end77_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then68:                                        ; preds = %if.end65
  %call72 = call i32 @xfs_dir_replace(ptr noundef %36, ptr noundef %ip, ptr noundef nonnull @xfs_name_dotdot, i64 noundef %40, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then68.if.end77_crit_edge, label %if.then68.cleanup_crit_edge

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then68.if.end77_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %42, ptr noundef %dp, i32 noundef 1) #12
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.then68.if.end77_crit_edge, %if.end65.if.end77_crit_edge
  %43 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ichgtime(ptr noundef %44, ptr noundef %dp, i32 noundef 3) #12
  %45 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tp, align 4
  %call78 = call fastcc i32 @xfs_droplink(ptr noundef %46, ptr noundef %ip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.out_trans_cancel_crit_edge

if.end77.out_trans_cancel_crit_edge:              ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end81:                                         ; preds = %if.end77
  %47 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tp, align 4
  %i_ino82 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %49 = ptrtoint ptr %i_ino82 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_ino82, align 8
  %call83 = call i32 @xfs_dir_removename(ptr noundef %48, ptr noundef %dp, ptr noundef %name, i64 noundef %50, i32 noundef %resblks.0) #12
  %51 = zext i32 %call83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %call83, label %if.end81.out_trans_cancel_crit_edge [
    i32 0, label %if.end97
    i32 -2, label %cond.false95
  ], !prof !321

if.end81.out_trans_cancel_crit_edge:              ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

cond.false95:                                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef 2853) #12
  br label %out_trans_cancel

if.end97:                                         ; preds = %if.end81
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %52 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %m_features.i, align 8
  %54 = and i64 %53, 13510798882111488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %54)
  %.not = icmp eq i64 %54, 0
  br i1 %.not, label %if.end97.if.end103_crit_edge, label %if.then102

if.end97.if.end103_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

if.then102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tp, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %56, i32 0, i32 7
  %57 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %t_flags, align 4
  %or = or i32 %58, 8
  store i32 %or, ptr %t_flags, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end97.if.end103_crit_edge
  %59 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tp, align 4
  %call104 = call i32 @xfs_trans_commit(ptr noundef %60) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp ne i32 %call104, 0
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %tobool105.not, i1 true, i1 %cmp.not
  br i1 %brmerge, label %if.end103.cleanup_crit_edge, label %land.lhs.true

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end103
  %61 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ip, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %62, i32 0, i32 61
  %63 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %64, 576460752303423488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %xfs_inode_is_filestream.exit, label %land.lhs.true.if.then111_crit_edge

land.lhs.true.if.then111_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then111

xfs_inode_is_filestream.exit:                     ; preds = %land.lhs.true
  %i_diflags.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %65 = ptrtoint ptr %i_diflags.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %i_diflags.i, align 2
  %67 = and i16 %66, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool110.not = icmp eq i16 %67, 0
  br i1 %tobool110.not, label %xfs_inode_is_filestream.exit.cleanup_crit_edge, label %xfs_inode_is_filestream.exit.if.then111_crit_edge

xfs_inode_is_filestream.exit.if.then111_crit_edge: ; preds = %xfs_inode_is_filestream.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then111

xfs_inode_is_filestream.exit.cleanup_crit_edge:   ; preds = %xfs_inode_is_filestream.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then111:                                       ; preds = %xfs_inode_is_filestream.exit.if.then111_crit_edge, %land.lhs.true.if.then111_crit_edge
  call void @xfs_filestream_deassociate(ptr noundef %ip) #12
  br label %cleanup

out_trans_cancel:                                 ; preds = %cond.false95, %if.end81.out_trans_cancel_crit_edge, %if.end77.out_trans_cancel_crit_edge, %if.end61.out_trans_cancel_crit_edge, %if.end57.out_trans_cancel_crit_edge, %if.end53.out_trans_cancel_crit_edge, %cond.end48.out_trans_cancel_crit_edge
  %error.1 = phi i32 [ %call58, %if.end57.out_trans_cancel_crit_edge ], [ %call62, %if.end61.out_trans_cancel_crit_edge ], [ %call78, %if.end77.out_trans_cancel_crit_edge ], [ -2, %cond.false95 ], [ -39, %cond.end48.out_trans_cancel_crit_edge ], [ -39, %if.end53.out_trans_cancel_crit_edge ], [ %call83, %if.end81.out_trans_cancel_crit_edge ]
  %68 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %69) #12
  br label %cleanup

cleanup:                                          ; preds = %out_trans_cancel, %if.then111, %xfs_inode_is_filestream.exit.cleanup_crit_edge, %if.end103.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %cond.false, %if.end27.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call72, %if.then68.cleanup_crit_edge ], [ 0, %if.then111 ], [ 0, %xfs_inode_is_filestream.exit.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ -28, %cond.false ], [ %error.1, %out_trans_cancel ], [ %call104, %if.end103.cleanup_crit_edge ], [ %error.0, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_remove(ptr noundef %dp, ptr noundef %xfs_remove) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_remove, i32 0, i32 1), ptr blockaddress(@trace_xfs_remove, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !341
  %call42 = tail call i32 @__traceiter_xfs_remove(ptr noundef null, ptr noundef %dp, ptr noundef %xfs_remove) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !342
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_remove, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_remove, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_remove.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_remove.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 961, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
declare dso_local i32 @xfs_dir_isempty(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_droplink(ptr noundef %tp, ptr noundef %ip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xfs_trans_ichgtime(ptr noundef %tp, ptr noundef %ip, i32 noundef 2) #12
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  tail call void @drop_nlink(ptr noundef %i_vnode.i) #12
  tail call void @xfs_trans_log_inode(ptr noundef %tp, ptr noundef %ip, i32 noundef 1) #12
  %0 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call fastcc i32 @xfs_iunlink(ptr noundef %tp, ptr noundef %ip)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir_replace(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir_removename(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_filestream_deassociate(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rename(ptr noundef %mnt_userns, ptr noundef %src_dp, ptr noundef %src_name, ptr noundef %src_ip, ptr noundef %target_dp, ptr noundef %target_name, ptr noundef %target_ip, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  %tmpfile.i = alloca ptr, align 4
  %tp = alloca ptr, align 4
  %inodes = alloca [5 x ptr], align 4
  %num_inodes = alloca i32, align 4
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src_dp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #12
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !318
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %inodes) #12
  %3 = call ptr @memset(ptr %inodes, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_inodes) #12
  %4 = ptrtoint ptr %num_inodes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %num_inodes, align 4
  %cmp.not = icmp eq ptr %src_dp, %target_dp
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %src_ip, i32 0, i32 27
  %5 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %i_vnode.i, align 8
  %7 = and i16 %6, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %7)
  %cmp1 = icmp eq i16 %7, 16384
  tail call fastcc void @trace_xfs_rename(ptr noundef %src_dp, ptr noundef %target_dp, ptr noundef %src_name, ptr noundef %target_name)
  %and4 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %tobool5.not = icmp eq ptr %target_ip, null
  %or.cond = and i1 %tobool5.not, %tobool.not.not
  br i1 %or.cond, label %entry.cleanup273_crit_edge, label %if.end

entry.cleanup273_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup273

if.end:                                           ; preds = %entry
  %and6 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end13_crit_edge, label %if.then8

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpfile.i) #12
  %8 = ptrtoint ptr %tmpfile.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmpfile.i, align 4, !annotation !318
  %call.i = call i32 @xfs_create_tmpfile(ptr noundef %mnt_userns, ptr noundef %target_dp, i16 noundef zeroext 8192, ptr noundef nonnull %tmpfile.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end12, label %xfs_rename_alloc_whiteout.exit

xfs_rename_alloc_whiteout.exit:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpfile.i) #12
  br label %cleanup273

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %tmpfile.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tmpfile.i, align 4
  tail call void @xfs_setup_iops(ptr noundef %10) #12
  %i_flags_lock.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %10, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i.i) #12
  %i_flags.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_flags.i.i.i, align 8
  %and.i.i.i = and i32 %12, -9
  store i32 %and.i.i.i, ptr %i_flags.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !322
  %i_vnode.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %10, i32 0, i32 27
  tail call void @unlock_new_inode(ptr noundef %i_vnode.i.i.i) #12
  %i_state.i = getelementptr inbounds %struct.xfs_inode, ptr %10, i32 0, i32 27, i32 24
  %13 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_state.i, align 8
  %or.i = or i32 %14, 1024
  store i32 %or.i, ptr %i_state.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpfile.i) #12
  %type = getelementptr inbounds %struct.xfs_name, ptr %src_name, i32 0, i32 2
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %type, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end.if.end13_crit_edge
  %wip.1 = phi ptr [ null, %if.end.if.end13_crit_edge ], [ %10, %if.end12 ]
  call fastcc void @xfs_sort_for_rename(ptr noundef %src_dp, ptr noundef %target_dp, ptr noundef %src_ip, ptr noundef %target_ip, ptr noundef %wip.1, ptr noundef nonnull %inodes, ptr noundef nonnull %num_inodes)
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m_dir_geo, align 4
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fsbcount, align 4
  %m_alloc_mxr = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 34
  %20 = ptrtoint ptr %m_alloc_mxr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %m_alloc_mxr, align 4
  %m_alloc_mnr = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 35
  %22 = ptrtoint ptr %m_alloc_mnr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m_alloc_mnr, align 4
  %sub = sub i32 %21, %23
  %add = add i32 %19, -1
  %sub15 = add i32 %add, %sub
  %div = udiv i32 %sub15, %sub
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 43
  %24 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %m_bm_maxlevels, align 8
  %sub22 = add i32 %25, 2147483647
  %mul26 = mul i32 %19, 7
  %mul = mul i32 %div, 14
  %reass.add = mul i32 %mul, %sub22
  %add49 = add i32 %reass.add, %mul26
  %tr_rename = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65, i32 2
  %call50 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %tr_rename, i32 noundef %add49, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call50)
  %cmp51 = icmp eq i32 %call50, -28
  br i1 %cmp51, label %if.then53, label %if.end13.if.end57_crit_edge

if.end13.if.end57_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then53:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %call56 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %tr_rename, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #12
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end13.if.end57_crit_edge
  %spaceres.0 = phi i32 [ 0, %if.then53 ], [ %add49, %if.end13.if.end57_crit_edge ]
  %error.0 = phi i32 [ %call56, %if.then53 ], [ %call50, %if.end13.if.end57_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool58.not = icmp eq i32 %error.0, 0
  br i1 %tobool58.not, label %if.end60, label %if.end57.out_release_wip_crit_edge

if.end57.out_release_wip_crit_edge:               ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release_wip

if.end60:                                         ; preds = %if.end57
  %call62 = call i32 @xfs_qm_vop_rename_dqattach(ptr noundef nonnull %inodes) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end60.out_trans_cancel_crit_edge

if.end60.out_trans_cancel_crit_edge:              ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end65:                                         ; preds = %if.end60
  %26 = ptrtoint ptr %num_inodes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_inodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %27)
  %cmp1.i = icmp slt i32 %27, 6
  %28 = add i32 %27, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %29 = icmp ult i32 %28, 4
  br i1 %29, label %if.end65.lor.end43.i_crit_edge, label %cond.false.i, !prof !343

if.end65.lor.end43.i_crit_edge:                   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end43.i

cond.false.i:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.1, i32 noundef 476) #12
  br label %lor.end43.i

lor.end43.i:                                      ; preds = %cond.false.i, %if.end65.lor.end43.i_crit_edge
  br i1 %cmp1.i, label %if.end84.i, label %if.end84.thread.i, !prof !306

if.end84.thread.i:                                ; preds = %lor.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 484) #12
  br label %for.body.lr.ph.i.preheader

if.end84.i:                                       ; preds = %lor.end43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp8523.i = icmp sgt i32 %27, 0
  br i1 %cmp8523.i, label %if.end84.i.for.body.lr.ph.i.preheader_crit_edge, label %if.end84.i.xfs_lock_inodes.exit_crit_edge

if.end84.i.xfs_lock_inodes.exit_crit_edge:        ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_lock_inodes.exit

if.end84.i.for.body.lr.ph.i.preheader_crit_edge:  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph.i.preheader

for.body.lr.ph.i.preheader:                       ; preds = %if.end84.i.for.body.lr.ph.i.preheader_crit_edge, %if.end84.thread.i
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %for.body.lr.ph.i.backedge, %for.body.lr.ph.i.preheader
  %attempts.032.i = phi i32 [ 0, %for.body.lr.ph.i.preheader ], [ %inc142.i, %for.body.lr.ph.i.backedge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc162.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %try_lock.127.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %try_lock.5.i, %for.inc162.i.for.body.i_crit_edge ]
  %i.124.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc163.i, %for.inc162.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %inodes, i32 %i.124.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %tobool86.not.i = icmp eq ptr %31, null
  br i1 %tobool86.not.i, label %cond.false94.i, label %for.body.i.cond.end95.i_crit_edge, !prof !305

for.body.i.cond.end95.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end95.i

cond.false94.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 495) #12
  br label %cond.end95.i

cond.end95.i:                                     ; preds = %cond.false94.i, %for.body.i.cond.end95.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.124.i)
  %tobool96.not.i = icmp eq i32 %i.124.i, 0
  br i1 %tobool96.not.i, label %if.end102.thread.i, label %land.lhs.true97.i

land.lhs.true97.i:                                ; preds = %cond.end95.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %sub.i = add nsw i32 %i.124.i, -1
  %arrayidx99.i = getelementptr ptr, ptr %inodes, i32 %sub.i
  %34 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx99.i, align 4
  %cmp100.i = icmp eq ptr %33, %35
  br i1 %cmp100.i, label %land.lhs.true97.i.for.inc162.i_crit_edge, label %if.end102.i

land.lhs.true97.i.for.inc162.i_crit_edge:         ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc162.i

if.end102.i:                                      ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try_lock.127.i)
  %tobool103.not.i = icmp eq i32 %try_lock.127.i, 0
  br i1 %tobool103.not.i, label %if.end102.i.for.body113.i_crit_edge, label %if.end102.i.cond.end135.i_crit_edge

if.end102.i.cond.end135.i_crit_edge:              ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end135.i

if.end102.i.for.body113.i_crit_edge:              ; preds = %if.end102.i
  br label %for.body113.i

if.end102.thread.i:                               ; preds = %cond.end95.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try_lock.127.i)
  %tobool103.not37.i = icmp eq i32 %try_lock.127.i, 0
  br i1 %tobool103.not37.i, label %cond.end12.i.thread.i, label %cond.end12.i5.thread.i

cond.end12.i.thread.i:                            ; preds = %if.end102.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  br label %xfs_lock_inumorder.exit.i

for.body113.i:                                    ; preds = %for.inc.i.for.body113.i_crit_edge, %if.end102.i.for.body113.i_crit_edge
  %j.022.in.i = phi i32 [ %j.022.i, %for.inc.i.for.body113.i_crit_edge ], [ %i.124.i, %if.end102.i.for.body113.i_crit_edge ]
  %j.022.i = add nsw i32 %j.022.in.i, -1
  %arrayidx114.i = getelementptr ptr, ptr %inodes, i32 %j.022.i
  %38 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx114.i, align 4
  %i_itemp.i = getelementptr inbounds %struct.xfs_inode, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %i_itemp.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_itemp.i, align 8
  %tobool115.not.i = icmp eq ptr %41, null
  br i1 %tobool115.not.i, label %for.body113.i.for.inc.i_crit_edge, label %land.lhs.true116.i

for.body113.i.for.inc.i_crit_edge:                ; preds = %for.body113.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true116.i:                               ; preds = %for.body113.i
  call void @__sanitizer_cov_trace_pc() #14
  %li_flags.i = getelementptr inbounds %struct.xfs_log_item, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %li_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %li_flags.i, align 4
  %and1.i.i = and i32 %43, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true116.i, %for.body113.i.for.inc.i_crit_edge
  %try_lock.3.i = phi i32 [ 0, %for.body113.i.for.inc.i_crit_edge ], [ %and1.i.i, %land.lhs.true116.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %j.022.in.i)
  %cmp107.i = icmp sgt i32 %j.022.in.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try_lock.3.i)
  %tobool109.not.i = icmp eq i32 %try_lock.3.i, 0
  %or.cond1.i = select i1 %cmp107.i, i1 %tobool109.not.i, i1 false
  br i1 %or.cond1.i, label %for.inc.i.for.body113.i_crit_edge, label %if.end120.i

for.inc.i.for.body113.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body113.i

if.end120.i:                                      ; preds = %for.inc.i
  br i1 %tobool109.not.i, label %if.then122.i, label %if.end120.i.cond.end135.i_crit_edge

if.end120.i.cond.end135.i_crit_edge:              ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end135.i

if.then122.i:                                     ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.124.i)
  %cmp.i.i.i = icmp ult i32 %i.124.i, 8
  br i1 %cmp.i.i.i, label %cond.end12.i.i, label %cond.end12.i.thread43.i, !prof !306

cond.end12.i.thread43.i:                          ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.1, i32 noundef 425) #12
  br label %cond.false51.i.i

cond.end12.i.i:                                   ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.124.i)
  %cmp43.i.i = icmp ult i32 %i.124.i, 5
  br i1 %cmp43.i.i, label %cond.end12.i.i.xfs_lock_inumorder.exit.i_crit_edge, label %cond.end12.i.i.cond.false51.i.i_crit_edge, !prof !306

cond.end12.i.i.cond.false51.i.i_crit_edge:        ; preds = %cond.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false51.i.i

cond.end12.i.i.xfs_lock_inumorder.exit.i_crit_edge: ; preds = %cond.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_lock_inumorder.exit.i

cond.false51.i.i:                                 ; preds = %cond.end12.i.i.cond.false51.i.i_crit_edge, %cond.end12.i.thread43.i
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 438) #12
  br label %xfs_lock_inumorder.exit.i

xfs_lock_inumorder.exit.i:                        ; preds = %cond.false51.i.i, %cond.end12.i.i.xfs_lock_inumorder.exit.i_crit_edge, %cond.end12.i.thread.i
  %44 = phi ptr [ %37, %cond.end12.i.thread.i ], [ %33, %cond.end12.i.i.xfs_lock_inumorder.exit.i_crit_edge ], [ %33, %cond.false51.i.i ]
  %shl53.i.i = shl i32 %i.124.i, 24
  %or.i.i = or i32 %shl53.i.i, 4
  call void @xfs_ilock(ptr noundef %44, i32 noundef %or.i.i) #12
  br label %for.inc162.i

cond.end12.i5.thread.i:                           ; preds = %if.end102.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.1, i32 noundef 524) #12
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 4
  br label %xfs_lock_inumorder.exit10.i

cond.end135.i:                                    ; preds = %if.end120.i.cond.end135.i_crit_edge, %if.end102.i.cond.end135.i_crit_edge
  %try_lock.41450.i = phi i32 [ %try_lock.127.i, %if.end102.i.cond.end135.i_crit_edge ], [ 1, %if.end120.i.cond.end135.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.124.i)
  %cmp.i.i3.i = icmp ult i32 %i.124.i, 8
  br i1 %cmp.i.i3.i, label %cond.end12.i5.i, label %cond.end12.i5.thread51.i, !prof !306

cond.end12.i5.thread51.i:                         ; preds = %cond.end135.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.1, i32 noundef 425) #12
  br label %cond.false51.i7.i

cond.end12.i5.i:                                  ; preds = %cond.end135.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.124.i)
  %cmp43.i6.i = icmp ult i32 %i.124.i, 5
  br i1 %cmp43.i6.i, label %cond.end12.i5.i.xfs_lock_inumorder.exit10.i_crit_edge, label %cond.end12.i5.i.cond.false51.i7.i_crit_edge, !prof !306

cond.end12.i5.i.cond.false51.i7.i_crit_edge:      ; preds = %cond.end12.i5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false51.i7.i

cond.end12.i5.i.xfs_lock_inumorder.exit10.i_crit_edge: ; preds = %cond.end12.i5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_lock_inumorder.exit10.i

cond.false51.i7.i:                                ; preds = %cond.end12.i5.i.cond.false51.i7.i_crit_edge, %cond.end12.i5.thread51.i
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 438) #12
  br label %xfs_lock_inumorder.exit10.i

xfs_lock_inumorder.exit10.i:                      ; preds = %cond.false51.i7.i, %cond.end12.i5.i.xfs_lock_inumorder.exit10.i_crit_edge, %cond.end12.i5.thread.i
  %try_lock.41446.i = phi i32 [ %try_lock.127.i, %cond.end12.i5.thread.i ], [ %try_lock.41450.i, %cond.end12.i5.i.xfs_lock_inumorder.exit10.i_crit_edge ], [ %try_lock.41450.i, %cond.false51.i7.i ]
  %47 = phi ptr [ %46, %cond.end12.i5.thread.i ], [ %33, %cond.end12.i5.i.xfs_lock_inumorder.exit10.i_crit_edge ], [ %33, %cond.false51.i7.i ]
  %shl53.i8.i = shl i32 %i.124.i, 24
  %or.i9.i = or i32 %shl53.i8.i, 4
  %call138.i = call i32 @xfs_ilock_nowait(ptr noundef %47, i32 noundef %or.i9.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138.i)
  %tobool139.not.i = icmp eq i32 %call138.i, 0
  br i1 %tobool139.not.i, label %if.end141.i, label %xfs_lock_inumorder.exit10.i.for.inc162.i_crit_edge

xfs_lock_inumorder.exit10.i.for.inc162.i_crit_edge: ; preds = %xfs_lock_inumorder.exit10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc162.i

if.end141.i:                                      ; preds = %xfs_lock_inumorder.exit10.i
  %inc142.i = add i32 %attempts.032.i, 1
  br i1 %tobool96.not.i, label %if.end141.i.for.end158.i_crit_edge, label %for.inc156.peel.i

if.end141.i.for.end158.i_crit_edge:               ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end158.i

for.inc156.peel.i:                                ; preds = %if.end141.i
  %sub143.i = add nsw i32 %i.124.i, -1
  %arrayidx155.peel.i = getelementptr ptr, ptr %inodes, i32 %sub143.i
  %48 = ptrtoint ptr %arrayidx155.peel.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx155.peel.i, align 4
  %i_lock.i.peel.i = getelementptr inbounds %struct.xfs_inode, ptr %49, i32 0, i32 10
  %mr_writer.i.i.peel.i = getelementptr inbounds %struct.xfs_inode, ptr %49, i32 0, i32 10, i32 1
  %50 = ptrtoint ptr %mr_writer.i.i.peel.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %mr_writer.i.i.peel.i, align 4
  call void @up_write(ptr noundef %i_lock.i.peel.i) #12
  %51 = call ptr @llvm.returnaddress(i32 0) #12
  %52 = ptrtoint ptr %51 to i32
  call fastcc void @trace_xfs_iunlock(ptr noundef %49, i32 noundef 4, i32 noundef %52) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.124.i)
  %cmp145.peel.not.i = icmp eq i32 %i.124.i, 1
  br i1 %cmp145.peel.not.i, label %for.inc156.peel.i.for.end158.i_crit_edge, label %for.body146.peel.next.i

for.inc156.peel.i.for.end158.i_crit_edge:         ; preds = %for.inc156.peel.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end158.i

for.body146.peel.next.i:                          ; preds = %for.inc156.peel.i
  %dec157.peel.i = add nsw i32 %i.124.i, -2
  br label %land.lhs.true149.i

land.lhs.true149.i:                               ; preds = %for.inc156.i.land.lhs.true149.i_crit_edge, %for.body146.peel.next.i
  %j.129.i = phi i32 [ %dec157.i, %for.inc156.i.land.lhs.true149.i_crit_edge ], [ %dec157.peel.i, %for.body146.peel.next.i ]
  %arrayidx150.i = getelementptr ptr, ptr %inodes, i32 %j.129.i
  %53 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx150.i, align 4
  %add.i = add nuw nsw i32 %j.129.i, 1
  %arrayidx151.i = getelementptr ptr, ptr %inodes, i32 %add.i
  %55 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx151.i, align 4
  %cmp152.i = icmp eq ptr %54, %56
  br i1 %cmp152.i, label %land.lhs.true149.i.for.inc156.i_crit_edge, label %if.end154.i

land.lhs.true149.i.for.inc156.i_crit_edge:        ; preds = %land.lhs.true149.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc156.i

if.end154.i:                                      ; preds = %land.lhs.true149.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_lock.i.i = getelementptr inbounds %struct.xfs_inode, ptr %54, i32 0, i32 10
  %mr_writer.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %54, i32 0, i32 10, i32 1
  %57 = ptrtoint ptr %mr_writer.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %mr_writer.i.i.i, align 4
  call void @up_write(ptr noundef %i_lock.i.i) #12
  call fastcc void @trace_xfs_iunlock(ptr noundef %54, i32 noundef 4, i32 noundef %52) #12
  br label %for.inc156.i

for.inc156.i:                                     ; preds = %if.end154.i, %land.lhs.true149.i.for.inc156.i_crit_edge
  %dec157.i = add nsw i32 %j.129.i, -1
  %cmp145.i = icmp sgt i32 %j.129.i, 0
  br i1 %cmp145.i, label %for.inc156.i.land.lhs.true149.i_crit_edge, label %for.inc156.i.for.end158.i_crit_edge, !llvm.loop !344

for.inc156.i.for.end158.i_crit_edge:              ; preds = %for.inc156.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end158.i

for.inc156.i.land.lhs.true149.i_crit_edge:        ; preds = %for.inc156.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true149.i

for.end158.i:                                     ; preds = %for.inc156.i.for.end158.i_crit_edge, %for.inc156.peel.i.for.end158.i_crit_edge, %if.end141.i.for.end158.i_crit_edge
  %rem.i = srem i32 %inc142.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp159.i = icmp eq i32 %rem.i, 0
  br i1 %cmp159.i, label %if.then160.i, label %for.end158.i.for.body.lr.ph.i.backedge_crit_edge

for.end158.i.for.body.lr.ph.i.backedge_crit_edge: ; preds = %for.end158.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph.i.backedge

if.then160.i:                                     ; preds = %for.end158.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #12
  br label %for.body.lr.ph.i.backedge

for.body.lr.ph.i.backedge:                        ; preds = %if.then160.i, %for.end158.i.for.body.lr.ph.i.backedge_crit_edge
  br label %for.body.lr.ph.i

for.inc162.i:                                     ; preds = %xfs_lock_inumorder.exit10.i.for.inc162.i_crit_edge, %xfs_lock_inumorder.exit.i, %land.lhs.true97.i.for.inc162.i_crit_edge
  %try_lock.5.i = phi i32 [ %try_lock.127.i, %land.lhs.true97.i.for.inc162.i_crit_edge ], [ %try_lock.41446.i, %xfs_lock_inumorder.exit10.i.for.inc162.i_crit_edge ], [ 0, %xfs_lock_inumorder.exit.i ]
  %inc163.i = add nuw nsw i32 %i.124.i, 1
  %exitcond.not.i = icmp eq i32 %inc163.i, %27
  br i1 %exitcond.not.i, label %for.inc162.i.xfs_lock_inodes.exit_crit_edge, label %for.inc162.i.for.body.i_crit_edge

for.inc162.i.for.body.i_crit_edge:                ; preds = %for.inc162.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc162.i.xfs_lock_inodes.exit_crit_edge:      ; preds = %for.inc162.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_lock_inodes.exit

xfs_lock_inodes.exit:                             ; preds = %for.inc162.i.xfs_lock_inodes.exit_crit_edge, %if.end84.i.xfs_lock_inodes.exit_crit_edge
  %58 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %59, ptr noundef %src_dp, i32 noundef 4) #12
  br i1 %cmp.not, label %xfs_lock_inodes.exit.if.end69_crit_edge, label %if.then68

xfs_lock_inodes.exit.if.end69_crit_edge:          ; preds = %xfs_lock_inodes.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then68:                                        ; preds = %xfs_lock_inodes.exit
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %61, ptr noundef %target_dp, i32 noundef 4) #12
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %xfs_lock_inodes.exit.if.end69_crit_edge
  %62 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %63, ptr noundef %src_ip, i32 noundef 4) #12
  br i1 %tobool5.not, label %if.end69.if.end72_crit_edge, label %if.then71

if.end69.if.end72_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %65, ptr noundef nonnull %target_ip, i32 noundef 4) #12
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end69.if.end72_crit_edge
  %tobool73.not = icmp eq ptr %wip.1, null
  br i1 %tobool73.not, label %if.end72.if.end75_crit_edge, label %if.then74

if.end72.if.end75_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %67, ptr noundef nonnull %wip.1, i32 noundef 4) #12
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end72.if.end75_crit_edge
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %target_dp, i32 0, i32 24
  %68 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %i_diflags, align 2
  %70 = and i16 %69, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool78.not = icmp eq i16 %70, 0
  br i1 %tobool78.not, label %if.end75.if.end85_crit_edge, label %land.rhs

if.end75.if.end85_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

land.rhs:                                         ; preds = %if.end75
  %i_projid = getelementptr inbounds %struct.xfs_inode, ptr %target_dp, i32 0, i32 20
  %71 = ptrtoint ptr %i_projid to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %i_projid, align 8
  %i_projid79 = getelementptr inbounds %struct.xfs_inode, ptr %src_ip, i32 0, i32 20
  %73 = ptrtoint ptr %i_projid79 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %i_projid79, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp80.not = icmp eq i32 %72, %74
  br i1 %cmp80.not, label %land.rhs.if.end85_crit_edge, label %land.rhs.out_trans_cancel_crit_edge, !prof !306

land.rhs.out_trans_cancel_crit_edge:              ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

land.rhs.if.end85_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.end85:                                         ; preds = %land.rhs.if.end85_crit_edge, %if.end75.if.end85_crit_edge
  br i1 %tobool.not, label %if.end90, label %if.then88

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tp, align 4
  %call89 = call fastcc i32 @xfs_cross_rename(ptr noundef %76, ptr noundef %src_dp, ptr noundef %src_name, ptr noundef %src_ip, ptr noundef %target_dp, ptr noundef %target_name, ptr noundef %target_ip, i32 noundef %spaceres.0)
  br label %cleanup273

if.end90:                                         ; preds = %if.end85
  br i1 %tobool5.not, label %if.then93, label %if.else108

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spaceres.0)
  %tobool94.not = icmp eq i32 %spaceres.0, 0
  br i1 %tobool94.not, label %if.then95, label %if.else

if.then95:                                        ; preds = %if.then93
  %77 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tp, align 4
  %call96 = call i32 @xfs_dir_canenter(ptr noundef %78, ptr noundef %target_dp, ptr noundef %target_name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then95.if.end123_crit_edge, label %if.then95.out_trans_cancel_crit_edge

if.then95.out_trans_cancel_crit_edge:             ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.then95.if.end123_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

if.else:                                          ; preds = %if.then93
  %79 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %m_dir_geo, align 4
  %fsbcount101 = getelementptr inbounds %struct.xfs_da_geometry, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %fsbcount101 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fsbcount101, align 4
  %mul102 = mul i32 %82, 7
  %call103 = call i32 @xfs_iext_count_may_overflow(ptr noundef %target_dp, i32 noundef 0, i32 noundef %mul102) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.else.if.end123_crit_edge, label %if.else.out_trans_cancel_crit_edge

if.else.out_trans_cancel_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.else.if.end123_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

if.else108:                                       ; preds = %if.end90
  %i_vnode.i413 = getelementptr inbounds %struct.xfs_inode, ptr %target_ip, i32 0, i32 27
  %83 = ptrtoint ptr %i_vnode.i413 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %i_vnode.i413, align 8
  %85 = and i16 %84, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %85)
  %cmp113 = icmp eq i16 %85, 16384
  br i1 %cmp113, label %land.lhs.true115, label %if.else108.if.end123_crit_edge

if.else108.if.end123_crit_edge:                   ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

land.lhs.true115:                                 ; preds = %if.else108
  %call116 = call i32 @xfs_dir_isempty(ptr noundef nonnull %target_ip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %land.lhs.true115.out_trans_cancel_crit_edge, label %lor.lhs.false

land.lhs.true115.out_trans_cancel_crit_edge:      ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

lor.lhs.false:                                    ; preds = %land.lhs.true115
  %86 = getelementptr inbounds %struct.xfs_inode, ptr %target_ip, i32 0, i32 27, i32 12
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp119 = icmp ugt i32 %88, 2
  br i1 %cmp119, label %lor.lhs.false.out_trans_cancel_crit_edge, label %lor.lhs.false.if.end123_crit_edge

lor.lhs.false.if.end123_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

lor.lhs.false.out_trans_cancel_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end123:                                        ; preds = %lor.lhs.false.if.end123_crit_edge, %if.else108.if.end123_crit_edge, %if.else.if.end123_crit_edge, %if.then95.if.end123_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp124439 = icmp sgt i32 %27, 0
  br i1 %cmp124439, label %land.rhs126.lr.ph, label %if.end123.for.end_crit_edge

if.end123.for.end_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.rhs126.lr.ph:                                ; preds = %if.end123
  %89 = getelementptr inbounds %struct.xfs_inode, ptr %target_ip, i32 0, i32 27, i32 12
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  br label %land.rhs126

land.rhs126:                                      ; preds = %for.inc.land.rhs126_crit_edge, %land.rhs126.lr.ph
  %i.0440 = phi i32 [ 0, %land.rhs126.lr.ph ], [ %inc, %for.inc.land.rhs126_crit_edge ]
  %arrayidx127 = getelementptr [5 x ptr], ptr %inodes, i32 0, i32 %i.0440
  %90 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx127, align 4
  %cmp128.not = icmp eq ptr %91, null
  br i1 %cmp128.not, label %land.rhs126.for.end_crit_edge, label %for.body

land.rhs126.for.end_crit_edge:                    ; preds = %land.rhs126
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %land.rhs126
  %cmp132 = icmp eq ptr %91, %wip.1
  br i1 %cmp132, label %for.body.if.then145_crit_edge, label %lor.lhs.false134

for.body.if.then145_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then145

lor.lhs.false134:                                 ; preds = %for.body
  %cmp136 = icmp eq ptr %91, %target_ip
  br i1 %cmp136, label %land.lhs.true138, label %lor.lhs.false134.for.inc_crit_edge

lor.lhs.false134.for.inc_crit_edge:               ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true138:                                 ; preds = %lor.lhs.false134
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp140 = icmp eq i32 %93, 1
  %brmerge = select i1 %cmp140, i1 true, i1 %cmp1
  br i1 %brmerge, label %land.lhs.true138.if.then145_crit_edge, label %land.lhs.true138.for.inc_crit_edge

land.lhs.true138.for.inc_crit_edge:               ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true138.if.then145_crit_edge:            ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then145

if.then145:                                       ; preds = %land.lhs.true138.if.then145_crit_edge, %for.body.if.then145_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #12
  %94 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !318
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %91, i32 0, i32 4
  %95 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %i_ino, align 8
  %97 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %98 to i64
  %shr = lshr i64 %96, %sh_prom
  %conv147 = trunc i64 %shr to i32
  %99 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tp, align 4
  %call148 = call i32 @xfs_read_agi(ptr noundef %1, ptr noundef %100, i32 noundef %conv147, ptr noundef nonnull %bp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #12
  br i1 %tobool149.not, label %if.then145.for.inc_crit_edge, label %if.then145.out_trans_cancel_crit_edge

if.then145.out_trans_cancel_crit_edge:            ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.then145.for.inc_crit_edge:                     ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.then145.for.inc_crit_edge, %land.lhs.true138.for.inc_crit_edge, %lor.lhs.false134.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0440, 1
  %exitcond.not = icmp eq i32 %inc, %27
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs126_crit_edge

for.inc.land.rhs126_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs126

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs126.for.end_crit_edge, %if.end123.for.end_crit_edge
  br i1 %tobool73.not, label %for.end.if.end181_crit_edge, label %if.then155

for.end.if.end181_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end181

if.then155:                                       ; preds = %for.end
  %101 = getelementptr inbounds %struct.xfs_inode, ptr %wip.1, i32 0, i32 27, i32 12
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp157 = icmp eq i32 %103, 0
  br i1 %cmp157, label %if.then155.cond.end_crit_edge, label %cond.false, !prof !306

if.then155.cond.end_crit_edge:                    ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, i32 noundef 3293) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then155.cond.end_crit_edge
  %i_ino165 = getelementptr inbounds %struct.xfs_inode, ptr %wip.1, i32 0, i32 4
  %104 = ptrtoint ptr %i_ino165 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %i_ino165, align 8
  %agino_log167 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  %106 = ptrtoint ptr %agino_log167 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %agino_log167, align 8
  %sh_prom168 = zext i32 %107 to i64
  %shr169 = lshr i64 %105, %sh_prom168
  %conv170 = trunc i64 %shr169 to i32
  %call171 = call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %conv170) #12
  %108 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tp, align 4
  %call172 = call fastcc i32 @xfs_iunlink_remove(ptr noundef %109, ptr noundef %call171, ptr noundef nonnull %wip.1)
  call void @xfs_perag_put(ptr noundef %call171) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %cleanup178.thread, label %cond.end.out_trans_cancel_crit_edge

cond.end.out_trans_cancel_crit_edge:              ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

cleanup178.thread:                                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tp, align 4
  call fastcc void @xfs_bumplink(ptr noundef %111, ptr noundef nonnull %wip.1)
  %i_state = getelementptr inbounds %struct.xfs_inode, ptr %wip.1, i32 0, i32 27, i32 24
  %112 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %i_state, align 8
  %and177 = and i32 %113, -1025
  store i32 %and177, ptr %i_state, align 8
  br label %if.end181

if.end181:                                        ; preds = %cleanup178.thread, %for.end.if.end181_crit_edge
  %114 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tp, align 4
  %i_ino185 = getelementptr inbounds %struct.xfs_inode, ptr %src_ip, i32 0, i32 4
  %116 = ptrtoint ptr %i_ino185 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %i_ino185, align 8
  br i1 %tobool5.not, label %if.then184, label %if.else197

if.then184:                                       ; preds = %if.end181
  %call186 = call i32 @xfs_dir_createname(ptr noundef %115, ptr noundef %target_dp, ptr noundef %target_name, i64 noundef %117, i32 noundef %spaceres.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.end189, label %if.then184.out_trans_cancel_crit_edge

if.then184.out_trans_cancel_crit_edge:            ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end189:                                        ; preds = %if.then184
  %118 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ichgtime(ptr noundef %119, ptr noundef %target_dp, i32 noundef 3) #12
  %cmp1.not = xor i1 %cmp1, true
  %brmerge409 = select i1 %cmp.not, i1 true, i1 %cmp1.not
  br i1 %brmerge409, label %if.end189.if.end237_crit_edge, label %if.end214.thread447

if.end189.if.end237_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end237

if.end214.thread447:                              ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %tp, align 4
  call fastcc void @xfs_bumplink(ptr noundef %121, ptr noundef %target_dp)
  br label %if.then220

if.else197:                                       ; preds = %if.end181
  %call199 = call i32 @xfs_dir_replace(ptr noundef %115, ptr noundef %target_dp, ptr noundef %target_name, i64 noundef %117, i32 noundef %spaceres.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.end202, label %if.else197.out_trans_cancel_crit_edge

if.else197.out_trans_cancel_crit_edge:            ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end202:                                        ; preds = %if.else197
  %122 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ichgtime(ptr noundef %123, ptr noundef %target_dp, i32 noundef 3) #12
  %124 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tp, align 4
  %call203 = call fastcc i32 @xfs_droplink(ptr noundef %125, ptr noundef nonnull %target_ip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.end206, label %if.end202.out_trans_cancel_crit_edge

if.end202.out_trans_cancel_crit_edge:             ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end206:                                        ; preds = %if.end202
  %126 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tp, align 4
  br i1 %cmp1, label %if.then208, label %if.end251.critedge

if.then208:                                       ; preds = %if.end206
  %call209 = call fastcc i32 @xfs_droplink(ptr noundef %127, ptr noundef nonnull %target_ip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.end214, label %if.then208.out_trans_cancel_crit_edge

if.then208.out_trans_cancel_crit_edge:            ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end214:                                        ; preds = %if.then208
  br i1 %cmp.not, label %if.end214.if.end237_crit_edge, label %if.end214.if.then220_crit_edge

if.end214.if.then220_crit_edge:                   ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then220

if.end214.if.end237_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end237

if.then220:                                       ; preds = %if.end214.if.then220_crit_edge, %if.end214.thread447
  %128 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %tp, align 4
  %i_ino221 = getelementptr inbounds %struct.xfs_inode, ptr %target_dp, i32 0, i32 4
  %130 = ptrtoint ptr %i_ino221 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %i_ino221, align 8
  %call222 = call i32 @xfs_dir_replace(ptr noundef %129, ptr noundef %src_ip, ptr noundef nonnull @xfs_name_dotdot, i64 noundef %131, i32 noundef %spaceres.0) #12
  %132 = zext i32 %call222 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %call222, label %if.then220.out_trans_cancel_crit_edge [
    i32 -17, label %cond.false232
    i32 0, label %if.then220.if.end237_crit_edge
  ], !prof !346

if.then220.if.end237_crit_edge:                   ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end237

if.then220.out_trans_cancel_crit_edge:            ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

cond.false232:                                    ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 3371) #12
  br label %out_trans_cancel

if.end237:                                        ; preds = %if.then220.if.end237_crit_edge, %if.end214.if.end237_crit_edge, %if.end189.if.end237_crit_edge
  %cmp1.not410.pre-phi446 = phi i1 [ false, %if.then220.if.end237_crit_edge ], [ false, %if.end214.if.end237_crit_edge ], [ %cmp1.not, %if.end189.if.end237_crit_edge ]
  %133 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ichgtime(ptr noundef %134, ptr noundef %src_ip, i32 noundef 2) #12
  %135 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %136, ptr noundef %src_ip, i32 noundef 1) #12
  %brmerge412.demorgan = and i1 %cmp.not, %tobool5.not
  %or.cond436 = or i1 %brmerge412.demorgan, %cmp1.not410.pre-phi446
  br i1 %or.cond436, label %if.end237.if.end251_crit_edge, label %if.then246

if.end237.if.end251_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end251

if.then246:                                       ; preds = %if.end237
  %137 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %tp, align 4
  %call247 = call fastcc i32 @xfs_droplink(ptr noundef %138, ptr noundef %src_dp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %if.then246.if.end251_crit_edge, label %if.then246.out_trans_cancel_crit_edge

if.then246.out_trans_cancel_crit_edge:            ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.then246.if.end251_crit_edge:                   ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end251

if.end251.critedge:                               ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_trans_ichgtime(ptr noundef %127, ptr noundef %src_ip, i32 noundef 2) #12
  %139 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %140, ptr noundef %src_ip, i32 noundef 1) #12
  br label %if.end251

if.end251:                                        ; preds = %if.end251.critedge, %if.then246.if.end251_crit_edge, %if.end237.if.end251_crit_edge
  %141 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %tp, align 4
  br i1 %tobool73.not, label %if.else256, label %if.then253

if.then253:                                       ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #14
  %i_ino254 = getelementptr inbounds %struct.xfs_inode, ptr %wip.1, i32 0, i32 4
  %143 = ptrtoint ptr %i_ino254 to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %i_ino254, align 8
  %call255 = call i32 @xfs_dir_replace(ptr noundef %142, ptr noundef %src_dp, ptr noundef %src_name, i64 noundef %144, i32 noundef %spaceres.0) #12
  br label %if.end259

if.else256:                                       ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #14
  %i_ino257 = getelementptr inbounds %struct.xfs_inode, ptr %src_ip, i32 0, i32 4
  %145 = ptrtoint ptr %i_ino257 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %i_ino257, align 8
  %call258 = call i32 @xfs_dir_removename(ptr noundef %142, ptr noundef %src_dp, ptr noundef %src_name, i64 noundef %146, i32 noundef %spaceres.0) #12
  br label %if.end259

if.end259:                                        ; preds = %if.else256, %if.then253
  %error.1 = phi i32 [ %call255, %if.then253 ], [ %call258, %if.else256 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool260.not = icmp eq i32 %error.1, 0
  br i1 %tobool260.not, label %if.end262, label %if.end259.out_trans_cancel_crit_edge

if.end259.out_trans_cancel_crit_edge:             ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_cancel

if.end262:                                        ; preds = %if.end259
  %147 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ichgtime(ptr noundef %148, ptr noundef %src_dp, i32 noundef 3) #12
  %149 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %150, ptr noundef %src_dp, i32 noundef 1) #12
  br i1 %cmp.not, label %if.end262.if.end265_crit_edge, label %if.then264

if.end262.if.end265_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end265

if.then264:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #14
  %151 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %152, ptr noundef %target_dp, i32 noundef 1) #12
  br label %if.end265

if.end265:                                        ; preds = %if.then264, %if.end262.if.end265_crit_edge
  %153 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %tp, align 4
  %t_mountp.i = getelementptr inbounds %struct.xfs_trans, ptr %154, i32 0, i32 10
  %155 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %t_mountp.i, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %156, i32 0, i32 61
  %157 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %m_features.i.i, align 8
  %159 = and i64 %158, 13510798882111488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %159)
  %.not.i = icmp eq i64 %159, 0
  br i1 %.not.i, label %if.end265.xfs_finish_rename.exit_crit_edge, label %if.then.i

if.end265.xfs_finish_rename.exit_crit_edge:       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_finish_rename.exit

if.then.i:                                        ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #14
  %t_flags.i = getelementptr inbounds %struct.xfs_trans, ptr %154, i32 0, i32 7
  %160 = ptrtoint ptr %t_flags.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %t_flags.i, align 4
  %or.i418 = or i32 %161, 8
  store i32 %or.i418, ptr %t_flags.i, align 4
  br label %xfs_finish_rename.exit

xfs_finish_rename.exit:                           ; preds = %if.then.i, %if.end265.xfs_finish_rename.exit_crit_edge
  %call3.i = call i32 @xfs_trans_commit(ptr noundef %154) #12
  br i1 %tobool73.not, label %xfs_finish_rename.exit.cleanup273_crit_edge, label %if.then268

xfs_finish_rename.exit.cleanup273_crit_edge:      ; preds = %xfs_finish_rename.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup273

if.then268:                                       ; preds = %xfs_finish_rename.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_irele(ptr noundef nonnull %wip.1)
  br label %cleanup273

out_trans_cancel:                                 ; preds = %if.end259.out_trans_cancel_crit_edge, %if.then246.out_trans_cancel_crit_edge, %cond.false232, %if.then220.out_trans_cancel_crit_edge, %if.then208.out_trans_cancel_crit_edge, %if.end202.out_trans_cancel_crit_edge, %if.else197.out_trans_cancel_crit_edge, %if.then184.out_trans_cancel_crit_edge, %cond.end.out_trans_cancel_crit_edge, %if.then145.out_trans_cancel_crit_edge, %lor.lhs.false.out_trans_cancel_crit_edge, %land.lhs.true115.out_trans_cancel_crit_edge, %if.else.out_trans_cancel_crit_edge, %if.then95.out_trans_cancel_crit_edge, %land.rhs.out_trans_cancel_crit_edge, %if.end60.out_trans_cancel_crit_edge
  %error.2 = phi i32 [ %call62, %if.end60.out_trans_cancel_crit_edge ], [ %call103, %if.else.out_trans_cancel_crit_edge ], [ %call186, %if.then184.out_trans_cancel_crit_edge ], [ -17, %cond.false232 ], [ %call247, %if.then246.out_trans_cancel_crit_edge ], [ %error.1, %if.end259.out_trans_cancel_crit_edge ], [ %call199, %if.else197.out_trans_cancel_crit_edge ], [ %call203, %if.end202.out_trans_cancel_crit_edge ], [ %call209, %if.then208.out_trans_cancel_crit_edge ], [ %call96, %if.then95.out_trans_cancel_crit_edge ], [ -18, %land.rhs.out_trans_cancel_crit_edge ], [ -17, %lor.lhs.false.out_trans_cancel_crit_edge ], [ -17, %land.lhs.true115.out_trans_cancel_crit_edge ], [ %call222, %if.then220.out_trans_cancel_crit_edge ], [ %call172, %cond.end.out_trans_cancel_crit_edge ], [ %call148, %if.then145.out_trans_cancel_crit_edge ]
  %162 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %163) #12
  br label %out_release_wip

out_release_wip:                                  ; preds = %out_trans_cancel, %if.end57.out_release_wip_crit_edge
  %error.3 = phi i32 [ %error.0, %if.end57.out_release_wip_crit_edge ], [ %error.2, %out_trans_cancel ]
  %tobool270.not = icmp eq ptr %wip.1, null
  br i1 %tobool270.not, label %out_release_wip.cleanup273_crit_edge, label %if.then271

out_release_wip.cleanup273_crit_edge:             ; preds = %out_release_wip
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup273

if.then271:                                       ; preds = %out_release_wip
  call void @__sanitizer_cov_trace_pc() #14
  %164 = call ptr @llvm.returnaddress(i32 0) #12
  %165 = ptrtoint ptr %164 to i32
  call fastcc void @trace_xfs_irele(ptr noundef nonnull %wip.1, i32 noundef %165) #12
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %wip.1, i32 0, i32 27
  call void @iput(ptr noundef %i_vnode.i.i) #12
  br label %cleanup273

cleanup273:                                       ; preds = %if.then271, %out_release_wip.cleanup273_crit_edge, %if.then268, %xfs_finish_rename.exit.cleanup273_crit_edge, %if.then88, %xfs_rename_alloc_whiteout.exit, %entry.cleanup273_crit_edge
  %retval.0 = phi i32 [ %call89, %if.then88 ], [ -22, %entry.cleanup273_crit_edge ], [ %call.i, %xfs_rename_alloc_whiteout.exit ], [ %call3.i, %if.then268 ], [ %call3.i, %xfs_finish_rename.exit.cleanup273_crit_edge ], [ %error.3, %if.then271 ], [ %error.3, %out_release_wip.cleanup273_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_inodes) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %inodes) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rename(ptr noundef %src_dp, ptr noundef %target_dp, ptr noundef %src_name, ptr noundef %target_name) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rename, i32 0, i32 1), ptr blockaddress(@trace_xfs_rename, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !347
  %call42 = tail call i32 @__traceiter_xfs_rename(ptr noundef null, ptr noundef %src_dp, ptr noundef %target_dp, ptr noundef %src_name, ptr noundef %target_name) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !348
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rename, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rename, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_rename.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_rename.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 999, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_sort_for_rename(ptr noundef %dp1, ptr noundef %dp2, ptr noundef %ip1, ptr noundef %ip2, ptr noundef %wip, ptr nocapture noundef %i_tab, ptr nocapture noundef %num_inodes) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_inodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_inodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !306

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.1, i32 noundef 2896) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %2 = ptrtoint ptr %num_inodes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_inodes, align 4
  %mul = shl i32 %3, 2
  %4 = call ptr @memset(ptr %i_tab, i32 0, i32 %mul)
  %5 = ptrtoint ptr %i_tab to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dp1, ptr %i_tab, align 4
  %arrayidx3 = getelementptr ptr, ptr %i_tab, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dp2, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr ptr, ptr %i_tab, i32 2
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ip1, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %ip2, null
  br i1 %tobool6.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx8 = getelementptr ptr, ptr %i_tab, i32 3
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ip2, ptr %arrayidx8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %i.0 = phi i32 [ 4, %if.then ], [ 3, %cond.end.if.end_crit_edge ]
  %tobool9.not = icmp eq ptr %wip, null
  br i1 %tobool9.not, label %if.end.for.cond15.preheader.preheader_crit_edge, label %if.then10

if.end.for.cond15.preheader.preheader_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond15.preheader.preheader

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %inc11 = add nuw nsw i32 %i.0, 1
  %arrayidx12 = getelementptr ptr, ptr %i_tab, i32 %i.0
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %wip, ptr %arrayidx12, align 4
  br label %for.cond15.preheader.preheader

for.cond15.preheader.preheader:                   ; preds = %if.then10, %if.end.for.cond15.preheader.preheader_crit_edge
  %i.1 = phi i32 [ %inc11, %if.then10 ], [ %i.0, %if.end.for.cond15.preheader.preheader_crit_edge ]
  %10 = ptrtoint ptr %num_inodes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %i.1, ptr %num_inodes, align 4
  br label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.inc31.for.cond15.preheader_crit_edge, %for.cond15.preheader.preheader
  %11 = phi i32 [ %i.1, %for.cond15.preheader.preheader ], [ %25, %for.inc31.for.cond15.preheader_crit_edge ]
  %i.268 = phi i32 [ 0, %for.cond15.preheader.preheader ], [ %inc32, %for.inc31.for.cond15.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp1665 = icmp sgt i32 %11, 1
  br i1 %cmp1665, label %for.cond15.preheader.for.body17_crit_edge, label %for.cond15.preheader.for.inc31_crit_edge

for.cond15.preheader.for.inc31_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc31

for.cond15.preheader.for.body17_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body17

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %for.cond15.preheader.for.body17_crit_edge
  %j.066 = phi i32 [ %inc30, %for.inc.for.body17_crit_edge ], [ 1, %for.cond15.preheader.for.body17_crit_edge ]
  %arrayidx18 = getelementptr ptr, ptr %i_tab, i32 %j.066
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx18, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_ino, align 8
  %sub = add nsw i32 %j.066, -1
  %arrayidx19 = getelementptr ptr, ptr %i_tab, i32 %sub
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx19, align 4
  %i_ino20 = getelementptr inbounds %struct.xfs_inode, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %i_ino20 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_ino20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %19)
  %cmp21 = icmp ult i64 %15, %19
  br i1 %cmp21, label %if.then22, label %for.body17.for.inc_crit_edge

for.body17.for.inc_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then22:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %arrayidx18, align 4
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %13, ptr %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %for.body17.for.inc_crit_edge
  %inc30 = add nuw nsw i32 %j.066, 1
  %22 = ptrtoint ptr %num_inodes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_inodes, align 4
  %cmp16 = icmp slt i32 %inc30, %23
  br i1 %cmp16, label %for.inc.for.body17_crit_edge, label %for.inc.for.inc31_crit_edge

for.inc.for.inc31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc31

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17

for.inc31:                                        ; preds = %for.inc.for.inc31_crit_edge, %for.cond15.preheader.for.inc31_crit_edge
  %inc32 = add nuw nsw i32 %i.268, 1
  %24 = ptrtoint ptr %num_inodes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_inodes, align 4
  %cmp14 = icmp slt i32 %inc32, %25
  br i1 %cmp14, label %for.inc31.for.cond15.preheader_crit_edge, label %for.end33

for.inc31.for.cond15.preheader_crit_edge:         ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond15.preheader

for.end33:                                        ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_vop_rename_dqattach(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_cross_rename(ptr noundef %tp, ptr noundef %dp1, ptr noundef %name1, ptr noundef %ip1, ptr noundef %dp2, ptr noundef %name2, ptr noundef %ip2, i32 noundef %spaceres) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip2, i32 0, i32 4
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_ino, align 8
  %call = tail call i32 @xfs_dir_replace(ptr noundef %tp, ptr noundef %dp1, ptr noundef %name1, i64 noundef %1, i32 noundef %spaceres) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_trans_abort_crit_edge

entry.out_trans_abort_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_abort

if.end:                                           ; preds = %entry
  %i_ino1 = getelementptr inbounds %struct.xfs_inode, ptr %ip1, i32 0, i32 4
  %2 = ptrtoint ptr %i_ino1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_ino1, align 8
  %call2 = tail call i32 @xfs_dir_replace(ptr noundef %tp, ptr noundef %dp2, ptr noundef %name2, i64 noundef %3, i32 noundef %spaceres) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_trans_abort_crit_edge

if.end.out_trans_abort_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_abort

if.end5:                                          ; preds = %if.end
  %cmp.not = icmp eq ptr %dp1, %dp2
  br i1 %cmp.not, label %if.end5.if.end66_crit_edge, label %if.then6

if.end5.if.end66_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then6:                                         ; preds = %if.end5
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip2, i32 0, i32 27
  %4 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %i_vnode.i, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp8 = icmp eq i16 %6, 16384
  br i1 %cmp8, label %if.then10, label %if.end29.thread

if.then10:                                        ; preds = %if.then6
  %i_ino11 = getelementptr inbounds %struct.xfs_inode, ptr %dp1, i32 0, i32 4
  %7 = ptrtoint ptr %i_ino11 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_ino11, align 8
  %call12 = tail call i32 @xfs_dir_replace(ptr noundef %tp, ptr noundef %ip2, ptr noundef nonnull @xfs_name_dotdot, i64 noundef %8, i32 noundef %spaceres) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then10.out_trans_abort_crit_edge

if.then10.out_trans_abort_crit_edge:              ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_abort

if.end15:                                         ; preds = %if.then10
  %i_vnode.i126 = getelementptr inbounds %struct.xfs_inode, ptr %ip1, i32 0, i32 27
  %9 = ptrtoint ptr %i_vnode.i126 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %i_vnode.i126, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %11)
  %cmp20 = icmp eq i16 %11, 16384
  br i1 %cmp20, label %if.end15.if.end29_crit_edge, label %if.then22

if.end15.if.end29_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then22:                                        ; preds = %if.end15
  %call23 = tail call fastcc i32 @xfs_droplink(ptr noundef %tp, ptr noundef %dp2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then22.out_trans_abort_crit_edge

if.then22.out_trans_abort_crit_edge:              ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_abort

if.end26:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @xfs_bumplink(ptr noundef %tp, ptr noundef %dp1)
  br label %if.end29

if.end29:                                         ; preds = %if.end26, %if.end15.if.end29_crit_edge
  %i_vnode.i127 = getelementptr inbounds %struct.xfs_inode, ptr %ip1, i32 0, i32 27
  %12 = ptrtoint ptr %i_vnode.i127 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %i_vnode.i127, align 8
  %14 = and i16 %13, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %14)
  %cmp34 = icmp eq i16 %14, 16384
  br i1 %cmp34, label %if.end29.if.then36_crit_edge, label %if.end29.if.then59_crit_edge

if.end29.if.then59_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then59

if.end29.if.then36_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

if.end29.thread:                                  ; preds = %if.then6
  %i_vnode.i127151 = getelementptr inbounds %struct.xfs_inode, ptr %ip1, i32 0, i32 27
  %15 = ptrtoint ptr %i_vnode.i127151 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %i_vnode.i127151, align 8
  %17 = and i16 %16, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %17)
  %cmp34152 = icmp eq i16 %17, 16384
  br i1 %cmp34152, label %if.end29.thread.if.then36_crit_edge, label %if.end29.thread.if.then65_crit_edge

if.end29.thread.if.then65_crit_edge:              ; preds = %if.end29.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then65

if.end29.thread.if.then36_crit_edge:              ; preds = %if.end29.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

if.then36:                                        ; preds = %if.end29.thread.if.then36_crit_edge, %if.end29.if.then36_crit_edge
  %ip2_flags.0154 = phi i32 [ 2, %if.end29.thread.if.then36_crit_edge ], [ 3, %if.end29.if.then36_crit_edge ]
  %i_ino37 = getelementptr inbounds %struct.xfs_inode, ptr %dp2, i32 0, i32 4
  %18 = ptrtoint ptr %i_ino37 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_ino37, align 8
  %call38 = tail call i32 @xfs_dir_replace(ptr noundef %tp, ptr noundef %ip1, ptr noundef nonnull @xfs_name_dotdot, i64 noundef %19, i32 noundef %spaceres) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then36.out_trans_abort_crit_edge

if.then36.out_trans_abort_crit_edge:              ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_abort

if.end41:                                         ; preds = %if.then36
  %20 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %i_vnode.i, align 8
  %22 = and i16 %21, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %22)
  %cmp46 = icmp eq i16 %22, 16384
  br i1 %cmp46, label %if.end41.if.then59_crit_edge, label %if.then48

if.end41.if.then59_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then59

if.then48:                                        ; preds = %if.end41
  %call49 = tail call fastcc i32 @xfs_droplink(ptr noundef %tp, ptr noundef %dp1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.then48.out_trans_abort_crit_edge

if.then48.out_trans_abort_crit_edge:              ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_abort

if.end52:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @xfs_bumplink(ptr noundef %tp, ptr noundef %dp2)
  br label %if.then59

if.then59:                                        ; preds = %if.end52, %if.end41.if.then59_crit_edge, %if.end29.if.then59_crit_edge
  %ip2_flags.1141 = phi i32 [ 3, %if.end29.if.then59_crit_edge ], [ %ip2_flags.0154, %if.end41.if.then59_crit_edge ], [ %ip2_flags.0154, %if.end52 ]
  %ip1_flags.1140 = phi i32 [ 2, %if.end29.if.then59_crit_edge ], [ 3, %if.end41.if.then59_crit_edge ], [ 3, %if.end52 ]
  tail call void @xfs_trans_ichgtime(ptr noundef %tp, ptr noundef %ip1, i32 noundef %ip1_flags.1140) #12
  tail call void @xfs_trans_log_inode(ptr noundef %tp, ptr noundef %ip1, i32 noundef 1) #12
  tail call void @xfs_trans_ichgtime(ptr noundef %tp, ptr noundef %ip2, i32 noundef %ip2_flags.1141) #12
  tail call void @xfs_trans_log_inode(ptr noundef %tp, ptr noundef %ip2, i32 noundef 1) #12
  br label %if.then65

if.then65:                                        ; preds = %if.then59, %if.end29.thread.if.then65_crit_edge
  tail call void @xfs_trans_ichgtime(ptr noundef %tp, ptr noundef %dp2, i32 noundef 3) #12
  tail call void @xfs_trans_log_inode(ptr noundef %tp, ptr noundef %dp2, i32 noundef 1) #12
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end5.if.end66_crit_edge
  tail call void @xfs_trans_ichgtime(ptr noundef %tp, ptr noundef %dp1, i32 noundef 3) #12
  tail call void @xfs_trans_log_inode(ptr noundef %tp, ptr noundef %dp1, i32 noundef 1) #12
  %t_mountp.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %23 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %t_mountp.i, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %24, i32 0, i32 61
  %25 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %m_features.i.i, align 8
  %27 = and i64 %26, 13510798882111488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %.not.i = icmp eq i64 %27, 0
  br i1 %.not.i, label %if.end66.xfs_finish_rename.exit_crit_edge, label %if.then.i

if.end66.xfs_finish_rename.exit_crit_edge:        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_finish_rename.exit

if.then.i:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %t_flags.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %28 = ptrtoint ptr %t_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %t_flags.i, align 4
  %or.i = or i32 %29, 8
  store i32 %or.i, ptr %t_flags.i, align 4
  br label %xfs_finish_rename.exit

xfs_finish_rename.exit:                           ; preds = %if.then.i, %if.end66.xfs_finish_rename.exit_crit_edge
  %call3.i = tail call i32 @xfs_trans_commit(ptr noundef %tp) #12
  br label %cleanup

out_trans_abort:                                  ; preds = %if.then48.out_trans_abort_crit_edge, %if.then36.out_trans_abort_crit_edge, %if.then22.out_trans_abort_crit_edge, %if.then10.out_trans_abort_crit_edge, %if.end.out_trans_abort_crit_edge, %entry.out_trans_abort_crit_edge
  %error.0 = phi i32 [ %call, %entry.out_trans_abort_crit_edge ], [ %call2, %if.end.out_trans_abort_crit_edge ], [ %call12, %if.then10.out_trans_abort_crit_edge ], [ %call38, %if.then36.out_trans_abort_crit_edge ], [ %call49, %if.then48.out_trans_abort_crit_edge ], [ %call23, %if.then22.out_trans_abort_crit_edge ]
  tail call void @xfs_trans_cancel(ptr noundef %tp) #12
  br label %cleanup

cleanup:                                          ; preds = %out_trans_abort, %xfs_finish_rename.exit
  %retval.0 = phi i32 [ %error.0, %out_trans_abort ], [ %call3.i, %xfs_finish_rename.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_read_agi(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_iflush_cluster(ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %b_li_list = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 20
  %2 = ptrtoint ptr %b_li_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_li_list, align 8
  %cmp.not176 = icmp eq ptr %3, %b_li_list
  br i1 %cmp.not176, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in179 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn180, %for.inc.for.body_crit_edge ]
  %clcount.0178 = phi i32 [ 0, %for.body.lr.ph ], [ %clcount.1, %for.inc.for.body_crit_edge ]
  %error.0177 = phi i32 [ 0, %for.body.lr.ph ], [ %error.2, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %.pn.in179 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn180 = load ptr, ptr %.pn.in179, align 4
  %ili_inode = getelementptr i8, ptr %.pn.in179, i32 36
  %5 = ptrtoint ptr %ili_inode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ili_inode, align 8
  %i_flags.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_flags.i, align 8
  %and.i = and i32 %8, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %i_pincount = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_pincount, i32 noundef 4) #12
  %9 = ptrtoint ptr %i_pincount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %i_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end10:                                         ; preds = %if.end
  %i_flags_lock = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock) #12
  %11 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_flags.i, align 8
  %and.i149 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i149)
  %tobool12.not = icmp eq i32 %and.i149, 0
  br i1 %tobool12.not, label %if.end10.cond.end_crit_edge, label %cond.false, !prof !306

if.end10.cond.end_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef 3636) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end10.cond.end_crit_edge
  %13 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_flags.i, align 8
  %and.i151 = and i32 %14, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i151)
  %tobool18.not = icmp eq i32 %and.i151, 0
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock) #12
  br label %for.inc

if.end21:                                         ; preds = %cond.end
  %15 = tail call ptr @llvm.returnaddress(i32 0) #12
  %16 = ptrtoint ptr %15 to i32
  tail call fastcc void @trace_xfs_ilock_nowait(ptr noundef %6, i32 noundef 8, i32 noundef %16) #12
  %i_lock83.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 10
  %call.i145.i = tail call i32 @down_read_trylock(ptr noundef %i_lock83.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145.i)
  %tobool85.not.i = icmp eq i32 %call.i145.i, 0
  br i1 %tobool85.not.i, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock) #12
  br label %for.inc

if.end26:                                         ; preds = %if.end21
  %17 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_flags.i, align 8
  %or.i = or i32 %18, 128
  store i32 %or.i, ptr %i_flags.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock) #12
  %19 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %m_opstate.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not = icmp eq i32 %21, 0
  br i1 %tobool.i.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @xfs_iunpin_wait(ptr noundef %6)
  tail call void @xfs_iflush_abort(ptr noundef %6) #12
  tail call void @up_read(ptr noundef %i_lock83.i) #12
  tail call fastcc void @trace_xfs_iunlock(ptr noundef %6, i32 noundef 8, i32 noundef %16) #12
  br label %for.inc

if.end30:                                         ; preds = %if.end26
  %call.i.i147 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_pincount, i32 noundef 4) #12
  %22 = ptrtoint ptr %i_pincount to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %i_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool33.not = icmp eq i32 %23, 0
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock) #12
  %24 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_flags.i, align 8
  %and.i154 = and i32 %25, -129
  store i32 %and.i154, ptr %i_flags.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock) #12
  tail call void @up_read(ptr noundef %i_lock83.i) #12
  tail call fastcc void @trace_xfs_iunlock(ptr noundef %6, i32 noundef 8, i32 noundef %16) #12
  br label %for.inc

if.end35:                                         ; preds = %if.end30
  %i_itemp.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 9
  %26 = ptrtoint ptr %i_itemp.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_itemp.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end35.if.else_crit_edge, label %xfs_inode_clean.exit

if.end35.if.else_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

xfs_inode_clean.exit:                             ; preds = %if.end35
  %ili_fields.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %ili_fields.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ili_fields.i, align 8
  %and.i156 = and i32 %29, 18399
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i156)
  %tobool2.not.i.not = icmp eq i32 %and.i156, 0
  br i1 %tobool2.not.i.not, label %xfs_inode_clean.exit.if.else_crit_edge, label %if.then38

xfs_inode_clean.exit.if.else_crit_edge:           ; preds = %xfs_inode_clean.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then38:                                        ; preds = %xfs_inode_clean.exit
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %6, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_lock83.i, i32 noundef 4) #12
  %32 = ptrtoint ptr %i_lock83.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %i_lock83.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i.not.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i.not.i, label %cond.false.i, label %if.then38.cond.end.i_crit_edge, !prof !305

if.then38.cond.end.i_crit_edge:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.1, i32 noundef 3451) #12
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then38.cond.end.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock) #12
  %34 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_flags.i, align 8
  %and.i.i.i = and i32 %35, 128
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool3.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool3.not.i, label %cond.false11.i, label %cond.end.i.cond.end12.i_crit_edge, !prof !305

cond.end.i.cond.end12.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end12.i

cond.false11.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.1, i32 noundef 3452) #12
  br label %cond.end12.i

cond.end12.i:                                     ; preds = %cond.false11.i, %cond.end.i.cond.end12.i_crit_edge
  %if_format.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 8, i32 6
  %36 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %if_format.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %37)
  %cmp.not.i = icmp eq i8 %37, 3
  br i1 %cmp.not.i, label %lor.rhs.i158, label %cond.end12.i.cond.end39.i_crit_edge

cond.end12.i.cond.end39.i_crit_edge:              ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end39.i

lor.rhs.i158:                                     ; preds = %cond.end12.i
  %if_nextents.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 8, i32 7
  %38 = ptrtoint ptr %if_nextents.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %if_nextents.i, align 4
  %i_forkoff.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 23
  %40 = ptrtoint ptr %i_forkoff.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i_forkoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp16.not.i = icmp eq i8 %41, 0
  br i1 %cmp16.not.i, label %cond.false21.i, label %cond.true18.i

cond.true18.i:                                    ; preds = %lor.rhs.i158
  call void @__sanitizer_cov_trace_pc() #14
  %conv15.i = zext i8 %41 to i32
  %shl.i = shl nuw nsw i32 %conv15.i, 3
  br label %cond.end27.i

cond.false21.i:                                   ; preds = %lor.rhs.i158
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %6, align 8
  %sb_inodesize.i = getelementptr inbounds %struct.xfs_sb, ptr %43, i32 0, i32 17
  %44 = ptrtoint ptr %sb_inodesize.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sb_inodesize.i, align 8
  %conv23.i = zext i16 %45 to i32
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %43, i32 0, i32 61
  %46 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %47, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %cond.neg.i = select i1 %tobool.i.not.i, i32 -100, i32 -176
  %sub.i = add nsw i32 %cond.neg.i, %conv23.i
  br label %cond.end27.i

cond.end27.i:                                     ; preds = %cond.false21.i, %cond.true18.i
  %cond28.i = phi i32 [ %shl.i, %cond.true18.i ], [ %sub.i, %cond.false21.i ]
  %div269.i = lshr i32 %cond28.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %div269.i)
  %cmp29.i = icmp ugt i32 %39, %div269.i
  br i1 %cmp29.i, label %cond.end27.i.cond.end39.i_crit_edge, label %cond.false38.i, !prof !306

cond.end27.i.cond.end39.i_crit_edge:              ; preds = %cond.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end39.i

cond.false38.i:                                   ; preds = %cond.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.1, i32 noundef 3454) #12
  br label %cond.end39.i

cond.end39.i:                                     ; preds = %cond.false38.i, %cond.end27.i.cond.end39.i_crit_edge, %cond.end12.i.cond.end39.i_crit_edge
  %li_buf.i = getelementptr inbounds %struct.xfs_log_item, ptr %27, i32 0, i32 7
  %48 = ptrtoint ptr %li_buf.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %li_buf.i, align 8
  %cmp40.i = icmp eq ptr %49, %bp
  br i1 %cmp40.i, label %cond.end39.i.cond.end50.i_crit_edge, label %cond.false49.i, !prof !306

cond.end39.i.cond.end50.i_crit_edge:              ; preds = %cond.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end50.i

cond.false49.i:                                   ; preds = %cond.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.1, i32 noundef 3455) #12
  br label %cond.end50.i

cond.end50.i:                                     ; preds = %cond.false49.i, %cond.end39.i.cond.end50.i_crit_edge
  %im_boffset.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 5, i32 2
  %50 = ptrtoint ptr %im_boffset.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %im_boffset.i, align 2
  %conv51.i = zext i16 %51 to i32
  %call52.i = tail call ptr @xfs_buf_offset(ptr noundef %bp, i32 noundef %conv51.i) #12
  %52 = ptrtoint ptr %call52.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %call52.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 18766, i16 %53)
  %cmp54.not.i = icmp eq i16 %53, 18766
  br i1 %cmp54.not.i, label %lor.lhs.false.i, label %cond.end50.i.if.then.i_crit_edge

cond.end50.i.if.then.i_crit_edge:                 ; preds = %cond.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %cond.end50.i
  %call56.i = tail call zeroext i1 @xfs_errortag_test(ptr noundef %31, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.1, i32 noundef 3467, i32 noundef 1) #12
  br i1 %call56.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %cond.end50.i.if.then.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 4
  %54 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %i_ino.i, align 8
  %56 = ptrtoint ptr %call52.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %call52.i, align 8
  %conv59.i = zext i16 %57 to i32
  tail call void (ptr, i32, ptr, ...) @xfs_alert_tag(ptr noundef %31, i32 noundef 1, ptr noundef nonnull @.str.95, ptr noundef nonnull @__func__.xfs_iflush, i64 noundef %55, i32 noundef %conv59.i, ptr noundef %call52.i) #12
  br label %xfs_iflush.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 27
  %58 = ptrtoint ptr %i_vnode.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %i_vnode.i.i, align 8
  %60 = and i16 %59, -4096
  %61 = zext i16 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.110)
  switch i16 %60, label %if.end.i.if.end112.i_crit_edge [
    i16 -32768, label %if.then64.i
    i16 16384, label %if.then87.i
  ]

if.end.i.if.end112.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112.i

if.then64.i:                                      ; preds = %if.end.i
  %62 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %if_format.i, align 2
  %64 = and i8 %63, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %64)
  %switch.i = icmp eq i8 %64, 2
  br i1 %switch.i, label %lor.lhs.false75.i, label %if.then64.i.if.then78.i_crit_edge

if.then64.i.if.then78.i_crit_edge:                ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78.i

lor.lhs.false75.i:                                ; preds = %if.then64.i
  %call76.i = tail call zeroext i1 @xfs_errortag_test(ptr noundef %31, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.1, i32 noundef 3477, i32 noundef 3) #12
  br i1 %call76.i, label %lor.lhs.false75.i.if.then78.i_crit_edge, label %lor.lhs.false75.i.if.end112.i_crit_edge

lor.lhs.false75.i.if.end112.i_crit_edge:          ; preds = %lor.lhs.false75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112.i

lor.lhs.false75.i.if.then78.i_crit_edge:          ; preds = %lor.lhs.false75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78.i

if.then78.i:                                      ; preds = %lor.lhs.false75.i.if.then78.i_crit_edge, %if.then64.i.if.then78.i_crit_edge
  %i_ino79.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 4
  %65 = ptrtoint ptr %i_ino79.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %i_ino79.i, align 8
  tail call void (ptr, i32, ptr, ...) @xfs_alert_tag(ptr noundef %31, i32 noundef 1, ptr noundef nonnull @.str.97, ptr noundef nonnull @__func__.xfs_iflush, i64 noundef %66, ptr noundef %6) #12
  br label %xfs_iflush.exit

if.then87.i:                                      ; preds = %if.end.i
  %67 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %if_format.i, align 2
  %.off270.i = add i8 %68, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off270.i)
  %switch271.i = icmp ult i8 %.off270.i, 3
  br i1 %switch271.i, label %lor.lhs.false105.i, label %if.then87.i.if.then108.i_crit_edge

if.then87.i.if.then108.i_crit_edge:               ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then108.i

lor.lhs.false105.i:                               ; preds = %if.then87.i
  %call106.i = tail call zeroext i1 @xfs_errortag_test(ptr noundef %31, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1, i32 noundef 3488, i32 noundef 4) #12
  br i1 %call106.i, label %lor.lhs.false105.i.if.then108.i_crit_edge, label %lor.lhs.false105.i.if.end112.i_crit_edge

lor.lhs.false105.i.if.end112.i_crit_edge:         ; preds = %lor.lhs.false105.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112.i

lor.lhs.false105.i.if.then108.i_crit_edge:        ; preds = %lor.lhs.false105.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then108.i

if.then108.i:                                     ; preds = %lor.lhs.false105.i.if.then108.i_crit_edge, %if.then87.i.if.then108.i_crit_edge
  %i_ino109.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 4
  %69 = ptrtoint ptr %i_ino109.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %i_ino109.i, align 8
  tail call void (ptr, i32, ptr, ...) @xfs_alert_tag(ptr noundef %31, i32 noundef 1, ptr noundef nonnull @.str.99, ptr noundef nonnull @__func__.xfs_iflush, i64 noundef %70, ptr noundef %6) #12
  br label %xfs_iflush.exit

if.end112.i:                                      ; preds = %lor.lhs.false105.i.if.end112.i_crit_edge, %lor.lhs.false75.i.if.end112.i_crit_edge, %if.end.i.if.end112.i_crit_edge
  %if_nextents114.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 8, i32 7
  %71 = ptrtoint ptr %if_nextents114.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %if_nextents114.i, align 4
  %i_afp.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 6
  %73 = ptrtoint ptr %i_afp.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i_afp.i, align 8
  %tobool.not.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i, label %if.end112.i.xfs_ifork_nextents.exit.i_crit_edge, label %if.end.i.i

if.end112.i.xfs_ifork_nextents.exit.i_crit_edge:  ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_ifork_nextents.exit.i

if.end.i.i:                                       ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #14
  %if_nextents.i.i = getelementptr inbounds %struct.xfs_ifork, ptr %74, i32 0, i32 7
  %75 = ptrtoint ptr %if_nextents.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %if_nextents.i.i, align 4
  br label %xfs_ifork_nextents.exit.i

xfs_ifork_nextents.exit.i:                        ; preds = %if.end.i.i, %if.end112.i.xfs_ifork_nextents.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %76, %if.end.i.i ], [ 0, %if.end112.i.xfs_ifork_nextents.exit.i_crit_edge ]
  %add.i = add i32 %retval.0.i.i, %72
  %conv116.i = sext i32 %add.i to i64
  %i_nblocks.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 19
  %77 = ptrtoint ptr %i_nblocks.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %i_nblocks.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %78, i64 %conv116.i)
  %cmp117.i = icmp ult i64 %78, %conv116.i
  br i1 %cmp117.i, label %xfs_ifork_nextents.exit.i.if.then122.i_crit_edge, label %lor.lhs.false119.i

xfs_ifork_nextents.exit.i.if.then122.i_crit_edge: ; preds = %xfs_ifork_nextents.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then122.i

lor.lhs.false119.i:                               ; preds = %xfs_ifork_nextents.exit.i
  %call120.i = tail call zeroext i1 @xfs_errortag_test(ptr noundef %31, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.1, i32 noundef 3496, i32 noundef 5) #12
  br i1 %call120.i, label %lor.lhs.false119.i.if.then122.i_crit_edge, label %if.end130.i

lor.lhs.false119.i.if.then122.i_crit_edge:        ; preds = %lor.lhs.false119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then122.i

if.then122.i:                                     ; preds = %lor.lhs.false119.i.if.then122.i_crit_edge, %xfs_ifork_nextents.exit.i.if.then122.i_crit_edge
  %i_ino123.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 4
  %79 = ptrtoint ptr %i_ino123.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %i_ino123.i, align 8
  %81 = ptrtoint ptr %if_nextents114.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %if_nextents114.i, align 4
  %83 = ptrtoint ptr %i_afp.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i_afp.i, align 8
  %tobool.not.i273.i = icmp eq ptr %84, null
  br i1 %tobool.not.i273.i, label %if.then122.i.xfs_ifork_nextents.exit277.i_crit_edge, label %if.end.i275.i

if.then122.i.xfs_ifork_nextents.exit277.i_crit_edge: ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_ifork_nextents.exit277.i

if.end.i275.i:                                    ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #14
  %if_nextents.i274.i = getelementptr inbounds %struct.xfs_ifork, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %if_nextents.i274.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %if_nextents.i274.i, align 4
  br label %xfs_ifork_nextents.exit277.i

xfs_ifork_nextents.exit277.i:                     ; preds = %if.end.i275.i, %if.then122.i.xfs_ifork_nextents.exit277.i_crit_edge
  %retval.0.i276.i = phi i32 [ %86, %if.end.i275.i ], [ 0, %if.then122.i.xfs_ifork_nextents.exit277.i_crit_edge ]
  %add128.i = add i32 %retval.0.i276.i, %82
  %87 = ptrtoint ptr %i_nblocks.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %i_nblocks.i, align 8
  tail call void (ptr, i32, ptr, ...) @xfs_alert_tag(ptr noundef %31, i32 noundef 1, ptr noundef nonnull @.str.101, ptr noundef nonnull @__func__.xfs_iflush, i64 noundef %80, i32 noundef %add128.i, i64 noundef %88, ptr noundef %6) #12
  br label %xfs_iflush.exit

if.end130.i:                                      ; preds = %lor.lhs.false119.i
  %i_forkoff131.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 23
  %89 = ptrtoint ptr %i_forkoff131.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %i_forkoff131.i, align 4
  %sb_inodesize134.i = getelementptr inbounds %struct.xfs_sb, ptr %31, i32 0, i32 17
  %91 = ptrtoint ptr %sb_inodesize134.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %sb_inodesize134.i, align 8
  %93 = zext i8 %90 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %92, i16 %93)
  %cmp136.i = icmp ult i16 %92, %93
  br i1 %cmp136.i, label %if.end130.i.if.then141.i_crit_edge, label %lor.lhs.false138.i

if.end130.i.if.then141.i_crit_edge:               ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then141.i

lor.lhs.false138.i:                               ; preds = %if.end130.i
  %call139.i = tail call zeroext i1 @xfs_errortag_test(ptr noundef %31, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.1, i32 noundef 3506, i32 noundef 6) #12
  br i1 %call139.i, label %lor.lhs.false138.i.if.then141.i_crit_edge, label %if.end145.i

lor.lhs.false138.i.if.then141.i_crit_edge:        ; preds = %lor.lhs.false138.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then141.i

if.then141.i:                                     ; preds = %lor.lhs.false138.i.if.then141.i_crit_edge, %if.end130.i.if.then141.i_crit_edge
  %i_ino142.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 4
  %94 = ptrtoint ptr %i_ino142.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %i_ino142.i, align 8
  %96 = ptrtoint ptr %i_forkoff131.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %i_forkoff131.i, align 4
  %conv144.i = zext i8 %97 to i32
  tail call void (ptr, i32, ptr, ...) @xfs_alert_tag(ptr noundef %31, i32 noundef 1, ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__.xfs_iflush, i64 noundef %95, i32 noundef %conv144.i, ptr noundef %6) #12
  br label %xfs_iflush.exit

if.end145.i:                                      ; preds = %lor.lhs.false138.i
  %m_features.i278.i = getelementptr inbounds %struct.xfs_mount, ptr %31, i32 0, i32 61
  %98 = ptrtoint ptr %m_features.i278.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %m_features.i278.i, align 8
  %and.i279.i = and i64 %99, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i279.i)
  %tobool.i280.not.i = icmp eq i64 %and.i279.i, 0
  br i1 %tobool.i280.not.i, label %if.then147.i, label %if.end145.i.if.end148.i_crit_edge

if.end145.i.if.end148.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148.i

if.then147.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #14
  %100 = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 22
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %100, align 8
  %inc.i = add i16 %102, 1
  store i16 %inc.i, ptr %100, align 8
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.then147.i, %if.end145.i.if.end148.i_crit_edge
  %103 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %if_format.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %104)
  %cmp152.i = icmp eq i8 %104, 1
  br i1 %cmp152.i, label %land.lhs.true154.i, label %if.end148.i.if.end158.i_crit_edge

if.end148.i.if.end158.i_crit_edge:                ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158.i

land.lhs.true154.i:                               ; preds = %if.end148.i
  %call155.i = tail call i32 @xfs_ifork_verify_local_data(ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155.i)
  %tobool156.not.i = icmp eq i32 %call155.i, 0
  br i1 %tobool156.not.i, label %land.lhs.true154.i.if.end158.i_crit_edge, label %land.lhs.true154.i.xfs_iflush.exit_crit_edge

land.lhs.true154.i.xfs_iflush.exit_crit_edge:     ; preds = %land.lhs.true154.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_iflush.exit

land.lhs.true154.i.if.end158.i_crit_edge:         ; preds = %land.lhs.true154.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158.i

if.end158.i:                                      ; preds = %land.lhs.true154.i.if.end158.i_crit_edge, %if.end148.i.if.end158.i_crit_edge
  %105 = ptrtoint ptr %i_afp.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i_afp.i, align 8
  %tobool160.not.i = icmp eq ptr %106, null
  br i1 %tobool160.not.i, label %if.end158.i.if.end171.i_crit_edge, label %land.lhs.true161.i

if.end158.i.if.end171.i_crit_edge:                ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i

land.lhs.true161.i:                               ; preds = %if.end158.i
  %if_format163.i = getelementptr inbounds %struct.xfs_ifork, ptr %106, i32 0, i32 6
  %107 = ptrtoint ptr %if_format163.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %if_format163.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %108)
  %cmp165.i = icmp eq i8 %108, 1
  br i1 %cmp165.i, label %land.lhs.true167.i, label %land.lhs.true161.i.if.end171.i_crit_edge

land.lhs.true161.i.if.end171.i_crit_edge:         ; preds = %land.lhs.true161.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i

land.lhs.true167.i:                               ; preds = %land.lhs.true161.i
  %call168.i = tail call i32 @xfs_ifork_verify_local_attr(ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168.i)
  %tobool169.not.i = icmp eq i32 %call168.i, 0
  br i1 %tobool169.not.i, label %land.lhs.true167.i.if.end171.i_crit_edge, label %land.lhs.true167.i.xfs_iflush.exit_crit_edge

land.lhs.true167.i.xfs_iflush.exit_crit_edge:     ; preds = %land.lhs.true167.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_iflush.exit

land.lhs.true167.i.if.end171.i_crit_edge:         ; preds = %land.lhs.true167.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i

if.end171.i:                                      ; preds = %land.lhs.true167.i.if.end171.i_crit_edge, %land.lhs.true161.i.if.end171.i_crit_edge, %if.end158.i.if.end171.i_crit_edge
  %li_lsn.i = getelementptr inbounds %struct.xfs_log_item, ptr %27, i32 0, i32 2
  %109 = ptrtoint ptr %li_lsn.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %li_lsn.i, align 8
  tail call void @xfs_inode_to_disk(ptr noundef %6, ptr noundef %call52.i, i64 noundef %110) #12
  %111 = ptrtoint ptr %m_features.i278.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %m_features.i278.i, align 8
  %and.i282.i = and i64 %112, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i282.i)
  %tobool.i283.not.i = icmp eq i64 %and.i282.i, 0
  br i1 %tobool.i283.not.i, label %if.then174.i, label %if.end171.i.if.end180.i_crit_edge

if.end171.i.if.end180.i_crit_edge:                ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end180.i

if.then174.i:                                     ; preds = %if.end171.i
  %113 = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 22
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %113, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %115)
  %cmp176.i = icmp eq i16 %115, -1
  br i1 %cmp176.i, label %if.then178.i, label %if.then174.i.if.end180.i_crit_edge

if.then174.i.if.end180.i_crit_edge:               ; preds = %if.then174.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end180.i

if.then178.i:                                     ; preds = %if.then174.i
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %113, align 8
  br label %if.end180.i

if.end180.i:                                      ; preds = %if.then178.i, %if.then174.i.if.end180.i_crit_edge, %if.end171.i.if.end180.i_crit_edge
  tail call void @xfs_iflush_fork(ptr noundef %6, ptr noundef %call52.i, ptr noundef nonnull %27, i32 noundef 0) #12
  %117 = ptrtoint ptr %i_forkoff131.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %i_forkoff131.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp183.not.i = icmp eq i8 %118, 0
  br i1 %cmp183.not.i, label %if.end180.i.xfs_iflush.exit_crit_edge, label %if.then185.i

if.end180.i.xfs_iflush.exit_crit_edge:            ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_iflush.exit

if.then185.i:                                     ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @xfs_iflush_fork(ptr noundef %6, ptr noundef %call52.i, ptr noundef nonnull %27, i32 noundef 1) #12
  br label %xfs_iflush.exit

xfs_iflush.exit:                                  ; preds = %if.then185.i, %if.end180.i.xfs_iflush.exit_crit_edge, %land.lhs.true167.i.xfs_iflush.exit_crit_edge, %land.lhs.true154.i.xfs_iflush.exit_crit_edge, %if.then141.i, %xfs_ifork_nextents.exit277.i, %if.then108.i, %if.then78.i, %if.then.i
  %error.0.i = phi i32 [ -117, %if.then.i ], [ -117, %if.then78.i ], [ -117, %xfs_ifork_nextents.exit277.i ], [ -117, %if.then141.i ], [ -117, %land.lhs.true154.i.xfs_iflush.exit_crit_edge ], [ -117, %land.lhs.true167.i.xfs_iflush.exit_crit_edge ], [ -117, %if.then108.i ], [ 0, %if.then185.i ], [ 0, %if.end180.i.xfs_iflush.exit_crit_edge ]
  %ili_lock.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %27, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %ili_lock.i) #12
  %119 = ptrtoint ptr %ili_fields.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ili_fields.i, align 8
  %ili_last_fields.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %27, i32 0, i32 4
  %121 = ptrtoint ptr %ili_last_fields.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %ili_last_fields.i, align 4
  store i32 0, ptr %ili_fields.i, align 8
  %ili_fsync_fields.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %27, i32 0, i32 6
  %122 = ptrtoint ptr %ili_fsync_fields.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %ili_fsync_fields.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ili_lock.i) #12
  %m_ail.i = getelementptr inbounds %struct.xfs_mount, ptr %31, i32 0, i32 2
  %123 = ptrtoint ptr %m_ail.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %m_ail.i, align 4
  %ili_flush_lsn.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %27, i32 0, i32 7
  %li_lsn190.i = getelementptr inbounds %struct.xfs_log_item, ptr %27, i32 0, i32 2
  %ail_lock.i.i = getelementptr inbounds %struct.xfs_ail, ptr %124, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %ail_lock.i.i) #12
  %125 = ptrtoint ptr %li_lsn190.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %li_lsn190.i, align 8
  %127 = ptrtoint ptr %ili_flush_lsn.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %126, ptr %ili_flush_lsn.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ail_lock.i.i) #12
  tail call void @xfs_dinode_calc_crc(ptr noundef %31, ptr noundef %call52.i) #12
  br label %if.end40

if.else:                                          ; preds = %xfs_inode_clean.exit.if.else_crit_edge, %if.end35.if.else_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock) #12
  %128 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %i_flags.i, align 8
  %and.i162 = and i32 %129, -129
  store i32 %and.i162, ptr %i_flags.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock) #12
  br label %if.end40

if.end40:                                         ; preds = %if.else, %xfs_iflush.exit
  %error.1 = phi i32 [ %error.0177, %if.else ], [ %error.0.i, %xfs_iflush.exit ]
  tail call void @up_read(ptr noundef %i_lock83.i) #12
  tail call fastcc void @trace_xfs_iunlock(ptr noundef %6, i32 noundef 8, i32 noundef %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool41.not = icmp eq i32 %error.1, 0
  br i1 %tobool41.not, label %if.end43, label %if.end40.if.then50_crit_edge

if.end40.if.then50_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then50

if.end43:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %clcount.0178, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end43, %if.then34, %if.then29, %if.then24, %if.then19, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %error.2 = phi i32 [ %error.0177, %for.body.for.inc_crit_edge ], [ %error.0177, %if.end.for.inc_crit_edge ], [ %error.0177, %if.then19 ], [ -5, %if.then29 ], [ %error.0177, %if.then34 ], [ 0, %if.end43 ], [ %error.0177, %if.then24 ]
  %clcount.1 = phi i32 [ %clcount.0178, %for.body.for.inc_crit_edge ], [ %clcount.0178, %if.end.for.inc_crit_edge ], [ %clcount.0178, %if.then19 ], [ %clcount.0178, %if.then29 ], [ %clcount.0178, %if.then34 ], [ %inc, %if.end43 ], [ %clcount.0178, %if.then24 ]
  %cmp.not = icmp eq ptr %.pn180, %b_li_list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2)
  %tobool49.not = icmp eq i32 %error.2, 0
  br i1 %tobool49.not, label %if.end51, label %for.end.if.then50_crit_edge

for.end.if.then50_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then50

if.then50:                                        ; preds = %for.end.if.then50_crit_edge, %if.end40.if.then50_crit_edge
  %error.3172 = phi i32 [ %error.2, %for.end.if.then50_crit_edge ], [ %error.1, %if.end40.if.then50_crit_edge ]
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %130 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %b_flags, align 4
  %or = or i32 %131, 16
  store i32 %or, ptr %b_flags, align 4
  tail call void @xfs_buf_ioend_fail(ptr noundef %bp) #12
  tail call void @xfs_do_force_shutdown(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.1, i32 noundef 3690) #12
  br label %cleanup

if.end51:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clcount.1)
  %tobool52.not = icmp eq i32 %clcount.1, 0
  br i1 %tobool52.not, label %if.end51.cleanup_crit_edge, label %do.body55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %132 = load ptr, ptr @xfsstats, align 4
  %133 = ptrtoint ptr %132 to i32
  %134 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i166 = and i32 %134, -16384
  %135 = inttoptr i32 %and.i166 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %137
  %138 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx, align 4
  %add = add i32 %139, %133
  %140 = inttoptr i32 %add to ptr
  %xs_icluster_flushcnt = getelementptr inbounds %struct.__xfsstats, ptr %140, i32 0, i32 57
  %141 = ptrtoint ptr %xs_icluster_flushcnt to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %xs_icluster_flushcnt, align 4
  %inc59 = add i32 %142, 1
  store i32 %inc59, ptr %xs_icluster_flushcnt, align 4
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 92
  %143 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %m_stats, align 4
  %145 = ptrtoint ptr %144 to i32
  %146 = load i32, ptr %cpu, align 4
  %arrayidx69 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %146
  %147 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx69, align 4
  %add70 = add i32 %148, %145
  %149 = inttoptr i32 %add70 to ptr
  %xs_icluster_flushcnt71 = getelementptr inbounds %struct.__xfsstats, ptr %149, i32 0, i32 57
  %150 = ptrtoint ptr %xs_icluster_flushcnt71 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %xs_icluster_flushcnt71, align 4
  %inc72 = add i32 %151, 1
  store i32 %inc72, ptr %xs_icluster_flushcnt71, align 4
  %152 = load i32, ptr %cpu, align 4
  %arrayidx85 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %152
  %153 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx85, align 4
  %add86 = add i32 %154, %133
  %155 = inttoptr i32 %add86 to ptr
  %xs_icluster_flushinode = getelementptr inbounds %struct.__xfsstats, ptr %155, i32 0, i32 58
  %156 = ptrtoint ptr %xs_icluster_flushinode to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %xs_icluster_flushinode, align 8
  %add87 = add i32 %157, %clcount.1
  store i32 %add87, ptr %xs_icluster_flushinode, align 8
  %158 = load ptr, ptr %m_stats, align 4
  %159 = ptrtoint ptr %158 to i32
  %160 = load i32, ptr %cpu, align 4
  %arrayidx99 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %160
  %161 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx99, align 4
  %add100 = add i32 %162, %159
  %163 = inttoptr i32 %add100 to ptr
  %xs_icluster_flushinode101 = getelementptr inbounds %struct.__xfsstats, ptr %163, i32 0, i32 58
  %164 = ptrtoint ptr %xs_icluster_flushinode101 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %xs_icluster_flushinode101, align 8
  %add102 = add i32 %165, %clcount.1
  store i32 %add102, ptr %xs_icluster_flushinode101, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body55, %if.end51.cleanup_crit_edge, %if.then50, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.3172, %if.then50 ], [ 0, %do.body55 ], [ -11, %if.end51.cleanup_crit_edge ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iflush_abort(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_ioend_fail(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_do_force_shutdown(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_irele(ptr noundef %ip, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_irele, i32 0, i32 1), ptr blockaddress(@trace_xfs_irele, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !349
  %call42 = tail call i32 @__traceiter_xfs_irele(ptr noundef null, ptr noundef %ip, i32 noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !350
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_irele, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_irele, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_irele.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_irele.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 930, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
declare dso_local void @iput(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_log_force_inode(ptr noundef %ip) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0) #12
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_xfs_ilock(ptr noundef %ip, i32 noundef 8, i32 noundef %1) #12
  %i_lock72.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10
  tail call void @down_read_nested(ptr noundef %i_lock72.i, i32 noundef 0) #12
  %i_pincount = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_pincount, i32 noundef 4) #12
  %2 = ptrtoint ptr %i_pincount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %i_itemp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 9
  %4 = ptrtoint ptr %i_itemp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_itemp, align 8
  %ili_commit_seq = getelementptr inbounds %struct.xfs_inode_log_item, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %ili_commit_seq to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ili_commit_seq, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %seq.0 = phi i64 [ %7, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @up_read(ptr noundef %i_lock72.i) #12
  tail call fastcc void @trace_xfs_iunlock(ptr noundef %ip, i32 noundef 8, i32 noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %seq.0)
  %tobool1.not = icmp eq i64 %seq.0, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ip, align 8
  %call4 = tail call i32 @xfs_log_force_seq(ptr noundef %9, i64 noundef %seq.0, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_log_force_seq(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ilock2_io_mmap(ptr noundef %ip1, ptr noundef %ip2) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip1, i32 0, i32 27
  %i_vnode.i9 = getelementptr inbounds %struct.xfs_inode, ptr %ip2, i32 0, i32 27
  %cmp.i = icmp ugt ptr %ip1, %ip2
  %spec.select.i = select i1 %cmp.i, ptr %i_vnode.i9, ptr %i_vnode.i
  %spec.select51.i = select i1 %cmp.i, ptr %i_vnode.i, ptr %i_vnode.i9
  %i_rwsem.i77.i = getelementptr inbounds %struct.inode, ptr %spec.select51.i, i32 0, i32 25
  %i_flctx.i.i = getelementptr inbounds %struct.inode, ptr %spec.select.i, i32 0, i32 45
  %cmp3.not.i = icmp eq ptr %spec.select.i, %spec.select51.i
  %i_flctx.i52.i = getelementptr inbounds %struct.inode, ptr %spec.select51.i, i32 0, i32 45
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %spec.select.i, i32 0, i32 25
  br label %retry.i

retry.i:                                          ; preds = %retry.i.backedge, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !351
  %0 = ptrtoint ptr %i_flctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_flctx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %retry.i.if.end2.i_crit_edge, label %land.lhs.true.i.i

retry.i.if.end2.i_crit_edge:                      ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

land.lhs.true.i.i:                                ; preds = %retry.i
  %flc_lease.i.i = getelementptr inbounds %struct.file_lock_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flc_lease.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %flc_lease.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !352
  %cmp.i.not.i.i.i = icmp eq ptr %3, %flc_lease.i.i
  br i1 %cmp.i.not.i.i.i, label %list_empty_careful.exit.i.i, label %land.lhs.true.i.i.break_layout.exit.i_crit_edge

land.lhs.true.i.i.break_layout.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %break_layout.exit.i

list_empty_careful.exit.i.i:                      ; preds = %land.lhs.true.i.i
  %prev.i.i.i = getelementptr inbounds %struct.file_lock_context, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %5, %flc_lease.i.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i.i.if.end2.i_crit_edge, label %list_empty_careful.exit.i.i.break_layout.exit.i_crit_edge

list_empty_careful.exit.i.i.break_layout.exit.i_crit_edge: ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %break_layout.exit.i

list_empty_careful.exit.i.i.if.end2.i_crit_edge:  ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

break_layout.exit.i:                              ; preds = %list_empty_careful.exit.i.i.break_layout.exit.i_crit_edge, %land.lhs.true.i.i.break_layout.exit.i_crit_edge
  %call6.i.i = tail call i32 @__break_lease(ptr noundef %spec.select.i, i32 noundef 1, i32 noundef 2048) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i, label %break_layout.exit.i.if.end2.i_crit_edge, label %break_layout.exit.i.cleanup_crit_edge

break_layout.exit.i.cleanup_crit_edge:            ; preds = %break_layout.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

break_layout.exit.i.if.end2.i_crit_edge:          ; preds = %break_layout.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

if.end2.i:                                        ; preds = %break_layout.exit.i.if.end2.i_crit_edge, %list_empty_careful.exit.i.i.if.end2.i_crit_edge, %retry.i.if.end2.i_crit_edge
  br i1 %cmp3.not.i, label %if.end2.i.if.end9.i_crit_edge, label %if.then4.i

if.end2.i.if.end9.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then4.i:                                       ; preds = %if.end2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !351
  %6 = ptrtoint ptr %i_flctx.i52.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_flctx.i52.i, align 4
  %tobool.not.i53.i = icmp eq ptr %7, null
  br i1 %tobool.not.i53.i, label %if.then4.i.if.end9.i_crit_edge, label %land.lhs.true.i56.i

if.then4.i.if.end9.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

land.lhs.true.i56.i:                              ; preds = %if.then4.i
  %flc_lease.i54.i = getelementptr inbounds %struct.file_lock_context, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %flc_lease.i54.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %flc_lease.i54.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !352
  %cmp.i.not.i.i55.i = icmp eq ptr %9, %flc_lease.i54.i
  br i1 %cmp.i.not.i.i55.i, label %list_empty_careful.exit.i59.i, label %land.lhs.true.i56.i.break_layout.exit63.i_crit_edge

land.lhs.true.i56.i.break_layout.exit63.i_crit_edge: ; preds = %land.lhs.true.i56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %break_layout.exit63.i

list_empty_careful.exit.i59.i:                    ; preds = %land.lhs.true.i56.i
  %prev.i.i57.i = getelementptr inbounds %struct.file_lock_context, ptr %7, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i57.i, align 4
  %cmp.i.not.i58.i = icmp eq ptr %11, %flc_lease.i54.i
  br i1 %cmp.i.not.i58.i, label %list_empty_careful.exit.i59.i.if.end9.i_crit_edge, label %list_empty_careful.exit.i59.i.break_layout.exit63.i_crit_edge

list_empty_careful.exit.i59.i.break_layout.exit63.i_crit_edge: ; preds = %list_empty_careful.exit.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %break_layout.exit63.i

list_empty_careful.exit.i59.i.if.end9.i_crit_edge: ; preds = %list_empty_careful.exit.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

break_layout.exit63.i:                            ; preds = %list_empty_careful.exit.i59.i.break_layout.exit63.i_crit_edge, %land.lhs.true.i56.i.break_layout.exit63.i_crit_edge
  %call6.i60.i = tail call i32 @__break_lease(ptr noundef %spec.select51.i, i32 noundef 1, i32 noundef 2048) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i60.i)
  %tobool6.not.i = icmp eq i32 %call6.i60.i, 0
  br i1 %tobool6.not.i, label %break_layout.exit63.i.if.end9.i_crit_edge, label %break_layout.exit63.i.cleanup_crit_edge

break_layout.exit63.i.cleanup_crit_edge:          ; preds = %break_layout.exit63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

break_layout.exit63.i.if.end9.i_crit_edge:        ; preds = %break_layout.exit63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.end9.i:                                        ; preds = %break_layout.exit63.i.if.end9.i_crit_edge, %list_empty_careful.exit.i59.i.if.end9.i_crit_edge, %if.then4.i.if.end9.i_crit_edge, %if.end2.i.if.end9.i_crit_edge
  tail call void @down_write(ptr noundef %i_rwsem.i.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !351
  %12 = ptrtoint ptr %i_flctx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_flctx.i.i, align 4
  %tobool.not.i65.i = icmp eq ptr %13, null
  br i1 %tobool.not.i65.i, label %if.end9.i.if.end16.i_crit_edge, label %land.lhs.true.i68.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

land.lhs.true.i68.i:                              ; preds = %if.end9.i
  %flc_lease.i66.i = getelementptr inbounds %struct.file_lock_context, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %flc_lease.i66.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %flc_lease.i66.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !352
  %cmp.i.not.i.i67.i = icmp eq ptr %15, %flc_lease.i66.i
  br i1 %cmp.i.not.i.i67.i, label %list_empty_careful.exit.i71.i, label %land.lhs.true.i68.i.break_layout.exit75.i_crit_edge

land.lhs.true.i68.i.break_layout.exit75.i_crit_edge: ; preds = %land.lhs.true.i68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %break_layout.exit75.i

list_empty_careful.exit.i71.i:                    ; preds = %land.lhs.true.i68.i
  %prev.i.i69.i = getelementptr inbounds %struct.file_lock_context, ptr %13, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i69.i, align 4
  %cmp.i.not.i70.i = icmp eq ptr %17, %flc_lease.i66.i
  br i1 %cmp.i.not.i70.i, label %list_empty_careful.exit.i71.i.if.end16.i_crit_edge, label %list_empty_careful.exit.i71.i.break_layout.exit75.i_crit_edge

list_empty_careful.exit.i71.i.break_layout.exit75.i_crit_edge: ; preds = %list_empty_careful.exit.i71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %break_layout.exit75.i

list_empty_careful.exit.i71.i.if.end16.i_crit_edge: ; preds = %list_empty_careful.exit.i71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

break_layout.exit75.i:                            ; preds = %list_empty_careful.exit.i71.i.break_layout.exit75.i_crit_edge, %land.lhs.true.i68.i.break_layout.exit75.i_crit_edge
  %call6.i72.i = tail call i32 @__break_lease(ptr noundef %spec.select.i, i32 noundef 2049, i32 noundef 2048) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i72.i)
  %tobool11.not.i = icmp eq i32 %call6.i72.i, 0
  br i1 %tobool11.not.i, label %break_layout.exit75.i.if.end16.i_crit_edge, label %if.then12.i

break_layout.exit75.i.if.end16.i_crit_edge:       ; preds = %break_layout.exit75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then12.i:                                      ; preds = %break_layout.exit75.i
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call6.i72.i)
  %cmp13.i = icmp eq i32 %call6.i72.i, -11
  br i1 %cmp13.i, label %if.then12.i.retry.i.backedge_crit_edge, label %if.then12.i.cleanup_crit_edge

if.then12.i.cleanup_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12.i.retry.i.backedge_crit_edge:           ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry.i.backedge

if.end16.i:                                       ; preds = %break_layout.exit75.i.if.end16.i_crit_edge, %list_empty_careful.exit.i71.i.if.end16.i_crit_edge, %if.end9.i.if.end16.i_crit_edge
  br i1 %cmp3.not.i, label %if.end16.i.if.end_crit_edge, label %if.end19.i

if.end16.i.if.end_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end19.i:                                       ; preds = %if.end16.i
  tail call void @down_write_nested(ptr noundef %i_rwsem.i77.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !351
  %18 = ptrtoint ptr %i_flctx.i52.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_flctx.i52.i, align 4
  %tobool.not.i79.i = icmp eq ptr %19, null
  br i1 %tobool.not.i79.i, label %if.end19.i.if.end_crit_edge, label %land.lhs.true.i82.i

if.end19.i.if.end_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i82.i:                              ; preds = %if.end19.i
  %flc_lease.i80.i = getelementptr inbounds %struct.file_lock_context, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %flc_lease.i80.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %flc_lease.i80.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !352
  %cmp.i.not.i.i81.i = icmp eq ptr %21, %flc_lease.i80.i
  br i1 %cmp.i.not.i.i81.i, label %list_empty_careful.exit.i85.i, label %land.lhs.true.i82.i.break_layout.exit89.i_crit_edge

land.lhs.true.i82.i.break_layout.exit89.i_crit_edge: ; preds = %land.lhs.true.i82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %break_layout.exit89.i

list_empty_careful.exit.i85.i:                    ; preds = %land.lhs.true.i82.i
  %prev.i.i83.i = getelementptr inbounds %struct.file_lock_context, ptr %19, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %prev.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i83.i, align 4
  %cmp.i.not.i84.i = icmp eq ptr %23, %flc_lease.i80.i
  br i1 %cmp.i.not.i84.i, label %list_empty_careful.exit.i85.i.if.end_crit_edge, label %list_empty_careful.exit.i85.i.break_layout.exit89.i_crit_edge

list_empty_careful.exit.i85.i.break_layout.exit89.i_crit_edge: ; preds = %list_empty_careful.exit.i85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %break_layout.exit89.i

list_empty_careful.exit.i85.i.if.end_crit_edge:   ; preds = %list_empty_careful.exit.i85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

break_layout.exit89.i:                            ; preds = %list_empty_careful.exit.i85.i.break_layout.exit89.i_crit_edge, %land.lhs.true.i82.i.break_layout.exit89.i_crit_edge
  %call6.i86.i = tail call i32 @__break_lease(ptr noundef %spec.select51.i, i32 noundef 2049, i32 noundef 2048) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i86.i)
  %tobool21.not.i = icmp eq i32 %call6.i86.i, 0
  br i1 %tobool21.not.i, label %break_layout.exit89.i.if.end_crit_edge, label %if.then22.i

break_layout.exit89.i.if.end_crit_edge:           ; preds = %break_layout.exit89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then22.i:                                      ; preds = %break_layout.exit89.i
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #12
  tail call void @up_write(ptr noundef %i_rwsem.i77.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call6.i86.i)
  %cmp23.i = icmp eq i32 %call6.i86.i, -11
  br i1 %cmp23.i, label %if.then22.i.retry.i.backedge_crit_edge, label %if.then22.i.cleanup_crit_edge

if.then22.i.cleanup_crit_edge:                    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then22.i.retry.i.backedge_crit_edge:           ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry.i.backedge

retry.i.backedge:                                 ; preds = %if.then22.i.retry.i.backedge_crit_edge, %if.then12.i.retry.i.backedge_crit_edge
  br label %retry.i

if.end:                                           ; preds = %break_layout.exit89.i.if.end_crit_edge, %list_empty_careful.exit.i85.i.if.end_crit_edge, %if.end19.i.if.end_crit_edge, %if.end16.i.if.end_crit_edge
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %ip1, i32 0, i32 27, i32 9
  %24 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_mapping, align 8
  %i_mapping5 = getelementptr inbounds %struct.xfs_inode, ptr %ip2, i32 0, i32 27, i32 9
  %26 = ptrtoint ptr %i_mapping5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_mapping5, align 8
  tail call void @filemap_invalidate_lock_two(ptr noundef %25, ptr noundef %27) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then22.i.cleanup_crit_edge, %if.then12.i.cleanup_crit_edge, %break_layout.exit63.i.cleanup_crit_edge, %break_layout.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call6.i86.i, %if.then22.i.cleanup_crit_edge ], [ %call6.i72.i, %if.then12.i.cleanup_crit_edge ], [ %call6.i60.i, %break_layout.exit63.i.cleanup_crit_edge ], [ %call6.i.i, %break_layout.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @filemap_invalidate_lock_two(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_iunlock2_io_mmap(ptr noundef %ip1, ptr noundef %ip2) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %ip1, i32 0, i32 27, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %i_mapping2 = getelementptr inbounds %struct.xfs_inode, ptr %ip2, i32 0, i32 27, i32 9
  %2 = ptrtoint ptr %i_mapping2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping2, align 8
  tail call void @filemap_invalidate_unlock_two(ptr noundef %1, ptr noundef %3) #12
  %i_rwsem.i = getelementptr inbounds %struct.xfs_inode, ptr %ip2, i32 0, i32 27, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #12
  %cmp.not = icmp eq ptr %ip1, %ip2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %i_rwsem.i12 = getelementptr inbounds %struct.xfs_inode, ptr %ip1, i32 0, i32 27, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i12) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @filemap_invalidate_unlock_two(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_ilock(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_ilock_nowait(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_iunlock(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_ilock_demote(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_inode_validate_extsize(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_inode_validate_cowextsize(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_itruncate_extents_start(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_clear_cowblocks_tag(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_itruncate_extents_end(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_mod_dquot_byino(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_iunlink_obj_cmpfn(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %key1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key1, align 4
  %iu_next_unlinked = getelementptr inbounds %struct.xfs_iunlink, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %iu_next_unlinked to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iu_next_unlinked, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ne i32 %3, %5
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_iunlink(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlink, i32 0, i32 1), ptr blockaddress(@trace_xfs_iunlink, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !353
  %call42 = tail call i32 @__traceiter_xfs_iunlink(ptr noundef null, ptr noundef %ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !354
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlink, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlink, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_iunlink.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_iunlink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 3654, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
declare dso_local zeroext i1 @xfs_verify_agino_or_null(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfs_buf_mark_corrupt(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_iunlink_update_inode(ptr noundef %tp, ptr noundef %ip, ptr nocapture noundef readonly %pag, i32 noundef %next_agino, ptr nocapture noundef writeonly %old_next_agino) #7 align 64 {
entry:
  %ibp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ibp) #12
  %2 = ptrtoint ptr %ibp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %ibp, align 4, !annotation !318
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %3 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pag_agno, align 4
  %call = tail call zeroext i1 @xfs_verify_agino_or_null(ptr noundef %1, i32 noundef %4, i32 noundef %next_agino) #12
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !306

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.1, i32 noundef 2104) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i_imap = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 5
  %call2 = call i32 @xfs_imap_to_bp(ptr noundef %1, ptr noundef %tp, ptr noundef %i_imap, ptr noundef nonnull %ibp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %5 = ptrtoint ptr %ibp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ibp, align 4
  %im_boffset = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 5, i32 2
  %7 = ptrtoint ptr %im_boffset to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %im_boffset, align 2
  %conv = zext i16 %8 to i32
  %call5 = call ptr @xfs_buf_offset(ptr noundef %6, i32 noundef %conv) #12
  %di_next_unlinked = getelementptr inbounds %struct.xfs_dinode, ptr %call5, i32 0, i32 26
  %9 = ptrtoint ptr %di_next_unlinked to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %di_next_unlinked, align 8
  %11 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pag_agno, align 4
  %call7 = call zeroext i1 @xfs_verify_agino_or_null(ptr noundef %1, i32 noundef %12, i32 noundef %10) #12
  br i1 %call7, label %if.end9, label %__here

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !355
  br label %out.sink.split

if.end9:                                          ; preds = %if.end
  %13 = ptrtoint ptr %old_next_agino to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %old_next_agino, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %next_agino)
  %cmp = icmp eq i32 %10, %next_agino
  br i1 %cmp, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %next_agino)
  %cmp12.not = icmp eq i32 %next_agino, -1
  br i1 %cmp12.not, label %if.then11.out_crit_edge, label %__here15

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

__here15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !356
  br label %out.sink.split

if.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_ino, align 8
  %conv19 = trunc i64 %15 to i32
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  %16 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %17 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %18 = trunc i64 %notmask to i32
  %conv20 = xor i32 %18, -1
  %and = and i32 %conv20, %conv19
  %19 = ptrtoint ptr %ibp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ibp, align 4
  call fastcc void @xfs_iunlink_update_dinode(ptr noundef %tp, ptr noundef %pag, i32 noundef %and, ptr noundef %20, ptr noundef %call5, ptr noundef %i_imap, i32 noundef %next_agino)
  br label %cleanup

out.sink.split:                                   ; preds = %__here15, %__here
  %.sink = phi ptr [ blockaddress(@xfs_iunlink_update_inode, %__here15), %__here15 ], [ blockaddress(@xfs_iunlink_update_inode, %__here), %__here ]
  call void @xfs_inode_verifier_error(ptr noundef %ip, i32 noundef -117, ptr noundef nonnull @__func__.xfs_iunlink_update_inode, ptr noundef %call5, i32 noundef 176, ptr noundef %.sink) #12
  br label %out

out:                                              ; preds = %out.sink.split, %if.then11.out_crit_edge
  %error.0 = phi i32 [ 0, %if.then11.out_crit_edge ], [ -117, %out.sink.split ]
  %21 = ptrtoint ptr %ibp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ibp, align 4
  call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %22) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end18, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ 0, %if.end18 ], [ %call2, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ibp) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_iunlink_update_bucket(ptr noundef %tp, ptr nocapture noundef readonly %pag, ptr noundef %agibp, i32 noundef %bucket_index, i32 noundef %new_agino) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agibp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %2 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_mountp, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %4 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pag_agno, align 4
  %call = tail call zeroext i1 @xfs_verify_agino_or_null(ptr noundef %3, i32 noundef %5, i32 noundef %new_agino) #12
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !306

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.1, i32 noundef 2037) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %arrayidx = getelementptr %struct.xfs_agi, ptr %1, i32 0, i32 10, i32 %bucket_index
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %t_mountp, align 4
  %10 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_iunlink_update_bucket(ptr noundef %9, i32 noundef %11, i32 noundef %bucket_index, i32 noundef %7, i32 noundef %new_agino)
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %new_agino)
  %cmp = icmp eq i32 %7, %new_agino
  br i1 %cmp, label %__here, label %if.end

__here:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !357
  tail call void @__xfs_buf_mark_corrupt(ptr noundef %agibp, ptr noundef blockaddress(@xfs_iunlink_update_bucket, %__here)) #12
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %new_agino, ptr %arrayidx, align 4
  %mul = shl i32 %bucket_index, 2
  %add = add i32 %mul, 40
  %sub = add i32 %mul, 43
  tail call void @xfs_trans_log_buf(ptr noundef %tp, ptr noundef %agibp, i32 noundef %add, i32 noundef %sub) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__here
  %retval.0 = phi i32 [ -117, %__here ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_iunlink(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_imap_to_bp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_buf_offset(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_verifier_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_iunlink_update_dinode(ptr noundef %tp, ptr nocapture noundef readonly %pag, i32 noundef %agino, ptr noundef %ibp, ptr noundef %dip, ptr nocapture noundef readonly %imap, i32 noundef %next_agino) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %2 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pag_agno, align 4
  %call = tail call zeroext i1 @xfs_verify_agino_or_null(ptr noundef %1, i32 noundef %3, i32 noundef %next_agino) #12
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !306

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.1, i32 noundef 2074) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %4 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pag_agno, align 4
  %di_next_unlinked = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 26
  %6 = ptrtoint ptr %di_next_unlinked to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %di_next_unlinked, align 8
  tail call fastcc void @trace_xfs_iunlink_update_dinode(ptr noundef %1, i32 noundef %5, i32 noundef %agino, i32 noundef %7, i32 noundef %next_agino)
  %8 = ptrtoint ptr %di_next_unlinked to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %next_agino, ptr %di_next_unlinked, align 8
  %im_boffset = getelementptr inbounds %struct.xfs_imap, ptr %imap, i32 0, i32 2
  %9 = ptrtoint ptr %im_boffset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %im_boffset, align 2
  %conv = zext i16 %10 to i32
  %add = add nuw nsw i32 %conv, 96
  tail call void @xfs_dinode_calc_crc(ptr noundef %1, ptr noundef %dip) #12
  tail call void @xfs_trans_inode_buf(ptr noundef %tp, ptr noundef %ibp) #12
  %sub = add nuw nsw i32 %conv, 99
  tail call void @xfs_trans_log_buf(ptr noundef %tp, ptr noundef %ibp, i32 noundef %add, i32 noundef %sub) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_iunlink_update_dinode(ptr noundef %mp, i32 noundef %agno, i32 noundef %agino, i32 noundef %old_ptr, i32 noundef %new_ptr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlink_update_dinode, i32 0, i32 1), ptr blockaddress(@trace_xfs_iunlink_update_dinode, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !358
  %call42 = tail call i32 @__traceiter_xfs_iunlink_update_dinode(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agino, i32 noundef %old_ptr, i32 noundef %new_ptr) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !359
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlink_update_dinode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlink_update_dinode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_iunlink_update_dinode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_iunlink_update_dinode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 3630, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
declare dso_local void @xfs_dinode_calc_crc(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_inode_buf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_iunlink_update_dinode(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_errortag_test(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_iunlink_insert_backref(ptr noundef %pag, ptr noundef %iu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pagi_unlinked_hash = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 38
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !339
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 696, ptr noundef nonnull @.str.65) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %4 = ptrtoint ptr %pagi_unlinked_hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pagi_unlinked_hash, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %pagi_unlinked_hash) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 715, ptr noundef nonnull @.str.43) #12
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge
  %head_offset.i.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 38, i32 3, i32 3
  %6 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %7 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %iu, i32 %idx.neg.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 8
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i.i.i.i.i.i = add i32 %9, -559038733
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 4
  %add36.i.i.i.i.i.i = add i32 %11, %add1.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i.i.i, i32 %add1.i.i.i.i.i.i, i32 14) #12
  %sub39.i.i.i.i.i.i = sub i32 0, %or.i140.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i = xor i32 %add36.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i, i32 11) #12
  %sub42.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i, %add1.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i, i32 25) #12
  %sub45.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i, i32 16) #12
  %sub48.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i, %sub42.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i, i32 4) #12
  %sub51.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i, %sub45.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i, i32 14) #12
  %sub54.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i, %sub48.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i, i32 24) #12
  %sub57.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 128
  %sub.i.i.i.i.i = add i32 %13, -1
  %and.i3.i.i.i.i = and i32 %sub57.i.i.i.i.i.i, %sub.i.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i4.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i4.i.i, label %cond.false.i7.i.i, label %cond.true.i6.i.i, !prof !306

cond.true.i6.i.i:                                 ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i5.i.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %pagi_unlinked_hash, ptr noundef %5, i32 noundef %and.i3.i.i.i.i) #12
  br label %rht_bucket_insert.exit.i.i

cond.false.i7.i.i:                                ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %5, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_insert.exit.i.i

rht_bucket_insert.exit.i.i:                       ; preds = %cond.false.i7.i.i, %cond.true.i6.i.i
  %cond.i8.i.i = phi ptr [ %call.i5.i.i, %cond.true.i6.i.i ], [ %arrayidx.i.i.i, %cond.false.i7.i.i ]
  %tobool17.not.i.i = icmp eq ptr %cond.i8.i.i, null
  br i1 %tobool17.not.i.i, label %rht_bucket_insert.exit.i.i.out.i.i_crit_edge, label %if.end19.i.i

rht_bucket_insert.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_bucket_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

if.end19.i.i:                                     ; preds = %rht_bucket_insert.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %5, ptr noundef nonnull %cond.i8.i.i) #12
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %17, null
  br i1 %tobool25.not.i.i, label %if.end30.i.i, label %if.end19.i.i.slow_path.i.i_crit_edge, !prof !306

if.end19.i.i.slow_path.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i.i

slow_path.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, %for.end.i.i.slow_path.i.i_crit_edge, %if.end19.i.i.slow_path.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i.i) #12
  %call.i10.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10.i.i, label %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i13.i.i

slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i13.i.i:                            ; preds = %slow_path.i.i
  %call1.i11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 724, ptr noundef nonnull @.str.66) #12
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !340
  %18 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i.i17.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i19.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i19.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call29.i.i = tail call ptr @rhashtable_insert_slow(ptr noundef %pagi_unlinked_hash, ptr noundef null, ptr noundef %iu) #12
  br label %rhashtable_insert_fast.exit

if.end30.i.i:                                     ; preds = %if.end19.i.i
  %call.i20.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i)
  %tobool.not.i21.i.i = icmp eq i32 %call.i20.i.i, 0
  br i1 %tobool.not.i21.i.i, label %land.lhs.true.i23.i.i, label %if.end30.i.i.rht_ptr.exit.i.i_crit_edge

if.end30.i.i.rht_ptr.exit.i.i_crit_edge:          ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true.i23.i.i:                            ; preds = %if.end30.i.i
  %call1.i22.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i22.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge: ; preds = %land.lhs.true.i23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i23.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i24.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

if.then.i24.i.i:                                  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 377, ptr noundef nonnull @.str.62) #12
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i24.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, %if.end30.i.i.rht_ptr.exit.i.i_crit_edge
  %22 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cond.i8.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  %and.i.i.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %25 = ptrtoint ptr %cond.i8.i.i to i32
  %or.i.i.i.i = or i32 %25, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i63.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i.i)
  %tobool.i.not64.i.i = icmp eq i32 %and.i63.i.i, 0
  br i1 %tobool.i.not64.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.if.end152.i.i_crit_edge

rht_ptr.exit.i.i.if.end152.i.i_crit_edge:         ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %26 = inttoptr i32 %cond.i.i.i.i to ptr
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end147.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %head.066.i.i = phi ptr [ %28, %do.end147.i.i.for.body.i.i_crit_edge ], [ %26, %for.body.preheader.i.i ]
  %elasticity.065.i.i = phi i32 [ %dec.i.i, %do.end147.i.i.for.body.i.i_crit_edge ], [ 16, %for.body.preheader.i.i ]
  %dec.i.i = add i32 %elasticity.065.i.i, -1
  %call137.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i)
  %tobool138.not.i.i = icmp eq i32 %call137.i.i, 0
  br i1 %tobool138.not.i.i, label %land.lhs.true139.i.i, label %for.body.i.i.do.end147.i.i_crit_edge

for.body.i.i.do.end147.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i.i

land.lhs.true139.i.i:                             ; preds = %for.body.i.i
  %call140.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i)
  %tobool141.not.i.i = icmp eq i32 %call140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true139.i.i.do.end147.i.i_crit_edge, label %land.lhs.true142.i.i

land.lhs.true139.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i.i

land.lhs.true142.i.i:                             ; preds = %land.lhs.true139.i.i
  %.b2811.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.63, align 1
  br i1 %.b2811.i.i, label %land.lhs.true142.i.i.do.end147.i.i_crit_edge, label %if.then144.i.i

land.lhs.true142.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i.i

if.then144.i.i:                                   ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned.63, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 732, ptr noundef nonnull @.str.62) #12
  br label %do.end147.i.i

do.end147.i.i:                                    ; preds = %if.then144.i.i, %land.lhs.true142.i.i.do.end147.i.i_crit_edge, %land.lhs.true139.i.i.do.end147.i.i_crit_edge, %for.body.i.i.do.end147.i.i_crit_edge
  %27 = ptrtoint ptr %head.066.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.066.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  %and.i.i.i = and i32 %29, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end147.i.i.for.body.i.i_crit_edge, label %for.end.i.i

do.end147.i.i.for.body.i.i_crit_edge:             ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %phi.cmp.i.i = icmp slt i32 %dec.i.i, 1
  br i1 %phi.cmp.i.i, label %for.end.i.i.slow_path.i.i_crit_edge, label %for.end.i.i.if.end152.i.i_crit_edge

for.end.i.i.if.end152.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i.i

for.end.i.i.slow_path.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i.i

if.end152.i.i:                                    ; preds = %for.end.i.i.if.end152.i.i_crit_edge, %rht_ptr.exit.i.i.if.end152.i.i_crit_edge
  %nelems.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 38, i32 8
  %call.i.i.i25.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #12
  %30 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %nelems.i.i.i, align 4
  %max_elems.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 38, i32 2
  %32 = ptrtoint ptr %max_elems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_elems.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp.i.not.i.i = icmp ult i32 %31, %33
  br i1 %cmp.i.not.i.i, label %if.end162.i.i, label %out_unlock.i.i, !prof !306

if.end162.i.i:                                    ; preds = %if.end152.i.i
  %call.i.i.i27.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #12
  %34 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %nelems.i.i.i, align 4
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %5, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp.i28.i.i = icmp ugt i32 %35, %37
  br i1 %cmp.i28.i.i, label %rht_grow_above_100.exit.i.i, label %if.end162.i.i.if.end171.i.i_crit_edge

if.end162.i.i.if.end171.i.i_crit_edge:            ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i:                      ; preds = %if.end162.i.i
  %max_size.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 38, i32 3, i32 4
  %38 = ptrtoint ptr %max_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i29.i.i = icmp eq i32 %39, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp4.i.i.i = icmp ult i32 %37, %39
  %spec.select.i.i.i = select i1 %tobool.not.i29.i.i, i1 true, i1 %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, !prof !305

rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i.i

if.end171.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, %if.end162.i.i.if.end171.i.i_crit_edge
  %call.i30.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i)
  %tobool.not.i31.i.i = icmp eq i32 %call.i30.i.i, 0
  br i1 %tobool.not.i31.i.i, label %land.lhs.true.i34.i.i, label %if.end171.i.i.rht_ptr.exit42.i.i_crit_edge

if.end171.i.i.rht_ptr.exit42.i.i_crit_edge:       ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i.i

land.lhs.true.i34.i.i:                            ; preds = %if.end171.i.i
  %call1.i32.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i.i)
  %tobool2.not.i33.i.i = icmp eq i32 %call1.i32.i.i, 0
  br i1 %tobool2.not.i33.i.i, label %land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge, label %land.lhs.true3.i36.i.i

land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge: ; preds = %land.lhs.true.i34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i.i

land.lhs.true3.i36.i.i:                           ; preds = %land.lhs.true.i34.i.i
  %.b7.i35.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i.i, label %land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge, label %if.then.i37.i.i

land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge: ; preds = %land.lhs.true3.i36.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i.i

if.then.i37.i.i:                                  ; preds = %land.lhs.true3.i36.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 377, ptr noundef nonnull @.str.62) #12
  br label %rht_ptr.exit42.i.i

rht_ptr.exit42.i.i:                               ; preds = %if.then.i37.i.i, %land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge, %land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge, %if.end171.i.i.rht_ptr.exit42.i.i_crit_edge
  %40 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cond.i8.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  %and.i.i38.i.i = and i32 %42, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i.i)
  %tobool.not.i.i39.i.i = icmp eq i32 %and.i.i38.i.i, 0
  %cond.i.i41.i.i = select i1 %tobool.not.i.i39.i.i, i32 %or.i.i.i.i, i32 %and.i.i38.i.i
  %43 = inttoptr i32 %cond.i.i41.i.i to ptr
  %44 = ptrtoint ptr %iu to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %43, ptr %iu, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #12
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #12, !srcloc !360
  tail call fastcc void @rht_assign_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i.i, ptr noundef %iu) #12
  %call.i.i.i44.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #12
  %46 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %nelems.i.i.i, align 4
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %5, align 128
  %div8.i.i.i = lshr i32 %49, 2
  %mul.i.i.i = mul nuw i32 %div8.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %mul.i.i.i)
  %cmp.i45.i.i = icmp ugt i32 %47, %mul.i.i.i
  br i1 %cmp.i45.i.i, label %rht_grow_above_75.exit.i.i, label %rht_ptr.exit42.i.i.out.i.i_crit_edge

rht_ptr.exit42.i.i.out.i.i_crit_edge:             ; preds = %rht_ptr.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

rht_grow_above_75.exit.i.i:                       ; preds = %rht_ptr.exit42.i.i
  %max_size.i46.i.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 38, i32 3, i32 4
  %50 = ptrtoint ptr %max_size.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_size.i46.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i47.i.i = icmp eq i32 %51, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp4.i48.i.i = icmp ult i32 %49, %51
  %spec.select.i49.i.i = select i1 %tobool.not.i47.i.i, i1 true, i1 %cmp4.i48.i.i
  br i1 %spec.select.i49.i.i, label %if.then207.i.i, label %rht_grow_above_75.exit.i.i.out.i.i_crit_edge

rht_grow_above_75.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

if.then207.i.i:                                   ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %run_work.i.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 38, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %52 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %52, ptr noundef %run_work.i.i) #12
  br label %out.i.i

out.i.i:                                          ; preds = %out_unlock.i.i, %if.then207.i.i, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge, %rht_ptr.exit42.i.i.out.i.i_crit_edge, %rht_bucket_insert.exit.i.i.out.i.i_crit_edge
  %data.2.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.out.i.i_crit_edge ], [ null, %if.then207.i.i ], [ null, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge ], [ null, %rht_ptr.exit42.i.i.out.i.i_crit_edge ]
  %call.i52.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i52.i.i, label %out.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %land.lhs.true.i55.i.i

out.i.i.rcu_read_unlock.exit62.i.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i.i

land.lhs.true.i55.i.i:                            ; preds = %out.i.i
  %call1.i53.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i.i)
  %tobool.not.i54.i.i = icmp eq i32 %call1.i53.i.i, 0
  br i1 %tobool.not.i54.i.i, label %land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %land.lhs.true2.i57.i.i

land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge: ; preds = %land.lhs.true.i55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i.i

land.lhs.true2.i57.i.i:                           ; preds = %land.lhs.true.i55.i.i
  %.b4.i56.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i.i, label %land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %if.then.i58.i.i

land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge: ; preds = %land.lhs.true2.i57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i.i

if.then.i58.i.i:                                  ; preds = %land.lhs.true2.i57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 724, ptr noundef nonnull @.str.66) #12
  br label %rcu_read_unlock.exit62.i.i

rcu_read_unlock.exit62.i.i:                       ; preds = %if.then.i58.i.i, %land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge, %land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge, %out.i.i.rcu_read_unlock.exit62.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !340
  %53 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i.i59.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i59.i.i to ptr
  %preempt_count.i.i.i.i60.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i60.i.i, align 4
  %sub.i.i.i61.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i61.i.i, ptr %preempt_count.i.i.i.i60.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %rhashtable_insert_fast.exit

out_unlock.i.i:                                   ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i.i) #12
  br label %out.i.i

rhashtable_insert_fast.exit:                      ; preds = %rcu_read_unlock.exit62.i.i, %rcu_read_unlock.exit.i.i
  %retval.0.i.i = phi ptr [ %call29.i.i, %rcu_read_unlock.exit.i.i ], [ %data.2.i.i, %rcu_read_unlock.exit62.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  %57 = ptrtoint ptr %retval.0.i.i to i32
  %cmp.i = icmp eq ptr %retval.0.i.i, null
  %cond.i = select i1 %cmp.i, i32 0, i32 -17
  %retval.0.i = select i1 %cmp.i.i, i32 %57, i32 %cond.i
  %58 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %retval.0.i, label %do.end [
    i32 0, label %rhashtable_insert_fast.exit.if.end25_crit_edge
    i32 -12, label %rhashtable_insert_fast.exit.if.end_crit_edge
  ], !prof !361

rhashtable_insert_fast.exit.if.end_crit_edge:     ; preds = %rhashtable_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

rhashtable_insert_fast.exit.if.end25_crit_edge:   ; preds = %rhashtable_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

do.end:                                           ; preds = %rhashtable_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1912, i32 noundef 9, ptr noundef nonnull @.str.59, i32 noundef %retval.0.i) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %rhashtable_insert_fast.exit.if.end_crit_edge
  tail call void @kvfree(ptr noundef %iu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %retval.0.i)
  %cmp23.not = icmp eq i32 %retval.0.i, -17
  %spec.store.select = select i1 %cmp23.not, i32 -17, i32 0
  br label %if.end25

if.end25:                                         ; preds = %if.end, %rhashtable_insert_fast.exit.if.end25_crit_edge
  %error.0 = phi i32 [ %spec.store.select, %if.end ], [ %retval.0.i, %rhashtable_insert_fast.exit.if.end25_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !362
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !363

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !364
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !365
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !306

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !366
  %7 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !367
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !368
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !369
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #12
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !305

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #12, !srcloc !370
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !371
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !372
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !373
  %3 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !374
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !375
  %2 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_iunlink_update_bucket(ptr noundef %mp, i32 noundef %agno, i32 noundef %bucket, i32 noundef %old_ptr, i32 noundef %new_ptr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlink_update_bucket, i32 0, i32 1), ptr blockaddress(@trace_xfs_iunlink_update_bucket, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !376
  %call42 = tail call i32 @__traceiter_xfs_iunlink_update_bucket(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %bucket, i32 noundef %old_ptr, i32 noundef %new_ptr) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !377
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlink_update_bucket, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlink_update_bucket, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_iunlink_update_bucket.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_iunlink_update_bucket.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 3604, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
declare dso_local i32 @__traceiter_xfs_iunlink_update_bucket(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_iunlink_remove(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlink_remove, i32 0, i32 1), ptr blockaddress(@trace_xfs_iunlink_remove, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !378
  %call42 = tail call i32 @__traceiter_xfs_iunlink_remove(ptr noundef null, ptr noundef %ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !379
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlink_remove, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlink_remove, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_iunlink_remove.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_iunlink_remove.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 3655, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
declare dso_local zeroext i1 @xfs_verify_agino(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_iunlink_change_backref(ptr noundef %pag, i32 noundef %agino, i32 noundef %next_unlinked) unnamed_addr #2 align 64 {
entry:
  %agino.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %agino.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %agino, ptr %agino.addr, align 4
  %pagi_unlinked_hash = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 38
  %call = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %pagi_unlinked_hash, ptr noundef nonnull %agino.addr, [7 x i32] [i32 4, i32 524288, i32 0, i32 4194560, i32 0, i32 0, i32 ptrtoint (ptr @xfs_iunlink_obj_cmpfn to i32)])
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !339
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i, label %if.end.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.rcu_read_lock.exit.i.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 696, ptr noundef nonnull @.str.65) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.rcu_read_lock.exit.i.i_crit_edge
  %5 = ptrtoint ptr %pagi_unlinked_hash to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %pagi_unlinked_hash, align 4
  %call.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %pagi_unlinked_hash) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end10.i.i_crit_edge

lor.lhs.false.i.i.do.end10.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call5.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true7.i.i.do.end10.i.i_crit_edge, label %if.then.i.i

land.lhs.true7.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 1076, ptr noundef nonnull @.str.43) #12
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true7.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %lor.lhs.false.i.i.do.end10.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge
  %head_offset.i.i.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 38, i32 3, i32 3
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %call, i32 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.end33.i.i.while.cond.i.i_crit_edge, %do.end10.i.i
  %tbl.0.i.i = phi ptr [ %6, %do.end10.i.i ], [ %39, %do.end33.i.i.while.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %idx.neg.i.i.i.i.i
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %add1.i.i.i.i.i.i.i = add i32 %10, -559038733
  %11 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %add36.i.i.i.i.i.i.i = add i32 %12, %add1.i.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i.i.i.i, i32 %add1.i.i.i.i.i.i.i, i32 14) #12
  %sub39.i.i.i.i.i.i.i = sub i32 0, %or.i140.i.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i.i = xor i32 %add36.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i.i, i32 11) #12
  %sub42.i.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i.i, %add1.i.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i.i, i32 25) #12
  %sub45.i.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i.i, i32 16) #12
  %sub48.i.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i.i, %sub42.i.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i.i, i32 4) #12
  %sub51.i.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i.i, %sub45.i.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i.i, i32 14) #12
  %sub54.i.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i.i, %sub48.i.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i.i, i32 24) #12
  %sub57.i.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i.i
  %13 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i.i.i = add i32 %14, -1
  %and.i3.i.i.i.i.i = and i32 %sub57.i.i.i.i.i.i.i, %sub.i.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i3.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i3.i.i.i, label %cond.false.i5.i.i.i, label %cond.true.i4.i.i.i, !prof !306

cond.true.i4.i.i.i:                               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  br label %rht_bucket_var.exit.i.i.i

cond.false.i5.i.i.i:                              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i

rht_bucket_var.exit.i.i.i:                        ; preds = %cond.false.i5.i.i.i, %cond.true.i4.i.i.i
  %cond.i6.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i4.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i5.i.i.i ]
  %tobool.not.i3.i.i = icmp eq ptr %cond.i6.i.i.i, null
  br i1 %tobool.not.i3.i.i, label %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge, label %if.end.i.i.i

rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

if.end.i.i.i:                                     ; preds = %rht_bucket_var.exit.i.i.i
  call fastcc void @rht_lock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #12
  %call.i8.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i)
  %tobool.not.i9.i.i.i = icmp eq i32 %call.i8.i.i.i, 0
  br i1 %tobool.not.i9.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 377, ptr noundef nonnull @.str.62) #12
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %17 = ptrtoint ptr %cond.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cond.i6.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %and.i.i.i.i.i = and i32 %19, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %20 = ptrtoint ptr %cond.i6.i.i.i to i32
  %or.i.i.i.i.i = or i32 %20, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i
  %and.i20.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i.i)
  %tobool.i.not21.i.i.i = icmp eq i32 %and.i20.i.i.i, 0
  br i1 %tobool.i.not21.i.i.i, label %for.body.preheader.i.i.i, label %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge

rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge:      ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i.i

for.body.preheader.i.i.i:                         ; preds = %rht_ptr.exit.i.i.i
  %21 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %cmp.not.i21.i.i = icmp eq ptr %call, %21
  br i1 %cmp.not.i21.i.i, label %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge

for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  br label %do.body145.i.i.i

for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i.i

for.body.i.i.i:                                   ; preds = %do.end156.i.i.i
  %cmp.not.i.i.i = icmp eq ptr %26, %call
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.i.i.i.do.body145.i.i.i_crit_edge

for.body.i.i.i.do.body145.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body145.i.i.i

for.body.i.i.i.do.body54.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i.i

do.body54.i.i.i:                                  ; preds = %for.body.i.i.i.do.body54.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge
  %pprev.023.i.lcssa.i.i = phi ptr [ %he.022.i22.i.i, %for.body.i.i.i.do.body54.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge ]
  %call55.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i)
  %tobool56.not.i.i.i = icmp eq i32 %call55.i.i.i, 0
  br i1 %tobool56.not.i.i.i, label %land.lhs.true57.i.i.i, label %do.body54.i.i.i.do.end65.i.i.i_crit_edge

do.body54.i.i.i.do.end65.i.i.i_crit_edge:         ; preds = %do.body54.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i.i

land.lhs.true57.i.i.i:                            ; preds = %do.body54.i.i.i
  %call58.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i.i)
  %tobool59.not.i.i.i = icmp eq i32 %call58.i.i.i, 0
  br i1 %tobool59.not.i.i.i, label %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, label %land.lhs.true60.i.i.i

land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true57.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i.i

land.lhs.true60.i.i.i:                            ; preds = %land.lhs.true57.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.71, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, label %if.then62.i.i.i

land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i.i

if.then62.i.i.i:                                  ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.71, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 1032, ptr noundef nonnull @.str.62) #12
  br label %do.end65.i.i.i

do.end65.i.i.i:                                   ; preds = %if.then62.i.i.i, %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, %do.body54.i.i.i.do.end65.i.i.i_crit_edge
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call, align 4
  %tobool103.not.i.i.i = icmp eq ptr %pprev.023.i.lcssa.i.i, null
  br i1 %tobool103.not.i.i.i, label %if.else142.i.i.i, label %do.body105.i.i.i

do.body105.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !380
  %24 = ptrtoint ptr %pprev.023.i.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %23, ptr %pprev.023.i.lcssa.i.i, align 4
  call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #12
  br label %if.then160.i.i.i

if.else142.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i, ptr noundef %23) #12
  br label %if.then160.i.i.i

do.body145.i.i.i:                                 ; preds = %for.body.i.i.i.do.body145.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge
  %he.022.i22.i.i = phi ptr [ %26, %for.body.i.i.i.do.body145.i.i.i_crit_edge ], [ %21, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge ]
  %call146.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i)
  %tobool147.not.i.i.i = icmp eq i32 %call146.i.i.i, 0
  br i1 %tobool147.not.i.i.i, label %land.lhs.true148.i.i.i, label %do.body145.i.i.i.do.end156.i.i.i_crit_edge

do.body145.i.i.i.do.end156.i.i.i_crit_edge:       ; preds = %do.body145.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i.i

land.lhs.true148.i.i.i:                           ; preds = %do.body145.i.i.i
  %call149.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i.i)
  %tobool150.not.i.i.i = icmp eq i32 %call149.i.i.i, 0
  br i1 %tobool150.not.i.i.i, label %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, label %land.lhs.true151.i.i.i

land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i.i

land.lhs.true151.i.i.i:                           ; preds = %land.lhs.true148.i.i.i
  %.b2281.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.73, align 1
  br i1 %.b2281.i.i.i, label %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, label %if.then153.i.i.i

land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i.i

if.then153.i.i.i:                                 ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.73, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 1004, ptr noundef nonnull @.str.62) #12
  br label %do.end156.i.i.i

do.end156.i.i.i:                                  ; preds = %if.then153.i.i.i, %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, %do.body145.i.i.i.do.end156.i.i.i_crit_edge
  %25 = ptrtoint ptr %he.022.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %he.022.i22.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %and.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.body.i.i.i, label %do.end156.i.i.i.unlocked.i.i.i_crit_edge

do.end156.i.i.i.unlocked.i.i.i_crit_edge:         ; preds = %do.end156.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i.i

unlocked.i.i.i:                                   ; preds = %do.end156.i.i.i.unlocked.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge
  call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #12
  br label %land.rhs.i.i

if.then160.i.i.i:                                 ; preds = %if.else142.i.i.i, %do.body105.i.i.i
  %nelems.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 38, i32 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #12
  %28 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #12, !srcloc !381
  %automatic_shrinking.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 38, i32 3, i32 6
  %29 = ptrtoint ptr %automatic_shrinking.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %automatic_shrinking.i.i.i, align 2, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool161.not.i.i.i = icmp eq i8 %30, 0
  br i1 %tobool161.not.i.i.i, label %if.then160.i.i.i.while.end.i.i_crit_edge, label %land.rhs162.i.i.i

if.then160.i.i.i.while.end.i.i_crit_edge:         ; preds = %if.then160.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

land.rhs162.i.i.i:                                ; preds = %if.then160.i.i.i
  %call.i.i.i10.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #12
  %31 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %nelems.i.i.i, align 4
  %33 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tbl.0.i.i, align 128
  %mul.i.i.i.i = mul i32 %34, 3
  %div.i.i.i.i = udiv i32 %mul.i.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %div.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %32, %div.i.i.i.i
  br i1 %cmp.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i, label %land.rhs162.i.i.i.while.end.i.i_crit_edge

land.rhs162.i.i.i.while.end.i.i_crit_edge:        ; preds = %land.rhs162.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

rht_shrink_below_30.exit.i.i.i:                   ; preds = %land.rhs162.i.i.i
  %min_size.i.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 38, i32 3, i32 5
  %35 = ptrtoint ptr %min_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %min_size.i.i.i.i, align 4
  %conv.i11.i.i.i = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv.i11.i.i.i)
  %cmp2.i.i.i.i = icmp ugt i32 %34, %conv.i11.i.i.i
  br i1 %cmp2.i.i.i.i, label %if.then168.i.i.i, label %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, !prof !305

rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

if.then168.i.i.i:                                 ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %run_work.i.i.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 38, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %37 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %run_work.i.i.i) #12
  br label %while.end.i.i

land.rhs.i.i:                                     ; preds = %unlocked.i.i.i, %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call20.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %pagi_unlinked_hash) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %lor.lhs.false22.i.i, label %land.rhs.i.i.do.end33.i.i_crit_edge

land.rhs.i.i.do.end33.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

lor.lhs.false22.i.i:                              ; preds = %land.rhs.i.i
  %call23.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true25.i.i, label %lor.lhs.false22.i.i.do.end33.i.i_crit_edge

lor.lhs.false22.i.i.do.end33.i.i_crit_edge:       ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

land.lhs.true25.i.i:                              ; preds = %lor.lhs.false22.i.i
  %call26.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true25.i.i.do.end33.i.i_crit_edge, label %land.lhs.true28.i.i

land.lhs.true25.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

land.lhs.true28.i.i:                              ; preds = %land.lhs.true25.i.i
  %.b401.i.i = load i1, ptr @__rhashtable_remove_fast.__warned.69, align 1
  br i1 %.b401.i.i, label %land.lhs.true28.i.i.do.end33.i.i_crit_edge, label %if.then30.i.i

land.lhs.true28.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

if.then30.i.i:                                    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned.69, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 1085, ptr noundef nonnull @.str.43) #12
  br label %do.end33.i.i

do.end33.i.i:                                     ; preds = %if.then30.i.i, %land.lhs.true28.i.i.do.end33.i.i_crit_edge, %land.lhs.true25.i.i.do.end33.i.i_crit_edge, %lor.lhs.false22.i.i.do.end33.i.i_crit_edge, %land.rhs.i.i.do.end33.i.i_crit_edge
  %tobool35.not.i.i = icmp eq ptr %39, null
  br i1 %tobool35.not.i.i, label %do.end33.i.i.while.end.i.i_crit_edge, label %do.end33.i.i.while.cond.i.i_crit_edge

do.end33.i.i.while.cond.i.i_crit_edge:            ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

do.end33.i.i.while.end.i.i_crit_edge:             ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end33.i.i.while.end.i.i_crit_edge, %if.then168.i.i.i, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, %land.rhs162.i.i.i.while.end.i.i_crit_edge, %if.then160.i.i.i.while.end.i.i_crit_edge
  %tobool3.not = phi i1 [ true, %if.then168.i.i.i ], [ true, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge ], [ true, %land.rhs162.i.i.i.while.end.i.i_crit_edge ], [ true, %if.then160.i.i.i.while.end.i.i_crit_edge ], [ false, %do.end33.i.i.while.end.i.i_crit_edge ]
  %retval.0.i15.i.i = phi i32 [ 0, %if.then168.i.i.i ], [ 0, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge ], [ 0, %land.rhs162.i.i.i.while.end.i.i_crit_edge ], [ 0, %if.then160.i.i.i.while.end.i.i_crit_edge ], [ -2, %do.end33.i.i.while.end.i.i_crit_edge ]
  %call.i4.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i4.i.i, label %while.end.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i.i

while.end.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_remove_fast.exit

land.lhs.true.i7.i.i:                             ; preds = %while.end.i.i
  %call1.i5.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %call1.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i.i

land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_remove_fast.exit

land.lhs.true2.i9.i.i:                            ; preds = %land.lhs.true.i7.i.i
  %.b4.i8.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i, label %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i.i

land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_remove_fast.exit

if.then.i10.i.i:                                  ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 724, ptr noundef nonnull @.str.66) #12
  br label %rhashtable_remove_fast.exit

rhashtable_remove_fast.exit:                      ; preds = %if.then.i10.i.i, %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, %while.end.i.i.rhashtable_remove_fast.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !340
  %40 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i.i11.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i11.i.i to ptr
  %preempt_count.i.i.i.i12.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i, align 4
  %sub.i.i.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br i1 %tobool3.not, label %if.end5, label %rhashtable_remove_fast.exit.cleanup_crit_edge

rhashtable_remove_fast.exit.cleanup_crit_edge:    ; preds = %rhashtable_remove_fast.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %rhashtable_remove_fast.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %next_unlinked)
  %cmp = icmp eq i32 %next_unlinked, -1
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  call void @kvfree(ptr noundef nonnull %call) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %iu_next_unlinked = getelementptr inbounds %struct.xfs_iunlink, ptr %call, i32 0, i32 2
  %44 = ptrtoint ptr %iu_next_unlinked to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %next_unlinked, ptr %iu_next_unlinked, align 4
  %call8 = call fastcc i32 @xfs_iunlink_insert_backref(ptr noundef %pag, ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %rhashtable_remove_fast.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ %call8, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i15.i.i, %rhashtable_remove_fast.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_iunlink_map_prev(ptr noundef %tp, ptr noundef %pag, i32 noundef %head_agino, i32 noundef %target_agino, ptr nocapture noundef writeonly %agino, ptr noundef %imap, ptr nocapture noundef %dipp, ptr noundef %bpp) unnamed_addr #7 align 64 {
entry:
  %agino.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %head_agino, i32 %target_agino)
  %cmp.not = icmp eq i32 %head_agino, %target_agino
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !305

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 2276) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %2 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bpp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agino.addr.i)
  %3 = ptrtoint ptr %agino.addr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %target_agino, ptr %agino.addr.i, align 4
  %pagi_unlinked_hash.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 38
  %call.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %pagi_unlinked_hash.i, ptr noundef nonnull %agino.addr.i, [7 x i32] [i32 4, i32 524288, i32 0, i32 4194560, i32 0, i32 0, i32 ptrtoint (ptr @xfs_iunlink_obj_cmpfn to i32)]) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %xfs_iunlink_lookup_backref.exit.thread, label %xfs_iunlink_lookup_backref.exit

xfs_iunlink_lookup_backref.exit.thread:           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agino.addr.i)
  %4 = ptrtoint ptr %agino to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %agino, align 4
  br label %if.end49

xfs_iunlink_lookup_backref.exit:                  ; preds = %cond.end
  %iu_agino.i = getelementptr inbounds %struct.xfs_iunlink, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %iu_agino.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iu_agino.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agino.addr.i)
  %7 = ptrtoint ptr %agino to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %agino, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp2.not = icmp eq i32 %6, -1
  br i1 %cmp2.not, label %xfs_iunlink_lookup_backref.exit.if.end49_crit_edge, label %if.then

xfs_iunlink_lookup_backref.exit.if.end49_crit_edge: ; preds = %xfs_iunlink_lookup_backref.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then:                                          ; preds = %xfs_iunlink_lookup_backref.exit
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %8 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pag_agno, align 4
  %call3 = call fastcc i32 @xfs_iunlink_map_ino(ptr noundef %tp, i32 noundef %9, i32 noundef %6, ptr noundef %imap, ptr noundef %dipp, ptr noundef %bpp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup66_crit_edge

if.then.cleanup66_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup66

if.end:                                           ; preds = %if.then
  %10 = ptrtoint ptr %dipp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dipp, align 4
  %di_next_unlinked = getelementptr inbounds %struct.xfs_dinode, ptr %11, i32 0, i32 26
  %12 = ptrtoint ptr %di_next_unlinked to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %di_next_unlinked, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %target_agino)
  %cmp6 = icmp eq i32 %13, %target_agino
  br i1 %cmp6, label %if.end.cleanup66_crit_edge, label %if.end8

if.end.cleanup66_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup66

if.end8:                                          ; preds = %if.end
  %14 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bpp, align 4
  call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %15) #12
  %16 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %bpp, align 4
  %.b109 = load i1, ptr @xfs_iunlink_map_prev.__already_done, align 1
  br i1 %.b109, label %if.end8.if.end49_crit_edge, label %if.then19, !prof !306

if.end8.if.end49_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @xfs_iunlink_map_prev.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2296, i32 noundef 9, ptr noundef null) #12
  br label %if.end49

if.end49:                                         ; preds = %if.then19, %if.end8.if.end49_crit_edge, %xfs_iunlink_lookup_backref.exit.if.end49_crit_edge, %xfs_iunlink_lookup_backref.exit.thread
  %pag_agno50 = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %17 = ptrtoint ptr %pag_agno50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pag_agno50, align 4
  call fastcc void @trace_xfs_iunlink_map_prev_fallback(ptr noundef %1, i32 noundef %18)
  br label %while.cond

while.cond:                                       ; preds = %if.end59.while.cond_crit_edge, %if.end49
  %next_agino.0 = phi i32 [ %head_agino, %if.end49 ], [ %27, %if.end59.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %next_agino.0, i32 %target_agino)
  %cmp51.not = icmp eq i32 %next_agino.0, %target_agino
  br i1 %cmp51.not, label %while.cond.cleanup66_crit_edge, label %while.body

while.cond.cleanup66_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup66

while.body:                                       ; preds = %while.cond
  %19 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bpp, align 4
  %tobool52.not = icmp eq ptr %20, null
  br i1 %tobool52.not, label %while.body.if.end54_crit_edge, label %if.then53

while.body.if.end54_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then53:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef nonnull %20) #12
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %while.body.if.end54_crit_edge
  %21 = ptrtoint ptr %agino to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %next_agino.0, ptr %agino, align 4
  %22 = ptrtoint ptr %pag_agno50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pag_agno50, align 4
  %call56 = call fastcc i32 @xfs_iunlink_map_ino(ptr noundef %tp, i32 noundef %23, i32 noundef %next_agino.0, ptr noundef %imap, ptr noundef %dipp, ptr noundef %bpp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end54.cleanup66_crit_edge

if.end54.cleanup66_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup66

if.end59:                                         ; preds = %if.end54
  %24 = ptrtoint ptr %dipp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dipp, align 4
  %di_next_unlinked60 = getelementptr inbounds %struct.xfs_dinode, ptr %25, i32 0, i32 26
  %26 = ptrtoint ptr %di_next_unlinked60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %di_next_unlinked60, align 8
  %28 = ptrtoint ptr %pag_agno50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pag_agno50, align 4
  %call62 = call zeroext i1 @xfs_verify_agino(ptr noundef %1, i32 noundef %29, i32 noundef %27) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %next_agino.0, i32 %27)
  %cmp63 = icmp ne i32 %next_agino.0, %27
  %30 = and i1 %cmp63, %call62
  br i1 %30, label %if.end59.while.cond_crit_edge, label %if.then64

if.end59.while.cond_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %dipp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dipp, align 4
  %33 = call ptr @llvm.returnaddress(i32 0)
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_iunlink_map_prev, i32 noundef 1, ptr noundef %1, ptr noundef %32, i32 noundef 176, ptr noundef nonnull @.str.1, i32 noundef 2324, ptr noundef %33) #12
  br label %cleanup66

cleanup66:                                        ; preds = %if.then64, %if.end54.cleanup66_crit_edge, %while.cond.cleanup66_crit_edge, %if.end.cleanup66_crit_edge, %if.then.cleanup66_crit_edge
  %retval.2 = phi i32 [ %call3, %if.then.cleanup66_crit_edge ], [ 0, %if.end.cleanup66_crit_edge ], [ -117, %if.then64 ], [ %call56, %if.end54.cleanup66_crit_edge ], [ 0, %while.cond.cleanup66_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_iunlink_remove(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #3 align 64 {
entry:
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !339
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 696, ptr noundef nonnull @.str.65) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %params.coerce.fca.6.extract.i.i = extractvalue [7 x i32] %params.coerce, 6
  %4 = inttoptr i32 %params.coerce.fca.6.extract.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #12
  %5 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ht, ptr %arg.i.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %key, ptr %5, align 4
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 594, ptr noundef nonnull @.str.43) #12
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.do.end12.i.i_crit_edge
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i.i)
  %tobool19.not.i.i = icmp eq i32 %params.coerce.fca.6.extract.i.i, 0
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end60.i.i.if.then.i.i.i.i_crit_edge, %do.end12.i.i
  %tbl.0.i.i = phi ptr [ %9, %do.end12.i.i ], [ %40, %do.end60.i.i.if.then.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i, align 8
  %12 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %14 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %13(ptr noundef %key, i32 noundef %15, i32 noundef %11) #12
  %16 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i = add i32 %17, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %call.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !306

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #12
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %20 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %20, 1
  %21 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !382
  %22 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 369, ptr noundef nonnull @.str.43) #12
  br label %rht_ptr_rcu.exit.i.i

rht_ptr_rcu.exit.i.i:                             ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge
  %24 = ptrtoint ptr %23 to i32
  %and.i.i95.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i)
  %tobool.not.i.i96.i.i = icmp eq i32 %and.i.i95.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i96.i.i, i32 %or.i.i.i.i, i32 %and.i.i95.i.i
  %25 = inttoptr i32 %cond.i.i.i.i to ptr
  %and.i106.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i)
  %tobool.i.not107.i.i = icmp eq i32 %and.i106.i.i, 0
  br i1 %tobool.i.not107.i.i, label %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge

rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge:     ; preds = %rht_ptr_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i

rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge:      ; preds = %rht_ptr_rcu.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge
  %he.0108.i.i = phi ptr [ %37, %for.inc.i.i.for.body.i.i_crit_edge ], [ %25, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i98.i.i = zext i16 %27 to i32
  %idx.neg.i99.i.i = sub nsw i32 0, %conv.i98.i.i
  %add.ptr.i100.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i99.i.i
  br i1 %tobool19.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  %call22.i.i = call i32 %4(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i100.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  %28 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg.i.i, align 4
  %key_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %key_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_offset.i.i.i, align 4
  %conv.i101.i.i = zext i16 %31 to i32
  %add.ptr.i102.i.i = getelementptr i8, ptr %add.ptr.i100.i.i, i32 %conv.i101.i.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %key_len.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %35 to i32
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr %33, i32 %conv3.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit.i

for.inc.i.i:                                      ; preds = %cond.false.i.i.for.inc.i.i_crit_edge, %cond.true.i.i.for.inc.i.i_crit_edge
  %36 = ptrtoint ptr %he.0108.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %he.0108.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %38, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.cond34.i.i_crit_edge

for.inc.i.i.do.cond34.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %25, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %37, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %21
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !383
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.68, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned.68, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 614, ptr noundef nonnull @.str.43) #12
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !306

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #12
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #12
  %tobool.not.i1 = icmp eq ptr %he.0108.i.i, null
  br i1 %tobool.not.i1, label %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, label %cond.true.i

__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge: ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, %__rhashtable_lookup.exit.thread.i
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i2, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rhashtable_lookup.exit
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 724, ptr noundef nonnull @.str.66) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !340
  %43 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i.i9 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %cond.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_iunlink_map_ino(ptr noundef %tp, i32 noundef %agno, i32 noundef %agino, ptr noundef %imap, ptr nocapture noundef writeonly %dipp, ptr noundef %bpp) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %2 = ptrtoint ptr %imap to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %imap, align 8
  %conv = zext i32 %agno to i64
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  %3 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %4 to i64
  %shl = shl i64 %conv, %sh_prom
  %conv1 = zext i32 %agino to i64
  %or = or i64 %shl, %conv1
  %call = tail call i32 @xfs_imap(ptr noundef %1, ptr noundef %tp, i64 noundef %or, ptr noundef %imap, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.xfs_iunlink_map_ino, i32 noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @xfs_imap_to_bp(ptr noundef %1, ptr noundef %tp, ptr noundef %imap, ptr noundef %bpp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.xfs_iunlink_map_ino, i32 noundef %call2) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bpp, align 4
  %im_boffset = getelementptr inbounds %struct.xfs_imap, ptr %imap, i32 0, i32 2
  %7 = ptrtoint ptr %im_boffset to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %im_boffset, align 2
  %conv6 = zext i16 %8 to i32
  %call7 = tail call ptr @xfs_buf_offset(ptr noundef %6, i32 noundef %conv6) #12
  %9 = ptrtoint ptr %dipp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7, ptr %dipp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.then4 ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_iunlink_map_prev_fallback(ptr noundef %mp, i32 noundef %agno) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlink_map_prev_fallback, i32 0, i32 1), ptr blockaddress(@trace_xfs_iunlink_map_prev_fallback, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !384
  %call42 = tail call i32 @__traceiter_xfs_iunlink_map_prev_fallback(ptr noundef null, ptr noundef %mp, i32 noundef %agno) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !385
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlink_map_prev_fallback, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iunlink_map_prev_fallback, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_iunlink_map_prev_fallback.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_iunlink_map_prev_fallback.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 3656, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
declare dso_local i32 @xfs_imap(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_iunlink_map_prev_fallback(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_stale_inode_buf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_binval(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_get_buf_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bit_waitqueue(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_bit_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inode_unpin_nowait(ptr noundef %ip, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_unpin_nowait, i32 0, i32 1), ptr blockaddress(@trace_xfs_inode_unpin_nowait, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !307

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !306

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !386
  %call42 = tail call i32 @__traceiter_xfs_inode_unpin_nowait(ptr noundef null, ptr noundef %ip, i32 noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !387
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !306

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_unpin_nowait, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_unpin_nowait, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inode_unpin_nowait.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inode_unpin_nowait.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 933, ptr noundef nonnull @.str.43) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !311
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
declare dso_local i32 @__traceiter_xfs_inode_unpin_nowait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_setup_iops(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert_tag(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ifork_verify_local_data(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ifork_verify_local_attr(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_to_disk(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iflush_fork(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_irele(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !108, !110, !112, !114, !116, !117, !119, !120, !122, !124, !126, !127, !129, !130, !132, !133, !135, !137, !138, !139, !140, !142, !144, !146, !148, !150, !152, !153, !155, !157, !159, !160, !162, !164, !166, !167, !169, !170, !172, !174, !175, !176, !178, !179, !181, !183, !185, !186, !188, !190, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !226, !228, !230, !232, !234, !236, !237, !239, !240, !242, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293}
!llvm.named.register.sp = !{!294}
!llvm.module.flags = !{!295, !296, !297, !298, !299, !300, !301, !302}
!llvm.ident = !{!303}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_inode.c", i32 175, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_inode.c", i32 177, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_inode.c", i32 179, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_inode.c", i32 181, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_inode.c", i32 305, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_inode.c", i32 334, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_inode.c", i32 335, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_inode.c", i32 390, i32 2}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_inode.c", i32 570, i32 2}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_inode.c", i32 571, i32 2}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_inode.c", i32 572, i32 2}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_inode.c", i32 573, i32 2}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_inode.c", i32 574, i32 2}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_inode.c", i32 575, i32 2}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_inode.c", i32 576, i32 2}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_inode.c", i32 816, i32 17}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_inode.c", i32 828, i32 2}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/xfs_inode.c", i32 854, i32 2}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/xfs_inode.c", i32 1056, i32 3}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/xfs_inode.c", i32 1225, i32 2}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/xfs_inode.c", i32 1365, i32 2}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/xfs_inode.c", i32 1366, i32 2}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/xfs_inode.c", i32 1368, i32 2}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/xfs/xfs_inode.c", i32 1369, i32 2}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/xfs_inode.c", i32 1370, i32 2}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_inode.c", i32 1371, i32 2}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/xfs/xfs_inode.c", i32 1372, i32 2}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../fs/xfs/xfs_inode.c", i32 1390, i32 3}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/xfs/xfs_inode.c", i32 1396, i32 3}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/xfs/xfs_inode.c", i32 1735, i32 3}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/xfs/xfs_inode.c", i32 1740, i32 2}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/xfs/xfs_inode.c", i32 1797, i32 2}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/xfs/xfs_inode.c", i32 1798, i32 2}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/xfs/xfs_inode.c", i32 2018, i32 2}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/xfs/xfs_inode.c", i32 2623, i32 2}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/xfs/xfs_inode.c", i32 2624, i32 2}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/xfs/xfs_inode.c", i32 2625, i32 2}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/xfs/xfs_inode.c", i32 2804, i32 3}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/xfs/xfs_inode.c", i32 2853, i32 3}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/xfs/xfs_inode.c", i32 3293, i32 3}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/xfs/xfs_inode.c", i32 3371, i32 3}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/xfs/xfs_inode.c", i32 3636, i32 3}
!85 = !{ptr @xfs_inode_cache, !86, !"xfs_inode_cache", i1 false, i1 false}
!86 = !{!"../fs/xfs/xfs_inode.c", i32 39, i32 20}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../fs/xfs/xfs_trace.h", i32 718, i32 1}
!89 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!91 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!94 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../fs/xfs/xfs_trace.h", i32 719, i32 1}
!97 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../fs/xfs/xfs_trace.h", i32 721, i32 1}
!100 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../fs/xfs/xfs_trace.h", i32 720, i32 1}
!103 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/xfs/xfs_inode.c", i32 423, i32 2}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/xfs/xfs_inode.c", i32 425, i32 2}
!108 = distinct !{null, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/xfs/xfs_inode.c", i32 428, i32 3}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/xfs/xfs_inode.c", i32 433, i32 3}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/xfs/xfs_inode.c", i32 438, i32 3}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../fs/xfs/xfs_trace.h", i32 963, i32 1}
!116 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../fs/xfs/xfs_trace.h", i32 964, i32 1}
!119 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!120 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!121 = !{!"../include/linux/mnt_idmapping.h", i32 212, i32 49}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../include/linux/mnt_idmapping.h", i32 231, i32 49}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../fs/xfs/xfs_trace.h", i32 962, i32 1}
!126 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../fs/xfs/xfs_trace.h", i32 1564, i32 1}
!129 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!130 = distinct !{null, !131, !"__already_done", i1 false, i1 false}
!131 = !{!"../fs/xfs/xfs_trace.h", i32 1565, i32 1}
!132 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!133 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/xfs/xfs_inode.c", i32 1528, i32 3}
!135 = !{ptr @.str.51, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/xfs/xfs_inode.c", i32 1595, i32 4}
!137 = !{ptr @xfs_inactive_ifree._rs, !136, !"_rs", i1 false, i1 false}
!138 = !{ptr @__func__.xfs_inactive_ifree, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/xfs/xfs_inode.c", i32 1636, i32 19}
!142 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/xfs/xfs_inode.c", i32 1655, i32 18}
!144 = !{ptr @xfs_iunlink_hash_params, !145, !"xfs_iunlink_hash_params", i1 false, i1 false}
!145 = !{!"../fs/xfs/xfs_inode.c", i32 1865, i32 39}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/xfs/xfs_inode.c", i32 2166, i32 2}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/xfs/xfs_inode.c", i32 2201, i32 3}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../fs/xfs/xfs_trace.h", i32 3654, i32 1}
!152 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!153 = !{ptr @.str.57, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/xfs/xfs_inode.c", i32 2104, i32 2}
!155 = !{ptr @__func__.xfs_iunlink_update_inode, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/xfs/xfs_inode.c", i32 2114, i32 47}
!157 = distinct !{null, !158, !"__already_done", i1 false, i1 false}
!158 = !{!"../fs/xfs/xfs_trace.h", i32 3606, i32 1}
!159 = distinct !{null, !158, !"__warned", i1 false, i1 false}
!160 = !{ptr @.str.58, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/xfs/xfs_inode.c", i32 1933, i32 6}
!162 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/xfs/xfs_inode.c", i32 1912, i32 3}
!164 = distinct !{null, !165, !"__warned", i1 false, i1 false}
!165 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!166 = !{ptr @.str.60, !165, !"<string literal>", i1 false, i1 false}
!167 = distinct !{null, !168, !"__warned", i1 false, i1 false}
!168 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!169 = !{ptr @.str.62, !168, !"<string literal>", i1 false, i1 false}
!170 = distinct !{null, !171, !"__warned", i1 false, i1 false}
!171 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!172 = distinct !{null, !173, !"__warned", i1 false, i1 false}
!173 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!174 = !{ptr @.str.64, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.65, !173, !"<string literal>", i1 false, i1 false}
!176 = distinct !{null, !177, !"__warned", i1 false, i1 false}
!177 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!178 = !{ptr @.str.66, !177, !"<string literal>", i1 false, i1 false}
!179 = distinct !{null, !180, !"__warned", i1 false, i1 false}
!180 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!181 = !{ptr @.str.67, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/xfs/xfs_inode.c", i32 2037, i32 2}
!183 = distinct !{null, !184, !"__already_done", i1 false, i1 false}
!184 = !{!"../fs/xfs/xfs_trace.h", i32 3580, i32 1}
!185 = distinct !{null, !184, !"__warned", i1 false, i1 false}
!186 = !{ptr @__func__.xfs_iunlink_remove, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/xfs/xfs_inode.c", i32 2368, i32 3}
!188 = distinct !{null, !189, !"__already_done", i1 false, i1 false}
!189 = !{!"../fs/xfs/xfs_trace.h", i32 3655, i32 1}
!190 = distinct !{null, !189, !"__warned", i1 false, i1 false}
!191 = distinct !{null, !192, !"__warned", i1 false, i1 false}
!192 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!193 = distinct !{null, !194, !"__warned", i1 false, i1 false}
!194 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!195 = distinct !{null, !196, !"__warned", i1 false, i1 false}
!196 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!197 = distinct !{null, !198, !"__warned", i1 false, i1 false}
!198 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!199 = distinct !{null, !200, !"__warned", i1 false, i1 false}
!200 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!201 = distinct !{null, !202, !"__warned", i1 false, i1 false}
!202 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!203 = distinct !{null, !204, !"__warned", i1 false, i1 false}
!204 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!205 = distinct !{null, !206, !"__warned", i1 false, i1 false}
!206 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!207 = distinct !{null, !208, !"__warned", i1 false, i1 false}
!208 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!209 = distinct !{null, !210, !"__warned", i1 false, i1 false}
!210 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!211 = !{ptr @.str.74, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/xfs/xfs_inode.c", i32 2276, i32 2}
!213 = distinct !{null, !214, !"__already_done", i1 false, i1 false}
!214 = !{!"../fs/xfs/xfs_inode.c", i32 2296, i32 3}
!215 = !{ptr @__func__.xfs_iunlink_map_prev, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/xfs/xfs_inode.c", i32 2322, i32 4}
!217 = !{ptr @.str.75, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/xfs/xfs_inode.c", i32 2235, i32 16}
!219 = !{ptr @__func__.xfs_iunlink_map_ino, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/xfs/xfs_inode.c", i32 2236, i32 5}
!221 = !{ptr @.str.76, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/xfs/xfs_inode.c", i32 2242, i32 16}
!223 = distinct !{null, !224, !"__already_done", i1 false, i1 false}
!224 = !{!"../fs/xfs/xfs_trace.h", i32 3656, i32 1}
!225 = distinct !{null, !224, !"__warned", i1 false, i1 false}
!226 = !{ptr @.str.77, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/xfs/xfs_inode.c", i32 2554, i32 4}
!228 = !{ptr @.str.78, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../fs/xfs/xfs_inode.c", i32 2484, i32 3}
!230 = !{ptr @.str.79, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../fs/xfs/xfs_inode.c", i32 2485, i32 3}
!232 = !{ptr @.str.80, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../fs/xfs/xfs_inode.c", i32 2688, i32 2}
!234 = distinct !{null, !235, !"__already_done", i1 false, i1 false}
!235 = !{!"../fs/xfs/xfs_trace.h", i32 933, i32 1}
!236 = distinct !{null, !235, !"__warned", i1 false, i1 false}
!237 = distinct !{null, !238, !"__already_done", i1 false, i1 false}
!238 = !{!"../fs/xfs/xfs_trace.h", i32 961, i32 1}
!239 = distinct !{null, !238, !"__warned", i1 false, i1 false}
!240 = distinct !{null, !241, !"__already_done", i1 false, i1 false}
!241 = !{!"../fs/xfs/xfs_trace.h", i32 967, i32 1}
!242 = distinct !{null, !241, !"__warned", i1 false, i1 false}
!243 = !{ptr @.str.81, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/xfs/xfs_inode.c", i32 2896, i32 2}
!245 = !{ptr @.str.82, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/xfs/xfs_inode.c", i32 476, i32 2}
!247 = distinct !{null, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/xfs/xfs_inode.c", i32 477, i32 2}
!249 = distinct !{null, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/xfs/xfs_inode.c", i32 479, i32 2}
!251 = distinct !{null, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/xfs/xfs_inode.c", i32 481, i32 2}
!253 = !{ptr @.str.86, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/xfs/xfs_inode.c", i32 483, i32 2}
!255 = distinct !{null, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../fs/xfs/xfs_inode.c", i32 487, i32 3}
!257 = distinct !{null, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../fs/xfs/xfs_inode.c", i32 489, i32 3}
!259 = !{ptr @.str.89, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../fs/xfs/xfs_inode.c", i32 495, i32 3}
!261 = !{ptr @.str.90, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/xfs/xfs_inode.c", i32 524, i32 3}
!263 = !{ptr @.str.91, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../fs/xfs/xfs_inode.c", i32 3452, i32 2}
!265 = !{ptr @.str.92, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../fs/xfs/xfs_inode.c", i32 3453, i32 2}
!267 = !{ptr @.str.93, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../fs/xfs/xfs_inode.c", i32 3455, i32 2}
!269 = !{ptr @.str.94, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../fs/xfs/xfs_inode.c", i32 3466, i32 6}
!271 = !{ptr @.str.95, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../fs/xfs/xfs_inode.c", i32 3469, i32 4}
!273 = !{ptr @__func__.xfs_iflush, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/xfs/xfs_inode.c", i32 3470, i32 4}
!275 = !{ptr @.str.96, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../fs/xfs/xfs_inode.c", i32 3474, i32 7}
!277 = !{ptr @.str.97, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../fs/xfs/xfs_inode.c", i32 3479, i32 5}
!279 = !{ptr @.str.98, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../fs/xfs/xfs_inode.c", i32 3484, i32 7}
!281 = !{ptr @.str.99, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../fs/xfs/xfs_inode.c", i32 3490, i32 5}
!283 = !{ptr @.str.100, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../fs/xfs/xfs_inode.c", i32 3495, i32 6}
!285 = !{ptr @.str.101, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../fs/xfs/xfs_inode.c", i32 3498, i32 4}
!287 = !{ptr @.str.102, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../fs/xfs/xfs_inode.c", i32 3505, i32 6}
!289 = !{ptr @.str.103, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../fs/xfs/xfs_inode.c", i32 3508, i32 4}
!291 = distinct !{null, !292, !"__already_done", i1 false, i1 false}
!292 = !{!"../fs/xfs/xfs_trace.h", i32 930, i32 1}
!293 = distinct !{null, !292, !"__warned", i1 false, i1 false}
!294 = !{!"sp"}
!295 = !{i32 1, !"wchar_size", i32 2}
!296 = !{i32 1, !"min_enum_size", i32 4}
!297 = !{i32 8, !"branch-target-enforcement", i32 0}
!298 = !{i32 8, !"sign-return-address", i32 0}
!299 = !{i32 8, !"sign-return-address-all", i32 0}
!300 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!301 = !{i32 7, !"uwtable", i32 1}
!302 = !{i32 7, !"frame-pointer", i32 2}
!303 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!304 = !{i8 0, i8 2}
!305 = !{!"branch_weights", i32 1, i32 2000}
!306 = !{!"branch_weights", i32 2000, i32 1}
!307 = !{i64 2148595209, i64 2148595214, i64 2148595227, i64 2148595271, i64 2148595305, i64 2148595326}
!308 = !{i64 2157831384}
!309 = !{i64 2157831617}
!310 = !{i64 2149591616}
!311 = !{i64 2149592652}
!312 = !{i64 2157848458}
!313 = !{i64 2157848705}
!314 = !{i64 2157887228}
!315 = !{i64 2157887465}
!316 = !{i64 2157869971}
!317 = !{i64 2157870218}
!318 = !{!"auto-init"}
!319 = !{i64 2158714630}
!320 = !{i64 2158714841}
!321 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!322 = !{i64 2155806942}
!323 = !{i64 2158730965}
!324 = !{i64 2158731176}
!325 = !{i64 2166557131}
!326 = !{i64 2158698423}
!327 = !{i64 2158698626}
!328 = !{i64 1175291, i64 1175352}
!329 = !{i64 1178023}
!330 = !{i64 1178308}
!331 = !{i64 2152613442}
!332 = !{i64 2152613284}
!333 = !{i64 2152613612}
!334 = !{i64 2150199426}
!335 = !{i64 2160022115}
!336 = !{i64 2160022356}
!337 = !{i64 2160043833}
!338 = !{i64 2160044070}
!339 = !{i64 2149583057}
!340 = !{i64 2149583323}
!341 = !{i64 2158682216}
!342 = !{i64 2158682427}
!343 = !{!"branch_weights", i32 -294967296, i32 6003000}
!344 = distinct !{!344, !345}
!345 = !{!"llvm.loop.peeled.count", i32 1}
!346 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!347 = !{i64 2158768785}
!348 = !{i64 2158769048}
!349 = !{i64 2158611378}
!350 = !{i64 2158611585}
!351 = !{i64 2152637884}
!352 = !{i64 2148398466}
!353 = !{i64 2165565052}
!354 = !{i64 2165565241}
!355 = !{i64 2166555891}
!356 = !{i64 2166556024}
!357 = !{i64 2166554597}
!358 = !{i64 2165548171}
!359 = !{i64 2165548450}
!360 = !{i64 2148770611, i64 2148770637, i64 2148770666, i64 2148770700, i64 2148770731, i64 2148770754}
!361 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!362 = !{i64 2149748179}
!363 = !{!"branch_weights", i32 2146410443, i32 1073205}
!364 = !{i64 2148779469, i64 2148779501, i64 2148779530, i64 2148779564, i64 2148779595, i64 2148779618}
!365 = !{i64 2148868574}
!366 = !{i64 2149748339}
!367 = !{i64 2149748616}
!368 = !{i64 2149748458}
!369 = !{i64 2149748821}
!370 = !{i64 2149749884, i64 2149750376, i64 2149749921, i64 2149749977, i64 2149750011, i64 2149750035, i64 2149750076, i64 2149750097, i64 2149750125, i64 2149750159}
!371 = !{i64 2148867461}
!372 = !{i64 2148777856, i64 2148777888, i64 2148777917, i64 2148777951, i64 2148777982, i64 2148778005}
!373 = !{i64 2149751279}
!374 = !{i64 2155370365}
!375 = !{i64 2155372664}
!376 = !{i64 2165529381}
!377 = !{i64 2165529662}
!378 = !{i64 2165581032}
!379 = !{i64 2165581235}
!380 = !{i64 2155444668}
!381 = !{i64 2148773076, i64 2148773102, i64 2148773131, i64 2148773165, i64 2148773196, i64 2148773219}
!382 = !{i64 2155377292}
!383 = !{i64 2155380726}
!384 = !{i64 2165602249}
!385 = !{i64 2165602486}
!386 = !{i64 2158661190}
!387 = !{i64 2158661423}
