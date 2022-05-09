; ModuleID = '/llk/IR_all_yes/fs/ocfs2/dlmglue.c_pt.bc'
source_filename = "../fs/ocfs2/dlmglue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ocfs2_lock_res_ops = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ocfs2_locking_protocol = type { %struct.ocfs2_protocol_version, ptr, ptr, ptr }
%struct.ocfs2_protocol_version = type { i8, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.2, ptr }
%union.anon.2 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.76 = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ocfs2_node_map = type { i16, [8 x i32] }
%struct.ocfs2_orphan_scan = type { %struct.mutex, ptr, %struct.ocfs2_lock_res, %struct.delayed_work, i64, i32, i32, %struct.atomic_t }
%struct.ocfs2_filecheck_sysfs_entry = type { %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ocfs2_dlm_debug = type { %struct.kref, i32, %struct.list_head }
%struct.ocfs2_dentry_lock = type { i32, i64, ptr, %struct.ocfs2_lock_res }
%struct.file = type { %union.anon.12, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.12 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ocfs2_mem_dqinfo = type { i32, i32, i32, i32, i32, %struct.list_head, ptr, %struct.ocfs2_lock_res, ptr, i32, i64, ptr, ptr, %struct.qtree_mem_dqinfo, %struct.delayed_work, ptr }
%struct.qtree_mem_dqinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.ocfs2_journal = type { i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.spinlock, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.work_struct }
%struct.ocfs2_mask_waiter = type { %struct.list_head, i32, %struct.completion, i32, i32, i64 }
%struct.ocfs2_file_private = type { ptr, %struct.mutex, %struct.ocfs2_lock_res }
%struct.ocfs2_meta_lvb = type { i8, i8, i16, i32, i32, i32, i64, i64, i64, i64, i16, i16, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ocfs2_dinode = type { [8 x i8], i32, i16, i16, i16, i16, i32, i32, i32, i64, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i64, %struct.ocfs2_block_check, i64, i64, i64, i16, [3 x i16], [2 x i64], %union.anon.79, %union.anon.83 }
%struct.ocfs2_block_check = type { i32, i16, i16 }
%union.anon.79 = type { i64 }
%union.anon.83 = type { %struct.ocfs2_super_block }
%struct.ocfs2_super_block = type { i16, i16, i16, i16, i16, i16, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i16, i16, i32, i64, [64 x i8], [16 x i8], %struct.ocfs2_cluster_info, i16, i16, [3 x i32], [15 x i64] }
%struct.ocfs2_cluster_info = type { [4 x i8], %union.anon.84, [16 x i8] }
%union.anon.84 = type { i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.68, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.47 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.68 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ocfs2_lock_holder = type { %struct.list_head, ptr, i32 }
%struct.ocfs2_orphan_scan_lvb = type { i8, [3 x i8], i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ocfs2_trim_fs_lvb = type { i8, i8, [2 x i8], i32, i64, i64, i64, i64 }
%struct.ocfs2_trim_fs_info = type { i8, i8, i32, i64, i64, i64, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.30, %struct.list_head, %struct.list_head, %union.anon.31 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.13, ptr }
%union.anon.13 = type { i64 }
%struct.lockref = type { %union.anon.15 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.spinlock, i32 }
%union.anon.30 = type { %struct.list_head }
%union.anon.31 = type { %struct.hlist_node }
%struct.ocfs2_qinfo_lvb = type { i8, [3 x i8], i32, i32, i32, i32, i32, i32 }
%struct.ocfs2_refcount_tree = type { %struct.rb_node, i64, i32, %struct.kref, %struct.rw_semaphore, %struct.ocfs2_lock_res, i32, %struct.spinlock, %struct.ocfs2_caching_info, %struct.mutex, ptr }
%struct.ocfs2_caching_info = type { ptr, i32, i32, i32, i32, %union.anon.88 }
%union.anon.88 = type { [2 x i64] }
%struct.ocfs2_dlm_seq_priv = type { ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@ocfs2_lock_res_init_once.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&res->l_lock\00", [19 x i8] zeroinitializer }, align 32
@ocfs2_lock_res_init_once.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&res->l_event\00", [18 x i8] zeroinitializer }, align 32
@ocfs2_inode_rw_lops = internal global { %struct.ocfs2_lock_res_ops, [40 x i8] } { %struct.ocfs2_lock_res_ops { ptr @ocfs2_get_inode_osb, ptr null, ptr null, ptr null, ptr null, i32 0 }, [40 x i8] zeroinitializer }, align 32
@ocfs2_inode_inode_lops = internal global { %struct.ocfs2_lock_res_ops, [40 x i8] } { %struct.ocfs2_lock_res_ops { ptr @ocfs2_get_inode_osb, ptr null, ptr @ocfs2_check_meta_downconvert, ptr @ocfs2_set_meta_lvb, ptr @ocfs2_data_convert_worker, i32 3 }, [40 x i8] zeroinitializer }, align 32
@ocfs2_inode_open_lops = internal global { %struct.ocfs2_lock_res_ops, [40 x i8] } { %struct.ocfs2_lock_res_ops { ptr @ocfs2_get_inode_osb, ptr null, ptr null, ptr null, ptr null, i32 0 }, [40 x i8] zeroinitializer }, align 32
@__func__.ocfs2_inode_lock_res_init = private unnamed_addr constant [26 x i8] c"ocfs2_inode_lock_res_init\00", align 1
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bug expression: 1\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"type: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%c%016llx\00", [22 x i8] zeroinitializer }, align 32
@ocfs2_dentry_lops = internal global { %struct.ocfs2_lock_res_ops, [40 x i8] } { %struct.ocfs2_lock_res_ops { ptr @ocfs2_get_dentry_osb, ptr @ocfs2_dentry_post_unlock, ptr null, ptr null, ptr @ocfs2_dentry_convert_worker, i32 0 }, [40 x i8] zeroinitializer }, align 32
@ocfs2_trim_fs_lops = internal global { %struct.ocfs2_lock_res_ops, [40 x i8] } { %struct.ocfs2_lock_res_ops { ptr null, ptr null, ptr null, ptr null, ptr null, i32 3 }, [40 x i8] zeroinitializer }, align 32
@ocfs2_flock_lops = internal global { %struct.ocfs2_lock_res_ops, [40 x i8] } { %struct.ocfs2_lock_res_ops { ptr @ocfs2_get_file_osb, ptr null, ptr null, ptr null, ptr null, i32 0 }, [40 x i8] zeroinitializer }, align 32
@ocfs2_qinfo_lops = internal global { %struct.ocfs2_lock_res_ops, [40 x i8] } { %struct.ocfs2_lock_res_ops { ptr @ocfs2_get_qinfo_osb, ptr null, ptr null, ptr @ocfs2_set_qinfo_lvb, ptr null, i32 3 }, [40 x i8] zeroinitializer }, align 32
@ocfs2_refcount_block_lops = internal global { %struct.ocfs2_lock_res_ops, [40 x i8] } { %struct.ocfs2_lock_res_ops { ptr null, ptr null, ptr @ocfs2_check_refcount_downconvert, ptr null, ptr @ocfs2_refcount_convert_worker, i32 0 }, [40 x i8] zeroinitializer }, align 32
@__func__.ocfs2_lock_res_free = private unnamed_addr constant [20 x i8] c"ocfs2_lock_res_free\00", align 1
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"bug expression: !list_empty(&res->l_blocked_list)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Lockres %s is on the blocked list\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"bug expression: !list_empty(&res->l_mask_waiters)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Lockres %s has mask waiters pending\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"bug expression: spin_is_locked(&res->l_lock)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Lockres %s is locked\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bug expression: res->l_ro_holders\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Lockres %s has %u ro holders\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bug expression: res->l_ex_holders\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Lockres %s has %u ex holders\0A\00", [34 x i8] zeroinitializer }, align 32
@lproto = internal global { %struct.ocfs2_locking_protocol, [16 x i8] } { %struct.ocfs2_locking_protocol { %struct.ocfs2_protocol_version { i8 1, i8 0 }, ptr @ocfs2_locking_ast, ptr @ocfs2_blocking_ast, ptr @ocfs2_unlock_ast }, [16 x i8] zeroinitializer }, align 32
@__func__.ocfs2_create_new_inode_locks = private unnamed_addr constant [29 x i8] c"ocfs2_create_new_inode_locks\00", align 1
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Inode %llu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.ocfs2_rw_lock = private unnamed_addr constant [14 x i8] c"ocfs2_rw_lock\00", align 1
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"inode %llu take %s RW lock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EXMODE\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PRMODE\00", [25 x i8] zeroinitializer }, align 32
@__func__.ocfs2_try_rw_lock = private unnamed_addr constant [18 x i8] c"ocfs2_try_rw_lock\00", align 1
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"inode %llu try to take %s RW lock\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.ocfs2_rw_unlock = private unnamed_addr constant [16 x i8] c"ocfs2_rw_unlock\00", align 1
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"inode %llu drop %s RW lock\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.ocfs2_open_lock = private unnamed_addr constant [16 x i8] c"ocfs2_open_lock\00", align 1
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"inode %llu take PRMODE open lock\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.ocfs2_try_open_lock = private unnamed_addr constant [20 x i8] c"ocfs2_try_open_lock\00", align 1
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"inode %llu try to take %s open lock\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.ocfs2_open_unlock = private unnamed_addr constant [18 x i8] c"ocfs2_open_unlock\00", align 1
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"inode %llu drop open lock\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.ocfs2_file_lock = private unnamed_addr constant [16 x i8] c"ocfs2_file_lock\00", align 1
@.str.26 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"File lock \22%s\22 has busy or locked state: flags: 0x%lx, level: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DLM error %d while calling %s on resource %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ocfs2_dlm_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"DLM error %d while calling %s on resource %.*s%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Lock: \22%s\22 ex: %d, trylock: %d, returns: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.ocfs2_file_unlock = private unnamed_addr constant [18 x i8] c"ocfs2_file_unlock\00", align 1
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unlock: \22%s\22 flags: 0x%lx, level: %d, act: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.ocfs2_inode_lock_full_nested = private unnamed_addr constant [29 x i8] c"ocfs2_inode_lock_full_nested\00", align 1
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"inode %llu, take %s META lock\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.ocfs2_inode_lock_atime = private unnamed_addr constant [23 x i8] c"ocfs2_inode_lock_atime\00", align 1
@__func__.ocfs2_inode_unlock = private unnamed_addr constant [19 x i8] c"ocfs2_inode_unlock\00", align 1
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"inode %llu drop %s META lock\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.ocfs2_inode_lock_tracker = private unnamed_addr constant [25 x i8] c"ocfs2_inode_lock_tracker\00", align 1
@.str.34 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Recursive locking is not permitted to upgrade to EX level from PR level.\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.ocfs2_super_lock = private unnamed_addr constant [17 x i8] c"ocfs2_super_lock\00", align 1
@__func__.ocfs2_rename_lock = private unnamed_addr constant [18 x i8] c"ocfs2_rename_lock\00", align 1
@__func__.ocfs2_nfs_sync_lock = private unnamed_addr constant [20 x i8] c"ocfs2_nfs_sync_lock\00", align 1
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lock on nfs sync lock failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.ocfs2_trim_fs_lock = private unnamed_addr constant [19 x i8] c"ocfs2_trim_fs_lock\00", align 1
@__func__.ocfs2_dentry_lock = private unnamed_addr constant [18 x i8] c"ocfs2_dentry_lock\00", align 1
@__func__.ocfs2_new_dlm_debug = private unnamed_addr constant [20 x i8] c"ocfs2_new_dlm_debug\00", align 1
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ocfs2dc-%s\00", [21 x i8] zeroinitializer }, align 32
@__func__.ocfs2_dlm_init = private unnamed_addr constant [15 x i8] c"ocfs2_dlm_init\00", align 1
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"could not find this host's node number\0A\00", [56 x i8] zeroinitializer }, align 32
@ocfs2_mark_lockres_freeing.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/ocfs2/dlmglue.c\00", [45 x i8] zeroinitializer }, align 32
@__func__.ocfs2_mark_lockres_freeing = private unnamed_addr constant [27 x i8] c"ocfs2_mark_lockres_freeing\00", align 1
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Waiting on lockres %s\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.ocfs2_qinfo_lock = private unnamed_addr constant [17 x i8] c"ocfs2_qinfo_lock\00", align 1
@__func__.ocfs2_refcount_lock = private unnamed_addr constant [20 x i8] c"ocfs2_refcount_lock\00", align 1
@trans_inc_lock = external dso_local global %struct.spinlock, align 4
@__PRETTY_FUNCTION__.__ocfs2_stuff_meta_lvb = private unnamed_addr constant [44 x i8] c"void __ocfs2_stuff_meta_lvb(struct inode *)\00", align 1
@__func__.ocfs2_dump_meta_lvb_info = private unnamed_addr constant [25 x i8] c"ocfs2_dump_meta_lvb_info\00", align 1
@.str.40 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"LVB information for %s (called from %s:%u):\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"version: %u, clusters: %u, generation: 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"size: %llu, uid %u, gid %u, mode 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"nlink %u, atime_packed 0x%llx, ctime_packed 0x%llx, mtime_packed 0x%llx iattr 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.ocfs2_data_convert_worker = private unnamed_addr constant [26 x i8] c"ocfs2_data_convert_worker\00", align 1
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"generation: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Could not sync inode %llu for downconvert!\00", [53 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%c%s%016llx%08x\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"000000\00", [25 x i8] zeroinitializer }, align 32
@__func__.ocfs2_build_lock_name = private unnamed_addr constant [22 x i8] c"ocfs2_build_lock_name\00", align 1
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"built lock resource with name: %s\0A\00", [61 x i8] zeroinitializer }, align 32
@ocfs2_lock_type_strings = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], [44 x i8] zeroinitializer }, align 32
@lockdep_keys = internal global { [13 x %struct.lock_class_key], [56 x i8] } zeroinitializer, align 32
@__func__.ocfs2_add_lockres_tracking = private unnamed_addr constant [27 x i8] c"ocfs2_add_lockres_tracking\00", align 1
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Add tracking for lockres %s\0A\00", [35 x i8] zeroinitializer }, align 32
@ocfs2_dlm_tracking_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.50, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ocfs2_dlm_tracking_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Meta\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Data\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Super\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Rename\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Write/Read\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Dentry\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Open\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Flock\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Quota\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NFSSync\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OrphanScan\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Refcount\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TrimFs\00", [25 x i8] zeroinitializer }, align 32
@dentry_attach_lock = external dso_local global %struct.spinlock, align 4
@__func__.ocfs2_dentry_convert_worker = private unnamed_addr constant [28 x i8] c"ocfs2_dentry_convert_worker\00", align 1
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"extra_ref = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"d_delete(%pd);\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.ocfs2_locking_ast = private unnamed_addr constant [18 x i8] c"ocfs2_locking_ast\00", align 1
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"lockres %s: lksb status value of %d!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"AST fired for lockres %s, action %d, unlock %d, level %d => %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"lockres %s: AST fired with invalid action: %u, flags 0x%lx, unlock: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.ocfs2_blocking_ast = private unnamed_addr constant [19 x i8] c"ocfs2_blocking_ast\00", align 1
@.str.69 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"BAST fired for lockres %s, blocking %d, level %d, type %s\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.ocfs2_generic_handle_bast = private unnamed_addr constant [26 x i8] c"ocfs2_generic_handle_bast\00", align 1
@.str.70 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"lockres %s, block %d, level %d, l_block %d, dwn %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"needs_downconvert = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.ocfs2_schedule_blocked_lock = private unnamed_addr constant [28 x i8] c"ocfs2_schedule_blocked_lock\00", align 1
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"lockres %s won't be scheduled: flags 0x%lx\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.ocfs2_unlock_ast = private unnamed_addr constant [17 x i8] c"ocfs2_unlock_ast\00", align 1
@.str.73 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UNLOCK AST fired for lockres %s, action = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Dlm passes error %d for lock %s, unlock_action %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cancel convert success for %s\0A\00", [33 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__func__.ocfs2_lock_create = private unnamed_addr constant [18 x i8] c"ocfs2_lock_create\00", align 1
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lock %s, level = %d, flags = %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"lock %s, return from ocfs2_dlm_lock\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.ocfs2_flock_handle_signal = private unnamed_addr constant [26 x i8] c"ocfs2_flock_handle_signal\00", align 1
@.str.79 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Cancel returning %d. flags: 0x%lx, level: %d, act: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.ocfs2_prepare_cancel_convert = private unnamed_addr constant [29 x i8] c"ocfs2_prepare_cancel_convert\00", align 1
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lockres %s, skip convert\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"bug expression: !(lockres->l_flags & OCFS2_LOCK_BUSY)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lock %s, invalid flags: 0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lockres %s\0A\00", [20 x i8] zeroinitializer }, align 32
@__func__.ocfs2_cancel_convert = private unnamed_addr constant [21 x i8] c"ocfs2_cancel_convert\00", align 1
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ocfs2_dlm_unlock\00", [47 x i8] zeroinitializer }, align 32
@__func__.__ocfs2_cluster_lock = private unnamed_addr constant [21 x i8] c"__ocfs2_cluster_lock\00", align 1
@.str.85 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"bug expression: lockres->l_flags & OCFS2_LOCK_FREEING\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Cluster lock called on freeing lockres %s! flags 0x%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"lockres %s has action %u pending\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"lockres %s, convert from %d to %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"lock %s, successful return from ocfs2_dlm_lock\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.ocfs2_inode_lock_update = private unnamed_addr constant [24 x i8] c"ocfs2_inode_lock_update\00", align 1
@.str.90 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Orphaned inode %llu was deleted while we were waiting on a lock. ip_flags = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Trusting LVB on inode %llu\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"bug expression: inode->i_generation != le32_to_cpu(fe->i_generation)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Invalid dinode %llu disk generation: %u inode->i_generation: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"bug expression: le64_to_cpu(fe->i_dtime) || !(fe->i_flags & cpu_to_le32(OCFS2_VALID_FL))\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Stale dinode %llu dtime: %llu flags: 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@__PRETTY_FUNCTION__.ocfs2_refresh_inode_from_lvb = private unnamed_addr constant [49 x i8] c"int ocfs2_refresh_inode_from_lvb(struct inode *)\00", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.ocfs2_assign_bh = private unnamed_addr constant [16 x i8] c"ocfs2_assign_bh\00", align 1
@__func__.ocfs2_should_refresh_lock_res = private unnamed_addr constant [30 x i8] c"ocfs2_should_refresh_lock_res\00", align 1
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"status %d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"locking_state\00", [18 x i8] zeroinitializer }, align 32
@ocfs2_dlm_debug_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ocfs2_dlm_debug_open, ptr null, ptr @ocfs2_dlm_debug_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"locking_filter\00", [17 x i8] zeroinitializer }, align 32
@ocfs2_dlm_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ocfs2_dlm_seq_start, ptr @ocfs2_dlm_seq_stop, ptr @ocfs2_dlm_seq_next, ptr @ocfs2_dlm_seq_show }, [16 x i8] zeroinitializer }, align 32
@__func__.ocfs2_dlm_debug_open = private unnamed_addr constant [21 x i8] c"ocfs2_dlm_debug_open\00", align 1
@__func__.ocfs2_dlm_next_res = private unnamed_addr constant [19 x i8] c"ocfs2_dlm_next_res\00", align 1
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"End of list found, %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\09\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%.*s%08x\09\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.*s\09\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%d\090x%lx\090x%x\090x%x\09%u\09%u\09%d\09%d\09\00", [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%u\09%u\09%u\09%u\09%llu\09%llu\09%u\09%u\09%u\09%llu\09%llu\09%llu\09\00", [49 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@ocfs2_super_lops = internal global { %struct.ocfs2_lock_res_ops, [40 x i8] } { %struct.ocfs2_lock_res_ops { ptr null, ptr null, ptr null, ptr null, ptr null, i32 1 }, [40 x i8] zeroinitializer }, align 32
@ocfs2_rename_lops = internal global { %struct.ocfs2_lock_res_ops, [40 x i8] } zeroinitializer, align 32
@ocfs2_nfs_sync_lock_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&osb->nfs_sync_rwlock\00", [42 x i8] zeroinitializer }, align 32
@ocfs2_nfs_sync_lops = internal global { %struct.ocfs2_lock_res_ops, [40 x i8] } zeroinitializer, align 32
@ocfs2_orphan_scan_lops = internal global { %struct.ocfs2_lock_res_ops, [40 x i8] } { %struct.ocfs2_lock_res_ops { ptr null, ptr null, ptr null, ptr null, ptr null, i32 3 }, [40 x i8] zeroinitializer }, align 32
@__func__.ocfs2_drop_lock = private unnamed_addr constant [16 x i8] c"ocfs2_drop_lock\00", align 1
@.str.108 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"bug expression: !(lockres->l_flags & OCFS2_LOCK_FREEING)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lockres %s, flags 0x%lx\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"waiting on busy lock \22%s\22: flags = %lx, action = %u, unlock_action = %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"destroying busy lock: \22%s\22\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"destroying blocked lock: \22%s\22\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lock %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lockres flags: %lu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"lock %s, successful return from ocfs2_dlm_unlock\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.ocfs2_prepare_downconvert = private unnamed_addr constant [26 x i8] c"ocfs2_prepare_downconvert\00", align 1
@.str.116 = internal constant { [119 x i8], [41 x i8] } { [119 x i8] c"lockres %s, lvl %d <= %d, blcklst %d, mask %d, type %d, flags 0x%lx, hold %d %d, act %d %d, req %d, block %d, pgen %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"lockres %s, level %d => %d, blocking %d\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.ocfs2_downconvert_lock = private unnamed_addr constant [23 x i8] c"ocfs2_downconvert_lock\00", align 1
@.str.118 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lockres %s, level %d => %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"o2cb\00", [27 x i8] zeroinitializer }, align 32
@__func__.ocfs2_refresh_qinfo = private unnamed_addr constant [20 x i8] c"ocfs2_refresh_qinfo\00", align 1
@__func__.ocfs2_process_blocked_lock = private unnamed_addr constant [27 x i8] c"ocfs2_process_blocked_lock\00", align 1
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lockres %s blocked\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lockres %s, requeue = %s.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@__func__.ocfs2_unblock_lock = private unnamed_addr constant [19 x i8] c"ocfs2_unblock_lock\00", align 1
@.str.124 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lockres %s, ReQ: Pending\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lockres %s, Aborting dc\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"lockres %s, ReQ: EX/PR Holders %u,%u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lockres %s, ReQ: EX Holders %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"lockres %s, ReQ: Lock Refreshing\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lockres %s, ReQ: Checkpointing\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lockres %s, UNBLOCK_STOP_POST\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"lockres %s, block=%d:%d, level=%d:%d, Recheck\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"lockres %s, ReQ: Downconvert busy\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.ocfs2_downconvert_thread = private unnamed_addr constant [25 x i8] c"ocfs2_downconvert_thread\00", align 1
@.str.133 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"downconvert_thread: awoken\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 6]
@__sancov_gen_cov_switch_values.134 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.135 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.136 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.137 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.140 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.141 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.142 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.144 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.145 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.146 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.147 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.148 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.149 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292, i64 4294967294]
@__sancov_gen_cov_switch_values.150 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.152 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.154 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.155 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.156 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292, i64 4294967294]
@__sancov_gen_cov_switch_values.157 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292, i64 4294967294]
@__sancov_gen_cov_switch_values.158 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.159 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.160 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.161 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.162 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.163 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.164 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.165 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.166 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.167 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.169 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.170 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.171 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.172 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.173 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.174 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 6]
@__sancov_gen_cov_switch_values.175 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 6]
@__sancov_gen_cov_switch_values.176 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 6]
@__sancov_gen_cov_switch_values.177 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 6]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.181 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 544, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 545, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c"ocfs2_inode_rw_lops\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 224, i32 34 }
@___asan_gen_.198 = private unnamed_addr constant [23 x i8] c"ocfs2_inode_inode_lops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 229, i32 34 }
@___asan_gen_.201 = private unnamed_addr constant [22 x i8] c"ocfs2_inode_open_lops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 264, i32 34 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 569, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 643, i32 10 }
@___asan_gen_.213 = private unnamed_addr constant [18 x i8] c"ocfs2_dentry_lops\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 257, i32 34 }
@___asan_gen_.216 = private unnamed_addr constant [19 x i8] c"ocfs2_trim_fs_lops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 249, i32 34 }
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"ocfs2_flock_lops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 269, i32 34 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"ocfs2_qinfo_lops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 274, i32 34 }
@___asan_gen_.225 = private unnamed_addr constant [26 x i8] c"ocfs2_refcount_block_lops\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 280, i32 34 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 773, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 776, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 779, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 782, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 785, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [7 x i8] c"lproto\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1272, i32 38 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1729, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1741, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1769, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1793, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1814, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1831, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1853, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1890, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1987, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 2029, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 2064, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 2087, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 2435, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 2621, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 2706, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 2882, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3337, i32 17 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3362, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3543, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3552, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 118, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 120, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 123, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 127, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3953, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3970, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 395, i32 46 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 396, i32 38 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 401, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [24 x i8] c"ocfs2_lock_type_strings\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 91, i32 14 }
@___asan_gen_.363 = private unnamed_addr constant [13 x i8] c"lockdep_keys\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 85, i32 30 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 409, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [24 x i8] c"ocfs2_dlm_tracking_lock\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 404, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 92, i32 27 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 93, i32 27 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 94, i32 28 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 95, i32 29 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 98, i32 25 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 99, i32 29 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 100, i32 27 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 101, i32 28 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 102, i32 28 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 103, i32 31 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 104, i32 34 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 105, i32 31 }
@___asan_gen_.412 = private unnamed_addr constant [27 x i8] c"../fs/ocfs2/ocfs2_lockid.h\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 106, i32 30 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 4099, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 4120, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1161, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1167, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1183, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1122, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 997, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1003, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 4359, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1215, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1220, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1229, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 87, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1317, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1345, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1943, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3695, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3706, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3710, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3723, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1505, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1558, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1577, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1599, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 2326, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 2345, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 2372, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 2379, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 271, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 2291, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3308, i32 22 }
@___asan_gen_.522 = private unnamed_addr constant [21 x i8] c"ocfs2_dlm_debug_fops\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3297, i32 37 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3311, i32 21 }
@___asan_gen_.528 = private unnamed_addr constant [18 x i8] c"ocfs2_dlm_seq_ops\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3257, i32 36 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3063, i32 4 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3168, i32 16 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3171, i32 17 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3175, i32 17 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3177, i32 16 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3227, i32 16 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3253, i32 16 }
@___asan_gen_.552 = private unnamed_addr constant [17 x i8] c"ocfs2_super_lops\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 237, i32 34 }
@___asan_gen_.555 = private unnamed_addr constant [18 x i8] c"ocfs2_rename_lops\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 241, i32 34 }
@___asan_gen_.558 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 694, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant [20 x i8] c"ocfs2_nfs_sync_lops\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 245, i32 34 }
@___asan_gen_.567 = private unnamed_addr constant [23 x i8] c"ocfs2_orphan_scan_lops\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 253, i32 34 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3428, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3433, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3456, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3459, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3477, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3482, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3486, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3621, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3633, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3651, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant [20 x i8] c"../fs/ocfs2/ocfs2.h\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 653, i32 37 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 4316, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 4339, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3782, i32 4 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3817, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3828, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3838, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3849, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3858, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3880, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3889, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 3922, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.646 = private constant [22 x i8] c"../fs/ocfs2/dlmglue.c\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 4449, i32 3 }
@llvm.compiler.used = appending global [155 x ptr] [ptr @ocfs2_lock_res_init_once.__key, ptr @.str, ptr @ocfs2_lock_res_init_once.__key.1, ptr @.str.2, ptr @ocfs2_inode_rw_lops, ptr @ocfs2_inode_inode_lops, ptr @ocfs2_inode_open_lops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ocfs2_dentry_lops, ptr @ocfs2_trim_fs_lops, ptr @ocfs2_flock_lops, ptr @ocfs2_qinfo_lops, ptr @ocfs2_refcount_block_lops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @lproto, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @ocfs2_lock_type_strings, ptr @lockdep_keys, ptr @.str.49, ptr @ocfs2_dlm_tracking_lock, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @init_completion.__key, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @ocfs2_dlm_debug_fops, ptr @.str.99, ptr @ocfs2_dlm_seq_ops, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @ocfs2_super_lops, ptr @ocfs2_rename_lops, ptr @ocfs2_nfs_sync_lock_init.__key, ptr @.str.107, ptr @ocfs2_nfs_sync_lops, ptr @ocfs2_orphan_scan_lops, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133], section "llvm.metadata"
@0 = internal global [155 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_lock_res_init_once.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_lock_res_init_once.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_inode_rw_lops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_inode_inode_lops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_inode_open_lops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_dentry_lops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_trim_fs_lops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_flock_lops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_qinfo_lops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_refcount_block_lops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lproto to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_lock_type_strings to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockdep_keys to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_dlm_tracking_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_dlm_debug_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_dlm_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_super_lops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_rename_lops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_nfs_sync_lock_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_nfs_sync_lops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_orphan_scan_lops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_lock_res_init_once(ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %res, i32 0, i32 392)
  %l_lock = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %l_lock, ptr noundef nonnull @.str, ptr noundef nonnull @ocfs2_lock_res_init_once.__key, i16 noundef signext 3) #15
  %l_event = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 18
  tail call void @__init_waitqueue_head(ptr noundef %l_event, ptr noundef nonnull @.str.2, ptr noundef nonnull @ocfs2_lock_res_init_once.__key.1) #15
  %l_blocked_list = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 2
  %1 = ptrtoint ptr %l_blocked_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %l_blocked_list, ptr %l_blocked_list, align 4
  %prev.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %l_blocked_list, ptr %prev.i, align 4
  %l_mask_waiters = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 3
  %3 = ptrtoint ptr %l_mask_waiters to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %l_mask_waiters, ptr %l_mask_waiters, align 4
  %prev.i8 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %l_mask_waiters, ptr %prev.i8, align 4
  %l_holders = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 4
  %5 = ptrtoint ptr %l_holders to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %l_holders, ptr %l_holders, align 4
  %prev.i9 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %l_holders, ptr %prev.i9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_inode_lock_res_init(ptr noundef %res, i32 noundef %type, i32 noundef %generation, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m5 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.body3 [
    i32 4, label %sw.bb4.i.i
    i32 0, label %entry.ocfs2_lock_type_char.exit.i_crit_edge
    i32 6, label %sw.bb6.i.i
  ]

entry.ocfs2_lock_type_char.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_lock_type_char.exit.i

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %1 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1152921504606849024, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_inode_lock_res_init, i32 noundef 569, ptr noundef nonnull @.str.3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m5) #15
  %2 = ptrtoint ptr %_m5 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606849024, ptr %_m5, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m5, ptr noundef nonnull @__func__.ocfs2_inode_lock_res_init, i32 noundef 569, ptr noundef nonnull @.str.4, i32 noundef %type) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m5) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 569, 0\0A.popsection", ""() #15, !srcloc !375
  unreachable

sw.bb4.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_lock_type_char.exit.i

sw.bb6.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_lock_type_char.exit.i

ocfs2_lock_type_char.exit.i:                      ; preds = %sw.bb6.i.i, %sw.bb4.i.i, %entry.ocfs2_lock_type_char.exit.i_crit_edge
  %ops.029 = phi ptr [ @ocfs2_inode_open_lops, %sw.bb6.i.i ], [ @ocfs2_inode_rw_lops, %sw.bb4.i.i ], [ @ocfs2_inode_inode_lops, %entry.ocfs2_lock_type_char.exit.i_crit_edge ]
  %c.0.i.i = phi i32 [ 79, %sw.bb6.i.i ], [ 87, %sw.bb4.i.i ], [ 77, %entry.ocfs2_lock_type_char.exit.i_crit_edge ]
  %.in = getelementptr i8, ptr %inode, i32 -1608
  %3 = ptrtoint ptr %.in to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %.in, align 8
  %l_name30 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 6
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %l_name30, i32 noundef 32, ptr noundef nonnull @.str.46, i32 noundef %c.0.i.i, ptr noundef nonnull @.str.47, i64 noundef %4, i32 noundef %generation) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call8.i)
  %cmp10.not.i = icmp eq i32 %call8.i, 31
  br i1 %cmp10.not.i, label %ocfs2_build_lock_name.exit, label %do.body19.i, !prof !376

do.body19.i:                                      ; preds = %ocfs2_lock_type_char.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #15, !srcloc !377
  unreachable

ocfs2_build_lock_name.exit:                       ; preds = %ocfs2_lock_type_char.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #15
  %5 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 2048, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_build_lock_name, i32 noundef 401, ptr noundef nonnull @.str.48, ptr noundef %l_name30) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #15
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info, align 16
  call fastcc void @ocfs2_lock_res_init_common(ptr noundef %9, ptr noundef %res, i32 noundef %type, ptr noundef nonnull %ops.029, ptr noundef %inode)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_lock_res_init_common(ptr nocapture noundef readonly %osb, ptr noundef %res, i32 noundef %type, ptr noundef %ops, ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %type to i8
  %l_type = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 12
  %0 = ptrtoint ptr %l_type to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %l_type, align 1
  %l_ops = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 1
  %1 = ptrtoint ptr %l_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ops, ptr %l_ops, align 4
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %res, align 8
  %l_level = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 9
  %3 = ptrtoint ptr %l_level to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %l_level, align 4
  %l_requested = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 10
  %4 = ptrtoint ptr %l_requested to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %l_requested, align 1
  %l_blocking = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 11
  %5 = ptrtoint ptr %l_blocking to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %l_blocking, align 2
  %l_action = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 13
  %6 = ptrtoint ptr %l_action to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %l_action, align 8
  %l_unlock_action = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 14
  %7 = ptrtoint ptr %l_unlock_action to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %l_unlock_action, align 1
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 5
  %8 = ptrtoint ptr %l_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 64, ptr %l_flags, align 8
  %osb_dlm_debug = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 72
  %9 = ptrtoint ptr %osb_dlm_debug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %osb_dlm_debug, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #15
  %11 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 2048, ptr %_m.i, align 8
  %l_name.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_add_lockres_tracking, i32 noundef 409, ptr noundef nonnull @.str.49, ptr noundef %l_name.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #15
  call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_dlm_tracking_lock) #15
  %l_debug_list.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 19
  %d_lockres_tracking.i = getelementptr inbounds %struct.ocfs2_dlm_debug, ptr %10, i32 0, i32 2
  %12 = ptrtoint ptr %d_lockres_tracking.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_lockres_tracking.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %l_debug_list.i, ptr noundef %d_lockres_tracking.i, ptr noundef %13) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.ocfs2_add_lockres_tracking.exit_crit_edge

entry.ocfs2_add_lockres_tracking.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_add_lockres_tracking.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %l_debug_list.i, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %l_debug_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %l_debug_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %d_lockres_tracking.i, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %d_lockres_tracking.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %l_debug_list.i, ptr %d_lockres_tracking.i, align 4
  br label %ocfs2_add_lockres_tracking.exit

ocfs2_add_lockres_tracking.exit:                  ; preds = %if.end.i.i.i, %entry.ocfs2_add_lockres_tracking.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_dlm_tracking_lock) #15
  %l_lock_wait.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 22
  %l_lock_prmode.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 20
  %18 = call ptr @memset(ptr %l_lock_prmode.i, i32 0, i32 36)
  %19 = call ptr @memset(ptr %l_lock_wait.i, i32 0, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %cmp.not = icmp eq i32 %type, 6
  %l_lockdep_map3 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 24
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %ocfs2_add_lockres_tracking.exit
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr [13 x ptr], ptr @ocfs2_lock_type_strings, i32 0, i32 %type
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [13 x %struct.lock_class_key], ptr @lockdep_keys, i32 0, i32 %type
  call void @lockdep_init_map_type(ptr noundef %l_lockdep_map3, ptr noundef %21, ptr noundef %arrayidx2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %if.end

if.else:                                          ; preds = %ocfs2_add_lockres_tracking.exit
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %l_lockdep_map3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %l_lockdep_map3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_dentry_lock_res_init(ptr noundef %dl, i64 noundef %parent, ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr.i, align 8
  %dl_lockres = getelementptr inbounds %struct.ocfs2_dentry_lock, ptr %dl, i32 0, i32 3
  %2 = call ptr @memset(ptr %dl_lockres, i32 0, i32 392)
  %l_lock.i = getelementptr inbounds %struct.ocfs2_dentry_lock, ptr %dl, i32 0, i32 3, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %l_lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @ocfs2_lock_res_init_once.__key, i16 noundef signext 3) #15
  %l_event.i = getelementptr inbounds %struct.ocfs2_dentry_lock, ptr %dl, i32 0, i32 3, i32 18
  tail call void @__init_waitqueue_head(ptr noundef %l_event.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @ocfs2_lock_res_init_once.__key.1) #15
  %l_blocked_list.i = getelementptr inbounds %struct.ocfs2_dentry_lock, ptr %dl, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %l_blocked_list.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %l_blocked_list.i, ptr %l_blocked_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ocfs2_dentry_lock, ptr %dl, i32 0, i32 3, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %l_blocked_list.i, ptr %prev.i.i, align 4
  %l_mask_waiters.i = getelementptr inbounds %struct.ocfs2_dentry_lock, ptr %dl, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %l_mask_waiters.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %l_mask_waiters.i, ptr %l_mask_waiters.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.ocfs2_dentry_lock, ptr %dl, i32 0, i32 3, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %l_mask_waiters.i, ptr %prev.i8.i, align 4
  %l_holders.i = getelementptr inbounds %struct.ocfs2_dentry_lock, ptr %dl, i32 0, i32 3, i32 4
  %7 = ptrtoint ptr %l_holders.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %l_holders.i, ptr %l_holders.i, align 4
  %prev.i9.i = getelementptr inbounds %struct.ocfs2_dentry_lock, ptr %dl, i32 0, i32 3, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %l_holders.i, ptr %prev.i9.i, align 4
  %l_name = getelementptr inbounds %struct.ocfs2_dentry_lock, ptr %dl, i32 0, i32 3, i32 6
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %l_name, i32 noundef 18, ptr noundef nonnull @.str.5, i32 noundef 78, i64 noundef %parent)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 17
  br i1 %cmp.not, label %do.end10, label %do.body5, !prof !376

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 647, 0\0A.popsection", ""() #15, !srcloc !378
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr %struct.ocfs2_dentry_lock, ptr %dl, i32 0, i32 3, i32 6, i32 18
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %1, ptr %arrayidx, align 2
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info, align 16
  tail call fastcc void @ocfs2_lock_res_init_common(ptr noundef %13, ptr noundef %dl_lockres, i32 noundef 5, ptr noundef nonnull @ocfs2_dentry_lops, ptr noundef %dl)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_trim_fs_lock_res_init(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_trim_fs_lockres = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 70
  %obs_trim_fs_mutex = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 71
  tail call void @mutex_lock_nested(ptr noundef %obs_trim_fs_mutex, i32 noundef 0) #15
  %0 = call ptr @memset(ptr %osb_trim_fs_lockres, i32 0, i32 392)
  %l_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 70, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %l_lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @ocfs2_lock_res_init_once.__key, i16 noundef signext 3) #15
  %l_event.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 70, i32 18
  tail call void @__init_waitqueue_head(ptr noundef %l_event.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @ocfs2_lock_res_init_once.__key.1) #15
  %l_blocked_list.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 70, i32 2
  %1 = ptrtoint ptr %l_blocked_list.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %l_blocked_list.i, ptr %l_blocked_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 70, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %l_blocked_list.i, ptr %prev.i.i, align 4
  %l_mask_waiters.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 70, i32 3
  %3 = ptrtoint ptr %l_mask_waiters.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %l_mask_waiters.i, ptr %l_mask_waiters.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 70, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %l_mask_waiters.i, ptr %prev.i8.i, align 4
  %l_holders.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 70, i32 4
  %5 = ptrtoint ptr %l_holders.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %l_holders.i, ptr %l_holders.i, align 4
  %prev.i9.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 70, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %l_holders.i, ptr %prev.i9.i, align 4
  %l_name = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 70, i32 6
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %l_name, i32 noundef 32, ptr noundef nonnull @.str.46, i32 noundef 73, ptr noundef nonnull @.str.47, i64 noundef 0, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call8.i)
  %cmp10.not.i = icmp eq i32 %call8.i, 31
  br i1 %cmp10.not.i, label %ocfs2_build_lock_name.exit, label %do.body19.i, !prof !376

do.body19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #15, !srcloc !377
  unreachable

ocfs2_build_lock_name.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #15
  %7 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 2048, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_build_lock_name, i32 noundef 401, ptr noundef nonnull @.str.48, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #15
  call fastcc void @ocfs2_lock_res_init_common(ptr noundef %osb, ptr noundef %osb_trim_fs_lockres, i32 noundef 12, ptr noundef nonnull @ocfs2_trim_fs_lops, ptr noundef %osb)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_trim_fs_lock_res_uninit(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_trim_fs_lockres = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 70
  tail call void @ocfs2_mark_lockres_freeing(ptr noundef %osb, ptr noundef %osb_trim_fs_lockres) #15
  tail call fastcc void @ocfs2_drop_lock(ptr noundef %osb, ptr noundef %osb_trim_fs_lockres) #15
  tail call void @ocfs2_lock_res_free(ptr noundef %osb_trim_fs_lockres)
  %obs_trim_fs_mutex = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 71
  tail call void @mutex_unlock(ptr noundef %obs_trim_fs_mutex) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_simple_drop_lockres(ptr noundef %osb, ptr noundef %lockres) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ocfs2_mark_lockres_freeing(ptr noundef %osb, ptr noundef %lockres)
  tail call fastcc void @ocfs2_drop_lock(ptr noundef %osb, ptr noundef %lockres)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_lock_res_free(ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m9 = alloca i64, align 8
  %_m26 = alloca i64, align 8
  %_m33 = alloca i64, align 8
  %_m52 = alloca i64, align 8
  %_m59 = alloca i64, align 8
  %_m77 = alloca i64, align 8
  %_m84 = alloca i64, align 8
  %_m103 = alloca i64, align 8
  %_m110 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 5
  %0 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l_flags, align 8
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_dlm_tracking_lock) #15
  %l_debug_list.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 19
  %2 = ptrtoint ptr %l_debug_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %l_debug_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %l_debug_list.i
  br i1 %cmp.i.not.i, label %if.end.ocfs2_remove_lockres_tracking.exit_crit_edge, label %if.then.i

if.end.ocfs2_remove_lockres_tracking.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_remove_lockres_tracking.exit

if.then.i:                                        ; preds = %if.end
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l_debug_list.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %l_debug_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %l_debug_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %10 = ptrtoint ptr %l_debug_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %l_debug_list.i, ptr %l_debug_list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 19, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %l_debug_list.i, ptr %prev.i3.i.i, align 4
  br label %ocfs2_remove_lockres_tracking.exit

ocfs2_remove_lockres_tracking.exit:               ; preds = %list_del_init.exit.i, %if.end.ocfs2_remove_lockres_tracking.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_dlm_tracking_lock) #15
  %l_blocked_list = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 2
  %12 = ptrtoint ptr %l_blocked_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %l_blocked_list, align 4
  %cmp.i.not = icmp eq ptr %13, %l_blocked_list
  br i1 %cmp.i.not, label %do.body21, label %do.body3

do.body3:                                         ; preds = %ocfs2_remove_lockres_tracking.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %14 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606849024, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_lock_res_free, i32 noundef 775, ptr noundef nonnull @.str.6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m9) #15
  %15 = ptrtoint ptr %_m9 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1152921504606849024, ptr %_m9, align 8
  %l_name = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m9, ptr noundef nonnull @__func__.ocfs2_lock_res_free, i32 noundef 775, ptr noundef nonnull @.str.7, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m9) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 775, 0\0A.popsection", ""() #15, !srcloc !379
  unreachable

do.body21:                                        ; preds = %ocfs2_remove_lockres_tracking.exit
  %l_mask_waiters = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 3
  %16 = ptrtoint ptr %l_mask_waiters to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %l_mask_waiters, align 4
  %cmp.i141.not = icmp eq ptr %17, %l_mask_waiters
  br i1 %cmp.i141.not, label %do.body47, label %do.body25

do.body25:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m26) #15
  %18 = ptrtoint ptr %_m26 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606849024, ptr %_m26, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m26, ptr noundef nonnull @__func__.ocfs2_lock_res_free, i32 noundef 778, ptr noundef nonnull @.str.8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m26) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m33) #15
  %19 = ptrtoint ptr %_m33 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1152921504606849024, ptr %_m33, align 8
  %l_name37 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m33, ptr noundef nonnull @__func__.ocfs2_lock_res_free, i32 noundef 778, ptr noundef nonnull @.str.9, ptr noundef %l_name37) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m33) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 778, 0\0A.popsection", ""() #15, !srcloc !380
  unreachable

do.body47:                                        ; preds = %do.body21
  %l_lock = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %20 = ptrtoint ptr %l_lock to i32
  call void @__asan_load4_noabort(i32 %20)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %l_lock, align 4
  %21 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.i.not = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.i.not, label %do.body73, label %do.body51

do.body51:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m52) #15
  %22 = ptrtoint ptr %_m52 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1152921504606849024, ptr %_m52, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m52, ptr noundef nonnull @__func__.ocfs2_lock_res_free, i32 noundef 781, ptr noundef nonnull @.str.10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m52) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m59) #15
  %23 = ptrtoint ptr %_m59 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1152921504606849024, ptr %_m59, align 8
  %l_name63 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m59, ptr noundef nonnull @__func__.ocfs2_lock_res_free, i32 noundef 781, ptr noundef nonnull @.str.11, ptr noundef %l_name63) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m59) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 781, 0\0A.popsection", ""() #15, !srcloc !381
  unreachable

do.body73:                                        ; preds = %do.body47
  %l_ro_holders = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 7
  %24 = ptrtoint ptr %l_ro_holders to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %l_ro_holders, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool74.not = icmp eq i32 %25, 0
  br i1 %tobool74.not, label %do.body99, label %do.body76

do.body76:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m77) #15
  %26 = ptrtoint ptr %_m77 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 1152921504606849024, ptr %_m77, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m77, ptr noundef nonnull @__func__.ocfs2_lock_res_free, i32 noundef 784, ptr noundef nonnull @.str.12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m77) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m84) #15
  %27 = ptrtoint ptr %_m84 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 1152921504606849024, ptr %_m84, align 8
  %l_name88 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 6
  %28 = ptrtoint ptr %l_ro_holders to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %l_ro_holders, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m84, ptr noundef nonnull @__func__.ocfs2_lock_res_free, i32 noundef 784, ptr noundef nonnull @.str.13, ptr noundef %l_name88, i32 noundef %29) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m84) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 784, 0\0A.popsection", ""() #15, !srcloc !382
  unreachable

do.body99:                                        ; preds = %do.body73
  %l_ex_holders = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 8
  %30 = ptrtoint ptr %l_ex_holders to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %l_ex_holders, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool100.not = icmp eq i32 %31, 0
  br i1 %tobool100.not, label %do.end124, label %do.body102

do.body102:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m103) #15
  %32 = ptrtoint ptr %_m103 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1152921504606849024, ptr %_m103, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m103, ptr noundef nonnull @__func__.ocfs2_lock_res_free, i32 noundef 787, ptr noundef nonnull @.str.14) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m103) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m110) #15
  %33 = ptrtoint ptr %_m110 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1152921504606849024, ptr %_m110, align 8
  %l_name114 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 6
  %34 = ptrtoint ptr %l_ex_holders to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %l_ex_holders, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m110, ptr noundef nonnull @__func__.ocfs2_lock_res_free, i32 noundef 787, ptr noundef nonnull @.str.15, ptr noundef %l_name114, i32 noundef %35) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m110) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 787, 0\0A.popsection", ""() #15, !srcloc !383
  unreachable

do.end124:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #17
  %l_lksb = getelementptr inbounds %struct.ocfs2_lock_res, ptr %res, i32 0, i32 17
  %36 = call ptr @memset(ptr %l_lksb, i32 0, i32 84)
  %37 = ptrtoint ptr %l_flags to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %l_flags, align 8
  br label %return

return:                                           ; preds = %do.end124, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_file_lock_res_init(ptr noundef %lockres, ptr noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -1608
  %6 = call ptr @memset(ptr %lockres, i32 0, i32 392)
  %l_lock.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %l_lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @ocfs2_lock_res_init_once.__key, i16 noundef signext 3) #15
  %l_event.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 18
  tail call void @__init_waitqueue_head(ptr noundef %l_event.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @ocfs2_lock_res_init_once.__key.1) #15
  %l_blocked_list.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 2
  %7 = ptrtoint ptr %l_blocked_list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %l_blocked_list.i, ptr %l_blocked_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %l_blocked_list.i, ptr %prev.i.i, align 4
  %l_mask_waiters.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 3
  %9 = ptrtoint ptr %l_mask_waiters.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %l_mask_waiters.i, ptr %l_mask_waiters.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %l_mask_waiters.i, ptr %prev.i8.i, align 4
  %l_holders.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 4
  %11 = ptrtoint ptr %l_holders.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %l_holders.i, ptr %l_holders.i, align 4
  %prev.i9.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %l_holders.i, ptr %prev.i9.i, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %add.ptr.i, align 8
  %i_generation = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 49
  %15 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_generation, align 8
  %l_name = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %l_name, i32 noundef 32, ptr noundef nonnull @.str.46, i32 noundef 70, ptr noundef nonnull @.str.47, i64 noundef %14, i32 noundef %16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call8.i)
  %cmp10.not.i = icmp eq i32 %call8.i, 31
  br i1 %cmp10.not.i, label %ocfs2_build_lock_name.exit, label %do.body19.i, !prof !376

do.body19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #15, !srcloc !377
  unreachable

ocfs2_build_lock_name.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #15
  %17 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 2048, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_build_lock_name, i32 noundef 401, ptr noundef nonnull @.str.48, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #15
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info, align 16
  call fastcc void @ocfs2_lock_res_init_common(ptr noundef %21, ptr noundef %lockres, i32 noundef 7, ptr noundef nonnull @ocfs2_flock_lops, ptr noundef %fp)
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %22 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %l_flags, align 8
  %or = or i32 %23, 512
  store i32 %or, ptr %l_flags, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_qinfo_lock_res_init(ptr noundef %lockres, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %lockres, i32 0, i32 392)
  %l_lock.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %l_lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @ocfs2_lock_res_init_once.__key, i16 noundef signext 3) #15
  %l_event.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 18
  tail call void @__init_waitqueue_head(ptr noundef %l_event.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @ocfs2_lock_res_init_once.__key.1) #15
  %l_blocked_list.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 2
  %1 = ptrtoint ptr %l_blocked_list.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %l_blocked_list.i, ptr %l_blocked_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %l_blocked_list.i, ptr %prev.i.i, align 4
  %l_mask_waiters.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 3
  %3 = ptrtoint ptr %l_mask_waiters.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %l_mask_waiters.i, ptr %l_mask_waiters.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %l_mask_waiters.i, ptr %prev.i8.i, align 4
  %l_holders.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 4
  %5 = ptrtoint ptr %l_holders.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %l_holders.i, ptr %l_holders.i, align 4
  %prev.i9.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %l_holders.i, ptr %prev.i9.i, align 4
  %dqi_type = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %info, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %dqi_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dqi_type, align 4
  %conv = sext i32 %8 to i64
  %l_name = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %l_name, i32 noundef 32, ptr noundef nonnull @.str.46, i32 noundef 81, ptr noundef nonnull @.str.47, i64 noundef %conv, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call8.i)
  %cmp10.not.i = icmp eq i32 %call8.i, 31
  br i1 %cmp10.not.i, label %ocfs2_build_lock_name.exit, label %do.body19.i, !prof !376

do.body19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #15, !srcloc !377
  unreachable

ocfs2_build_lock_name.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dqi_gi = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %info, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #15
  %9 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 2048, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_build_lock_name, i32 noundef 401, ptr noundef nonnull @.str.48, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #15
  %10 = ptrtoint ptr %dqi_gi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dqi_gi, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info, align 16
  call fastcc void @ocfs2_lock_res_init_common(ptr noundef %13, ptr noundef %lockres, i32 noundef 8, ptr noundef nonnull @ocfs2_qinfo_lops, ptr noundef %info)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_refcount_lock_res_init(ptr noundef %lockres, ptr noundef %osb, i64 noundef %ref_blkno, i32 noundef %generation) local_unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %lockres, i32 0, i32 392)
  %l_lock.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %l_lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @ocfs2_lock_res_init_once.__key, i16 noundef signext 3) #15
  %l_event.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 18
  tail call void @__init_waitqueue_head(ptr noundef %l_event.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @ocfs2_lock_res_init_once.__key.1) #15
  %l_blocked_list.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 2
  %1 = ptrtoint ptr %l_blocked_list.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %l_blocked_list.i, ptr %l_blocked_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %l_blocked_list.i, ptr %prev.i.i, align 4
  %l_mask_waiters.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 3
  %3 = ptrtoint ptr %l_mask_waiters.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %l_mask_waiters.i, ptr %l_mask_waiters.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %l_mask_waiters.i, ptr %prev.i8.i, align 4
  %l_holders.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 4
  %5 = ptrtoint ptr %l_holders.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %l_holders.i, ptr %l_holders.i, align 4
  %prev.i9.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %l_holders.i, ptr %prev.i9.i, align 4
  %l_name = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %l_name, i32 noundef 32, ptr noundef nonnull @.str.46, i32 noundef 84, ptr noundef nonnull @.str.47, i64 noundef %ref_blkno, i32 noundef %generation) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call8.i)
  %cmp10.not.i = icmp eq i32 %call8.i, 31
  br i1 %cmp10.not.i, label %ocfs2_build_lock_name.exit, label %do.body19.i, !prof !376

do.body19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #15, !srcloc !377
  unreachable

ocfs2_build_lock_name.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #15
  %7 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 2048, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_build_lock_name, i32 noundef 401, ptr noundef nonnull @.str.48, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #15
  call fastcc void @ocfs2_lock_res_init_common(ptr noundef %osb, ptr noundef %lockres, i32 noundef 11, ptr noundef nonnull @ocfs2_refcount_block_lops, ptr noundef %osb)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_set_locking_protocol() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ocfs2_stack_glue_set_max_proto_version(ptr noundef nonnull @lproto) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_stack_glue_set_max_proto_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_create_new_inode_locks(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m30 = alloca i64, align 8
  %_m60 = alloca i64, align 8
  %_m92 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %ip_flags.i = getelementptr i8, ptr %inode, i32 -76
  %4 = ptrtoint ptr %ip_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ip_flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.body4_crit_edge

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

if.end.i:                                         ; preds = %entry
  %ip_metadata_cache.i.i = getelementptr i8, ptr %inode, i32 -56
  %call.i.i = tail call ptr @ocfs2_metadata_cache_get_super(ptr noundef %ip_metadata_cache.i.i) #15
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %call.i.i, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %journal1.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %7, i32 0, i32 45
  %8 = ptrtoint ptr %journal1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %journal1.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @trans_inc_lock) #15
  %ci_created_trans.i.i = getelementptr i8, ptr %inode, i32 -52
  %10 = ptrtoint ptr %ci_created_trans.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ci_created_trans.i.i, align 4
  %j_trans_id.i.i = getelementptr inbounds %struct.ocfs2_journal, ptr %9, i32 0, i32 7
  %12 = ptrtoint ptr %j_trans_id.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %j_trans_id.i.i, align 4
  %sub.i.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp.i.i, label %do.body10, label %ocfs2_inode_is_new.exit.thread

ocfs2_inode_is_new.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %ci_created_trans.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ci_created_trans.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @trans_inc_lock) #15
  br label %do.body4

do.body4:                                         ; preds = %ocfs2_inode_is_new.exit.thread, %entry.do.body4_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1727, 0\0A.popsection", ""() #15, !srcloc !384
  unreachable

do.body10:                                        ; preds = %if.end.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @trans_inc_lock) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %15 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 2048, ptr %_m, align 8
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_create_new_inode_locks, i32 noundef 1729, ptr noundef nonnull @.str.16, i64 noundef %17) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  %l_lock.i = getelementptr i8, ptr %inode, i32 -1512
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock.i) #15
  %l_flags.i = getelementptr i8, ptr %inode, i32 -1568
  %18 = ptrtoint ptr %l_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %l_flags.i, align 8
  %and.i135 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i135)
  %tobool8.not.i = icmp eq i32 %and.i135, 0
  br i1 %tobool8.not.i, label %ocfs2_create_new_lock.exit, label %do.body11.i, !prof !376

do.body11.i:                                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1709, 0\0A.popsection", ""() #15, !srcloc !385
  unreachable

ocfs2_create_new_lock.exit:                       ; preds = %do.body10
  %ip_rw_lockres = getelementptr i8, ptr %inode, i32 -1600
  %or1.i.i = or i32 %19, 8
  call fastcc void @lockres_set_flags(ptr noundef %ip_rw_lockres, i32 noundef %or1.i.i) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock.i, i32 noundef %call4.i) #15
  %call20.i = call fastcc i32 @ocfs2_lock_create(ptr noundef %3, ptr noundef %ip_rw_lockres, i32 noundef 5, i32 noundef 1048576) #15
  %20 = zext i32 %call20.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %call20.i, label %do.body29 [
    i32 0, label %if.end38
    i32 -512, label %ocfs2_create_new_lock.exit.bail_crit_edge
    i32 -4, label %ocfs2_create_new_lock.exit.bail_crit_edge159
    i32 524289, label %ocfs2_create_new_lock.exit.bail_crit_edge160
    i32 -28, label %ocfs2_create_new_lock.exit.bail_crit_edge161
    i32 -122, label %ocfs2_create_new_lock.exit.bail_crit_edge162
  ]

ocfs2_create_new_lock.exit.bail_crit_edge162:     ; preds = %ocfs2_create_new_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

ocfs2_create_new_lock.exit.bail_crit_edge161:     ; preds = %ocfs2_create_new_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

ocfs2_create_new_lock.exit.bail_crit_edge160:     ; preds = %ocfs2_create_new_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

ocfs2_create_new_lock.exit.bail_crit_edge159:     ; preds = %ocfs2_create_new_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

ocfs2_create_new_lock.exit.bail_crit_edge:        ; preds = %ocfs2_create_new_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

do.body29:                                        ; preds = %ocfs2_create_new_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m30) #15
  %21 = ptrtoint ptr %_m30 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1152921504606849024, ptr %_m30, align 8
  %conv = sext i32 %call20.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m30, ptr noundef nonnull @__func__.ocfs2_create_new_inode_locks, i32 noundef 1741, ptr noundef nonnull @.str.17, i64 noundef %conv) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m30) #15
  br label %bail

if.end38:                                         ; preds = %ocfs2_create_new_lock.exit
  %l_lock.i137 = getelementptr i8, ptr %inode, i32 -1120
  %call4.i138 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock.i137) #15
  %l_flags.i139 = getelementptr i8, ptr %inode, i32 -1176
  %22 = ptrtoint ptr %l_flags.i139 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %l_flags.i139, align 8
  %and.i140 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140)
  %tobool8.not.i141 = icmp eq i32 %and.i140, 0
  br i1 %tobool8.not.i141, label %ocfs2_create_new_lock.exit145, label %do.body11.i142, !prof !376

do.body11.i142:                                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1709, 0\0A.popsection", ""() #15, !srcloc !385
  unreachable

ocfs2_create_new_lock.exit145:                    ; preds = %if.end38
  %ip_inode_lockres = getelementptr i8, ptr %inode, i32 -1208
  %or1.i.i143 = or i32 %23, 8
  call fastcc void @lockres_set_flags(ptr noundef %ip_inode_lockres, i32 noundef %or1.i.i143) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock.i137, i32 noundef %call4.i138) #15
  %call20.i144 = call fastcc i32 @ocfs2_lock_create(ptr noundef %3, ptr noundef %ip_inode_lockres, i32 noundef 5, i32 noundef 0) #15
  %24 = zext i32 %call20.i144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %call20.i144, label %do.body59 [
    i32 0, label %if.end70
    i32 -512, label %ocfs2_create_new_lock.exit145.bail_crit_edge
    i32 -4, label %ocfs2_create_new_lock.exit145.bail_crit_edge163
    i32 524289, label %ocfs2_create_new_lock.exit145.bail_crit_edge164
    i32 -28, label %ocfs2_create_new_lock.exit145.bail_crit_edge165
    i32 -122, label %ocfs2_create_new_lock.exit145.bail_crit_edge166
  ]

ocfs2_create_new_lock.exit145.bail_crit_edge166:  ; preds = %ocfs2_create_new_lock.exit145
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

ocfs2_create_new_lock.exit145.bail_crit_edge165:  ; preds = %ocfs2_create_new_lock.exit145
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

ocfs2_create_new_lock.exit145.bail_crit_edge164:  ; preds = %ocfs2_create_new_lock.exit145
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

ocfs2_create_new_lock.exit145.bail_crit_edge163:  ; preds = %ocfs2_create_new_lock.exit145
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

ocfs2_create_new_lock.exit145.bail_crit_edge:     ; preds = %ocfs2_create_new_lock.exit145
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

do.body59:                                        ; preds = %ocfs2_create_new_lock.exit145
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m60) #15
  %25 = ptrtoint ptr %_m60 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1152921504606849024, ptr %_m60, align 8
  %conv64 = sext i32 %call20.i144 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m60, ptr noundef nonnull @__func__.ocfs2_create_new_inode_locks, i32 noundef 1751, ptr noundef nonnull @.str.17, i64 noundef %conv64) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m60) #15
  br label %bail

if.end70:                                         ; preds = %ocfs2_create_new_lock.exit145
  %l_lock.i147 = getelementptr i8, ptr %inode, i32 -728
  %call4.i148 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock.i147) #15
  %l_flags.i149 = getelementptr i8, ptr %inode, i32 -784
  %26 = ptrtoint ptr %l_flags.i149 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %l_flags.i149, align 8
  %and.i150 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool8.not.i151 = icmp eq i32 %and.i150, 0
  br i1 %tobool8.not.i151, label %ocfs2_create_new_lock.exit155, label %do.body11.i152, !prof !376

do.body11.i152:                                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1709, 0\0A.popsection", ""() #15, !srcloc !385
  unreachable

ocfs2_create_new_lock.exit155:                    ; preds = %if.end70
  %ip_open_lockres = getelementptr i8, ptr %inode, i32 -816
  %or1.i.i153 = or i32 %27, 8
  call fastcc void @lockres_set_flags(ptr noundef %ip_open_lockres, i32 noundef %or1.i.i153) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock.i147, i32 noundef %call4.i148) #15
  %call20.i154 = call fastcc i32 @ocfs2_lock_create(ptr noundef %3, ptr noundef %ip_open_lockres, i32 noundef 3, i32 noundef 0) #15
  %28 = zext i32 %call20.i154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %call20.i154, label %do.body91 [
    i32 0, label %ocfs2_create_new_lock.exit155.bail_crit_edge
    i32 -512, label %ocfs2_create_new_lock.exit155.bail_crit_edge167
    i32 -4, label %ocfs2_create_new_lock.exit155.bail_crit_edge168
    i32 524289, label %ocfs2_create_new_lock.exit155.bail_crit_edge169
    i32 -28, label %ocfs2_create_new_lock.exit155.bail_crit_edge170
    i32 -122, label %ocfs2_create_new_lock.exit155.bail_crit_edge171
  ]

ocfs2_create_new_lock.exit155.bail_crit_edge171:  ; preds = %ocfs2_create_new_lock.exit155
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

ocfs2_create_new_lock.exit155.bail_crit_edge170:  ; preds = %ocfs2_create_new_lock.exit155
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

ocfs2_create_new_lock.exit155.bail_crit_edge169:  ; preds = %ocfs2_create_new_lock.exit155
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

ocfs2_create_new_lock.exit155.bail_crit_edge168:  ; preds = %ocfs2_create_new_lock.exit155
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

ocfs2_create_new_lock.exit155.bail_crit_edge167:  ; preds = %ocfs2_create_new_lock.exit155
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

ocfs2_create_new_lock.exit155.bail_crit_edge:     ; preds = %ocfs2_create_new_lock.exit155
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

do.body91:                                        ; preds = %ocfs2_create_new_lock.exit155
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m92) #15
  %29 = ptrtoint ptr %_m92 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 1152921504606849024, ptr %_m92, align 8
  %conv96 = sext i32 %call20.i154 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m92, ptr noundef nonnull @__func__.ocfs2_create_new_inode_locks, i32 noundef 1757, ptr noundef nonnull @.str.17, i64 noundef %conv96) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m92) #15
  br label %bail

bail:                                             ; preds = %do.body91, %ocfs2_create_new_lock.exit155.bail_crit_edge, %ocfs2_create_new_lock.exit155.bail_crit_edge167, %ocfs2_create_new_lock.exit155.bail_crit_edge168, %ocfs2_create_new_lock.exit155.bail_crit_edge169, %ocfs2_create_new_lock.exit155.bail_crit_edge170, %ocfs2_create_new_lock.exit155.bail_crit_edge171, %do.body59, %ocfs2_create_new_lock.exit145.bail_crit_edge, %ocfs2_create_new_lock.exit145.bail_crit_edge163, %ocfs2_create_new_lock.exit145.bail_crit_edge164, %ocfs2_create_new_lock.exit145.bail_crit_edge165, %ocfs2_create_new_lock.exit145.bail_crit_edge166, %do.body29, %ocfs2_create_new_lock.exit.bail_crit_edge, %ocfs2_create_new_lock.exit.bail_crit_edge159, %ocfs2_create_new_lock.exit.bail_crit_edge160, %ocfs2_create_new_lock.exit.bail_crit_edge161, %ocfs2_create_new_lock.exit.bail_crit_edge162
  %ret.0 = phi i32 [ %call20.i154, %ocfs2_create_new_lock.exit155.bail_crit_edge ], [ %call20.i, %ocfs2_create_new_lock.exit.bail_crit_edge ], [ %call20.i, %ocfs2_create_new_lock.exit.bail_crit_edge159 ], [ %call20.i, %ocfs2_create_new_lock.exit.bail_crit_edge160 ], [ %call20.i, %ocfs2_create_new_lock.exit.bail_crit_edge161 ], [ %call20.i, %ocfs2_create_new_lock.exit.bail_crit_edge162 ], [ %call20.i, %do.body29 ], [ %call20.i144, %ocfs2_create_new_lock.exit145.bail_crit_edge ], [ %call20.i144, %ocfs2_create_new_lock.exit145.bail_crit_edge163 ], [ %call20.i144, %ocfs2_create_new_lock.exit145.bail_crit_edge164 ], [ %call20.i144, %ocfs2_create_new_lock.exit145.bail_crit_edge165 ], [ %call20.i144, %ocfs2_create_new_lock.exit145.bail_crit_edge166 ], [ %call20.i144, %do.body59 ], [ %call20.i154, %ocfs2_create_new_lock.exit155.bail_crit_edge167 ], [ %call20.i154, %ocfs2_create_new_lock.exit155.bail_crit_edge168 ], [ %call20.i154, %ocfs2_create_new_lock.exit155.bail_crit_edge169 ], [ %call20.i154, %ocfs2_create_new_lock.exit155.bail_crit_edge170 ], [ %call20.i154, %ocfs2_create_new_lock.exit155.bail_crit_edge171 ], [ %call20.i154, %do.body91 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_rw_lock(ptr noundef %inode, i32 noundef %write) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m21 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 2048, ptr %_m, align 8
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool1.not = icmp eq i32 %write, 0
  %cond = select i1 %tobool1.not, ptr @.str.20, ptr @.str.19
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_rw_lock, i32 noundef 1771, ptr noundef nonnull @.str.18, i64 noundef %6, ptr noundef nonnull %cond) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 19
  %7 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ocfs2_mount_local.exit:                           ; preds = %entry
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 28
  %9 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_mount_opt.i, align 8
  %11 = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.end5, label %ocfs2_mount_local.exit.cleanup_crit_edge

ocfs2_mount_local.exit.cleanup_crit_edge:         ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %ocfs2_mount_local.exit
  %ip_rw_lockres = getelementptr i8, ptr %inode, i32 -1600
  %cond8 = select i1 %tobool1.not, i32 3, i32 5
  %12 = call ptr @llvm.returnaddress(i32 0) #15
  %13 = ptrtoint ptr %12 to i32
  %call.i = call fastcc i32 @__ocfs2_cluster_lock(ptr noundef %3, ptr noundef %ip_rw_lockres, i32 noundef %cond8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %13) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10:                                        ; preds = %if.end5
  %14 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %call.i, label %do.body20 [
    i32 -512, label %if.then10.cleanup_crit_edge
    i32 -4, label %if.then10.cleanup_crit_edge47
    i32 -28, label %if.then10.cleanup_crit_edge48
    i32 -122, label %if.then10.cleanup_crit_edge49
  ]

if.then10.cleanup_crit_edge49:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.cleanup_crit_edge48:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.cleanup_crit_edge47:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body20:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m21) #15
  %15 = ptrtoint ptr %_m21 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1152921504606849024, ptr %_m21, align 8
  %conv = sext i32 %call.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m21, ptr noundef nonnull @__func__.ocfs2_rw_lock, i32 noundef 1782, ptr noundef nonnull @.str.17, i64 noundef %conv) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m21) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body20, %if.then10.cleanup_crit_edge, %if.then10.cleanup_crit_edge47, %if.then10.cleanup_crit_edge48, %if.then10.cleanup_crit_edge49, %if.end5.cleanup_crit_edge, %ocfs2_mount_local.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ocfs2_mount_local.exit.cleanup_crit_edge ], [ %call.i, %do.body20 ], [ %call.i, %if.then10.cleanup_crit_edge ], [ %call.i, %if.then10.cleanup_crit_edge47 ], [ %call.i, %if.then10.cleanup_crit_edge48 ], [ %call.i, %if.then10.cleanup_crit_edge49 ], [ %call.i, %if.end5.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_try_rw_lock(ptr noundef %inode, i32 noundef %write) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 2048, ptr %_m, align 8
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool1.not = icmp eq i32 %write, 0
  %cond = select i1 %tobool1.not, ptr @.str.20, ptr @.str.19
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_try_rw_lock, i32 noundef 1795, ptr noundef nonnull @.str.21, i64 noundef %6, ptr noundef nonnull %cond) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 19
  %7 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ocfs2_mount_local.exit:                           ; preds = %entry
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 28
  %9 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_mount_opt.i, align 8
  %11 = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.end5, label %ocfs2_mount_local.exit.cleanup_crit_edge

ocfs2_mount_local.exit.cleanup_crit_edge:         ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  %ip_rw_lockres = getelementptr i8, ptr %inode, i32 -1600
  %cond8 = select i1 %tobool1.not, i32 3, i32 5
  %12 = call ptr @llvm.returnaddress(i32 0) #15
  %13 = ptrtoint ptr %12 to i32
  %call.i = call fastcc i32 @__ocfs2_cluster_lock(ptr noundef %3, ptr noundef %ip_rw_lockres, i32 noundef %cond8, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %13) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %ocfs2_mount_local.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end5 ], [ 0, %ocfs2_mount_local.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_rw_unlock(ptr noundef %inode, i32 noundef %write) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %cond = select i1 %tobool.not, i32 3, i32 5
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %ip_rw_lockres = getelementptr i8, ptr %inode, i32 -1600
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 2048, ptr %_m, align 8
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr.i, align 8
  %cond4 = select i1 %tobool.not, ptr @.str.20, ptr @.str.19
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_rw_unlock, i32 noundef 1816, ptr noundef nonnull @.str.22, i64 noundef %6, ptr noundef nonnull %cond4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 19
  %7 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

ocfs2_mount_local.exit:                           ; preds = %entry
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 28
  %9 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_mount_opt.i, align 8
  %11 = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.then7, label %ocfs2_mount_local.exit.if.end8_crit_edge

ocfs2_mount_local.exit.if.end8_crit_edge:         ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then7:                                         ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ocfs2_cluster_unlock(ptr noundef %3, ptr noundef %ip_rw_lockres, i32 noundef %cond)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %ocfs2_mount_local.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_cluster_unlock(ptr noundef %osb, ptr noundef %lockres, i32 noundef %level) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %l_lock.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock.i) #15
  %tobool.not.i.i = icmp eq ptr %lockres, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !386

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 858, 0\0A.popsection", ""() #15, !srcloc !387
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %2 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %level, label %do.body46.i.i [
    i32 5, label %do.body8.i.i
    i32 3, label %do.body27.i.i
  ]

do.body8.i.i:                                     ; preds = %do.end7.i.i
  %l_ex_holders.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 8
  %3 = ptrtoint ptr %l_ex_holders.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %l_ex_holders.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool9.not.i.i, label %do.body19.i.i, label %do.end24.i.i, !prof !386

do.body19.i.i:                                    ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 862, 0\0A.popsection", ""() #15, !srcloc !388
  unreachable

do.end24.i.i:                                     ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dec.i.i = add i32 %4, -1
  %5 = ptrtoint ptr %l_ex_holders.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dec.i.i, ptr %l_ex_holders.i.i, align 8
  br label %ocfs2_dec_holders.exit.i

do.body27.i.i:                                    ; preds = %do.end7.i.i
  %l_ro_holders.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 7
  %6 = ptrtoint ptr %l_ro_holders.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %l_ro_holders.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool28.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool28.not.i.i, label %do.body38.i.i, label %do.end43.i.i, !prof !386

do.body38.i.i:                                    ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 866, 0\0A.popsection", ""() #15, !srcloc !389
  unreachable

do.end43.i.i:                                     ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dec45.i.i = add i32 %7, -1
  %8 = ptrtoint ptr %l_ro_holders.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec45.i.i, ptr %l_ro_holders.i.i, align 4
  br label %ocfs2_dec_holders.exit.i

do.body46.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 870, 0\0A.popsection", ""() #15, !srcloc !390
  unreachable

ocfs2_dec_holders.exit.i:                         ; preds = %do.end43.i.i, %do.end24.i.i
  %l_flags.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %9 = ptrtoint ptr %l_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %l_flags.i.i, align 8
  %and.i.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i14.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i14.i, label %ocfs2_dec_holders.exit.i.ocfs2_downconvert_on_unlock.exit.i_crit_edge, label %if.then.i.i

ocfs2_dec_holders.exit.i.ocfs2_downconvert_on_unlock.exit.i_crit_edge: ; preds = %ocfs2_dec_holders.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_downconvert_on_unlock.exit.i

if.then.i.i:                                      ; preds = %ocfs2_dec_holders.exit.i
  %l_blocking.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 11
  %11 = ptrtoint ptr %l_blocking.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %l_blocking.i.i, align 2
  %conv.i.i = sext i8 %12 to i32
  %13 = zext i32 %conv.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %conv.i.i, label %do.body.i.i [
    i32 5, label %sw.bb.i.i
    i32 3, label %if.end12.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then.i.i
  %l_ex_holders.i15.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 8
  %14 = ptrtoint ptr %l_ex_holders.i15.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %l_ex_holders.i15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %sw.bb.i.i.ocfs2_downconvert_on_unlock.exit.i_crit_edge

sw.bb.i.i.ocfs2_downconvert_on_unlock.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_downconvert_on_unlock.exit.i

land.lhs.true.i.i:                                ; preds = %sw.bb.i.i
  %l_ro_holders.i16.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 7
  %16 = ptrtoint ptr %l_ro_holders.i16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %l_ro_holders.i16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool2.not.not.i.i, label %land.lhs.true.i.i.if.then14.i.i_crit_edge, label %land.lhs.true.i.i.ocfs2_downconvert_on_unlock.exit.i_crit_edge

land.lhs.true.i.i.ocfs2_downconvert_on_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_downconvert_on_unlock.exit.i

land.lhs.true.i.i.if.then14.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i.i

do.body.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2132, 0\0A.popsection", ""() #15, !srcloc !391
  unreachable

if.end12.i.i:                                     ; preds = %if.then.i.i
  %l_ex_holders5.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 8
  %18 = ptrtoint ptr %l_ex_holders5.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %l_ex_holders5.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool6.not.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool6.not.not.i.i, label %if.end12.i.i.if.then14.i.i_crit_edge, label %if.end12.i.i.ocfs2_downconvert_on_unlock.exit.i_crit_edge

if.end12.i.i.ocfs2_downconvert_on_unlock.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_downconvert_on_unlock.exit.i

if.end12.i.i.if.then14.i.i_crit_edge:             ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.end12.i.i.if.then14.i.i_crit_edge, %land.lhs.true.i.i.if.then14.i.i_crit_edge
  %dc_task_lock.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 75
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dc_task_lock.i.i.i) #15
  %dc_wake_sequence.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 78
  %20 = ptrtoint ptr %dc_wake_sequence.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dc_wake_sequence.i.i.i, align 4
  %inc.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i, ptr %dc_wake_sequence.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dc_task_lock.i.i.i, i32 noundef %call2.i.i.i) #15
  %dc_event.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 77
  tail call void @__wake_up(ptr noundef %dc_event.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %ocfs2_downconvert_on_unlock.exit.i

ocfs2_downconvert_on_unlock.exit.i:               ; preds = %if.then14.i.i, %if.end12.i.i.ocfs2_downconvert_on_unlock.exit.i_crit_edge, %land.lhs.true.i.i.ocfs2_downconvert_on_unlock.exit.i_crit_edge, %sw.bb.i.i.ocfs2_downconvert_on_unlock.exit.i_crit_edge, %ocfs2_dec_holders.exit.i.ocfs2_downconvert_on_unlock.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock.i, i32 noundef %call2.i) #15
  %l_lockdep_map.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 24
  %22 = ptrtoint ptr %l_lockdep_map.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %l_lockdep_map.i, align 8
  %cmp6.not.i = icmp eq ptr %23, null
  br i1 %cmp6.not.i, label %ocfs2_downconvert_on_unlock.exit.i.__ocfs2_cluster_unlock.exit_crit_edge, label %if.then.i

ocfs2_downconvert_on_unlock.exit.i.__ocfs2_cluster_unlock.exit_crit_edge: ; preds = %ocfs2_downconvert_on_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__ocfs2_cluster_unlock.exit

if.then.i:                                        ; preds = %ocfs2_downconvert_on_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef %l_lockdep_map.i, i32 noundef %1) #15
  br label %__ocfs2_cluster_unlock.exit

__ocfs2_cluster_unlock.exit:                      ; preds = %if.then.i, %ocfs2_downconvert_on_unlock.exit.i.__ocfs2_cluster_unlock.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_open_lock(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m20 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 2048, ptr %_m, align 8
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_open_lock, i32 noundef 1832, ptr noundef nonnull @.str.23, i64 noundef %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %osb_lock.i) #15
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 23
  %7 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %8, 2
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not = icmp eq i32 %and.i, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 19
  %9 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i41 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool.not.i = icmp eq i32 %and.i41, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

ocfs2_mount_local.exit:                           ; preds = %lor.lhs.false
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 28
  %11 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_mount_opt.i, align 8
  %13 = and i32 %12, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %if.end6, label %ocfs2_mount_local.exit.out_crit_edge

ocfs2_mount_local.exit.out_crit_edge:             ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end6:                                          ; preds = %ocfs2_mount_local.exit
  %ip_open_lockres = getelementptr i8, ptr %inode, i32 -816
  %14 = call ptr @llvm.returnaddress(i32 0) #15
  %15 = ptrtoint ptr %14 to i32
  %call.i = call fastcc i32 @__ocfs2_cluster_lock(ptr noundef %3, ptr noundef %ip_open_lockres, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then9:                                         ; preds = %if.end6
  %16 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %call.i, label %do.body19 [
    i32 -512, label %if.then9.out_crit_edge
    i32 -4, label %if.then9.out_crit_edge44
    i32 -28, label %if.then9.out_crit_edge45
    i32 -122, label %if.then9.out_crit_edge46
  ]

if.then9.out_crit_edge46:                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then9.out_crit_edge45:                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then9.out_crit_edge44:                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body19:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m20) #15
  %17 = ptrtoint ptr %_m20 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1152921504606849024, ptr %_m20, align 8
  %conv = sext i32 %call.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m20, ptr noundef nonnull @__func__.ocfs2_open_lock, i32 noundef 1841, ptr noundef nonnull @.str.17, i64 noundef %conv) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m20) #15
  br label %out

out:                                              ; preds = %do.body19, %if.then9.out_crit_edge, %if.then9.out_crit_edge44, %if.then9.out_crit_edge45, %if.then9.out_crit_edge46, %if.end6.out_crit_edge, %ocfs2_mount_local.exit.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %status.0 = phi i32 [ 0, %entry.out_crit_edge ], [ 0, %ocfs2_mount_local.exit.out_crit_edge ], [ %call.i, %if.end6.out_crit_edge ], [ %call.i, %if.then9.out_crit_edge ], [ %call.i, %if.then9.out_crit_edge44 ], [ %call.i, %if.then9.out_crit_edge45 ], [ %call.i, %if.then9.out_crit_edge46 ], [ %call.i, %do.body19 ], [ 0, %lor.lhs.false.out_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_try_open_lock(ptr noundef %inode, i32 noundef %write) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 2048, ptr %_m, align 8
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool1.not = icmp eq i32 %write, 0
  %cond = select i1 %tobool1.not, ptr @.str.20, ptr @.str.19
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_try_open_lock, i32 noundef 1855, ptr noundef nonnull @.str.24, i64 noundef %6, ptr noundef nonnull %cond) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %osb_lock.i) #15
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 23
  %7 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %8, 2
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not = icmp eq i32 %and.i, 0
  br i1 %tobool3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %spec.select = select i1 %tobool1.not, i32 0, i32 -30
  br label %out

if.end8:                                          ; preds = %entry
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 19
  %9 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i23 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %tobool.not.i = icmp eq i32 %and.i23, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

ocfs2_mount_local.exit:                           ; preds = %if.end8
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 28
  %11 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_mount_opt.i, align 8
  %13 = and i32 %12, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %if.end12, label %ocfs2_mount_local.exit.out_crit_edge

ocfs2_mount_local.exit.out_crit_edge:             ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end12:                                         ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  %ip_open_lockres = getelementptr i8, ptr %inode, i32 -816
  %cond15 = select i1 %tobool1.not, i32 3, i32 5
  %14 = call ptr @llvm.returnaddress(i32 0) #15
  %15 = ptrtoint ptr %14 to i32
  %call.i = call fastcc i32 @__ocfs2_cluster_lock(ptr noundef %3, ptr noundef %ip_open_lockres, i32 noundef %cond15, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %15) #15
  br label %out

out:                                              ; preds = %if.end12, %ocfs2_mount_local.exit.out_crit_edge, %if.end8.out_crit_edge, %if.then4
  %status.0 = phi i32 [ 0, %ocfs2_mount_local.exit.out_crit_edge ], [ %call.i, %if.end12 ], [ %spec.select, %if.then4 ], [ 0, %if.end8.out_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_open_unlock(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %ip_open_lockres = getelementptr i8, ptr %inode, i32 -816
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 2048, ptr %_m, align 8
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_open_unlock, i32 noundef 1891, ptr noundef nonnull @.str.25, i64 noundef %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 19
  %7 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

ocfs2_mount_local.exit:                           ; preds = %entry
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 28
  %9 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_mount_opt.i, align 8
  %11 = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.end5, label %ocfs2_mount_local.exit.out_crit_edge

ocfs2_mount_local.exit.out_crit_edge:             ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end5:                                          ; preds = %ocfs2_mount_local.exit
  %l_ro_holders = getelementptr i8, ptr %inode, i32 -748
  %12 = ptrtoint ptr %l_ro_holders to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %l_ro_holders, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ocfs2_cluster_unlock(ptr noundef %3, ptr noundef %ip_open_lockres, i32 noundef 3)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %l_ex_holders = getelementptr i8, ptr %inode, i32 -744
  %14 = ptrtoint ptr %l_ex_holders to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %l_ex_holders, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %if.end8.out_crit_edge, label %if.then10

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ocfs2_cluster_unlock(ptr noundef %3, ptr noundef %ip_open_lockres, i32 noundef 5)
  br label %out

out:                                              ; preds = %if.then10, %if.end8.out_crit_edge, %ocfs2_mount_local.exit.out_crit_edge, %entry.out_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_file_lock(ptr nocapture noundef readonly %file, i32 noundef %ex, i32 noundef %trylock) local_unnamed_addr #0 align 64 {
entry:
  %mw = alloca %struct.ocfs2_mask_waiter, align 8
  %_m = alloca i64, align 8
  %_m45 = alloca i64, align 8
  %_m76 = alloca i64, align 8
  %_m120 = alloca i64, align 8
  %_m130 = alloca i64, align 8
  %_m178 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ex)
  %tobool.not = icmp eq i32 %ex, 0
  %cond = select i1 %tobool.not, i32 3, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trylock)
  %tobool1.not = icmp ne i32 %trylock, 0
  %cond2 = zext i1 %tobool1.not to i32
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fp_flock = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %mw) #15
  %10 = getelementptr inbounds i8, ptr %mw, i32 8
  %11 = call ptr @memset(ptr %10, i32 255, i32 80)
  %12 = ptrtoint ptr %mw to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %mw, ptr %mw, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mw, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mw, ptr %prev.i.i, align 4
  %mw_complete.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 2
  %14 = ptrtoint ptr %mw_complete.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %mw_complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @init_completion.__key) #15
  %call.i.i = call i64 @ktime_get() #15
  %mw_lock_start.i.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 5
  %15 = ptrtoint ptr %mw_lock_start.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call.i.i, ptr %mw_lock_start.i.i, align 8
  %l_flags = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %l_flags, align 8
  %and = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %l_level = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 9
  %18 = ptrtoint ptr %l_level to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %l_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp = icmp sgt i8 %19, 0
  br i1 %cmp, label %lor.lhs.false.do.body_crit_edge, label %do.body13

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %20 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 1152921504606849024, ptr %_m, align 8
  %l_name = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 6
  %l_level9 = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 9
  %21 = ptrtoint ptr %l_level9 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %l_level9, align 4
  %conv10 = sext i8 %22 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_file_lock, i32 noundef 1990, ptr noundef nonnull @.str.26, ptr noundef %l_name, i32 noundef %17, i32 noundef %conv10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %cleanup

do.body13:                                        ; preds = %lor.lhs.false
  %l_lock = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 16
  %call16 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %23 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %l_flags, align 8
  %and22 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then24, label %do.body13.if.end101_crit_edge

do.body13.if.end101_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

if.then24:                                        ; preds = %do.body13
  call fastcc void @lockres_add_mask_waiter(ptr noundef %fp_flock, ptr noundef nonnull %mw, i32 noundef 2)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call16) #15
  %call26 = call fastcc i32 @ocfs2_lock_create(ptr noundef %9, ptr noundef %fp_flock, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.end55

if.then29:                                        ; preds = %if.then24
  %25 = zext i32 %call26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %call26, label %do.body44 [
    i32 -512, label %if.then29.do.body177_crit_edge
    i32 -4, label %if.then29.do.body177_crit_edge261
    i32 -28, label %if.then29.do.body177_crit_edge262
    i32 -122, label %if.then29.do.body177_crit_edge263
  ]

if.then29.do.body177_crit_edge263:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body177

if.then29.do.body177_crit_edge262:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body177

if.then29.do.body177_crit_edge261:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body177

if.then29.do.body177_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body177

do.body44:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m45) #15
  %26 = ptrtoint ptr %_m45 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 1152921504606849024, ptr %_m45, align 8
  %conv49 = sext i32 %call26 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m45, ptr noundef nonnull @__func__.ocfs2_file_lock, i32 noundef 2005, ptr noundef nonnull @.str.17, i64 noundef %conv49) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m45) #15
  br label %do.body177

if.end55:                                         ; preds = %if.then24
  call void @wait_for_completion(ptr noundef %mw_complete.i) #15
  %27 = ptrtoint ptr %mw_complete.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %mw_complete.i, align 4
  %mw_status.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 1
  %28 = ptrtoint ptr %mw_status.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mw_status.i, align 8
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %29, label %do.body75 [
    i32 0, label %do.body88
    i32 -512, label %if.end55.do.body177_crit_edge
    i32 -4, label %if.end55.do.body177_crit_edge264
    i32 524289, label %if.end55.do.body177_crit_edge265
    i32 -28, label %if.end55.do.body177_crit_edge266
    i32 -122, label %if.end55.do.body177_crit_edge267
  ]

if.end55.do.body177_crit_edge267:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body177

if.end55.do.body177_crit_edge266:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body177

if.end55.do.body177_crit_edge265:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body177

if.end55.do.body177_crit_edge264:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body177

if.end55.do.body177_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body177

do.body75:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m76) #15
  %31 = ptrtoint ptr %_m76 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 1152921504606849024, ptr %_m76, align 8
  %conv80 = sext i32 %29 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m76, ptr noundef nonnull @__func__.ocfs2_file_lock, i32 noundef 2011, ptr noundef nonnull @.str.17, i64 noundef %conv80) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m76) #15
  br label %do.body177

do.body88:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %call96 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  br label %if.end101

if.end101:                                        ; preds = %do.body88, %do.body13.if.end101_crit_edge
  %flags.0 = phi i32 [ %call16, %do.body13.if.end101_crit_edge ], [ %call96, %do.body88 ]
  %l_action = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 13
  %32 = ptrtoint ptr %l_action to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %l_action, align 8
  %or = or i32 %cond2, 4
  %conv102 = trunc i32 %cond to i8
  %l_requested = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 10
  %33 = ptrtoint ptr %l_requested to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv102, ptr %l_requested, align 1
  %34 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %l_flags, align 8
  %or1.i = or i32 %35, 2
  call fastcc void @lockres_set_flags(ptr noundef %fp_flock, i32 noundef %or1.i) #15
  call fastcc void @lockres_add_mask_waiter(ptr noundef %fp_flock, ptr noundef nonnull %mw, i32 noundef 2)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %flags.0) #15
  %cconn = getelementptr inbounds %struct.ocfs2_super, ptr %9, i32 0, i32 65
  %36 = ptrtoint ptr %cconn to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cconn, align 8
  %l_lksb = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 17
  %l_name104 = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 6
  %call106 = call i32 @ocfs2_dlm_lock(ptr noundef %37, i32 noundef %cond, ptr noundef %l_lksb, i32 noundef %or, ptr noundef %l_name104, i32 noundef 31) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end146, label %if.then108

if.then108:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call106)
  %cmp111.not = icmp eq i32 %call106, -11
  %or.cond = select i1 %tobool1.not, i1 %cmp111.not, i1 false
  br i1 %or.cond, label %if.then108.if.end144_crit_edge, label %do.body114

if.then108.if.end144_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end144

do.body114:                                       ; preds = %if.then108
  %l_type = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 12
  %38 = ptrtoint ptr %l_type to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %l_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %39)
  %cmp116.not = icmp eq i8 %39, 5
  br i1 %cmp116.not, label %do.body129, label %do.body119

do.body119:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m120) #15
  %40 = ptrtoint ptr %_m120 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 1152921504606849024, ptr %_m120, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m120, ptr noundef nonnull @__func__.ocfs2_file_lock, i32 noundef 2029, ptr noundef nonnull @.str.27, i32 noundef %call106, ptr noundef nonnull @.str.28, ptr noundef %l_name104) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m120) #15
  br label %if.end144

do.body129:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m130) #15
  %41 = ptrtoint ptr %_m130 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 1152921504606849024, ptr %_m130, align 8
  %arrayidx.i = getelementptr %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 6, i32 18
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %inode_blkno_be.0.copyload.i = load i64, ptr %arrayidx.i, align 2
  %conv137 = trunc i64 %inode_blkno_be.0.copyload.i to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m130, ptr noundef nonnull @__func__.ocfs2_file_lock, i32 noundef 2029, ptr noundef nonnull @.str.29, i32 noundef %call106, ptr noundef nonnull @.str.28, i32 noundef 17, ptr noundef %l_name104, i32 noundef %conv137) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m130) #15
  br label %if.end144

if.end144:                                        ; preds = %do.body129, %do.body119, %if.then108.if.end144_crit_edge
  %ret.0 = phi i32 [ -11, %if.then108.if.end144_crit_edge ], [ -22, %do.body129 ], [ -22, %do.body119 ]
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %43 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %l_flags, align 8
  %and.i.i = and i32 %44, -3
  call fastcc void @lockres_set_flags(ptr noundef %fp_flock, i32 noundef %and.i.i) #15
  %45 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %l_flags, align 8
  %and.i13.i = and i32 %46, -2049
  call fastcc void @lockres_set_flags(ptr noundef %fp_flock, i32 noundef %and.i13.i) #15
  %47 = ptrtoint ptr %l_action to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %l_action, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call2.i) #15
  %l_event.i = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 18
  call void @__wake_up(ptr noundef %l_event.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  %call2.i258 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %call5.i = call fastcc i32 @__lockres_remove_mask_waiter(ptr noundef %fp_flock, ptr noundef nonnull %mw) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call2.i258) #15
  br label %do.body177

if.end146:                                        ; preds = %if.end101
  %call.i = call i32 @wait_for_completion_interruptible(ptr noundef %mw_complete.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %call5.i.i = call fastcc i32 @__lockres_remove_mask_waiter(ptr noundef %fp_flock, ptr noundef nonnull %mw) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call2.i.i) #15
  br label %ocfs2_wait_for_mask_interruptible.exit

if.else.i:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #17
  %mw_status.i260 = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 1
  %48 = ptrtoint ptr %mw_status.i260 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mw_status.i260, align 8
  br label %ocfs2_wait_for_mask_interruptible.exit

ocfs2_wait_for_mask_interruptible.exit:           ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ %49, %if.else.i ]
  %50 = ptrtoint ptr %mw_complete.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %mw_complete.i, align 4
  %51 = zext i32 %ret.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %ret.0.i, label %ocfs2_wait_for_mask_interruptible.exit.do.body177_crit_edge [
    i32 -512, label %if.then150
    i32 0, label %land.lhs.true154
  ]

ocfs2_wait_for_mask_interruptible.exit.do.body177_crit_edge: ; preds = %ocfs2_wait_for_mask_interruptible.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body177

if.then150:                                       ; preds = %ocfs2_wait_for_mask_interruptible.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call151 = call fastcc i32 @ocfs2_flock_handle_signal(ptr noundef %fp_flock, i32 noundef %cond)
  br label %do.body177

land.lhs.true154:                                 ; preds = %ocfs2_wait_for_mask_interruptible.exit
  %52 = ptrtoint ptr %l_level to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %l_level, align 4
  %conv156 = sext i8 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv156)
  %cmp157 = icmp sle i32 %cond, %conv156
  %brmerge = or i1 %tobool1.not, %cmp157
  %.mux = select i1 %cmp157, i32 0, i32 -11, !prof !392
  br i1 %brmerge, label %land.lhs.true154.do.body177_crit_edge, label %do.body166, !prof !393

land.lhs.true154.do.body177_crit_edge:            ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body177

do.body166:                                       ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2058, 0\0A.popsection", ""() #15, !srcloc !394
  unreachable

do.body177:                                       ; preds = %land.lhs.true154.do.body177_crit_edge, %if.then150, %ocfs2_wait_for_mask_interruptible.exit.do.body177_crit_edge, %if.end144, %do.body75, %if.end55.do.body177_crit_edge, %if.end55.do.body177_crit_edge264, %if.end55.do.body177_crit_edge265, %if.end55.do.body177_crit_edge266, %if.end55.do.body177_crit_edge267, %do.body44, %if.then29.do.body177_crit_edge, %if.then29.do.body177_crit_edge261, %if.then29.do.body177_crit_edge262, %if.then29.do.body177_crit_edge263
  %ret.1 = phi i32 [ %ret.0, %if.end144 ], [ %call151, %if.then150 ], [ %.mux, %land.lhs.true154.do.body177_crit_edge ], [ %call26, %if.then29.do.body177_crit_edge ], [ %call26, %if.then29.do.body177_crit_edge261 ], [ %call26, %if.then29.do.body177_crit_edge262 ], [ %call26, %if.then29.do.body177_crit_edge263 ], [ %call26, %do.body44 ], [ %29, %if.end55.do.body177_crit_edge ], [ %29, %if.end55.do.body177_crit_edge264 ], [ %29, %if.end55.do.body177_crit_edge265 ], [ %29, %if.end55.do.body177_crit_edge266 ], [ %29, %if.end55.do.body177_crit_edge267 ], [ %29, %do.body75 ], [ %ret.0.i, %ocfs2_wait_for_mask_interruptible.exit.do.body177_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m178) #15
  %54 = ptrtoint ptr %_m178 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 2048, ptr %_m178, align 8
  %l_name182 = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m178, ptr noundef nonnull @__func__.ocfs2_file_lock, i32 noundef 2065, ptr noundef nonnull @.str.30, ptr noundef %l_name182, i32 noundef %ex, i32 noundef %trylock, i32 noundef %ret.1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m178) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body177, %do.body
  %retval.0 = phi i32 [ -22, %do.body ], [ %ret.1, %do.body177 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %mw) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lockres_add_mask_waiter(ptr noundef %lockres, ptr noundef %mw, i32 noundef %mask) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mw, align 4
  %cmp.i.not = icmp eq ptr %1, %mw
  br i1 %cmp.i.not, label %do.body8, label %do.body4, !prof !376

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1409, 0\0A.popsection", ""() #15, !srcloc !395
  unreachable

do.body8:                                         ; preds = %entry
  %l_lock = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %2 = ptrtoint ptr %l_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %l_lock, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body20, label %do.end25, !prof !386

do.body20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1411, 0\0A.popsection", ""() #15, !srcloc !396
  unreachable

do.end25:                                         ; preds = %do.body8
  %l_mask_waiters = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mw, ptr noundef %5, ptr noundef %l_mask_waiters) #15
  br i1 %call.i.i, label %if.end.i.i, label %do.end25.list_add_tail.exit_crit_edge

do.end25.list_add_tail.exit_crit_edge:            ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mw, ptr %prev.i, align 4
  %7 = ptrtoint ptr %mw to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %l_mask_waiters, ptr %mw, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %mw, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %mw, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end25.list_add_tail.exit_crit_edge
  %mw_mask = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 3
  %10 = ptrtoint ptr %mw_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mask, ptr %mw_mask, align 4
  %mw_goal = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 4
  %11 = ptrtoint ptr %mw_goal to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %mw_goal, align 8
  %12 = ptrtoint ptr %l_mask_waiters to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %l_mask_waiters, align 4
  %cmp.i.not.i = icmp eq ptr %13, %l_mask_waiters
  br i1 %cmp.i.not.i, label %list_add_tail.exit.ocfs2_track_lock_wait.exit_crit_edge, label %if.end.i

list_add_tail.exit.ocfs2_track_lock_wait.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_track_lock_wait.exit

if.end.i:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  %mw_lock_start.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %mw_lock_start.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %mw_lock_start.i, align 8
  %call.i.i1 = tail call i64 @ktime_mono_to_any(i64 noundef %15, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i1)
  %cmp8.i.i.i = icmp slt i64 %call.i.i1, 0
  %16 = tail call i64 @llvm.abs.i64(i64 %call.i.i1, i1 false) #15
  %17 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %16, i32 0) #18, !srcloc !397
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %17, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %17, 1
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %16, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #18, !srcloc !398
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %18, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  br label %ocfs2_track_lock_wait.exit

ocfs2_track_lock_wait.exit:                       ; preds = %if.end.i, %list_add_tail.exit.ocfs2_track_lock_wait.exit_crit_edge
  %cond213.i.i.sink.i = phi i64 [ %cond213.i.i.i, %if.end.i ], [ 0, %list_add_tail.exit.ocfs2_track_lock_wait.exit_crit_edge ]
  %19 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 22
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %cond213.i.i.sink.i, ptr %19, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_lock_create(ptr noundef %osb, ptr noundef %lockres, i32 noundef %level, i32 noundef %dlm_flags) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m30 = alloca i64, align 8
  %_m40 = alloca i64, align 8
  %_m56 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 2048, ptr %_m, align 8
  %l_name = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_lock_create, i32 noundef 1318, ptr noundef nonnull @.str.77, ptr noundef %l_name, i32 noundef %level, i32 noundef %dlm_flags) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  %l_lock = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %1 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %l_flags, align 8
  %3 = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %if.end15, label %if.then13

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call3) #15
  br label %bail

if.end15:                                         ; preds = %entry
  %l_action = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 13
  %5 = ptrtoint ptr %l_action to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %l_action, align 8
  %conv16 = trunc i32 %level to i8
  %l_requested = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 10
  %6 = ptrtoint ptr %l_requested to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv16, ptr %l_requested, align 1
  %or1.i = or i32 %2, 2
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %or1.i) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %7 = ptrtoint ptr %l_lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %l_lock, align 4
  %8 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.body8.i, !prof !386

do.body4.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1105, 0\0A.popsection", ""() #15, !srcloc !399
  unreachable

do.body8.i:                                       ; preds = %if.end15
  %9 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %l_flags, align 8
  %and.i = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %do.body19.i, label %lockres_set_pending.exit, !prof !386

do.body19.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1106, 0\0A.popsection", ""() #15, !srcloc !400
  unreachable

lockres_set_pending.exit:                         ; preds = %do.body8.i
  %or1.i.i = or i32 %10, 1024
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %or1.i.i) #15
  %l_pending_gen.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 15
  %11 = ptrtoint ptr %l_pending_gen.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %l_pending_gen.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call3) #15
  %cconn = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 65
  %13 = ptrtoint ptr %cconn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cconn, align 8
  %l_lksb = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 17
  %call21 = call i32 @ocfs2_dlm_lock(ptr noundef %14, i32 noundef %level, ptr noundef %l_lksb, i32 noundef %dlm_flags, ptr noundef %l_name, i32 noundef 31) #15
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  call fastcc void @__lockres_clear_pending(ptr noundef %lockres, i32 noundef %12, ptr noundef %osb) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call2.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %lockres_set_pending.exit.do.body55_crit_edge, label %do.body24

lockres_set_pending.exit.do.body55_crit_edge:     ; preds = %lockres_set_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body55

do.body24:                                        ; preds = %lockres_set_pending.exit
  %l_type = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 12
  %15 = ptrtoint ptr %l_type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %l_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %16)
  %cmp26.not = icmp eq i8 %16, 5
  br i1 %cmp26.not, label %do.body39, label %do.body29

do.body29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m30) #15
  %17 = ptrtoint ptr %_m30 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1152921504606849024, ptr %_m30, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m30, ptr noundef nonnull @__func__.ocfs2_lock_create, i32 noundef 1341, ptr noundef nonnull @.str.27, i32 noundef %call21, ptr noundef nonnull @.str.28, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m30) #15
  br label %do.end53

do.body39:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m40) #15
  %18 = ptrtoint ptr %_m40 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606849024, ptr %_m40, align 8
  %arrayidx.i = getelementptr %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6, i32 18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %inode_blkno_be.0.copyload.i = load i64, ptr %arrayidx.i, align 2
  %conv47 = trunc i64 %inode_blkno_be.0.copyload.i to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m40, ptr noundef nonnull @__func__.ocfs2_lock_create, i32 noundef 1341, ptr noundef nonnull @.str.29, i32 noundef %call21, ptr noundef nonnull @.str.28, i32 noundef 17, ptr noundef %l_name, i32 noundef %conv47) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m40) #15
  br label %do.end53

do.end53:                                         ; preds = %do.body39, %do.body29
  %call2.i94 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %20 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %l_flags, align 8
  %and.i.i = and i32 %21, -3
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %and.i.i) #15
  %22 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %l_flags, align 8
  %and.i13.i = and i32 %23, -2049
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %and.i13.i) #15
  %24 = ptrtoint ptr %l_action to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %l_action, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call2.i94) #15
  %l_event.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 18
  call void @__wake_up(ptr noundef %l_event.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %do.body55

do.body55:                                        ; preds = %do.end53, %lockres_set_pending.exit.do.body55_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m56) #15
  %25 = ptrtoint ptr %_m56 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 2048, ptr %_m56, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m56, ptr noundef nonnull @__func__.ocfs2_lock_create, i32 noundef 1345, ptr noundef nonnull @.str.78, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m56) #15
  br label %bail

bail:                                             ; preds = %do.body55, %if.then13
  %ret.0 = phi i32 [ 0, %if.then13 ], [ %call21, %do.body55 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_dlm_lock(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_flock_handle_signal(ptr noundef %lockres, i32 noundef %level) unnamed_addr #0 align 64 {
entry:
  %mw = alloca %struct.ocfs2_mask_waiter, align 8
  %_m = alloca i64, align 8
  %_m48 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_ops.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 1
  %0 = ptrtoint ptr %l_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l_ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call ptr %3(ptr noundef %lockres) #15
  br label %ocfs2_get_lockres_osb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %lockres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lockres, align 8
  br label %ocfs2_get_lockres_osb.exit

ocfs2_get_lockres_osb.exit:                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call.i, %if.then.i ], [ %5, %if.end.i ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %mw) #15
  %6 = getelementptr inbounds i8, ptr %mw, i32 8
  %7 = call ptr @memset(ptr %6, i32 255, i32 80)
  %8 = ptrtoint ptr %mw to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %mw, ptr %mw, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mw, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mw, ptr %prev.i.i, align 4
  %mw_complete.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 2
  %10 = ptrtoint ptr %mw_complete.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mw_complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @init_completion.__key) #15
  %call.i.i = call i64 @ktime_get() #15
  %mw_lock_start.i.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 5
  %11 = ptrtoint ptr %mw_lock_start.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call.i.i, ptr %mw_lock_start.i.i, align 8
  %l_lock = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  %call389 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %12 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %l_flags, align 8
  %and90 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool.not91 = icmp eq i32 %and90, 0
  br i1 %tobool.not91, label %ocfs2_get_lockres_osb.exit.if.end41_crit_edge, label %ocfs2_get_lockres_osb.exit.if.then_crit_edge

ocfs2_get_lockres_osb.exit.if.then_crit_edge:     ; preds = %ocfs2_get_lockres_osb.exit
  br label %if.then

ocfs2_get_lockres_osb.exit.if.end41_crit_edge:    ; preds = %ocfs2_get_lockres_osb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then:                                          ; preds = %retry_cancel.backedge.if.then_crit_edge, %ocfs2_get_lockres_osb.exit.if.then_crit_edge
  %call392 = phi i32 [ %call3, %retry_cancel.backedge.if.then_crit_edge ], [ %call389, %ocfs2_get_lockres_osb.exit.if.then_crit_edge ]
  %call6 = call fastcc i32 @ocfs2_prepare_cancel_convert(ptr noundef %lockres)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end38, label %if.then8

if.then8:                                         ; preds = %if.then
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call392) #15
  %call10 = call fastcc i32 @ocfs2_cancel_convert(ptr noundef %retval.0.i, ptr noundef %lockres)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.then8.retry_cancel.backedge_crit_edge

if.then8.retry_cancel.backedge_crit_edge:         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %retry_cancel.backedge

if.then13:                                        ; preds = %if.then8
  %14 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %call10, label %do.body28 [
    i32 -512, label %if.then13.out_crit_edge
    i32 -4, label %if.then13.out_crit_edge105
    i32 -28, label %if.then13.out_crit_edge106
    i32 -122, label %if.then13.out_crit_edge107
  ]

if.then13.out_crit_edge107:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then13.out_crit_edge106:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then13.out_crit_edge105:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body28:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %15 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1152921504606849024, ptr %_m, align 8
  %conv32 = sext i32 %call10 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_flock_handle_signal, i32 noundef 1923, ptr noundef nonnull @.str.17, i64 noundef %conv32) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %out

if.end38:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @lockres_add_mask_waiter(ptr noundef %lockres, ptr noundef nonnull %mw, i32 noundef 2)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call392) #15
  call void @wait_for_completion(ptr noundef %mw_complete.i) #15
  %16 = ptrtoint ptr %mw_complete.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %mw_complete.i, align 4
  br label %retry_cancel.backedge

retry_cancel.backedge:                            ; preds = %if.end38, %if.then8.retry_cancel.backedge_crit_edge
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %17 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %l_flags, align 8
  %and = and i32 %18, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %retry_cancel.backedge.if.end41_crit_edge, label %retry_cancel.backedge.if.then_crit_edge

retry_cancel.backedge.if.then_crit_edge:          ; preds = %retry_cancel.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

retry_cancel.backedge.if.end41_crit_edge:         ; preds = %retry_cancel.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.end41:                                         ; preds = %retry_cancel.backedge.if.end41_crit_edge, %ocfs2_get_lockres_osb.exit.if.end41_crit_edge
  %call3.lcssa = phi i32 [ %call389, %ocfs2_get_lockres_osb.exit.if.end41_crit_edge ], [ %call3, %retry_cancel.backedge.if.end41_crit_edge ]
  %.lcssa = phi i32 [ %13, %ocfs2_get_lockres_osb.exit.if.end41_crit_edge ], [ %18, %retry_cancel.backedge.if.end41_crit_edge ]
  %l_level = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 9
  %19 = ptrtoint ptr %l_level to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %l_level, align 4
  %conv42 = sext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv42, i32 %level)
  %cmp43 = icmp eq i32 %conv42, %level
  %spec.store.select = select i1 %cmp43, i32 0, i32 -512
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m48) #15
  %21 = ptrtoint ptr %_m48 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 2048, ptr %_m48, align 8
  %l_action = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 13
  %22 = ptrtoint ptr %l_action to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %l_action, align 8
  %conv55 = zext i8 %23 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m48, ptr noundef nonnull @__func__.ocfs2_flock_handle_signal, i32 noundef 1944, ptr noundef nonnull @.str.79, i32 noundef %spec.store.select, i32 noundef %.lcssa, i32 noundef %conv42, i32 noundef %conv55) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m48) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call3.lcssa) #15
  br label %out

out:                                              ; preds = %if.end41, %do.body28, %if.then13.out_crit_edge, %if.then13.out_crit_edge105, %if.then13.out_crit_edge106, %if.then13.out_crit_edge107
  %ret.0 = phi i32 [ %spec.store.select, %if.end41 ], [ %call10, %if.then13.out_crit_edge ], [ %call10, %if.then13.out_crit_edge105 ], [ %call10, %if.then13.out_crit_edge106 ], [ %call10, %if.then13.out_crit_edge107 ], [ %call10, %do.body28 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %mw) #15
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_file_unlock(ptr nocapture noundef readonly %file) local_unnamed_addr #0 align 64 {
entry:
  %mw = alloca %struct.ocfs2_mask_waiter, align 8
  %_m = alloca i64, align 8
  %_m41 = alloca i64, align 8
  %_m72 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fp_flock = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %mw) #15
  %10 = getelementptr inbounds i8, ptr %mw, i32 8
  %11 = call ptr @memset(ptr %10, i32 255, i32 80)
  %12 = ptrtoint ptr %mw to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %mw, ptr %mw, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mw, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mw, ptr %prev.i.i, align 4
  %mw_complete.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 2
  %14 = ptrtoint ptr %mw_complete.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %mw_complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @init_completion.__key) #15
  %call.i.i = call i64 @ktime_get() #15
  %mw_lock_start.i.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 5
  %15 = ptrtoint ptr %mw_lock_start.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call.i.i, ptr %mw_lock_start.i.i, align 8
  %l_flags = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %l_flags, align 8
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %l_level = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 9
  %18 = ptrtoint ptr %l_level to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %l_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp = icmp eq i8 %19, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %20 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 2048, ptr %_m, align 8
  %l_name = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 6
  %conv9 = sext i8 %19 to i32
  %l_action = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 13
  %21 = ptrtoint ptr %l_action to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %l_action, align 8
  %conv10 = zext i8 %22 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_file_unlock, i32 noundef 2089, ptr noundef nonnull @.str.31, ptr noundef %l_name, i32 noundef %17, i32 noundef %conv9, i32 noundef %conv10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  %l_lock = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 16
  %call16 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %23 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %l_flags, align 8
  %or1.i = or i32 %24, 4
  call fastcc void @lockres_set_flags(ptr noundef %fp_flock, i32 noundef %or1.i) #15
  %l_blocking = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2, i32 11
  %25 = ptrtoint ptr %l_blocking to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 5, ptr %l_blocking, align 2
  %call21 = call fastcc i32 @ocfs2_prepare_downconvert(ptr noundef %fp_flock, i32 noundef 0)
  call fastcc void @lockres_add_mask_waiter(ptr noundef %fp_flock, ptr noundef nonnull %mw, i32 noundef 2)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call16) #15
  %call23 = call fastcc i32 @ocfs2_downconvert_lock(ptr noundef %9, ptr noundef %fp_flock, i32 noundef 0, i32 noundef 0, i32 noundef %call21)
  %26 = zext i32 %call23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %call23, label %do.body40 [
    i32 0, label %if.end51
    i32 -512, label %do.body.cleanup_crit_edge
    i32 -4, label %do.body.cleanup_crit_edge118
    i32 524289, label %do.body.cleanup_crit_edge119
    i32 -28, label %do.body.cleanup_crit_edge120
    i32 -122, label %do.body.cleanup_crit_edge121
  ]

do.body.cleanup_crit_edge121:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.cleanup_crit_edge120:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.cleanup_crit_edge119:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.cleanup_crit_edge118:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body40:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m41) #15
  %27 = ptrtoint ptr %_m41 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 1152921504606849024, ptr %_m41, align 8
  %conv45 = sext i32 %call23 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m41, ptr noundef nonnull @__func__.ocfs2_file_unlock, i32 noundef 2104, ptr noundef nonnull @.str.17, i64 noundef %conv45) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m41) #15
  br label %cleanup

if.end51:                                         ; preds = %do.body
  call void @wait_for_completion(ptr noundef %mw_complete.i) #15
  %28 = ptrtoint ptr %mw_complete.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %mw_complete.i, align 4
  %mw_status.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 1
  %29 = ptrtoint ptr %mw_status.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mw_status.i, align 8
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %30, label %do.body71 [
    i32 0, label %if.end51.cleanup_crit_edge
    i32 -512, label %if.end51.cleanup_crit_edge122
    i32 -4, label %if.end51.cleanup_crit_edge123
    i32 524289, label %if.end51.cleanup_crit_edge124
    i32 -28, label %if.end51.cleanup_crit_edge125
    i32 -122, label %if.end51.cleanup_crit_edge126
  ]

if.end51.cleanup_crit_edge126:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end51.cleanup_crit_edge125:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end51.cleanup_crit_edge124:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end51.cleanup_crit_edge123:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end51.cleanup_crit_edge122:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body71:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m72) #15
  %32 = ptrtoint ptr %_m72 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1152921504606849024, ptr %_m72, align 8
  %conv76 = sext i32 %30 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m72, ptr noundef nonnull @__func__.ocfs2_file_unlock, i32 noundef 2110, ptr noundef nonnull @.str.17, i64 noundef %conv76) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m72) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body71, %if.end51.cleanup_crit_edge, %if.end51.cleanup_crit_edge122, %if.end51.cleanup_crit_edge123, %if.end51.cleanup_crit_edge124, %if.end51.cleanup_crit_edge125, %if.end51.cleanup_crit_edge126, %do.body40, %do.body.cleanup_crit_edge, %do.body.cleanup_crit_edge118, %do.body.cleanup_crit_edge119, %do.body.cleanup_crit_edge120, %do.body.cleanup_crit_edge121, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %mw) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_prepare_downconvert(ptr noundef %lockres, i32 noundef %new_level) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m48 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_lock = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %l_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %l_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.body8, !prof !386

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3616, 0\0A.popsection", ""() #15, !srcloc !401
  unreachable

do.body8:                                         ; preds = %entry
  %l_blocking = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 11
  %2 = ptrtoint ptr %l_blocking to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %l_blocking, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp slt i8 %3, 1
  br i1 %cmp, label %do.body17, label %do.end22, !prof !386

do.body17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3618, 0\0A.popsection", ""() #15, !srcloc !402
  unreachable

do.end22:                                         ; preds = %do.body8
  %l_level = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 9
  %4 = ptrtoint ptr %l_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %l_level, align 4
  %conv23 = sext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv23, i32 %new_level)
  %cmp24.not = icmp sgt i32 %conv23, %new_level
  br i1 %cmp24.not, label %do.body47, label %do.body27

do.body27:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606849024, ptr %_m, align 8
  %l_name = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  %l_blocked_list = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 2
  %7 = ptrtoint ptr %l_blocked_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %l_blocked_list, align 4
  %cmp.i = icmp eq ptr %8, %l_blocked_list
  %conv.i = zext i1 %cmp.i to i32
  %l_mask_waiters = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 3
  %9 = ptrtoint ptr %l_mask_waiters to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %l_mask_waiters, align 4
  %cmp.i89 = icmp eq ptr %10, %l_mask_waiters
  %conv.i90 = zext i1 %cmp.i89 to i32
  %l_type = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 12
  %11 = ptrtoint ptr %l_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %l_type, align 1
  %conv34 = zext i8 %12 to i32
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %13 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %l_flags, align 8
  %l_ro_holders = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 7
  %15 = ptrtoint ptr %l_ro_holders to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %l_ro_holders, align 4
  %l_ex_holders = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 8
  %17 = ptrtoint ptr %l_ex_holders to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %l_ex_holders, align 8
  %l_action = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 13
  %19 = ptrtoint ptr %l_action to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %l_action, align 8
  %conv35 = zext i8 %20 to i32
  %l_unlock_action = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 14
  %21 = ptrtoint ptr %l_unlock_action to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %l_unlock_action, align 1
  %conv36 = zext i8 %22 to i32
  %l_requested = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 10
  %23 = ptrtoint ptr %l_requested to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %l_requested, align 1
  %conv37 = sext i8 %24 to i32
  %conv3993 = zext i8 %3 to i32
  %l_pending_gen = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 15
  %25 = ptrtoint ptr %l_pending_gen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %l_pending_gen, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_prepare_downconvert, i32 noundef 3629, ptr noundef nonnull @.str.116, ptr noundef %l_name, i32 noundef %conv23, i32 noundef %new_level, i32 noundef %conv.i, i32 noundef %conv.i90, i32 noundef %conv34, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %conv35, i32 noundef %conv36, i32 noundef %conv37, i32 noundef %conv3993, i32 noundef %26) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3630, 0\0A.popsection", ""() #15, !srcloc !403
  unreachable

do.body47:                                        ; preds = %do.end22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m48) #15
  %27 = ptrtoint ptr %_m48 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 34816, ptr %_m48, align 8
  %l_name52 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  %conv5792 = zext i8 %3 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m48, ptr noundef nonnull @__func__.ocfs2_prepare_downconvert, i32 noundef 3634, ptr noundef nonnull @.str.117, ptr noundef %l_name52, i32 noundef %conv23, i32 noundef %new_level, i32 noundef %conv5792) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m48) #15
  %l_action60 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 13
  %28 = ptrtoint ptr %l_action60 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %l_action60, align 8
  %conv61 = trunc i32 %new_level to i8
  %l_requested62 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 10
  %29 = ptrtoint ptr %l_requested62 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv61, ptr %l_requested62, align 1
  %l_flags.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %30 = ptrtoint ptr %l_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %l_flags.i, align 8
  %or1.i = or i32 %31, 2
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %or1.i) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %32 = ptrtoint ptr %l_lock to i32
  call void @__asan_load4_noabort(i32 %32)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %l_lock, align 4
  %33 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.body8.i, !prof !386

do.body4.i:                                       ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1105, 0\0A.popsection", ""() #15, !srcloc !399
  unreachable

do.body8.i:                                       ; preds = %do.body47
  %34 = ptrtoint ptr %l_flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %l_flags.i, align 8
  %and.i = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %do.body19.i, label %lockres_set_pending.exit, !prof !386

do.body19.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1106, 0\0A.popsection", ""() #15, !srcloc !400
  unreachable

lockres_set_pending.exit:                         ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #17
  %or1.i.i = or i32 %35, 1024
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %or1.i.i) #15
  %l_pending_gen.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 15
  %36 = ptrtoint ptr %l_pending_gen.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %l_pending_gen.i, align 4
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_downconvert_lock(ptr noundef %osb, ptr noundef %lockres, i32 noundef %new_level, i32 noundef %lvb, i32 noundef %generation) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m19 = alloca i64, align 8
  %_m29 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 34816, ptr %_m, align 8
  %l_name = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  %l_level = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 9
  %1 = ptrtoint ptr %l_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %l_level, align 4
  %conv = sext i8 %2 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_downconvert_lock, i32 noundef 3652, ptr noundef nonnull @.str.118, ptr noundef %l_name, i32 noundef %conv, i32 noundef %new_level) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 19
  %3 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_feature_incompat.i.i, align 8
  %and.i.i = and i32 %4, 16512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %entry.if.end5_crit_edge, label %land.lhs.true.i

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

land.lhs.true.i:                                  ; preds = %entry
  %osb_cluster_stack.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 63
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(4) %osb_cluster_stack.i, ptr noundef nonnull dereferenceable(4) @.str.119, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool2.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end5_crit_edge, label %land.lhs.true

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

land.lhs.true:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %l_ops = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 1
  %5 = ptrtoint ptr %l_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %l_ops, align 4
  %flags = getelementptr inbounds %struct.ocfs2_lock_res_ops, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and2 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %spec.select = select i1 %tobool3.not, i32 %lvb, i32 1
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %land.lhs.true.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %lvb.addr.0 = phi i32 [ %spec.select, %land.lhs.true ], [ %lvb, %entry.if.end5_crit_edge ], [ %lvb, %land.lhs.true.i.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lvb.addr.0)
  %tobool6.not = icmp eq i32 %lvb.addr.0, 0
  %spec.select61 = select i1 %tobool6.not, i32 4, i32 12
  %cconn = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 65
  %9 = ptrtoint ptr %cconn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cconn, align 8
  %l_lksb = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 17
  %call11 = call i32 @ocfs2_dlm_lock(ptr noundef %10, i32 noundef %new_level, ptr noundef %l_lksb, i32 noundef %spec.select61, ptr noundef %l_name, i32 noundef 31) #15
  %l_lock.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock.i) #15
  call fastcc void @__lockres_clear_pending(ptr noundef %lockres, i32 noundef %generation, ptr noundef %osb) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock.i, i32 noundef %call2.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end5.bail_crit_edge, label %do.body14

if.end5.bail_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

do.body14:                                        ; preds = %if.end5
  %l_type = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 12
  %11 = ptrtoint ptr %l_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %l_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %12)
  %cmp.not = icmp eq i8 %12, 5
  br i1 %cmp.not, label %do.body28, label %do.body18

do.body18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m19) #15
  %13 = ptrtoint ptr %_m19 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1152921504606849024, ptr %_m19, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m19, ptr noundef nonnull @__func__.ocfs2_downconvert_lock, i32 noundef 3675, ptr noundef nonnull @.str.27, i32 noundef %call11, ptr noundef nonnull @.str.28, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m19) #15
  br label %do.end42

do.body28:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m29) #15
  %14 = ptrtoint ptr %_m29 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606849024, ptr %_m29, align 8
  %arrayidx.i = getelementptr %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6, i32 18
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %inode_blkno_be.0.copyload.i = load i64, ptr %arrayidx.i, align 2
  %conv36 = trunc i64 %inode_blkno_be.0.copyload.i to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m29, ptr noundef nonnull @__func__.ocfs2_downconvert_lock, i32 noundef 3675, ptr noundef nonnull @.str.29, i32 noundef %call11, ptr noundef nonnull @.str.28, i32 noundef 17, ptr noundef %l_name, i32 noundef %conv36) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m29) #15
  br label %do.end42

do.end42:                                         ; preds = %do.body28, %do.body18
  %call2.i63 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock.i) #15
  %l_flags.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %16 = ptrtoint ptr %l_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %l_flags.i.i, align 8
  %and.i.i64 = and i32 %17, -3
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %and.i.i64) #15
  %18 = ptrtoint ptr %l_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %l_flags.i.i, align 8
  %and.i13.i = and i32 %19, -2049
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %and.i13.i) #15
  %l_action.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 13
  %20 = ptrtoint ptr %l_action.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %l_action.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock.i, i32 noundef %call2.i63) #15
  %l_event.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 18
  call void @__wake_up(ptr noundef %l_event.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %bail

bail:                                             ; preds = %do.end42, %if.end5.bail_crit_edge
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_inode_lock_full_nested(ptr noundef %inode, ptr noundef %ret_bh, i32 noundef %ex, i32 noundef %arg_flags, i32 noundef %subclass) local_unnamed_addr #0 align 64 {
entry:
  %_m.i202 = alloca i64, align 8
  %_m.i = alloca i64, align 8
  %_m21.i = alloca i64, align 8
  %_m42.i = alloca i64, align 8
  %_m60.i = alloca i64, align 8
  %_m68.i = alloca i64, align 8
  %_m93.i = alloca i64, align 8
  %_m101.i = alloca i64, align 8
  %local_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m40 = alloca i64, align 8
  %_m85 = alloca i64, align 8
  %_m120 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %local_bh) #15
  %4 = ptrtoint ptr %local_bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %local_bh, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %5 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 2048, ptr %_m, align 8
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ex)
  %tobool1.not = icmp eq i32 %ex, 0
  %cond = select i1 %tobool1.not, ptr @.str.20, ptr @.str.19
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_inode_lock_full_nested, i32 noundef 2437, ptr noundef nonnull @.str.32, i64 noundef %7, ptr noundef nonnull %cond) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %osb_lock.i) #15
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 23
  %8 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %9, 2
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not = icmp eq i32 %and.i, 0
  br i1 %tobool3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %spec.select = select i1 %tobool1.not, i32 0, i32 -30
  br label %getbh

if.end8:                                          ; preds = %entry
  %and9 = and i32 %arg_flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.end8.update_crit_edge

if.end8.update_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %update

lor.lhs.false:                                    ; preds = %if.end8
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 19
  %10 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i197 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i197)
  %tobool.not.i = icmp eq i32 %and.i197, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %lor.lhs.false.update_crit_edge

lor.lhs.false.update_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %update

ocfs2_mount_local.exit:                           ; preds = %lor.lhs.false
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 28
  %12 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_mount_opt.i, align 8
  %14 = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  br i1 %tobool12.not, label %if.end14, label %ocfs2_mount_local.exit.update_crit_edge

ocfs2_mount_local.exit.update_crit_edge:          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %update

if.end14:                                         ; preds = %ocfs2_mount_local.exit
  %and15 = and i32 %arg_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  call void @ocfs2_wait_for_recovery(ptr noundef %3) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %ip_inode_lockres = getelementptr i8, ptr %inode, i32 -1208
  %cond21 = select i1 %tobool1.not, i32 3, i32 5
  %and22 = lshr i32 %arg_flags, 1
  %and22.lobit = and i32 %and22, 1
  %15 = call ptr @llvm.returnaddress(i32 0)
  %16 = ptrtoint ptr %15 to i32
  %call26 = call fastcc i32 @__ocfs2_cluster_lock(ptr noundef %3, ptr noundef %ip_inode_lockres, i32 noundef %cond21, i32 noundef %and22.lobit, i32 noundef %arg_flags, i32 noundef %subclass, i32 noundef %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %if.then27, label %if.end49

if.then27:                                        ; preds = %if.end18
  %17 = zext i32 %call26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %call26, label %do.body39 [
    i32 -11, label %if.then27.if.then134_crit_edge
    i32 -512, label %if.then27.if.then134_crit_edge251
    i32 -4, label %if.then27.if.then134_crit_edge252
    i32 -28, label %if.then27.if.then134_crit_edge253
    i32 -122, label %if.then27.if.then134_crit_edge254
  ]

if.then27.if.then134_crit_edge254:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then134

if.then27.if.then134_crit_edge253:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then134

if.then27.if.then134_crit_edge252:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then134

if.then27.if.then134_crit_edge251:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then134

if.then27.if.then134_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then134

do.body39:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m40) #15
  %18 = ptrtoint ptr %_m40 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606849024, ptr %_m40, align 8
  %conv = sext i32 %call26 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m40, ptr noundef nonnull @__func__.ocfs2_inode_lock_full_nested, i32 noundef 2466, ptr noundef nonnull @.str.17, i64 noundef %conv) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m40) #15
  br label %if.then134

if.end49:                                         ; preds = %if.end18
  br i1 %tobool16.not, label %if.then52, label %if.end49.update_crit_edge

if.end49.update_crit_edge:                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %update

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  call void @ocfs2_wait_for_recovery(ptr noundef %3) #15
  br label %update

update:                                           ; preds = %if.then52, %if.end49.update_crit_edge, %ocfs2_mount_local.exit.update_crit_edge, %lor.lhs.false.update_crit_edge, %if.end8.update_crit_edge
  %lockres.0 = phi ptr [ null, %if.end8.update_crit_edge ], [ null, %ocfs2_mount_local.exit.update_crit_edge ], [ %ip_inode_lockres, %if.end49.update_crit_edge ], [ %ip_inode_lockres, %if.then52 ], [ null, %lor.lhs.false.update_crit_edge ]
  %acquired.0 = phi i32 [ 0, %if.end8.update_crit_edge ], [ 0, %ocfs2_mount_local.exit.update_crit_edge ], [ 1, %if.end49.update_crit_edge ], [ 1, %if.then52 ], [ 0, %lor.lhs.false.update_crit_edge ]
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %19 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_state, align 8
  %and54 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end60, label %if.then56

if.then56:                                        ; preds = %update
  %tobool57.not = icmp eq ptr %lockres.0, null
  br i1 %tobool57.not, label %if.then56.if.end143_crit_edge, label %if.then58

if.then56.if.end143_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end143

if.then58:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #17
  %l_lock.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres.0, i32 0, i32 16
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock.i) #15
  %l_flags.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres.0, i32 0, i32 5
  %21 = ptrtoint ptr %l_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %l_flags.i.i, align 8
  %and.i.i = and i32 %22, -33
  call fastcc void @lockres_set_flags(ptr noundef nonnull %lockres.0, i32 noundef %and.i.i) #15
  %23 = ptrtoint ptr %l_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %l_flags.i.i, align 8
  %and.i11.i = and i32 %24, -17
  call fastcc void @lockres_set_flags(ptr noundef nonnull %lockres.0, i32 noundef %and.i11.i) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock.i, i32 noundef %call2.i) #15
  %l_event.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres.0, i32 0, i32 18
  call void @__wake_up(ptr noundef %l_event.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %if.end143

if.end60:                                         ; preds = %update
  %ip_inode_lockres.i = getelementptr i8, ptr %inode, i32 -1208
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_feature_incompat.i.i, align 8
  %and.i.i199 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i199)
  %tobool.not.i.i = icmp eq i32 %and.i.i199, 0
  br i1 %tobool.not.i.i, label %ocfs2_mount_local.exit.i, label %if.end60.getbh_crit_edge

if.end60.getbh_crit_edge:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  br label %getbh

ocfs2_mount_local.exit.i:                         ; preds = %if.end60
  %s_mount_opt.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %28, i32 0, i32 28
  %31 = ptrtoint ptr %s_mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_mount_opt.i.i, align 8
  %33 = and i32 %32, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i200 = icmp eq i32 %33, 0
  br i1 %tobool.not.i200, label %if.end.i, label %ocfs2_mount_local.exit.i.getbh_crit_edge

ocfs2_mount_local.exit.i.getbh_crit_edge:         ; preds = %ocfs2_mount_local.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %getbh

if.end.i:                                         ; preds = %ocfs2_mount_local.exit.i
  %ip_lock.i = getelementptr i8, ptr %inode, i32 -232
  call void @_raw_spin_lock(ptr noundef %ip_lock.i) #15
  %ip_flags.i = getelementptr i8, ptr %inode, i32 -76
  %34 = ptrtoint ptr %ip_flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ip_flags.i, align 4
  %and.i201 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i201)
  %tobool2.not.i = icmp eq i32 %and.i201, 0
  br i1 %tobool2.not.i, label %if.end10.i, label %if.then64.thread

if.then64.thread:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #15
  %36 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 2048, ptr %_m.i, align 8
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %add.ptr.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_inode_lock_update, i32 noundef 2328, ptr noundef nonnull @.str.90, i64 noundef %38, i32 noundef %35) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #15
  call void @_raw_spin_unlock(ptr noundef %ip_lock.i) #15
  br label %if.then134

if.end10.i:                                       ; preds = %if.end.i
  call void @_raw_spin_unlock(ptr noundef %ip_lock.i) #15
  %call12.i = call fastcc i32 @ocfs2_should_refresh_lock_res(ptr noundef %ip_inode_lockres.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end10.i.getbh_crit_edge, label %if.end15.i

if.end10.i.getbh_crit_edge:                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %getbh

if.end15.i:                                       ; preds = %if.end10.i
  %ip_metadata_cache.i.i = getelementptr i8, ptr %inode, i32 -56
  call void @ocfs2_metadata_cache_purge(ptr noundef %ip_metadata_cache.i.i) #15
  call void @ocfs2_extent_map_trunc(ptr noundef %inode, i32 noundef 0) #15
  %l_lksb.i.i = getelementptr i8, ptr %inode, i32 -1076
  %call.i.i = call ptr @ocfs2_dlm_lvb(ptr noundef %l_lksb.i.i) #15
  %call2.i.i = call i32 @ocfs2_dlm_lvb_valid(ptr noundef %l_lksb.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i160.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i160.i, label %if.end15.i.if.else.i_crit_edge, label %land.lhs.true.i.i

if.end15.i.if.else.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i.i:                                ; preds = %if.end15.i
  %39 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %call.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %40)
  %cmp.i.i = icmp eq i8 %40, 5
  br i1 %cmp.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i.i.if.else.i_crit_edge

land.lhs.true.i.i.if.else.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %lvb_igeneration.i.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call.i.i, i32 0, i32 13
  %41 = ptrtoint ptr %lvb_igeneration.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lvb_igeneration.i.i, align 8
  %i_generation.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %43 = ptrtoint ptr %i_generation.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i_generation.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp5.i.i = icmp eq i32 %42, %44
  br i1 %cmp5.i.i, label %do.body20.i, label %land.lhs.true4.i.i.if.else.i_crit_edge

land.lhs.true4.i.i.if.else.i_crit_edge:           ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

do.body20.i:                                      ; preds = %land.lhs.true4.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m21.i) #15
  %45 = ptrtoint ptr %_m21.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 2048, ptr %_m21.i, align 8
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m21.i, ptr noundef nonnull @__func__.ocfs2_inode_lock_update, i32 noundef 2346, ptr noundef nonnull @.str.91, i64 noundef %47) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m21.i) #15
  call fastcc void @ocfs2_dump_meta_lvb_info(ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_refresh_inode_from_lvb, i32 noundef 2212, ptr noundef %ip_inode_lockres.i) #15
  %call1.i.i = call ptr @ocfs2_dlm_lvb(ptr noundef %l_lksb.i.i) #15
  %lvb_imode.i.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i.i, i32 0, i32 10
  %48 = ptrtoint ptr %lvb_imode.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %lvb_imode.i.i, align 8
  %50 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %inode, align 8
  %xor2.i.i.i = xor i16 %51, %49
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i.i.i)
  %tobool.i.i.i = icmp ugt i16 %xor2.i.i.i, 4095
  br i1 %tobool.i.i.i, label %do.body20.i.bail_refresh.i_crit_edge, label %if.end.i162.i

do.body20.i.bail_refresh.i_crit_edge:             ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail_refresh.i

if.end.i162.i:                                    ; preds = %do.body20.i
  call void @_raw_spin_lock(ptr noundef %ip_lock.i) #15
  %lvb_iclusters.i.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %lvb_iclusters.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lvb_iclusters.i.i, align 4
  %ip_clusters.i.i = getelementptr i8, ptr %inode, i32 -176
  %54 = ptrtoint ptr %ip_clusters.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %ip_clusters.i.i, align 8
  %lvb_isize.i.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i.i, i32 0, i32 9
  %55 = ptrtoint ptr %lvb_isize.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %lvb_isize.i.i, align 8
  %57 = call i32 @llvm.read_register.i32(metadata !365) #15
  %and.i.i.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %60, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !404
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %61 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.i.i.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i162.i.i_size_write.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i162.i.i_size_write.exit.i.i_crit_edge:    ; preds = %if.end.i162.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_size_write.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i162.i
  %62 = call i32 @llvm.read_register.i32(metadata !365) #15
  %and.i.i.i.i.i.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %65, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !405
  %66 = call i32 @llvm.read_register.i32(metadata !365) #15
  %and.i.i.i.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i28.i.i.i = add i32 %71, ptrtoint (ptr @lockdep_recursion to i32)
  %72 = inttoptr i32 %add.i28.i.i.i to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !406
  %75 = call i32 @llvm.read_register.i32(metadata !365) #15
  %and.i.i.i7.i.i.i.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %78, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool20.not.i.i.i.i = icmp eq i32 %74, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.i_size_write.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.i_size_write.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_size_write.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %79 = call i32 @llvm.read_register.i32(metadata !365) #15
  %and.i.i.i29.i.i.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i29.i.i.i to ptr
  %preempt_count.i.i30.i.i.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i30.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.i.i.i.i = icmp eq i32 %82, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.i_size_write.exit.i.i_crit_edge

land.rhs.i.i.i.i.i_size_write.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_size_write.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %83 = call i32 @llvm.read_register.i32(metadata !365) #15
  %and.i.i.i9.i.i.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %86, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !407
  %87 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %88
  %89 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %90, ptrtoint (ptr @hardirqs_enabled to i32)
  %91 = inttoptr i32 %add47.i.i.i.i to ptr
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %91, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !408
  %94 = call i32 @llvm.read_register.i32(metadata !365) #15
  %and.i.i.i12.i.i.i.i = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %97, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool54.not.i.i.i.i = icmp eq i32 %93, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.i_size_write.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.i_size_write.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_size_write.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.i_size_write.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !376

land.rhs58.i.i.i.i.i_size_write.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_size_write.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %i_size_write.exit.i.i

i_size_write.exit.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.i_size_write.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.i_size_write.exit.i.i_crit_edge, %land.rhs.i.i.i.i.i_size_write.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.i_size_write.exit.i.i_crit_edge, %if.end.i162.i.i_size_write.exit.i.i_crit_edge
  %i_size_seqcount.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %98 = ptrtoint ptr %i_size_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %i_size_seqcount.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %99, 1
  store i32 %inc.i.i.i.i.i.i, ptr %i_size_seqcount.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !409
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %100 = call ptr @llvm.returnaddress(i32 0) #15
  %101 = ptrtoint ptr %100 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %101) #15
  %i_size8.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %102 = ptrtoint ptr %i_size8.i.i.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %56, ptr %i_size8.i.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %101) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !410
  %103 = ptrtoint ptr %i_size_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %i_size_seqcount.i.i.i, align 4
  %inc.i.i.i.i.i = add i32 %104, 1
  store i32 %inc.i.i.i.i.i, ptr %i_size_seqcount.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !411
  %105 = call i32 @llvm.read_register.i32(metadata !365) #15
  %and.i.i.i26.i.i.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i26.i.i.i to ptr
  %preempt_count.i.i27.i.i.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i27.i.i.i, align 4
  %sub.i.i.i.i = add i32 %108, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i27.i.i.i, align 4
  %lvb_iattr.i.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i.i, i32 0, i32 12
  %109 = ptrtoint ptr %lvb_iattr.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %lvb_iattr.i.i, align 4
  %ip_attr.i.i = getelementptr i8, ptr %inode, i32 -72
  %111 = ptrtoint ptr %ip_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %ip_attr.i.i, align 8
  %lvb_idynfeatures.i.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i.i, i32 0, i32 2
  %112 = ptrtoint ptr %lvb_idynfeatures.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %lvb_idynfeatures.i.i, align 2
  %ip_dyn_features.i.i = getelementptr i8, ptr %inode, i32 -172
  %114 = ptrtoint ptr %ip_dyn_features.i.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %ip_dyn_features.i.i, align 4
  call void @ocfs2_set_inode_flags(ptr noundef %inode) #15
  %115 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %inode, align 8
  %117 = and i16 %116, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %117)
  %cmp.i163.i = icmp eq i16 %117, -24576
  br i1 %cmp.i163.i, label %land.lhs.true.i165.i, label %i_size_write.exit.i.i.if.else.i.i_crit_edge

i_size_write.exit.i.i.if.else.i.i_crit_edge:      ; preds = %i_size_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i

land.lhs.true.i165.i:                             ; preds = %i_size_write.exit.i.i
  %118 = ptrtoint ptr %ip_clusters.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ip_clusters.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i164.i = icmp eq i32 %119, 0
  br i1 %tobool.not.i164.i, label %land.lhs.true.i165.i.if.end8.i.i_crit_edge, label %land.lhs.true.i165.i.if.else.i.i_crit_edge

land.lhs.true.i165.i.if.else.i.i_crit_edge:       ; preds = %land.lhs.true.i165.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i

land.lhs.true.i165.i.if.end8.i.i_crit_edge:       ; preds = %land.lhs.true.i165.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i165.i.if.else.i.i_crit_edge, %i_size_write.exit.i.i.if.else.i.i_crit_edge
  %120 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %121, i32 0, i32 33
  %122 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_clustersize_bits.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %123, i32 0, i32 36
  %124 = ptrtoint ptr %s_clustersize_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %s_clustersize_bits.i.i.i, align 8
  %sub.i.i.i = add i32 %125, -9
  %126 = ptrtoint ptr %ip_clusters.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ip_clusters.i.i, align 8
  %conv.i.i.i = zext i32 %127 to i64
  %sh_prom.i.i.i = zext i32 %sub.i.i.i to i64
  %shl.i.i.i = shl i64 %conv.i.i.i, %sh_prom.i.i.i
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.else.i.i, %land.lhs.true.i165.i.if.end8.i.i_crit_edge
  %shl.i.sink.i.i = phi i64 [ %shl.i.i.i, %if.else.i.i ], [ 0, %land.lhs.true.i165.i.if.end8.i.i_crit_edge ]
  %i_blocks7.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %128 = ptrtoint ptr %i_blocks7.i.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %shl.i.sink.i.i, ptr %i_blocks7.i.i, align 8
  %lvb_iuid.i.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i.i, i32 0, i32 4
  %129 = ptrtoint ptr %lvb_iuid.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %lvb_iuid.i.i, align 8
  %i_uid.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %131 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %132, i32 0, i32 53
  %133 = ptrtoint ptr %s_user_ns.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %s_user_ns.i.i.i.i, align 8
  %call1.i.i.i = call i32 @make_kuid(ptr noundef %134, i32 noundef %130) #15
  %135 = ptrtoint ptr %i_uid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %call1.i.i.i, ptr %i_uid.i.i.i, align 4
  %lvb_igid.i.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i.i, i32 0, i32 5
  %136 = ptrtoint ptr %lvb_igid.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %lvb_igid.i.i, align 4
  %i_gid.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %138 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i48.i.i = getelementptr inbounds %struct.super_block, ptr %139, i32 0, i32 53
  %140 = ptrtoint ptr %s_user_ns.i.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %s_user_ns.i.i48.i.i, align 8
  %call1.i49.i.i = call i32 @make_kgid(ptr noundef %141, i32 noundef %137) #15
  %142 = ptrtoint ptr %i_gid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %call1.i49.i.i, ptr %i_gid.i.i.i, align 8
  %143 = ptrtoint ptr %lvb_imode.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %lvb_imode.i.i, align 8
  %145 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %inode, align 8
  %lvb_inlink.i.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i.i, i32 0, i32 11
  %146 = ptrtoint ptr %lvb_inlink.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %lvb_inlink.i.i, align 2
  %conv11.i.i = zext i16 %147 to i32
  call void @set_nlink(ptr noundef %inode, i32 noundef %conv11.i.i) #15
  %i_atime.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %lvb_iatime_packed.i.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i.i, i32 0, i32 6
  %148 = ptrtoint ptr %lvb_iatime_packed.i.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %lvb_iatime_packed.i.i, align 8
  %shr.i.i.i = lshr i64 %149, 30
  %150 = ptrtoint ptr %i_atime.i.i to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %shr.i.i.i, ptr %i_atime.i.i, align 8
  %151 = trunc i64 %149 to i32
  %conv.i50.i.i = and i32 %151, 1073741823
  %tv_nsec.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %152 = ptrtoint ptr %tv_nsec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %conv.i50.i.i, ptr %tv_nsec.i.i.i, align 8
  %i_mtime.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %lvb_imtime_packed.i.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i.i, i32 0, i32 8
  %153 = ptrtoint ptr %lvb_imtime_packed.i.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %lvb_imtime_packed.i.i, align 8
  %shr.i51.i.i = lshr i64 %154, 30
  %155 = ptrtoint ptr %i_mtime.i.i to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %shr.i51.i.i, ptr %i_mtime.i.i, align 8
  %156 = trunc i64 %154 to i32
  %conv.i52.i.i = and i32 %156, 1073741823
  %tv_nsec.i53.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %157 = ptrtoint ptr %tv_nsec.i53.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %conv.i52.i.i, ptr %tv_nsec.i53.i.i, align 8
  %i_ctime.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %lvb_ictime_packed.i.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i.i, i32 0, i32 7
  %158 = ptrtoint ptr %lvb_ictime_packed.i.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %lvb_ictime_packed.i.i, align 8
  %shr.i54.i.i = lshr i64 %159, 30
  %160 = ptrtoint ptr %i_ctime.i.i to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %shr.i54.i.i, ptr %i_ctime.i.i, align 8
  %161 = trunc i64 %159 to i32
  %conv.i55.i.i = and i32 %161, 1073741823
  %tv_nsec.i56.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %162 = ptrtoint ptr %tv_nsec.i56.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %conv.i55.i.i, ptr %tv_nsec.i56.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %ip_lock.i) #15
  br label %bail_refresh.i

if.else.i:                                        ; preds = %land.lhs.true4.i.i.if.else.i_crit_edge, %land.lhs.true.i.i.if.else.i_crit_edge, %if.end15.i.if.else.i_crit_edge
  %call30.i = call i32 @ocfs2_read_inode_block(ptr noundef %inode, ptr noundef nonnull %local_bh) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp.i = icmp slt i32 %call30.i, 0
  br i1 %cmp.i, label %if.then31.i, label %if.end50.i

if.then31.i:                                      ; preds = %if.else.i
  %163 = zext i32 %call30.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %call30.i, label %do.body41.i [
    i32 -512, label %if.then31.i.bail_refresh.i_crit_edge
    i32 -4, label %if.then31.i.bail_refresh.i_crit_edge255
    i32 -28, label %if.then31.i.bail_refresh.i_crit_edge256
    i32 -122, label %if.then31.i.bail_refresh.i_crit_edge257
  ]

if.then31.i.bail_refresh.i_crit_edge257:          ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail_refresh.i

if.then31.i.bail_refresh.i_crit_edge256:          ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail_refresh.i

if.then31.i.bail_refresh.i_crit_edge255:          ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail_refresh.i

if.then31.i.bail_refresh.i_crit_edge:             ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail_refresh.i

do.body41.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m42.i) #15
  %164 = ptrtoint ptr %_m42.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 1152921504606849024, ptr %_m42.i, align 8
  %conv.i = sext i32 %call30.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m42.i, ptr noundef nonnull @__func__.ocfs2_inode_lock_update, i32 noundef 2354, ptr noundef nonnull @.str.17, i64 noundef %conv.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m42.i) #15
  br label %bail_refresh.i

if.end50.i:                                       ; preds = %if.else.i
  %165 = ptrtoint ptr %local_bh to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %local_bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %166, i32 0, i32 5
  %167 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %b_data.i, align 4
  %i_mode.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %168, i32 0, i32 10
  %169 = ptrtoint ptr %i_mode.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %i_mode.i, align 8
  %171 = shl i16 %170, 8
  %172 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %inode, align 8
  %xor2.i.i = xor i16 %173, %171
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i.i)
  %tobool.i.i = icmp ugt i16 %xor2.i.i, 4095
  br i1 %tobool.i.i, label %if.end50.i.bail_refresh.i_crit_edge, label %do.body54.i

if.end50.i.bail_refresh.i_crit_edge:              ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail_refresh.i

do.body54.i:                                      ; preds = %if.end50.i
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %174 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %i_generation.i, align 8
  %i_generation55.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %168, i32 0, i32 1
  %176 = ptrtoint ptr %i_generation55.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %i_generation55.i, align 8
  %178 = call i32 @llvm.bswap.i32(i32 %177) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %178)
  %cmp56.not.i = icmp eq i32 %175, %178
  br i1 %cmp56.not.i, label %do.body87.i, label %do.body59.i

do.body59.i:                                      ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m60.i) #15
  %179 = ptrtoint ptr %_m60.i to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 1152921504606849024, ptr %_m60.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m60.i, ptr noundef nonnull @__func__.ocfs2_inode_lock_update, i32 noundef 2378, ptr noundef nonnull @.str.92) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m60.i) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m68.i) #15
  %180 = ptrtoint ptr %_m68.i to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 1152921504606849024, ptr %_m68.i, align 8
  %181 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %add.ptr.i, align 8
  %183 = ptrtoint ptr %i_generation55.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %i_generation55.i, align 8
  %185 = call i32 @llvm.bswap.i32(i32 %184) #15
  %186 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %i_generation.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m68.i, ptr noundef nonnull @__func__.ocfs2_inode_lock_update, i32 noundef 2378, ptr noundef nonnull @.str.93, i64 noundef %182, i32 noundef %185, i32 noundef %187) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m68.i) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2378, 0\0A.popsection", ""() #15, !srcloc !412
  unreachable

do.body87.i:                                      ; preds = %do.body54.i
  %i_dtime.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %168, i32 0, i32 16
  %188 = ptrtoint ptr %i_dtime.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %i_dtime.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %189)
  %tobool88.not.i = icmp eq i64 %189, 0
  br i1 %tobool88.not.i, label %lor.lhs.false.i, label %do.body87.i.do.body92.i_crit_edge

do.body87.i.do.body92.i_crit_edge:                ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body92.i

lor.lhs.false.i:                                  ; preds = %do.body87.i
  %i_flags.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %168, i32 0, i32 12
  %190 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %i_flags.i, align 4
  %and89.i = and i32 %191, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %lor.lhs.false.i.do.body92.i_crit_edge, label %do.end119.i

lor.lhs.false.i.do.body92.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body92.i

do.body92.i:                                      ; preds = %lor.lhs.false.i.do.body92.i_crit_edge, %do.body87.i.do.body92.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m93.i) #15
  %192 = ptrtoint ptr %_m93.i to i32
  call void @__asan_store8_noabort(i32 %192)
  store i64 1152921504606849024, ptr %_m93.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m93.i, ptr noundef nonnull @__func__.ocfs2_inode_lock_update, i32 noundef 2384, ptr noundef nonnull @.str.94) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m93.i) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m101.i) #15
  %193 = ptrtoint ptr %_m101.i to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 1152921504606849024, ptr %_m101.i, align 8
  %194 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %add.ptr.i, align 8
  %196 = ptrtoint ptr %i_dtime.i to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %i_dtime.i, align 8
  %198 = call i64 @llvm.bswap.i64(i64 %197) #15
  %i_flags107.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %168, i32 0, i32 12
  %199 = ptrtoint ptr %i_flags107.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %i_flags107.i, align 4
  %201 = call i32 @llvm.bswap.i32(i32 %200) #15
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m101.i, ptr noundef nonnull @__func__.ocfs2_inode_lock_update, i32 noundef 2384, ptr noundef nonnull @.str.95, i64 noundef %195, i64 noundef %198, i32 noundef %201) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m101.i) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2384, 0\0A.popsection", ""() #15, !srcloc !413
  unreachable

do.end119.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @ocfs2_refresh_inode(ptr noundef %inode, ptr noundef %168) #15
  %l_lock_refresh.i.i = getelementptr i8, ptr %inode, i32 -896
  %202 = ptrtoint ptr %l_lock_refresh.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %l_lock_refresh.i.i, align 8
  %inc.i.i = add i32 %203, 1
  store i32 %inc.i.i, ptr %l_lock_refresh.i.i, align 8
  br label %bail_refresh.i

bail_refresh.i:                                   ; preds = %do.end119.i, %if.end50.i.bail_refresh.i_crit_edge, %do.body41.i, %if.then31.i.bail_refresh.i_crit_edge, %if.then31.i.bail_refresh.i_crit_edge255, %if.then31.i.bail_refresh.i_crit_edge256, %if.then31.i.bail_refresh.i_crit_edge257, %if.end8.i.i, %do.body20.i.bail_refresh.i_crit_edge
  %status.0.i = phi i32 [ 0, %do.end119.i ], [ %call30.i, %if.then31.i.bail_refresh.i_crit_edge ], [ %call30.i, %if.then31.i.bail_refresh.i_crit_edge255 ], [ %call30.i, %if.then31.i.bail_refresh.i_crit_edge256 ], [ %call30.i, %if.then31.i.bail_refresh.i_crit_edge257 ], [ %call30.i, %do.body41.i ], [ -116, %if.end50.i.bail_refresh.i_crit_edge ], [ 0, %if.end8.i.i ], [ -116, %do.body20.i.bail_refresh.i_crit_edge ]
  %l_lock.i.i = getelementptr i8, ptr %inode, i32 -1120
  %call2.i167.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock.i.i) #15
  %l_flags.i.i.i = getelementptr i8, ptr %inode, i32 -1176
  %204 = ptrtoint ptr %l_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %l_flags.i.i.i, align 8
  %and.i.i.i = and i32 %205, -33
  call fastcc void @lockres_set_flags(ptr noundef %ip_inode_lockres.i, i32 noundef %and.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %tobool.not.i168.i = icmp eq i32 %status.0.i, 0
  br i1 %tobool.not.i168.i, label %if.then.i.i, label %bail_refresh.i.ocfs2_inode_lock_update.exit_crit_edge

bail_refresh.i.ocfs2_inode_lock_update.exit_crit_edge: ; preds = %bail_refresh.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_inode_lock_update.exit

if.then.i.i:                                      ; preds = %bail_refresh.i
  call void @__sanitizer_cov_trace_pc() #17
  %206 = ptrtoint ptr %l_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %l_flags.i.i.i, align 8
  %and.i11.i.i = and i32 %207, -17
  call fastcc void @lockres_set_flags(ptr noundef %ip_inode_lockres.i, i32 noundef %and.i11.i.i) #15
  br label %ocfs2_inode_lock_update.exit

ocfs2_inode_lock_update.exit:                     ; preds = %if.then.i.i, %bail_refresh.i.ocfs2_inode_lock_update.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock.i.i, i32 noundef %call2.i167.i) #15
  %l_event.i.i = getelementptr i8, ptr %inode, i32 -992
  call void @__wake_up(ptr noundef %l_event.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %cmp62 = icmp slt i32 %status.0.i, 0
  br i1 %cmp62, label %if.then64, label %ocfs2_inode_lock_update.exit.getbh_crit_edge

ocfs2_inode_lock_update.exit.getbh_crit_edge:     ; preds = %ocfs2_inode_lock_update.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %getbh

if.then64:                                        ; preds = %ocfs2_inode_lock_update.exit
  %208 = zext i32 %status.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %208, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %status.0.i, label %do.body84 [
    i32 -2, label %if.then64.if.then134_crit_edge
    i32 -512, label %if.then64.if.then134_crit_edge258
    i32 -4, label %if.then64.if.then134_crit_edge259
    i32 -28, label %if.then64.if.then134_crit_edge260
    i32 -122, label %if.then64.if.then134_crit_edge261
  ]

if.then64.if.then134_crit_edge261:                ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then134

if.then64.if.then134_crit_edge260:                ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then134

if.then64.if.then134_crit_edge259:                ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then134

if.then64.if.then134_crit_edge258:                ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then134

if.then64.if.then134_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then134

do.body84:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m85) #15
  %209 = ptrtoint ptr %_m85 to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 1152921504606849024, ptr %_m85, align 8
  %conv89 = sext i32 %status.0.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m85, ptr noundef nonnull @__func__.ocfs2_inode_lock_full_nested, i32 noundef 2502, ptr noundef nonnull @.str.17, i64 noundef %conv89) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m85) #15
  br label %if.then134

getbh:                                            ; preds = %ocfs2_inode_lock_update.exit.getbh_crit_edge, %if.end10.i.getbh_crit_edge, %ocfs2_mount_local.exit.i.getbh_crit_edge, %if.end60.getbh_crit_edge, %if.then4
  %acquired.1 = phi i32 [ %acquired.0, %ocfs2_inode_lock_update.exit.getbh_crit_edge ], [ 0, %if.then4 ], [ %acquired.0, %ocfs2_mount_local.exit.i.getbh_crit_edge ], [ %acquired.0, %if.end10.i.getbh_crit_edge ], [ %acquired.0, %if.end60.getbh_crit_edge ]
  %status.0 = phi i32 [ 0, %ocfs2_inode_lock_update.exit.getbh_crit_edge ], [ %spec.select, %if.then4 ], [ 0, %ocfs2_mount_local.exit.i.getbh_crit_edge ], [ 0, %if.end10.i.getbh_crit_edge ], [ 0, %if.end60.getbh_crit_edge ]
  %tobool97.not = icmp eq ptr %ret_bh, null
  br i1 %tobool97.not, label %bail, label %if.then98

if.then98:                                        ; preds = %getbh
  %210 = ptrtoint ptr %local_bh to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %local_bh, align 4
  %tobool.not.i203 = icmp eq ptr %211, null
  br i1 %tobool.not.i203, label %if.end.i205, label %if.then.i

if.then.i:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #17
  %212 = ptrtoint ptr %ret_bh to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %211, ptr %ret_bh, align 4
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %211, i32 0, i32 11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #15
  %213 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #15, !srcloc !414
  br label %if.end143

if.end.i205:                                      ; preds = %if.then98
  %call.i = call i32 @ocfs2_read_inode_block(ptr noundef %inode, ptr noundef nonnull %ret_bh) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i204 = icmp slt i32 %call.i, 0
  br i1 %cmp.i204, label %if.then1.i, label %if.end.i205.if.end143_crit_edge

if.end.i205.if.end143_crit_edge:                  ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end143

if.then1.i:                                       ; preds = %if.end.i205
  %214 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %call.i, label %do.body.i207 [
    i32 -512, label %if.then1.i.land.lhs.true136_crit_edge
    i32 -4, label %if.then1.i.land.lhs.true136_crit_edge262
    i32 -28, label %if.then1.i.land.lhs.true136_crit_edge263
    i32 -122, label %if.then1.i.land.lhs.true136_crit_edge264
  ]

if.then1.i.land.lhs.true136_crit_edge264:         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true136

if.then1.i.land.lhs.true136_crit_edge263:         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true136

if.then1.i.land.lhs.true136_crit_edge262:         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true136

if.then1.i.land.lhs.true136_crit_edge:            ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true136

do.body.i207:                                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i202) #15
  %215 = ptrtoint ptr %_m.i202 to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 1152921504606849024, ptr %_m.i202, align 8
  %conv.i206 = sext i32 %call.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i202, ptr noundef nonnull @__func__.ocfs2_assign_bh, i32 noundef 2414, ptr noundef nonnull @.str.17, i64 noundef %conv.i206) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i202) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m120) #15
  %216 = ptrtoint ptr %_m120 to i32
  call void @__asan_store8_noabort(i32 %216)
  store i64 1152921504606849024, ptr %_m120, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m120, ptr noundef nonnull @__func__.ocfs2_inode_lock_full_nested, i32 noundef 2509, ptr noundef nonnull @.str.17, i64 noundef %conv.i206) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m120) #15
  br label %land.lhs.true136

bail:                                             ; preds = %getbh
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %cmp132 = icmp slt i32 %status.0, 0
  br i1 %cmp132, label %bail.if.end139_crit_edge, label %bail.if.end143_crit_edge

bail.if.end143_crit_edge:                         ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end143

bail.if.end139_crit_edge:                         ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end139

if.then134:                                       ; preds = %do.body84, %if.then64.if.then134_crit_edge, %if.then64.if.then134_crit_edge258, %if.then64.if.then134_crit_edge259, %if.then64.if.then134_crit_edge260, %if.then64.if.then134_crit_edge261, %if.then64.thread, %do.body39, %if.then27.if.then134_crit_edge, %if.then27.if.then134_crit_edge251, %if.then27.if.then134_crit_edge252, %if.then27.if.then134_crit_edge253, %if.then27.if.then134_crit_edge254
  %acquired.2.ph = phi i32 [ %acquired.0, %if.then64.thread ], [ 0, %if.then27.if.then134_crit_edge ], [ %acquired.0, %if.then64.if.then134_crit_edge ], [ 0, %if.then27.if.then134_crit_edge251 ], [ 0, %if.then27.if.then134_crit_edge252 ], [ 0, %if.then27.if.then134_crit_edge253 ], [ 0, %if.then27.if.then134_crit_edge254 ], [ 0, %do.body39 ], [ %acquired.0, %if.then64.if.then134_crit_edge258 ], [ %acquired.0, %if.then64.if.then134_crit_edge259 ], [ %acquired.0, %if.then64.if.then134_crit_edge260 ], [ %acquired.0, %if.then64.if.then134_crit_edge261 ], [ %acquired.0, %do.body84 ]
  %status.1.ph = phi i32 [ -2, %if.then64.thread ], [ %call26, %if.then27.if.then134_crit_edge ], [ %status.0.i, %if.then64.if.then134_crit_edge ], [ %call26, %if.then27.if.then134_crit_edge251 ], [ %call26, %if.then27.if.then134_crit_edge252 ], [ %call26, %if.then27.if.then134_crit_edge253 ], [ %call26, %if.then27.if.then134_crit_edge254 ], [ %call26, %do.body39 ], [ %status.0.i, %if.then64.if.then134_crit_edge258 ], [ %status.0.i, %if.then64.if.then134_crit_edge259 ], [ %status.0.i, %if.then64.if.then134_crit_edge260 ], [ %status.0.i, %if.then64.if.then134_crit_edge261 ], [ %status.0.i, %do.body84 ]
  %tobool135.not = icmp eq ptr %ret_bh, null
  br i1 %tobool135.not, label %if.then134.if.end139_crit_edge, label %if.then134.land.lhs.true136_crit_edge

if.then134.land.lhs.true136_crit_edge:            ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true136

if.then134.if.end139_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end139

land.lhs.true136:                                 ; preds = %if.then134.land.lhs.true136_crit_edge, %do.body.i207, %if.then1.i.land.lhs.true136_crit_edge, %if.then1.i.land.lhs.true136_crit_edge262, %if.then1.i.land.lhs.true136_crit_edge263, %if.then1.i.land.lhs.true136_crit_edge264
  %status.1.ph250 = phi i32 [ %status.1.ph, %if.then134.land.lhs.true136_crit_edge ], [ %call.i, %do.body.i207 ], [ %call.i, %if.then1.i.land.lhs.true136_crit_edge ], [ %call.i, %if.then1.i.land.lhs.true136_crit_edge262 ], [ %call.i, %if.then1.i.land.lhs.true136_crit_edge263 ], [ %call.i, %if.then1.i.land.lhs.true136_crit_edge264 ]
  %acquired.2.ph249 = phi i32 [ %acquired.2.ph, %if.then134.land.lhs.true136_crit_edge ], [ %acquired.1, %do.body.i207 ], [ %acquired.1, %if.then1.i.land.lhs.true136_crit_edge ], [ %acquired.1, %if.then1.i.land.lhs.true136_crit_edge262 ], [ %acquired.1, %if.then1.i.land.lhs.true136_crit_edge263 ], [ %acquired.1, %if.then1.i.land.lhs.true136_crit_edge264 ]
  %217 = ptrtoint ptr %ret_bh to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ret_bh, align 4
  %tobool137.not = icmp eq ptr %218, null
  br i1 %tobool137.not, label %land.lhs.true136.if.end139_crit_edge, label %brelse.exit

land.lhs.true136.if.end139_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end139

brelse.exit:                                      ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #17
  call void @__brelse(ptr noundef nonnull %218) #15
  %219 = ptrtoint ptr %ret_bh to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr null, ptr %ret_bh, align 4
  br label %if.end139

if.end139:                                        ; preds = %brelse.exit, %land.lhs.true136.if.end139_crit_edge, %if.then134.if.end139_crit_edge, %bail.if.end139_crit_edge
  %acquired.2230244 = phi i32 [ %acquired.2.ph249, %brelse.exit ], [ %acquired.2.ph249, %land.lhs.true136.if.end139_crit_edge ], [ %acquired.2.ph, %if.then134.if.end139_crit_edge ], [ %acquired.1, %bail.if.end139_crit_edge ]
  %status.1232243 = phi i32 [ %status.1.ph250, %brelse.exit ], [ %status.1.ph250, %land.lhs.true136.if.end139_crit_edge ], [ %status.1.ph, %if.then134.if.end139_crit_edge ], [ %status.0, %bail.if.end139_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %acquired.2230244)
  %tobool140.not = icmp eq i32 %acquired.2230244, 0
  br i1 %tobool140.not, label %if.end139.if.end143_crit_edge, label %if.then141

if.end139.if.end143_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end143

if.then141:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #17
  call void @ocfs2_inode_unlock(ptr noundef %inode, i32 noundef %ex)
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %if.end139.if.end143_crit_edge, %bail.if.end143_crit_edge, %if.end.i205.if.end143_crit_edge, %if.then.i, %if.then58, %if.then56.if.end143_crit_edge
  %status.1231 = phi i32 [ %status.1232243, %if.end139.if.end143_crit_edge ], [ %status.1232243, %if.then141 ], [ 0, %bail.if.end143_crit_edge ], [ %call.i, %if.end.i205.if.end143_crit_edge ], [ 0, %if.then.i ], [ 0, %if.then56.if.end143_crit_edge ], [ 0, %if.then58 ]
  %220 = ptrtoint ptr %local_bh to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %local_bh, align 4
  %tobool.not.i211 = icmp eq ptr %221, null
  br i1 %tobool.not.i211, label %if.end143.brelse.exit214_crit_edge, label %if.then.i212

if.end143.brelse.exit214_crit_edge:               ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #17
  br label %brelse.exit214

if.then.i212:                                     ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #17
  call void @__brelse(ptr noundef nonnull %221) #15
  br label %brelse.exit214

brelse.exit214:                                   ; preds = %if.then.i212, %if.end143.brelse.exit214_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %local_bh) #15
  ret i32 %status.1231
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_wait_for_recovery(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ocfs2_cluster_lock(ptr noundef %osb, ptr noundef %lockres, i32 noundef %level, i32 noundef %lkm_flags, i32 noundef %arg_flags, i32 noundef %l_subclass, i32 noundef %caller_ip) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %mw = alloca %struct.ocfs2_mask_waiter, align 8
  %_m = alloca i64, align 8
  %_m44 = alloca i64, align 8
  %_m52 = alloca i64, align 8
  %_m115 = alloca i64, align 8
  %_m177 = alloca i64, align 8
  %_m204 = alloca i64, align 8
  %_m215 = alloca i64, align 8
  %_m232 = alloca i64, align 8
  %_m305 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %mw) #15
  %0 = call ptr @memset(ptr %mw, i32 255, i32 88)
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %1 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %l_flags, align 8
  %and1 = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %do.body, label %if.end15

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606849024, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__ocfs2_cluster_lock, i32 noundef 1486, ptr noundef nonnull @.str.17, i64 noundef -22) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %cleanup

if.end15:                                         ; preds = %entry
  %s_mount_opt = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %4 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt, align 8
  %6 = ptrtoint ptr %mw to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %mw, ptr %mw, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mw, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mw, ptr %prev.i.i, align 4
  %mw_complete.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 2
  %8 = ptrtoint ptr %mw_complete.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %mw_complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @init_completion.__key) #15
  %call.i.i = call i64 @ktime_get() #15
  %mw_lock_start.i.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 5
  %9 = ptrtoint ptr %mw_lock_start.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call.i.i, ptr %mw_lock_start.i.i, align 8
  %l_ops = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 1
  %10 = ptrtoint ptr %l_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %l_ops, align 4
  %flags16 = getelementptr inbounds %struct.ocfs2_lock_res_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags16, align 4
  %and17 = shl i32 %13, 2
  %14 = and i32 %and17, 8
  %15 = or i32 %14, %lkm_flags
  %l_lock = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  %l_level = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 9
  %l_blocking.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 11
  %tobool.not.i455 = icmp eq ptr %lockres, null
  %l_ro_holders.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 7
  %l_ex_holders.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 8
  %dc_task_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 75
  %dc_wake_sequence.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 78
  %dc_event.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 77
  %and250 = and i32 %arg_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  %mw_mask = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 3
  %mw_status.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 1
  %l_action = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 13
  %l_name119 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  %conv136 = trunc i32 %level to i8
  %l_requested = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 10
  %l_pending_gen.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 15
  %cconn = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 65
  %l_lksb = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 17
  %16 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %phi.cmp = icmp ne i32 %16, 0
  br label %again.outer

again.outer:                                      ; preds = %if.end230, %if.end15
  %noqueue_attempted.0.ph = phi i32 [ %and106, %if.end230 ], [ 0, %if.end15 ]
  %tobool273.not = phi i1 [ false, %if.end230 ], [ true, %if.end15 ]
  %catch_signals.0.ph = phi i1 [ true, %if.end230 ], [ %phi.cmp, %if.end15 ]
  %lkm_flags.addr.1.ph = phi i32 [ %lkm_flags.addr.2, %if.end230 ], [ %15, %if.end15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %noqueue_attempted.0.ph)
  %cmp102.not = icmp eq i32 %noqueue_attempted.0.ph, 0
  br label %again

again:                                            ; preds = %again.backedge, %again.outer
  %ret.0 = phi i32 [ 0, %again.outer ], [ %ret.0.be, %again.backedge ]
  %call26 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  br i1 %catch_signals.0.ph, label %again.do.body38_crit_edge, label %land.lhs.true32

again.do.body38_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body38

land.lhs.true32:                                  ; preds = %again
  %17 = call i32 @llvm.read_register.i32(metadata !365) #15
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stack.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %25 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %land.lhs.true32.unlock_crit_edge, !prof !376

land.lhs.true32.unlock_crit_edge:                 ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

signal_pending.exit:                              ; preds = %land.lhs.true32
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %22, align 4
  %and1.i.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool35.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool35.not, label %signal_pending.exit.do.body38_crit_edge, label %signal_pending.exit.unlock_crit_edge

signal_pending.exit.unlock_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

signal_pending.exit.do.body38_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body38

do.body38:                                        ; preds = %signal_pending.exit.do.body38_crit_edge, %again.do.body38_crit_edge
  %28 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %l_flags, align 8
  %and40 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.end68, label %do.body43

do.body43:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m44) #15
  %30 = ptrtoint ptr %_m44 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 1152921504606849024, ptr %_m44, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m44, ptr noundef nonnull @__func__.__ocfs2_cluster_lock, i32 noundef 1507, ptr noundef nonnull @.str.85) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m44) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m52) #15
  %31 = ptrtoint ptr %_m52 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 1152921504606849024, ptr %_m52, align 8
  %32 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %l_flags, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m52, ptr noundef nonnull @__func__.__ocfs2_cluster_lock, i32 noundef 1507, ptr noundef nonnull @.str.86, ptr noundef %l_name119, i32 noundef %33) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m52) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1507, 0\0A.popsection", ""() #15, !srcloc !415
  unreachable

do.end68:                                         ; preds = %do.body38
  %and70 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.end68.if.end77_crit_edge, label %land.lhs.true72

do.end68.if.end77_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

land.lhs.true72:                                  ; preds = %do.end68
  %34 = ptrtoint ptr %l_level to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %l_level, align 4
  %conv73 = sext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv73, i32 %level)
  %cmp74 = icmp slt i32 %conv73, %level
  br i1 %cmp74, label %if.then76, label %land.lhs.true72.if.end77_crit_edge

land.lhs.true72.if.end77_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

if.then76:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @lockres_add_mask_waiter(ptr noundef %lockres, ptr noundef nonnull %mw, i32 noundef 2)
  br label %unlock

if.end77:                                         ; preds = %land.lhs.true72.if.end77_crit_edge, %do.end68.if.end77_crit_edge
  %and79 = and i32 %29, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end77.if.end88_crit_edge, label %if.then81

if.end77.if.end88_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.then81:                                        ; preds = %if.end77
  %36 = ptrtoint ptr %l_level to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %l_level, align 4
  %conv83 = sext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv83, i32 %level)
  %cmp84.not = icmp slt i32 %conv83, %level
  br i1 %cmp84.not, label %if.then81.if.end88_crit_edge, label %if.then81.update_holders_crit_edge

if.then81.update_holders_crit_edge:               ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #17
  br label %update_holders

if.then81.if.end88_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.end88:                                         ; preds = %if.then81.if.end88_crit_edge, %if.end77.if.end88_crit_edge
  %and90 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end88.if.end96_crit_edge, label %ocfs2_may_continue_on_blocked_lock.exit

if.end88.if.end96_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

ocfs2_may_continue_on_blocked_lock.exit:          ; preds = %if.end88
  %38 = ptrtoint ptr %l_blocking.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %l_blocking.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %switch.selectcmp.i.i = icmp eq i8 %39, 3
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 3, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %39)
  %switch.selectcmp5.i.i = icmp eq i8 %39, 5
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 0, i32 %switch.select.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.select6.i.i, i32 %level)
  %cmp.i.not = icmp slt i32 %switch.select6.i.i, %level
  br i1 %cmp.i.not, label %if.then95, label %ocfs2_may_continue_on_blocked_lock.exit.if.end96_crit_edge

ocfs2_may_continue_on_blocked_lock.exit.if.end96_crit_edge: ; preds = %ocfs2_may_continue_on_blocked_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

if.then95:                                        ; preds = %ocfs2_may_continue_on_blocked_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @lockres_add_mask_waiter(ptr noundef %lockres, ptr noundef nonnull %mw, i32 noundef 4)
  br label %unlock

if.end96:                                         ; preds = %ocfs2_may_continue_on_blocked_lock.exit.if.end96_crit_edge, %if.end88.if.end96_crit_edge
  %40 = ptrtoint ptr %l_level to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %l_level, align 4
  %conv98 = sext i8 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv98, i32 %level)
  %cmp99 = icmp slt i32 %conv98, %level
  br i1 %cmp99, label %if.then101, label %if.end96.update_holders_crit_edge

if.end96.update_holders_crit_edge:                ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  br label %update_holders

if.then101:                                       ; preds = %if.end96
  br i1 %cmp102.not, label %if.end105, label %if.then101.unlock_crit_edge

if.then101.unlock_crit_edge:                      ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

if.end105:                                        ; preds = %if.then101
  %and106 = and i32 %lkm_flags.addr.1.ph, 1
  %42 = ptrtoint ptr %l_action to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %l_action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp111.not = icmp eq i8 %43, 0
  br i1 %cmp111.not, label %if.end105.if.end126_crit_edge, label %do.body114

if.end105.if.end126_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end126

do.body114:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m115) #15
  %44 = ptrtoint ptr %_m115 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 1152921504606849024, ptr %_m115, align 8
  %conv122 = zext i8 %43 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m115, ptr noundef nonnull @__func__.__ocfs2_cluster_lock, i32 noundef 1559, ptr noundef nonnull @.str.87, ptr noundef %l_name119, i32 noundef %conv122) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m115) #15
  br label %if.end126

if.end126:                                        ; preds = %do.body114, %if.end105.if.end126_crit_edge
  %45 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %l_flags, align 8
  %and128 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.then130, label %if.else

if.then130:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #17
  %47 = ptrtoint ptr %l_action to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %l_action, align 8
  %and132 = and i32 %lkm_flags.addr.1.ph, -5
  br label %if.end135

if.else:                                          ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %l_action to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %l_action, align 8
  %or134 = or i32 %lkm_flags.addr.1.ph, 4
  br label %if.end135

if.end135:                                        ; preds = %if.else, %if.then130
  %lkm_flags.addr.2 = phi i32 [ %or134, %if.else ], [ %and132, %if.then130 ]
  %49 = ptrtoint ptr %l_requested to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv136, ptr %l_requested, align 1
  %or1.i = or i32 %46, 2
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %or1.i) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %50 = ptrtoint ptr %l_lock to i32
  call void @__asan_load4_noabort(i32 %50)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %l_lock, align 4
  %51 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i448, label %do.body8.i, !prof !386

do.body4.i448:                                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1105, 0\0A.popsection", ""() #15, !srcloc !399
  unreachable

do.body8.i:                                       ; preds = %if.end135
  %52 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %l_flags, align 8
  %and.i450 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i450)
  %tobool9.not.i = icmp eq i32 %and.i450, 0
  br i1 %tobool9.not.i, label %do.body19.i, label %lockres_set_pending.exit, !prof !386

do.body19.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1106, 0\0A.popsection", ""() #15, !srcloc !400
  unreachable

lockres_set_pending.exit:                         ; preds = %do.body8.i
  %or1.i.i = or i32 %53, 1024
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %or1.i.i) #15
  %54 = ptrtoint ptr %l_pending_gen.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %l_pending_gen.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call26) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m177) #15
  %56 = ptrtoint ptr %_m177 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 34816, ptr %_m177, align 8
  %57 = ptrtoint ptr %l_level to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %l_level, align 4
  %conv184 = sext i8 %58 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m177, ptr noundef nonnull @__func__.__ocfs2_cluster_lock, i32 noundef 1578, ptr noundef nonnull @.str.88, ptr noundef %l_name119, i32 noundef %conv184, i32 noundef %level) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m177) #15
  %59 = ptrtoint ptr %cconn to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cconn, align 8
  %call190 = call i32 @ocfs2_dlm_lock(ptr noundef %60, i32 noundef %level, ptr noundef %l_lksb, i32 noundef %lkm_flags.addr.2, ptr noundef %l_name119, i32 noundef 31) #15
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  call fastcc void @__lockres_clear_pending(ptr noundef %lockres, i32 noundef %55, ptr noundef %osb) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call2.i) #15
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.end230, label %if.then192

if.then192:                                       ; preds = %lockres_set_pending.exit
  %and193 = and i32 %lkm_flags.addr.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp ne i32 %and193, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call190)
  %cmp195.not = icmp eq i32 %call190, -11
  %or.cond = select i1 %tobool194.not, i1 %cmp195.not, i1 false
  br i1 %or.cond, label %if.then192.out.thread_crit_edge, label %do.body198

if.then192.out.thread_crit_edge:                  ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

do.body198:                                       ; preds = %if.then192
  %l_type = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 12
  %61 = ptrtoint ptr %l_type to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %l_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %62)
  %cmp200.not = icmp eq i8 %62, 5
  br i1 %cmp200.not, label %do.body214, label %do.body203

do.body203:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m204) #15
  %63 = ptrtoint ptr %_m204 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 1152921504606849024, ptr %_m204, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m204, ptr noundef nonnull @__func__.__ocfs2_cluster_lock, i32 noundef 1592, ptr noundef nonnull @.str.27, i32 noundef %call190, ptr noundef nonnull @.str.28, ptr noundef %l_name119) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m204) #15
  br label %out.thread

do.body214:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m215) #15
  %64 = ptrtoint ptr %_m215 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 1152921504606849024, ptr %_m215, align 8
  %arrayidx.i = getelementptr %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6, i32 18
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 8)
  %inode_blkno_be.0.copyload.i = load i64, ptr %arrayidx.i, align 2
  %conv222 = trunc i64 %inode_blkno_be.0.copyload.i to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m215, ptr noundef nonnull @__func__.__ocfs2_cluster_lock, i32 noundef 1592, ptr noundef nonnull @.str.29, i32 noundef %call190, ptr noundef nonnull @.str.28, i32 noundef 17, ptr noundef %l_name119, i32 noundef %conv222) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m215) #15
  br label %out.thread

out.thread:                                       ; preds = %do.body214, %do.body203, %if.then192.out.thread_crit_edge
  %call2.i453 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %66 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %l_flags, align 8
  %and.i.i = and i32 %67, -3
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %and.i.i) #15
  %68 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %l_flags, align 8
  %and.i13.i = and i32 %69, -2049
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %and.i13.i) #15
  %70 = ptrtoint ptr %l_action to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %l_action, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call2.i453) #15
  %l_event.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 18
  call void @__wake_up(ptr noundef %l_event.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %if.end315

if.end230:                                        ; preds = %lockres_set_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m232) #15
  %71 = ptrtoint ptr %_m232 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 2048, ptr %_m232, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m232, ptr noundef nonnull @__func__.__ocfs2_cluster_lock, i32 noundef 1600, ptr noundef nonnull @.str.89, ptr noundef %l_name119) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m232) #15
  br label %again.outer

update_holders:                                   ; preds = %if.end96.update_holders_crit_edge, %if.then81.update_holders_crit_edge
  br i1 %tobool.not.i455, label %do.body4.i456, label %do.end7.i, !prof !386

do.body4.i456:                                    ; preds = %update_holders
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 841, 0\0A.popsection", ""() #15, !srcloc !416
  unreachable

do.end7.i:                                        ; preds = %update_holders
  %72 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %level, label %do.body10.i [
    i32 5, label %sw.bb.i
    i32 3, label %sw.bb8.i
  ]

sw.bb.i:                                          ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %l_ex_holders.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %l_ex_holders.i, align 8
  %inc.i = add i32 %74, 1
  store i32 %inc.i, ptr %l_ex_holders.i, align 8
  br label %unlock

sw.bb8.i:                                         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %l_ro_holders.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %l_ro_holders.i, align 4
  %inc9.i = add i32 %76, 1
  store i32 %inc9.i, ptr %l_ro_holders.i, align 4
  br label %unlock

do.body10.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 851, 0\0A.popsection", ""() #15, !srcloc !417
  unreachable

unlock:                                           ; preds = %sw.bb8.i, %sw.bb.i, %if.then101.unlock_crit_edge, %if.then95, %if.then76, %signal_pending.exit.unlock_crit_edge, %land.lhs.true32.unlock_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then76 ], [ %ret.0, %if.then95 ], [ -512, %signal_pending.exit.unlock_crit_edge ], [ -11, %if.then101.unlock_crit_edge ], [ 0, %sw.bb.i ], [ 0, %sw.bb8.i ], [ -512, %land.lhs.true32.unlock_crit_edge ]
  %tobool248.not = phi i1 [ false, %if.then76 ], [ false, %if.then95 ], [ true, %signal_pending.exit.unlock_crit_edge ], [ true, %if.then101.unlock_crit_edge ], [ true, %sw.bb.i ], [ true, %sw.bb8.i ], [ true, %land.lhs.true32.unlock_crit_edge ]
  %77 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %l_flags, align 8
  %and.i458 = and i32 %78, -2049
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %and.i458) #15
  %79 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %l_flags, align 8
  %and243 = and i32 %80, 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call26) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and243)
  %tobool245.not = icmp eq i32 %and243, 0
  br i1 %tobool245.not, label %unlock.out_crit_edge, label %if.then246

unlock.out_crit_edge:                             ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then246:                                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i459 = call i32 @_raw_spin_lock_irqsave(ptr noundef %dc_task_lock.i) #15
  %81 = ptrtoint ptr %dc_wake_sequence.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dc_wake_sequence.i, align 4
  %inc.i460 = add i32 %82, 1
  store i32 %inc.i460, ptr %dc_wake_sequence.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dc_task_lock.i, i32 noundef %call2.i459) #15
  call void @__wake_up(ptr noundef %dc_event.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %out

out:                                              ; preds = %if.then246, %unlock.out_crit_edge
  br i1 %tobool248.not, label %out.if.end315_crit_edge, label %land.lhs.true249

out.if.end315_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end315

land.lhs.true249:                                 ; preds = %out
  br i1 %tobool251.not, label %land.lhs.true249.if.then282_crit_edge, label %land.lhs.true252

land.lhs.true249.if.then282_crit_edge:            ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then282

land.lhs.true252:                                 ; preds = %land.lhs.true249
  %83 = ptrtoint ptr %mw_mask to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mw_mask, align 4
  %and253 = and i32 %84, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and253)
  %tobool254.not = icmp eq i32 %and253, 0
  br i1 %tobool254.not, label %land.lhs.true252.if.then282_crit_edge, label %if.then255

land.lhs.true252.if.then282_crit_edge:            ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then282

if.then255:                                       ; preds = %land.lhs.true252
  %call265 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %call270 = call fastcc i32 @__lockres_remove_mask_waiter(ptr noundef %lockres, ptr noundef nonnull %mw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %tobool271.not = icmp eq i32 %call270, 0
  br i1 %tobool271.not, label %if.else277, label %if.then272

if.then272:                                       ; preds = %if.then255
  br i1 %tobool273.not, label %if.then272.if.end275_crit_edge, label %if.then274

if.then272.if.end275_crit_edge:                   ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end275

if.then274:                                       ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #17
  %85 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %l_flags, align 8
  %or1.i462 = or i32 %86, 4096
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %or1.i462) #15
  br label %if.end275

if.end275:                                        ; preds = %if.then274, %if.then272.if.end275_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call265) #15
  br label %if.end315

if.else277:                                       ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call265) #15
  br label %again.backedge

again.backedge:                                   ; preds = %if.then282.again.backedge_crit_edge, %if.else277
  %ret.0.be = phi i32 [ %89, %if.then282.again.backedge_crit_edge ], [ %ret.1, %if.else277 ]
  br label %again

if.then282:                                       ; preds = %land.lhs.true252.if.then282_crit_edge, %land.lhs.true249.if.then282_crit_edge
  call void @wait_for_completion(ptr noundef %mw_complete.i) #15
  %87 = ptrtoint ptr %mw_complete.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %mw_complete.i, align 4
  %88 = ptrtoint ptr %mw_status.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mw_status.i, align 8
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %89, label %do.body304 [
    i32 0, label %if.then282.again.backedge_crit_edge
    i32 -512, label %if.then282.if.end315_crit_edge
    i32 -4, label %if.then282.if.end315_crit_edge585
    i32 524289, label %if.then282.if.end315_crit_edge586
    i32 -28, label %if.then282.if.end315_crit_edge587
    i32 -122, label %if.then282.if.end315_crit_edge588
  ]

if.then282.if.end315_crit_edge588:                ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end315

if.then282.if.end315_crit_edge587:                ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end315

if.then282.if.end315_crit_edge586:                ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end315

if.then282.if.end315_crit_edge585:                ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end315

if.then282.if.end315_crit_edge:                   ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end315

if.then282.again.backedge_crit_edge:              ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #17
  br label %again.backedge

do.body304:                                       ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m305) #15
  %91 = ptrtoint ptr %_m305 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 1152921504606849024, ptr %_m305, align 8
  %conv309 = sext i32 %89 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m305, ptr noundef nonnull @__func__.__ocfs2_cluster_lock, i32 noundef 1652, ptr noundef nonnull @.str.17, i64 noundef %conv309) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m305) #15
  br label %if.end315

if.end315:                                        ; preds = %do.body304, %if.then282.if.end315_crit_edge, %if.then282.if.end315_crit_edge585, %if.then282.if.end315_crit_edge586, %if.then282.if.end315_crit_edge587, %if.then282.if.end315_crit_edge588, %if.end275, %out.if.end315_crit_edge, %out.thread
  %ret.4 = phi i32 [ %89, %do.body304 ], [ %call190, %out.thread ], [ -11, %if.end275 ], [ %ret.1, %out.if.end315_crit_edge ], [ %89, %if.then282.if.end315_crit_edge ], [ %89, %if.then282.if.end315_crit_edge585 ], [ %89, %if.then282.if.end315_crit_edge586 ], [ %89, %if.then282.if.end315_crit_edge587 ], [ %89, %if.then282.if.end315_crit_edge588 ]
  %92 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %level, label %if.end315.ocfs2_update_lock_stats.exit_crit_edge [
    i32 3, label %if.then.i
    i32 5, label %if.then2.i
  ]

if.end315.ocfs2_update_lock_stats.exit_crit_edge: ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_update_lock_stats.exit

if.then.i:                                        ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #17
  %l_lock_prmode.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 20
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #17
  %l_lock_exmode.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 23
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.then.i
  %stats.0.i = phi ptr [ %l_lock_prmode.i, %if.then.i ], [ %l_lock_exmode.i, %if.then2.i ]
  %call.i = call i64 @ktime_get() #15
  %93 = ptrtoint ptr %mw_lock_start.i.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %mw_lock_start.i.i, align 8
  %sub.i = sub i64 %call.i, %94
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %95 = call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #15
  %96 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %95, i32 0) #18, !srcloc !397
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %96, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %96, 1
  %97 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %95, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #18, !srcloc !398
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %97, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  %conv.i = trunc i64 %cond213.i.i.i to i32
  %ls_gets.i = getelementptr inbounds %struct.ocfs2_lock_stats, ptr %stats.0.i, i32 0, i32 1
  %98 = ptrtoint ptr %ls_gets.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ls_gets.i, align 8
  %inc.i464 = add i32 %99, 1
  store i32 %inc.i464, ptr %ls_gets.i, align 8
  %100 = ptrtoint ptr %stats.0.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %stats.0.i, align 8
  %add.i = add i64 %101, %sub.i
  store i64 %add.i, ptr %stats.0.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i464)
  %cmp8.i = icmp eq i32 %inc.i464, 0
  br i1 %cmp8.i, label %if.then11.i, label %if.end4.i.if.end16.i_crit_edge, !prof !386

if.end4.i.if.end16.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i

if.then11.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  %102 = ptrtoint ptr %ls_gets.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %ls_gets.i, align 8
  %103 = ptrtoint ptr %stats.0.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %sub.i, ptr %stats.0.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then11.i, %if.end4.i.if.end16.i_crit_edge
  %ls_max.i = getelementptr inbounds %struct.ocfs2_lock_stats, ptr %stats.0.i, i32 0, i32 3
  %104 = ptrtoint ptr %ls_max.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ls_max.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %conv.i)
  %cmp17.i = icmp ult i32 %105, %conv.i
  br i1 %cmp17.i, label %if.then19.i, label %if.end16.i.if.end21.i_crit_edge

if.end16.i.if.end21.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  %106 = ptrtoint ptr %ls_max.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv.i, ptr %ls_max.i, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end21.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %tobool22.not.i = icmp eq i32 %ret.4, 0
  br i1 %tobool22.not.i, label %if.end21.i.if.end25.i_crit_edge, label %if.then23.i

if.end21.i.if.end25.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  %ls_fail.i = getelementptr inbounds %struct.ocfs2_lock_stats, ptr %stats.0.i, i32 0, i32 2
  %107 = ptrtoint ptr %ls_fail.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ls_fail.i, align 4
  %inc24.i = add i32 %108, 1
  store i32 %inc24.i, ptr %ls_fail.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end21.i.if.end25.i_crit_edge
  %call.i.i465 = call i64 @ktime_get_with_offset(i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i465)
  %cmp8.i.i43.i = icmp slt i64 %call.i.i465, 0
  %109 = call i64 @llvm.abs.i64(i64 %call.i.i465, i1 false) #15
  %110 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %109, i32 0) #18, !srcloc !397
  %asmresult.i.i.i44.i = extractvalue { i64, i32 } %110, 0
  %asmresult4.i.i.i45.i = extractvalue { i64, i32 } %110, 1
  %111 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %109, i64 %asmresult.i.i.i44.i, i32 %asmresult4.i.i.i45.i) #18, !srcloc !398
  %asmresult10.i.i.i46.i = extractvalue { i64, i32 } %111, 0
  %tmp.0.i.i47.i = lshr i64 %asmresult10.i.i.i46.i, 9
  %sub210.i.i48.i = sub nsw i64 0, %tmp.0.i.i47.i
  %cond213.i.i49.i = select i1 %cmp8.i.i43.i, i64 %sub210.i.i48.i, i64 %tmp.0.i.i47.i
  %ls_last.i = getelementptr inbounds %struct.ocfs2_lock_stats, ptr %stats.0.i, i32 0, i32 4
  %112 = ptrtoint ptr %ls_last.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %cond213.i.i49.i, ptr %ls_last.i, align 8
  br label %ocfs2_update_lock_stats.exit

ocfs2_update_lock_stats.exit:                     ; preds = %if.end25.i, %if.end315.ocfs2_update_lock_stats.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %tobool316.not = icmp eq i32 %ret.4, 0
  br i1 %tobool316.not, label %land.lhs.true317, label %ocfs2_update_lock_stats.exit.cleanup_crit_edge

ocfs2_update_lock_stats.exit.cleanup_crit_edge:   ; preds = %ocfs2_update_lock_stats.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true317:                                 ; preds = %ocfs2_update_lock_stats.exit
  %l_lockdep_map = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 24
  %113 = ptrtoint ptr %l_lockdep_map to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %l_lockdep_map, align 8
  %cmp318.not = icmp eq ptr %114, null
  br i1 %cmp318.not, label %land.lhs.true317.cleanup_crit_edge, label %if.then320

land.lhs.true317.cleanup_crit_edge:               ; preds = %land.lhs.true317
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then320:                                       ; preds = %land.lhs.true317
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %level)
  %cmp321 = icmp eq i32 %level, 3
  %and325 = lshr i32 %arg_flags, 1
  %and325.lobit = and i32 %and325, 1
  br i1 %cmp321, label %if.then323, label %if.else331

if.then323:                                       ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #17
  call void @lock_acquire(ptr noundef %l_lockdep_map, i32 noundef %l_subclass, i32 noundef %and325.lobit, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %caller_ip) #15
  br label %cleanup

if.else331:                                       ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #17
  call void @lock_acquire(ptr noundef %l_lockdep_map, i32 noundef %l_subclass, i32 noundef %and325.lobit, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %caller_ip) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else331, %if.then323, %land.lhs.true317.cleanup_crit_edge, %ocfs2_update_lock_stats.exit.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ -22, %do.body ], [ 0, %if.then323 ], [ 0, %if.else331 ], [ 0, %land.lhs.true317.cleanup_crit_edge ], [ %ret.4, %ocfs2_update_lock_stats.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %mw) #15
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_inode_unlock(ptr noundef %inode, i32 noundef %ex) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ex)
  %tobool.not = icmp eq i32 %ex, 0
  %cond = select i1 %tobool.not, i32 3, i32 5
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %ip_inode_lockres = getelementptr i8, ptr %inode, i32 -1208
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 2048, ptr %_m, align 8
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr.i, align 8
  %cond4 = select i1 %tobool.not, ptr @.str.20, ptr @.str.19
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_inode_unlock, i32 noundef 2623, ptr noundef nonnull @.str.33, i64 noundef %6, ptr noundef nonnull %cond4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %osb_lock.i) #15
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 23
  %7 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %8, 2
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not = icmp eq i32 %and.i, 0
  br i1 %tobool6.not, label %land.lhs.true, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 19
  %9 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i17 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

ocfs2_mount_local.exit:                           ; preds = %land.lhs.true
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 28
  %11 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_mount_opt.i, align 8
  %13 = and i32 %12, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %if.then9, label %ocfs2_mount_local.exit.if.end10_crit_edge

ocfs2_mount_local.exit.if.end10_crit_edge:        ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then9:                                         ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ocfs2_cluster_unlock(ptr noundef %3, ptr noundef %ip_inode_lockres, i32 noundef %cond)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %ocfs2_mount_local.exit.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_inode_lock_with_page(ptr noundef %inode, ptr noundef %ret_bh, i32 noundef %ex, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ocfs2_inode_lock_full_nested(ptr noundef %inode, ptr noundef %ret_bh, i32 noundef %ex, i32 noundef 4, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call)
  %cmp = icmp eq i32 %call, -11
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then:                                          ; preds = %entry
  tail call void @unlock_page(ptr noundef %page) #15
  %call1 = tail call i32 @ocfs2_inode_lock_full_nested(ptr noundef %inode, ptr noundef %ret_bh, i32 noundef %ex, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ocfs2_inode_unlock(ptr noundef %inode, i32 noundef %ex)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end4_crit_edge ], [ 524289, %if.then3 ], [ 524289, %if.then.if.end4_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_inode_lock_atime(ptr noundef %inode, ptr noundef %vfsmnt, ptr nocapture noundef writeonly %level, i32 noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %bh = alloca ptr, align 4
  %_m52 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool.not = icmp eq i32 %wait, 0
  %. = select i1 %tobool.not, i32 2, i32 0
  %call1 = tail call i32 @ocfs2_inode_lock_full_nested(ptr noundef %inode, ptr noundef null, i32 noundef 0, i32 noundef %., i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end19

if.then2:                                         ; preds = %entry
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %call1, label %do.body [
    i32 -11, label %if.then2.cleanup71_crit_edge
    i32 -512, label %if.then2.cleanup71_crit_edge105
    i32 -4, label %if.then2.cleanup71_crit_edge106
    i32 -28, label %if.then2.cleanup71_crit_edge107
    i32 -122, label %if.then2.cleanup71_crit_edge108
  ]

if.then2.cleanup71_crit_edge108:                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup71

if.then2.cleanup71_crit_edge107:                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup71

if.then2.cleanup71_crit_edge106:                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup71

if.then2.cleanup71_crit_edge105:                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup71

if.then2.cleanup71_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup71

do.body:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %1 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1152921504606849024, ptr %_m, align 8
  %conv = sext i32 %call1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_inode_lock_atime, i32 noundef 2582, ptr noundef nonnull @.str.17, i64 noundef %conv) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %cleanup71

if.end19:                                         ; preds = %entry
  %call20 = tail call i32 @ocfs2_should_update_atime(ptr noundef %inode, ptr noundef %vfsmnt) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.else69, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #15
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bh, align 4
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -1608
  %ip_inode_lockres.i = getelementptr i8, ptr %inode, i32 -1208
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #15
  %7 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 2048, ptr %_m.i, align 8
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_inode_unlock, i32 noundef 2623, ptr noundef nonnull @.str.33, i64 noundef %9, ptr noundef nonnull @.str.20) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #15
  %osb_lock.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %6, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %osb_lock.i.i) #15
  %osb_flags.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %6, i32 0, i32 23
  %10 = ptrtoint ptr %osb_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %osb_flags.i.i, align 8
  %and.i.i = and i32 %11, 2
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %if.then22.ocfs2_inode_unlock.exit_crit_edge

if.then22.ocfs2_inode_unlock.exit_crit_edge:      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_inode_unlock.exit

land.lhs.true.i:                                  ; preds = %if.then22
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %6, i32 0, i32 19
  %12 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_feature_incompat.i.i, align 8
  %and.i17.i = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %tobool.not.i.i = icmp eq i32 %and.i17.i, 0
  br i1 %tobool.not.i.i, label %ocfs2_mount_local.exit.i, label %land.lhs.true.i.ocfs2_inode_unlock.exit_crit_edge

land.lhs.true.i.ocfs2_inode_unlock.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_inode_unlock.exit

ocfs2_mount_local.exit.i:                         ; preds = %land.lhs.true.i
  %s_mount_opt.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %6, i32 0, i32 28
  %14 = ptrtoint ptr %s_mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_mount_opt.i.i, align 8
  %16 = and i32 %15, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool8.not.i = icmp eq i32 %16, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %ocfs2_mount_local.exit.i.ocfs2_inode_unlock.exit_crit_edge

ocfs2_mount_local.exit.i.ocfs2_inode_unlock.exit_crit_edge: ; preds = %ocfs2_mount_local.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_inode_unlock.exit

if.then9.i:                                       ; preds = %ocfs2_mount_local.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ocfs2_cluster_unlock(ptr noundef %6, ptr noundef %ip_inode_lockres.i, i32 noundef 3) #15
  br label %ocfs2_inode_unlock.exit

ocfs2_inode_unlock.exit:                          ; preds = %if.then9.i, %ocfs2_mount_local.exit.i.ocfs2_inode_unlock.exit_crit_edge, %land.lhs.true.i.ocfs2_inode_unlock.exit_crit_edge, %if.then22.ocfs2_inode_unlock.exit_crit_edge
  %.104 = select i1 %tobool.not, i32 2, i32 0
  %call27 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef %inode, ptr noundef nonnull %bh, i32 noundef 1, i32 noundef %.104, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp29 = icmp slt i32 %call27, 0
  br i1 %cmp29, label %if.then31, label %if.end63

if.then31:                                        ; preds = %ocfs2_inode_unlock.exit
  %17 = zext i32 %call27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %call27, label %do.body51 [
    i32 -11, label %if.then31.cleanup71.critedge_crit_edge
    i32 -512, label %if.then31.cleanup71.critedge_crit_edge109
    i32 -4, label %if.then31.cleanup71.critedge_crit_edge110
    i32 -28, label %if.then31.cleanup71.critedge_crit_edge111
    i32 -122, label %if.then31.cleanup71.critedge_crit_edge112
  ]

if.then31.cleanup71.critedge_crit_edge112:        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup71.critedge

if.then31.cleanup71.critedge_crit_edge111:        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup71.critedge

if.then31.cleanup71.critedge_crit_edge110:        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup71.critedge

if.then31.cleanup71.critedge_crit_edge109:        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup71.critedge

if.then31.cleanup71.critedge_crit_edge:           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup71.critedge

do.body51:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m52) #15
  %18 = ptrtoint ptr %_m52 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606849024, ptr %_m52, align 8
  %conv56 = sext i32 %call27 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m52, ptr noundef nonnull @__func__.ocfs2_inode_lock_atime, i32 noundef 2601, ptr noundef nonnull @.str.17, i64 noundef %conv56) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m52) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #15
  br label %cleanup71

if.end63:                                         ; preds = %ocfs2_inode_unlock.exit
  %19 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %level, align 4
  %call64 = call i32 @ocfs2_should_update_atime(ptr noundef %inode, ptr noundef %vfsmnt) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end63.if.end68_crit_edge, label %if.then66

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bh, align 4
  %call67 = call i32 @ocfs2_update_inode_atime(ptr noundef %inode, ptr noundef %21) #15
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end63.if.end68_crit_edge
  %22 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end68.brelse.exit_crit_edge, label %if.then.i

if.end68.brelse.exit_crit_edge:                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  call void @__brelse(ptr noundef nonnull %23) #15
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end68.brelse.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #15
  br label %cleanup71

if.else69:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %level, align 4
  br label %cleanup71

cleanup71.critedge:                               ; preds = %if.then31.cleanup71.critedge_crit_edge, %if.then31.cleanup71.critedge_crit_edge109, %if.then31.cleanup71.critedge_crit_edge110, %if.then31.cleanup71.critedge_crit_edge111, %if.then31.cleanup71.critedge_crit_edge112
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #15
  br label %cleanup71

cleanup71:                                        ; preds = %cleanup71.critedge, %if.else69, %brelse.exit, %do.body51, %do.body, %if.then2.cleanup71_crit_edge, %if.then2.cleanup71_crit_edge105, %if.then2.cleanup71_crit_edge106, %if.then2.cleanup71_crit_edge107, %if.then2.cleanup71_crit_edge108
  %retval.1 = phi i32 [ %call1, %do.body ], [ %call1, %if.then2.cleanup71_crit_edge ], [ %call1, %if.then2.cleanup71_crit_edge105 ], [ %call1, %if.then2.cleanup71_crit_edge106 ], [ %call1, %if.then2.cleanup71_crit_edge107 ], [ %call1, %if.then2.cleanup71_crit_edge108 ], [ %call27, %cleanup71.critedge ], [ %call27, %do.body51 ], [ %call1, %if.else69 ], [ %call27, %brelse.exit ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_should_update_atime(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_update_inode_atime(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_inode_lock_tracker(ptr noundef %inode, ptr noundef %ret_bh, i32 noundef %ex, ptr noundef %oh) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m31 = alloca i64, align 8
  %_m65 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !365) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 78
  %4 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thread_pid.i, align 16
  %l_lock.i = getelementptr i8, ptr %inode, i32 -1120
  tail call void @_raw_spin_lock(ptr noundef %l_lock.i) #15
  %l_holders.i = getelementptr i8, ptr %inode, i32 -1184
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %oh.0.in.i = phi ptr [ %l_holders.i, %entry ], [ %oh.0.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %oh.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %oh.0.i = load ptr, ptr %oh.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %oh.0.i, %l_holders.i
  br i1 %cmp.not.i, label %ocfs2_pid_holder.exit.thread, label %for.body.i

ocfs2_pid_holder.exit.thread:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %l_lock.i) #15
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %oh_owner_pid.i = getelementptr inbounds %struct.ocfs2_lock_holder, ptr %oh.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %oh_owner_pid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %oh_owner_pid.i, align 4
  %cmp2.i = icmp eq ptr %8, %5
  br i1 %cmp2.i, label %ocfs2_pid_holder.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

ocfs2_pid_holder.exit:                            ; preds = %for.body.i
  tail call void @_raw_spin_unlock(ptr noundef %l_lock.i) #15
  %tobool.not = icmp eq ptr %oh.0.i, null
  br i1 %tobool.not, label %ocfs2_pid_holder.exit.if.then_crit_edge, label %if.end22

ocfs2_pid_holder.exit.if.then_crit_edge:          ; preds = %ocfs2_pid_holder.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %ocfs2_pid_holder.exit.if.then_crit_edge, %ocfs2_pid_holder.exit.thread
  %call4 = tail call i32 @ocfs2_inode_lock_full_nested(ptr noundef %inode, ptr noundef %ret_bh, i32 noundef %ex, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end21

if.then5:                                         ; preds = %if.then
  %9 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %call4, label %do.body [
    i32 -2, label %if.then5.cleanup_crit_edge
    i32 -512, label %if.then5.cleanup_crit_edge121
    i32 -4, label %if.then5.cleanup_crit_edge122
    i32 -28, label %if.then5.cleanup_crit_edge123
    i32 -122, label %if.then5.cleanup_crit_edge124
  ]

if.then5.cleanup_crit_edge124:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then5.cleanup_crit_edge123:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then5.cleanup_crit_edge122:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then5.cleanup_crit_edge121:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %10 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1152921504606849024, ptr %_m, align 8
  %conv = sext i32 %call4 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_inode_lock_tracker, i32 noundef 2693, ptr noundef nonnull @.str.17, i64 noundef %conv) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %cleanup

if.end21:                                         ; preds = %if.then
  %oh_ex = getelementptr inbounds %struct.ocfs2_lock_holder, ptr %oh, i32 0, i32 2
  %11 = ptrtoint ptr %oh_ex to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %ex, ptr %oh_ex, align 4
  %12 = ptrtoint ptr %oh to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %oh, ptr %oh, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %oh, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %oh, ptr %prev.i.i, align 4
  %14 = tail call i32 @llvm.read_register.i32(metadata !365) #15
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 78
  %18 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %thread_pid.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end21.get_pid.exit.i_crit_edge, label %if.then.i.i

if.end21.get_pid.exit.i_crit_edge:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_pid.exit.i

if.then.i.i:                                      ; preds = %if.end21
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %19, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %19, i32 1, i32 3, i32 1) #15
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #15, !srcloc !418
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !386

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %21 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !376

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_pid.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_pid.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %19, i32 noundef %.sink.i.i.i.i.i) #15
  br label %get_pid.exit.i

get_pid.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, %if.end21.get_pid.exit.i_crit_edge
  %oh_owner_pid.i110 = getelementptr inbounds %struct.ocfs2_lock_holder, ptr %oh, i32 0, i32 1
  %22 = ptrtoint ptr %oh_owner_pid.i110 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %oh_owner_pid.i110, align 4
  tail call void @_raw_spin_lock(ptr noundef %l_lock.i) #15
  %prev.i9.i = getelementptr i8, ptr %inode, i32 -1180
  %23 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i9.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %oh, ptr noundef %24, ptr noundef %l_holders.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %get_pid.exit.i.ocfs2_add_holder.exit_crit_edge

get_pid.exit.i.ocfs2_add_holder.exit_crit_edge:   ; preds = %get_pid.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_add_holder.exit

if.end.i.i.i:                                     ; preds = %get_pid.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %oh, ptr %prev.i9.i, align 4
  %26 = ptrtoint ptr %oh to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %l_holders.i, ptr %oh, align 4
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %oh, ptr %24, align 4
  br label %ocfs2_add_holder.exit

ocfs2_add_holder.exit:                            ; preds = %if.end.i.i.i, %get_pid.exit.i.ocfs2_add_holder.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %l_lock.i) #15
  br label %cleanup

if.end22:                                         ; preds = %ocfs2_pid_holder.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ex)
  %tobool23.not = icmp eq i32 %ex, 0
  br i1 %tobool23.not, label %if.end22.if.end38_crit_edge, label %land.rhs

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

land.rhs:                                         ; preds = %if.end22
  %oh_ex24 = getelementptr inbounds %struct.ocfs2_lock_holder, ptr %oh.0.i, i32 0, i32 2
  %29 = ptrtoint ptr %oh_ex24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %oh_ex24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool25.not = icmp eq i32 %30, 0
  br i1 %tobool25.not, label %do.body30, label %land.rhs.if.end38_crit_edge, !prof !386

land.rhs.if.end38_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

do.body30:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m31) #15
  %31 = ptrtoint ptr %_m31 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 1152921504606849024, ptr %_m31, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m31, ptr noundef nonnull @__func__.ocfs2_inode_lock_tracker, i32 noundef 2707, ptr noundef nonnull @.str.34) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m31) #15
  call void @dump_stack() #20
  br label %cleanup

if.end38:                                         ; preds = %land.rhs.if.end38_crit_edge, %if.end22.if.end38_crit_edge
  %tobool39.not = icmp eq ptr %ret_bh, null
  br i1 %tobool39.not, label %if.end38.cleanup_crit_edge, label %if.then40

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then40:                                        ; preds = %if.end38
  %call41 = tail call i32 @ocfs2_inode_lock_full_nested(ptr noundef %inode, ptr noundef nonnull %ret_bh, i32 noundef %ex, i32 noundef 8, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then44:                                        ; preds = %if.then40
  %32 = zext i32 %call41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %call41, label %do.body64 [
    i32 -2, label %if.then44.cleanup_crit_edge
    i32 -512, label %if.then44.cleanup_crit_edge125
    i32 -4, label %if.then44.cleanup_crit_edge126
    i32 -28, label %if.then44.cleanup_crit_edge127
    i32 -122, label %if.then44.cleanup_crit_edge128
  ]

if.then44.cleanup_crit_edge128:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then44.cleanup_crit_edge127:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then44.cleanup_crit_edge126:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then44.cleanup_crit_edge125:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body64:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m65) #15
  %33 = ptrtoint ptr %_m65 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1152921504606849024, ptr %_m65, align 8
  %conv69 = sext i32 %call41 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m65, ptr noundef nonnull @__func__.ocfs2_inode_lock_tracker, i32 noundef 2721, ptr noundef nonnull @.str.17, i64 noundef %conv69) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m65) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body64, %if.then44.cleanup_crit_edge, %if.then44.cleanup_crit_edge125, %if.then44.cleanup_crit_edge126, %if.then44.cleanup_crit_edge127, %if.then44.cleanup_crit_edge128, %if.then40.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %do.body30, %ocfs2_add_holder.exit, %do.body, %if.then5.cleanup_crit_edge, %if.then5.cleanup_crit_edge121, %if.then5.cleanup_crit_edge122, %if.then5.cleanup_crit_edge123, %if.then5.cleanup_crit_edge124
  %retval.0 = phi i32 [ -22, %do.body30 ], [ 0, %ocfs2_add_holder.exit ], [ %call4, %do.body ], [ %call4, %if.then5.cleanup_crit_edge ], [ %call4, %if.then5.cleanup_crit_edge121 ], [ %call4, %if.then5.cleanup_crit_edge122 ], [ %call4, %if.then5.cleanup_crit_edge123 ], [ %call4, %if.then5.cleanup_crit_edge124 ], [ %call41, %do.body64 ], [ %call41, %if.then44.cleanup_crit_edge ], [ %call41, %if.then44.cleanup_crit_edge125 ], [ %call41, %if.then44.cleanup_crit_edge126 ], [ %call41, %if.then44.cleanup_crit_edge127 ], [ %call41, %if.then44.cleanup_crit_edge128 ], [ 1, %if.then40.cleanup_crit_edge ], [ 1, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_inode_unlock_tracker(ptr noundef %inode, i32 noundef %ex, ptr noundef %oh, i32 noundef %had_lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %had_lock)
  %tobool.not = icmp eq i32 %had_lock, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %oh_ex = getelementptr inbounds %struct.ocfs2_lock_holder, ptr %oh, i32 0, i32 2
  %0 = ptrtoint ptr %oh_ex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oh_ex, align 4
  tail call void @ocfs2_inode_unlock(ptr noundef %inode, i32 noundef %1)
  %l_lock.i = getelementptr i8, ptr %inode, i32 -1120
  tail call void @_raw_spin_lock(ptr noundef %l_lock.i) #15
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %oh) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.ocfs2_remove_holder.exit_crit_edge

if.then.ocfs2_remove_holder.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_remove_holder.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %oh, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oh, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %ocfs2_remove_holder.exit

ocfs2_remove_holder.exit:                         ; preds = %if.end.i.i.i, %if.then.ocfs2_remove_holder.exit_crit_edge
  %8 = ptrtoint ptr %oh to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %oh, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %oh, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %l_lock.i) #15
  %oh_owner_pid.i = getelementptr inbounds %struct.ocfs2_lock_holder, ptr %oh, i32 0, i32 1
  %10 = ptrtoint ptr %oh_owner_pid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %oh_owner_pid.i, align 4
  tail call void @put_pid(ptr noundef %11) #15
  br label %if.end

if.end:                                           ; preds = %ocfs2_remove_holder.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_orphan_scan_lock(ptr noundef %osb, ptr nocapture noundef writeonly %seqno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #15
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 23
  %0 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %1, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 19
  %2 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i29 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not.i = icmp eq i32 %and.i29, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ocfs2_mount_local.exit:                           ; preds = %if.end
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %4 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt.i, align 8
  %6 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end4, label %ocfs2_mount_local.exit.cleanup_crit_edge

ocfs2_mount_local.exit.cleanup_crit_edge:         ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %ocfs2_mount_local.exit
  %os_lockres = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 2
  %7 = tail call ptr @llvm.returnaddress(i32 0) #15
  %8 = ptrtoint ptr %7 to i32
  %call.i = tail call fastcc i32 @__ocfs2_cluster_lock(ptr noundef %osb, ptr noundef %os_lockres, i32 noundef 5, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %l_lksb = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 2, i32 17
  %call8 = tail call ptr @ocfs2_dlm_lvb(ptr noundef %l_lksb) #15
  %call10 = tail call i32 @ocfs2_dlm_lvb_valid(ptr noundef %l_lksb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end7.if.else_crit_edge, label %land.lhs.true

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %if.end7
  %9 = ptrtoint ptr %call8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call8, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp12 = icmp eq i8 %10, 1
  br i1 %cmp12, label %if.then14, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %lvb_os_seqno = getelementptr inbounds %struct.ocfs2_orphan_scan_lvb, ptr %call8, i32 0, i32 2
  %11 = ptrtoint ptr %lvb_os_seqno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lvb_os_seqno, align 4
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end7.if.else_crit_edge
  %os_seqno = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 6
  %13 = ptrtoint ptr %os_seqno to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %os_seqno, align 4
  %add = add i32 %14, 1
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14
  %storemerge = phi i32 [ %add, %if.else ], [ %12, %if.then14 ]
  %15 = ptrtoint ptr %seqno to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %seqno, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end4.cleanup_crit_edge, %ocfs2_mount_local.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end16 ], [ -30, %entry.cleanup_crit_edge ], [ 0, %ocfs2_mount_local.exit.cleanup_crit_edge ], [ %call.i, %if.end4.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_dlm_lvb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_dlm_lvb_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_orphan_scan_unlock(ptr noundef %osb, i32 noundef %seqno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #15
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 23
  %0 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %1, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 19
  %2 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i9 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

ocfs2_mount_local.exit:                           ; preds = %land.lhs.true
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %4 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt.i, align 8
  %6 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.then, label %ocfs2_mount_local.exit.if.end_crit_edge

ocfs2_mount_local.exit.if.end_crit_edge:          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  %os_lockres = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 2
  %l_lksb = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 2, i32 17
  %call3 = tail call ptr @ocfs2_dlm_lvb(ptr noundef %l_lksb) #15
  %7 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %call3, align 4
  %lvb_os_seqno = getelementptr inbounds %struct.ocfs2_orphan_scan_lvb, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %lvb_os_seqno to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %seqno, ptr %lvb_os_seqno, align 4
  tail call fastcc void @ocfs2_cluster_unlock(ptr noundef %osb, ptr noundef %os_lockres, i32 noundef 5)
  br label %if.end

if.end:                                           ; preds = %if.then, %ocfs2_mount_local.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_super_lock(ptr noundef %osb, i32 noundef %ex) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m46 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ex)
  %tobool.not = icmp eq i32 %ex, 0
  %cond = select i1 %tobool.not, i32 3, i32 5
  %osb_super_lockres = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 66
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #15
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 23
  %0 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %1, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 19
  %2 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i88 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88)
  %tobool.not.i = icmp eq i32 %and.i88, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ocfs2_mount_local.exit:                           ; preds = %if.end
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %4 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt.i, align 8
  %6 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end5, label %ocfs2_mount_local.exit.cleanup_crit_edge

ocfs2_mount_local.exit.cleanup_crit_edge:         ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %ocfs2_mount_local.exit
  %7 = tail call ptr @llvm.returnaddress(i32 0) #15
  %8 = ptrtoint ptr %7 to i32
  %call.i = tail call fastcc i32 @__ocfs2_cluster_lock(ptr noundef %osb, ptr noundef %osb_super_lockres, i32 noundef %cond, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then7, label %if.end21

if.then7:                                         ; preds = %if.end5
  %9 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %call.i, label %do.body [
    i32 -512, label %if.then7.cleanup_crit_edge
    i32 -4, label %if.then7.cleanup_crit_edge91
    i32 -28, label %if.then7.cleanup_crit_edge92
    i32 -122, label %if.then7.cleanup_crit_edge93
  ]

if.then7.cleanup_crit_edge93:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7.cleanup_crit_edge92:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7.cleanup_crit_edge91:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %10 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1152921504606849024, ptr %_m, align 8
  %conv = sext i32 %call.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_super_lock, i32 noundef 2803, ptr noundef nonnull @.str.17, i64 noundef %conv) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %cleanup

if.end21:                                         ; preds = %if.end5
  %call22 = tail call fastcc i32 @ocfs2_should_refresh_lock_res(ptr noundef %osb_super_lockres)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.then24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then24:                                        ; preds = %if.end21
  %call25 = tail call i32 @ocfs2_refresh_slot_info(ptr noundef %osb) #15
  %l_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 66, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock.i) #15
  %l_flags.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 66, i32 5
  %11 = ptrtoint ptr %l_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %l_flags.i.i, align 8
  %and.i.i = and i32 %12, -33
  tail call fastcc void @lockres_set_flags(ptr noundef %osb_super_lockres, i32 noundef %and.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not.i89 = icmp eq i32 %call25, 0
  br i1 %tobool.not.i89, label %if.then.i, label %if.then24.ocfs2_complete_lock_res_refresh.exit_crit_edge

if.then24.ocfs2_complete_lock_res_refresh.exit_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_complete_lock_res_refresh.exit

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %l_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %l_flags.i.i, align 8
  %and.i11.i = and i32 %14, -17
  tail call fastcc void @lockres_set_flags(ptr noundef %osb_super_lockres, i32 noundef %and.i11.i) #15
  br label %ocfs2_complete_lock_res_refresh.exit

ocfs2_complete_lock_res_refresh.exit:             ; preds = %if.then.i, %if.then24.ocfs2_complete_lock_res_refresh.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock.i, i32 noundef %call2.i) #15
  %l_event.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 66, i32 18
  tail call void @__wake_up(ptr noundef %l_event.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %ocfs2_complete_lock_res_refresh.exit.if.end56_crit_edge

ocfs2_complete_lock_res_refresh.exit.if.end56_crit_edge: ; preds = %ocfs2_complete_lock_res_refresh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then28:                                        ; preds = %ocfs2_complete_lock_res_refresh.exit
  tail call fastcc void @ocfs2_cluster_unlock(ptr noundef %osb, ptr noundef %osb_super_lockres, i32 noundef %cond)
  %15 = zext i32 %call25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %call25, label %do.body45 [
    i32 -512, label %if.then28.if.end56_crit_edge
    i32 -4, label %if.then28.if.end56_crit_edge94
    i32 -28, label %if.then28.if.end56_crit_edge95
    i32 -122, label %if.then28.if.end56_crit_edge96
  ]

if.then28.if.end56_crit_edge96:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then28.if.end56_crit_edge95:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then28.if.end56_crit_edge94:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then28.if.end56_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

do.body45:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m46) #15
  %16 = ptrtoint ptr %_m46 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1152921504606849024, ptr %_m46, align 8
  %conv50 = sext i32 %call25 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m46, ptr noundef nonnull @__func__.ocfs2_super_lock, i32 noundef 2819, ptr noundef nonnull @.str.17, i64 noundef %conv50) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m46) #15
  br label %if.end56

if.end56:                                         ; preds = %do.body45, %if.then28.if.end56_crit_edge, %if.then28.if.end56_crit_edge94, %if.then28.if.end56_crit_edge95, %if.then28.if.end56_crit_edge96, %ocfs2_complete_lock_res_refresh.exit.if.end56_crit_edge
  %l_lock_refresh.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 66, i32 21
  %17 = ptrtoint ptr %l_lock_refresh.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %l_lock_refresh.i, align 8
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %l_lock_refresh.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end21.cleanup_crit_edge, %do.body, %if.then7.cleanup_crit_edge, %if.then7.cleanup_crit_edge91, %if.then7.cleanup_crit_edge92, %if.then7.cleanup_crit_edge93, %ocfs2_mount_local.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %entry.cleanup_crit_edge ], [ 0, %ocfs2_mount_local.exit.cleanup_crit_edge ], [ %call25, %if.end56 ], [ 0, %if.end21.cleanup_crit_edge ], [ %call.i, %if.then7.cleanup_crit_edge ], [ %call.i, %if.then7.cleanup_crit_edge91 ], [ %call.i, %if.then7.cleanup_crit_edge92 ], [ %call.i, %if.then7.cleanup_crit_edge93 ], [ %call.i, %do.body ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_should_refresh_lock_res(ptr noundef %lockres) unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_lock = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  %call233 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %0 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l_flags, align 8
  %and34 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool.not35 = icmp eq i32 %and34, 0
  br i1 %tobool.not35, label %entry.do.body13_crit_edge, label %if.end.lr.ph

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body13

if.end.lr.ph:                                     ; preds = %entry
  %l_event.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 18
  br label %if.end

if.end:                                           ; preds = %ocfs2_wait_on_refreshing_lock.exit.if.end_crit_edge, %if.end.lr.ph
  %2 = phi i32 [ %1, %if.end.lr.ph ], [ %11, %ocfs2_wait_on_refreshing_lock.exit.if.end_crit_edge ]
  %call236 = phi i32 [ %call233, %if.end.lr.ph ], [ %call2, %ocfs2_wait_on_refreshing_lock.exit.if.end_crit_edge ]
  %and7 = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call236) #15
  call void @__might_sleep(ptr noundef nonnull @.str.38, i32 noundef 1375) #15
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %3 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %l_flags, align 8
  %and.i.i = and i32 %4, 32
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call2.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then9.ocfs2_wait_on_refreshing_lock.exit_crit_edge, label %if.end.i

if.then9.ocfs2_wait_on_refreshing_lock.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_wait_on_refreshing_lock.exit

if.end.i:                                         ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #15
  %5 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #15
  %call420.i = call i32 @prepare_to_wait_event(ptr noundef %l_event.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #15
  %call2.i1521.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %6 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %l_flags, align 8
  %and.i1722.i = and i32 %7, 32
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call2.i1521.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1722.i)
  %tobool6.not23.i = icmp eq i32 %and.i1722.i, 0
  br i1 %tobool6.not23.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  br label %cleanup.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge
  call void @schedule() #15
  %call4.i = call i32 @prepare_to_wait_event(ptr noundef %l_event.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #15
  %call2.i15.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %8 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %l_flags, align 8
  %and.i17.i = and i32 %9, 32
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call2.i15.i) #15
  %tobool6.not.i = icmp eq i32 %and.i17.i, 0
  br i1 %tobool6.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %l_event.i, ptr noundef nonnull %__wq_entry.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #15
  br label %ocfs2_wait_on_refreshing_lock.exit

ocfs2_wait_on_refreshing_lock.exit:               ; preds = %for.end.i, %if.then9.ocfs2_wait_on_refreshing_lock.exit_crit_edge
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %10 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %l_flags, align 8
  %and = and i32 %11, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ocfs2_wait_on_refreshing_lock.exit.do.body13_crit_edge, label %ocfs2_wait_on_refreshing_lock.exit.if.end_crit_edge

ocfs2_wait_on_refreshing_lock.exit.if.end_crit_edge: ; preds = %ocfs2_wait_on_refreshing_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

ocfs2_wait_on_refreshing_lock.exit.do.body13_crit_edge: ; preds = %ocfs2_wait_on_refreshing_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body13

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %or1.i = or i32 %2, 32
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %or1.i) #15
  br label %do.body13

do.body13:                                        ; preds = %if.end11, %ocfs2_wait_on_refreshing_lock.exit.do.body13_crit_edge, %entry.do.body13_crit_edge
  %call2.lcssa.sink = phi i32 [ %call236, %if.end11 ], [ %call233, %entry.do.body13_crit_edge ], [ %call2, %ocfs2_wait_on_refreshing_lock.exit.do.body13_crit_edge ]
  %status.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry.do.body13_crit_edge ], [ 0, %ocfs2_wait_on_refreshing_lock.exit.do.body13_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call2.lcssa.sink) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 2048, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_should_refresh_lock_res, i32 noundef 2291, ptr noundef nonnull @.str.97, i32 noundef %status.0) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_refresh_slot_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_super_unlock(ptr noundef %osb, i32 noundef %ex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 19
  %0 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

ocfs2_mount_local.exit:                           ; preds = %entry
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %2 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_mount_opt.i, align 8
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.then, label %ocfs2_mount_local.exit.if.end_crit_edge

ocfs2_mount_local.exit.if.end_crit_edge:          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  %osb_super_lockres = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ex)
  %tobool.not = icmp eq i32 %ex, 0
  %cond = select i1 %tobool.not, i32 3, i32 5
  tail call fastcc void @ocfs2_cluster_unlock(ptr noundef %osb, ptr noundef %osb_super_lockres, i32 noundef %cond)
  br label %if.end

if.end:                                           ; preds = %if.then, %ocfs2_mount_local.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_rename_lock(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_rename_lockres = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 67
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #15
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 23
  %0 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %1, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 19
  %2 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i33 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %tobool.not.i = icmp eq i32 %and.i33, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ocfs2_mount_local.exit:                           ; preds = %if.end
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %4 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt.i, align 8
  %6 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end4, label %ocfs2_mount_local.exit.cleanup_crit_edge

ocfs2_mount_local.exit.cleanup_crit_edge:         ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %ocfs2_mount_local.exit
  %7 = tail call ptr @llvm.returnaddress(i32 0) #15
  %8 = ptrtoint ptr %7 to i32
  %call.i = tail call fastcc i32 @__ocfs2_cluster_lock(ptr noundef %osb, ptr noundef %osb_rename_lockres, i32 noundef 5, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  %9 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %call.i, label %do.body [
    i32 -512, label %if.then6.cleanup_crit_edge
    i32 -4, label %if.then6.cleanup_crit_edge35
    i32 -28, label %if.then6.cleanup_crit_edge36
    i32 -122, label %if.then6.cleanup_crit_edge37
  ]

if.then6.cleanup_crit_edge37:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then6.cleanup_crit_edge36:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then6.cleanup_crit_edge35:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %10 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1152921504606849024, ptr %_m, align 8
  %conv = sext i32 %call.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_rename_lock, i32 noundef 2850, ptr noundef nonnull @.str.17, i64 noundef %conv) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then6.cleanup_crit_edge, %if.then6.cleanup_crit_edge35, %if.then6.cleanup_crit_edge36, %if.then6.cleanup_crit_edge37, %if.end4.cleanup_crit_edge, %ocfs2_mount_local.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %entry.cleanup_crit_edge ], [ 0, %ocfs2_mount_local.exit.cleanup_crit_edge ], [ %call.i, %do.body ], [ %call.i, %if.then6.cleanup_crit_edge ], [ %call.i, %if.then6.cleanup_crit_edge35 ], [ %call.i, %if.then6.cleanup_crit_edge36 ], [ %call.i, %if.then6.cleanup_crit_edge37 ], [ %call.i, %if.end4.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_rename_unlock(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 19
  %0 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

ocfs2_mount_local.exit:                           ; preds = %entry
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %2 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_mount_opt.i, align 8
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %ocfs2_mount_local.exit.if.end_crit_edge

ocfs2_mount_local.exit.if.end_crit_edge:          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  %osb_rename_lockres = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 67
  tail call fastcc void @ocfs2_cluster_unlock(ptr noundef %osb, ptr noundef %osb_rename_lockres, i32 noundef 5)
  br label %if.end

if.end:                                           ; preds = %if.then, %ocfs2_mount_local.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_nfs_sync_lock(ptr noundef %osb, i32 noundef %ex) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_nfs_sync_lockres = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 68
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #15
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 23
  %0 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %1, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ex)
  %tobool1.not = icmp eq i32 %ex, 0
  %nfs_sync_rwlock3 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 69
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @down_write(ptr noundef %nfs_sync_rwlock3) #15
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @down_read(ptr noundef %nfs_sync_rwlock3) #15
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 19
  %2 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i34 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i = icmp eq i32 %and.i34, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ocfs2_mount_local.exit:                           ; preds = %if.end4
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %4 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt.i, align 8
  %6 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %if.end8, label %ocfs2_mount_local.exit.cleanup_crit_edge

ocfs2_mount_local.exit.cleanup_crit_edge:         ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %ocfs2_mount_local.exit
  %cond = select i1 %tobool1.not, i32 3, i32 5
  %7 = tail call ptr @llvm.returnaddress(i32 0) #15
  %8 = ptrtoint ptr %7 to i32
  %call.i = tail call fastcc i32 @__ocfs2_cluster_lock(ptr noundef %osb, ptr noundef %osb_nfs_sync_lockres, i32 noundef %cond, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %9 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606849024, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_nfs_sync_lock, i32 noundef 2882, ptr noundef nonnull @.str.35, i32 noundef %call.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  %nfs_sync_rwlock19 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 69
  br i1 %tobool1.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @up_write(ptr noundef %nfs_sync_rwlock19) #15
  br label %cleanup

if.else18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @up_read(ptr noundef %nfs_sync_rwlock19) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else18, %if.then16, %if.end8.cleanup_crit_edge, %ocfs2_mount_local.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %entry.cleanup_crit_edge ], [ 0, %ocfs2_mount_local.exit.cleanup_crit_edge ], [ %call.i, %if.then16 ], [ %call.i, %if.else18 ], [ %call.i, %if.end8.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_nfs_sync_unlock(ptr noundef %osb, i32 noundef %ex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 19
  %0 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

ocfs2_mount_local.exit:                           ; preds = %entry
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %2 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_mount_opt.i, align 8
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %ocfs2_mount_local.exit.if.end_crit_edge

ocfs2_mount_local.exit.if.end_crit_edge:          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  %osb_nfs_sync_lockres = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ex)
  %tobool1.not = icmp eq i32 %ex, 0
  %cond = select i1 %tobool1.not, i32 3, i32 5
  tail call fastcc void @ocfs2_cluster_unlock(ptr noundef %osb, ptr noundef %osb_nfs_sync_lockres, i32 noundef %cond)
  br label %if.end

if.end:                                           ; preds = %if.then, %ocfs2_mount_local.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ex)
  %tobool2.not = icmp eq i32 %ex, 0
  %nfs_sync_rwlock4 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 69
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @up_write(ptr noundef %nfs_sync_rwlock4) #15
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @up_read(ptr noundef %nfs_sync_rwlock4) #15
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_trim_fs_lock(ptr noundef %osb, ptr noundef writeonly %info, i32 noundef %trylock) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_trim_fs_lockres = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 70
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %info, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #15
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 23
  %1 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %2, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 19
  %3 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i74 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74)
  %tobool.not.i = icmp eq i32 %and.i74, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ocfs2_mount_local.exit:                           ; preds = %if.end3
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %5 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_mount_opt.i, align 8
  %7 = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end7, label %ocfs2_mount_local.exit.cleanup_crit_edge

ocfs2_mount_local.exit.cleanup_crit_edge:         ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trylock)
  %tobool8.not = icmp ne i32 %trylock, 0
  %cond = zext i1 %tobool8.not to i32
  %8 = tail call ptr @llvm.returnaddress(i32 0) #15
  %9 = ptrtoint ptr %8 to i32
  %call.i = tail call fastcc i32 @__ocfs2_cluster_lock(ptr noundef %osb, ptr noundef %osb_trim_fs_lockres, i32 noundef 5, i32 noundef %cond, i32 noundef 0, i32 noundef 0, i32 noundef %9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then10, label %if.end27

if.then10:                                        ; preds = %if.end7
  %10 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %call.i, label %do.body [
    i32 -11, label %if.then10.cleanup_crit_edge
    i32 -512, label %if.then10.cleanup_crit_edge76
    i32 -4, label %if.then10.cleanup_crit_edge77
    i32 -28, label %if.then10.cleanup_crit_edge78
    i32 -122, label %if.then10.cleanup_crit_edge79
  ]

if.then10.cleanup_crit_edge79:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.cleanup_crit_edge78:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.cleanup_crit_edge77:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.cleanup_crit_edge76:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %11 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606849024, ptr %_m, align 8
  %conv = sext i32 %call.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_trim_fs_lock, i32 noundef 2926, ptr noundef nonnull @.str.17, i64 noundef %conv) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %cleanup

if.end27:                                         ; preds = %if.end7
  br i1 %tobool.not, label %if.end27.cleanup_crit_edge, label %if.then29

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then29:                                        ; preds = %if.end27
  %l_lksb = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 70, i32 17
  %call30 = tail call ptr @ocfs2_dlm_lvb(ptr noundef %l_lksb) #15
  %call32 = tail call i32 @ocfs2_dlm_lvb_valid(ptr noundef %l_lksb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then29.cleanup_crit_edge, label %land.lhs.true34

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true34:                                  ; preds = %if.then29
  %12 = ptrtoint ptr %call30 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %call30, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp36 = icmp eq i8 %13, 1
  br i1 %cmp36, label %if.then38, label %land.lhs.true34.cleanup_crit_edge

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then38:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %info, align 8
  %lvb_success = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, ptr %call30, i32 0, i32 1
  %15 = ptrtoint ptr %lvb_success to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lvb_success, align 1
  %tf_success = getelementptr inbounds %struct.ocfs2_trim_fs_info, ptr %info, i32 0, i32 1
  %17 = ptrtoint ptr %tf_success to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tf_success, align 1
  %lvb_nodenum = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, ptr %call30, i32 0, i32 3
  %18 = ptrtoint ptr %lvb_nodenum to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lvb_nodenum, align 4
  %tf_nodenum = getelementptr inbounds %struct.ocfs2_trim_fs_info, ptr %info, i32 0, i32 2
  %20 = ptrtoint ptr %tf_nodenum to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tf_nodenum, align 4
  %lvb_start = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, ptr %call30, i32 0, i32 4
  %21 = ptrtoint ptr %lvb_start to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %lvb_start, align 8
  %tf_start = getelementptr inbounds %struct.ocfs2_trim_fs_info, ptr %info, i32 0, i32 3
  %23 = ptrtoint ptr %tf_start to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %tf_start, align 8
  %lvb_len = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, ptr %call30, i32 0, i32 5
  %24 = ptrtoint ptr %lvb_len to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %lvb_len, align 8
  %tf_len = getelementptr inbounds %struct.ocfs2_trim_fs_info, ptr %info, i32 0, i32 4
  %26 = ptrtoint ptr %tf_len to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %tf_len, align 8
  %lvb_minlen = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, ptr %call30, i32 0, i32 6
  %27 = ptrtoint ptr %lvb_minlen to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %lvb_minlen, align 8
  %tf_minlen = getelementptr inbounds %struct.ocfs2_trim_fs_info, ptr %info, i32 0, i32 5
  %29 = ptrtoint ptr %tf_minlen to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %tf_minlen, align 8
  %lvb_trimlen = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, ptr %call30, i32 0, i32 7
  %30 = ptrtoint ptr %lvb_trimlen to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %lvb_trimlen, align 8
  %tf_trimlen = getelementptr inbounds %struct.ocfs2_trim_fs_info, ptr %info, i32 0, i32 6
  %32 = ptrtoint ptr %tf_trimlen to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %tf_trimlen, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %land.lhs.true34.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %do.body, %if.then10.cleanup_crit_edge, %if.then10.cleanup_crit_edge76, %if.then10.cleanup_crit_edge77, %if.then10.cleanup_crit_edge78, %if.then10.cleanup_crit_edge79, %ocfs2_mount_local.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %if.end.cleanup_crit_edge ], [ 0, %ocfs2_mount_local.exit.cleanup_crit_edge ], [ %call.i, %do.body ], [ %call.i, %if.then10.cleanup_crit_edge ], [ %call.i, %if.then10.cleanup_crit_edge76 ], [ %call.i, %if.then10.cleanup_crit_edge77 ], [ %call.i, %if.then10.cleanup_crit_edge78 ], [ %call.i, %if.then10.cleanup_crit_edge79 ], [ %call.i, %if.then29.cleanup_crit_edge ], [ %call.i, %land.lhs.true34.cleanup_crit_edge ], [ %call.i, %if.then38 ], [ %call.i, %if.end27.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_trim_fs_unlock(ptr noundef %osb, ptr noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_trim_fs_lockres = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 70
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 19
  %0 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ocfs2_mount_local.exit:                           ; preds = %entry
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %2 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_mount_opt.i, align 8
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %ocfs2_mount_local.exit.cleanup_crit_edge

ocfs2_mount_local.exit.cleanup_crit_edge:         ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %ocfs2_mount_local.exit
  %tobool1.not = icmp eq ptr %info, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %l_lksb = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 70, i32 17
  %call3 = tail call ptr @ocfs2_dlm_lvb(ptr noundef %l_lksb) #15
  %5 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %call3, align 8
  %tf_success = getelementptr inbounds %struct.ocfs2_trim_fs_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %tf_success to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tf_success, align 1
  %lvb_success = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %lvb_success to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %lvb_success, align 1
  %tf_nodenum = getelementptr inbounds %struct.ocfs2_trim_fs_info, ptr %info, i32 0, i32 2
  %9 = ptrtoint ptr %tf_nodenum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tf_nodenum, align 4
  %lvb_nodenum = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %lvb_nodenum to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %lvb_nodenum, align 4
  %tf_start = getelementptr inbounds %struct.ocfs2_trim_fs_info, ptr %info, i32 0, i32 3
  %12 = ptrtoint ptr %tf_start to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tf_start, align 8
  %lvb_start = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %lvb_start to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %lvb_start, align 8
  %tf_len = getelementptr inbounds %struct.ocfs2_trim_fs_info, ptr %info, i32 0, i32 4
  %15 = ptrtoint ptr %tf_len to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tf_len, align 8
  %lvb_len = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %lvb_len to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %lvb_len, align 8
  %tf_minlen = getelementptr inbounds %struct.ocfs2_trim_fs_info, ptr %info, i32 0, i32 5
  %18 = ptrtoint ptr %tf_minlen to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tf_minlen, align 8
  %lvb_minlen = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, ptr %call3, i32 0, i32 6
  %20 = ptrtoint ptr %lvb_minlen to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %lvb_minlen, align 8
  %tf_trimlen = getelementptr inbounds %struct.ocfs2_trim_fs_info, ptr %info, i32 0, i32 6
  %21 = ptrtoint ptr %tf_trimlen to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tf_trimlen, align 8
  %lvb_trimlen = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, ptr %call3, i32 0, i32 7
  %23 = ptrtoint ptr %lvb_trimlen to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %lvb_trimlen, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call fastcc void @ocfs2_cluster_unlock(ptr noundef %osb, ptr noundef %osb_trim_fs_lockres, i32 noundef 5)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %ocfs2_mount_local.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_dentry_lock(ptr nocapture noundef readonly %dentry, i32 noundef %ex) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ex)
  %tobool.not = icmp eq i32 %ex, 0
  %cond = select i1 %tobool.not, i32 3, i32 5
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.body5, label %do.end10, !prof !386

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2977, 0\0A.popsection", ""() #15, !srcloc !419
  unreachable

do.end10:                                         ; preds = %entry
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #15
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %7, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not = icmp eq i32 %and.i, 0
  br i1 %tobool11.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  %. = select i1 %tobool.not, i32 0, i32 -30
  br label %cleanup

if.end16:                                         ; preds = %do.end10
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i56 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool.not.i = icmp eq i32 %and.i56, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ocfs2_mount_local.exit:                           ; preds = %if.end16
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 28
  %10 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_mount_opt.i, align 8
  %12 = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool18.not = icmp eq i32 %12, 0
  br i1 %tobool18.not, label %if.end20, label %ocfs2_mount_local.exit.cleanup_crit_edge

ocfs2_mount_local.exit.cleanup_crit_edge:         ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end20:                                         ; preds = %ocfs2_mount_local.exit
  %dl_lockres = getelementptr inbounds %struct.ocfs2_dentry_lock, ptr %1, i32 0, i32 3
  %13 = tail call ptr @llvm.returnaddress(i32 0) #15
  %14 = ptrtoint ptr %13 to i32
  %call.i = tail call fastcc i32 @__ocfs2_cluster_lock(ptr noundef %5, ptr noundef %dl_lockres, i32 noundef %cond, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %14) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then22, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then22:                                        ; preds = %if.end20
  %15 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %call.i, label %do.body32 [
    i32 -512, label %if.then22.cleanup_crit_edge
    i32 -4, label %if.then22.cleanup_crit_edge58
    i32 -28, label %if.then22.cleanup_crit_edge59
    i32 -122, label %if.then22.cleanup_crit_edge60
  ]

if.then22.cleanup_crit_edge60:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then22.cleanup_crit_edge59:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then22.cleanup_crit_edge58:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body32:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %16 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1152921504606849024, ptr %_m, align 8
  %conv = sext i32 %call.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_dentry_lock, i32 noundef 2990, ptr noundef nonnull @.str.17, i64 noundef %conv) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body32, %if.then22.cleanup_crit_edge, %if.then22.cleanup_crit_edge58, %if.then22.cleanup_crit_edge59, %if.then22.cleanup_crit_edge60, %if.end20.cleanup_crit_edge, %ocfs2_mount_local.exit.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then12
  %retval.0 = phi i32 [ %., %if.then12 ], [ 0, %ocfs2_mount_local.exit.cleanup_crit_edge ], [ %call.i, %do.body32 ], [ %call.i, %if.then22.cleanup_crit_edge ], [ %call.i, %if.then22.cleanup_crit_edge58 ], [ %call.i, %if.then22.cleanup_crit_edge59 ], [ %call.i, %if.then22.cleanup_crit_edge60 ], [ %call.i, %if.end20.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_dentry_unlock(ptr nocapture noundef readonly %dentry, i32 noundef %ex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ex)
  %tobool.not = icmp eq i32 %ex, 0
  %cond = select i1 %tobool.not, i32 3, i32 5
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #15
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %7, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i7 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool.not.i = icmp eq i32 %and.i7, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

ocfs2_mount_local.exit:                           ; preds = %land.lhs.true
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 28
  %10 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_mount_opt.i, align 8
  %12 = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %if.then, label %ocfs2_mount_local.exit.if.end_crit_edge

ocfs2_mount_local.exit.if.end_crit_edge:          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  %dl_lockres = getelementptr inbounds %struct.ocfs2_dentry_lock, ptr %1, i32 0, i32 3
  tail call fastcc void @ocfs2_cluster_unlock(ptr noundef %5, ptr noundef %dl_lockres, i32 noundef %cond)
  br label %if.end

if.end:                                           ; preds = %if.then, %ocfs2_mount_local.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_put_dlm_debug(ptr noundef %dlm_debug) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dlm_debug, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dlm_debug, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !420
  tail call void @llvm.prefetch.p0(ptr nonnull %dlm_debug, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %dlm_debug, ptr nonnull %dlm_debug, i32 1, ptr nonnull elementtype(i32) %dlm_debug) #15, !srcloc !421
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !376

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %dlm_debug, i32 noundef 3) #15
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !422
  tail call void @kfree(ptr noundef nonnull %dlm_debug) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ocfs2_new_dlm_debug() local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #21
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %1 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1152921504606849024, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_new_dlm_debug, i32 noundef 3034, ptr noundef nonnull @.str.17, i64 noundef -12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %out

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef 4) #15
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %call7.i, align 8
  %d_lockres_tracking = getelementptr inbounds %struct.ocfs2_dlm_debug, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %d_lockres_tracking to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %d_lockres_tracking, ptr %d_lockres_tracking, align 8
  %prev.i = getelementptr inbounds %struct.ocfs2_dlm_debug, ptr %call7.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %d_lockres_tracking, ptr %prev.i, align 4
  %d_filter_secs = getelementptr inbounds %struct.ocfs2_dlm_debug, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %d_filter_secs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %d_filter_secs, align 4
  br label %out

out:                                              ; preds = %if.end12, %do.body
  ret ptr %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_dlm_init(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  %_m.i.i182 = alloca i64, align 8
  %_m.i.i.i = alloca i64, align 8
  %_m.i.i169 = alloca i64, align 8
  %_m.i.i = alloca i64, align 8
  %conn = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m53 = alloca i64, align 8
  %_m86 = alloca i64, align 8
  %_m97 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conn) #15
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %conn, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 19
  %1 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

ocfs2_mount_local.exit:                           ; preds = %entry
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %3 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_mount_opt.i, align 8
  %5 = and i32 %4, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %ocfs2_mount_local.exit.if.then_crit_edge

ocfs2_mount_local.exit.if.then_crit_edge:         ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %ocfs2_mount_local.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %node_num = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 31
  %6 = ptrtoint ptr %node_num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %node_num, align 4
  br label %local

if.end:                                           ; preds = %ocfs2_mount_local.exit
  %osb_dlm_debug.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 72
  %7 = ptrtoint ptr %osb_dlm_debug.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %osb_dlm_debug.i, align 4
  %osb_debug_root.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 73
  %9 = ptrtoint ptr %osb_debug_root.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %osb_debug_root.i, align 8
  %call.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.98, i16 noundef zeroext -32512, ptr noundef %10, ptr noundef %osb, ptr noundef nonnull @ocfs2_dlm_debug_fops) #15
  %11 = ptrtoint ptr %osb_debug_root.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %osb_debug_root.i, align 8
  %d_filter_secs.i = getelementptr inbounds %struct.ocfs2_dlm_debug, ptr %8, i32 0, i32 1
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.99, i16 noundef zeroext 384, ptr noundef %12, ptr noundef %d_filter_secs.i) #15
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %8, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %8, i32 1, i32 3, i32 1) #15
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #15, !srcloc !418
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !386

if.end.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.ocfs2_dlm_init_debug.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !376

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.ocfs2_dlm_init_debug.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_dlm_init_debug.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef %.sink.i.i.i.i.i.i) #15
  br label %ocfs2_dlm_init_debug.exit

ocfs2_dlm_init_debug.exit:                        ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.ocfs2_dlm_init_debug.exit_crit_edge
  %uuid_str = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 13
  %15 = ptrtoint ptr %uuid_str to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %uuid_str, align 4
  %call1 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @ocfs2_downconvert_thread, ptr noundef %osb, i32 noundef -1, ptr noundef nonnull @.str.36, ptr noundef %16) #15
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end25

if.then8:                                         ; preds = %ocfs2_dlm_init_debug.exit
  %dc_task200 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 76
  %17 = ptrtoint ptr %call1 to i32
  %18 = ptrtoint ptr %dc_task200 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %dc_task200, align 4
  %19 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %17, label %do.body [
    i32 -512, label %if.then8.bail_crit_edge
    i32 -4, label %if.then8.bail_crit_edge209
    i32 524289, label %if.then8.bail_crit_edge210
    i32 -28, label %if.then8.bail_crit_edge211
    i32 -122, label %if.then8.bail_crit_edge212
  ]

if.then8.bail_crit_edge212:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

if.then8.bail_crit_edge211:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

if.then8.bail_crit_edge210:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

if.then8.bail_crit_edge209:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

if.then8.bail_crit_edge:                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

do.body:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %20 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 1152921504606849024, ptr %_m, align 8
  %conv = sext i32 %17 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_dlm_init, i32 noundef 3342, ptr noundef nonnull @.str.17, i64 noundef %conv) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %bail

if.end25:                                         ; preds = %ocfs2_dlm_init_debug.exit
  %call4 = tail call i32 @wake_up_process(ptr noundef %call1) #15
  %dc_task = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 76
  %21 = ptrtoint ptr %dc_task to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call1, ptr %dc_task, align 4
  %osb_cluster_stack = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 63
  %osb_cluster_name = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 64
  %call29 = tail call i32 @strlen(ptr noundef %osb_cluster_name) #22
  %22 = ptrtoint ptr %uuid_str to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %uuid_str, align 4
  %call32 = tail call i32 @strlen(ptr noundef %23) #22
  %call33 = call i32 @ocfs2_cluster_connect(ptr noundef %osb_cluster_stack, ptr noundef %osb_cluster_name, i32 noundef %call29, ptr noundef %23, i32 noundef %call32, ptr noundef nonnull @lproto, ptr noundef nonnull @ocfs2_do_node_down, ptr noundef %osb, ptr noundef nonnull %conn) #15
  %24 = zext i32 %call33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %call33, label %do.body52 [
    i32 0, label %if.end63
    i32 -512, label %if.end25.bail_crit_edge
    i32 -4, label %if.end25.bail_crit_edge213
    i32 524289, label %if.end25.bail_crit_edge214
    i32 -28, label %if.end25.bail_crit_edge215
    i32 -122, label %if.end25.bail_crit_edge216
  ]

if.end25.bail_crit_edge216:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

if.end25.bail_crit_edge215:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

if.end25.bail_crit_edge214:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

if.end25.bail_crit_edge213:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

if.end25.bail_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

do.body52:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m53) #15
  %25 = ptrtoint ptr %_m53 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1152921504606849024, ptr %_m53, align 8
  %conv57 = sext i32 %call33 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m53, ptr noundef nonnull @__func__.ocfs2_dlm_init, i32 noundef 3355, ptr noundef nonnull @.str.17, i64 noundef %conv57) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m53) #15
  br label %bail

if.end63:                                         ; preds = %if.end25
  %26 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %conn, align 4
  %node_num64 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 31
  %call65 = call i32 @ocfs2_cluster_this_node(ptr noundef %27, ptr noundef %node_num64) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.then68, label %if.end63.local_crit_edge

if.end63.local_crit_edge:                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %local

if.then68:                                        ; preds = %if.end63
  %28 = zext i32 %call65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %call65, label %do.body85 [
    i32 -512, label %if.then68.bail.thread_crit_edge
    i32 -4, label %if.then68.bail.thread_crit_edge217
    i32 -28, label %if.then68.bail.thread_crit_edge218
    i32 -122, label %if.then68.bail.thread_crit_edge219
  ]

if.then68.bail.thread_crit_edge219:               ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail.thread

if.then68.bail.thread_crit_edge218:               ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail.thread

if.then68.bail.thread_crit_edge217:               ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail.thread

if.then68.bail.thread_crit_edge:                  ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail.thread

do.body85:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m86) #15
  %29 = ptrtoint ptr %_m86 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 1152921504606849024, ptr %_m86, align 8
  %conv90 = sext i32 %call65 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m86, ptr noundef nonnull @__func__.ocfs2_dlm_init, i32 noundef 3361, ptr noundef nonnull @.str.17, i64 noundef %conv90) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m86) #15
  br label %bail.thread

bail.thread:                                      ; preds = %do.body85, %if.then68.bail.thread_crit_edge, %if.then68.bail.thread_crit_edge217, %if.then68.bail.thread_crit_edge218, %if.then68.bail.thread_crit_edge219
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m97) #15
  %30 = ptrtoint ptr %_m97 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 1152921504606849024, ptr %_m97, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m97, ptr noundef nonnull @__func__.ocfs2_dlm_init, i32 noundef 3363, ptr noundef nonnull @.str.37) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m97) #15
  %31 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %conn, align 4
  %call104 = call i32 @ocfs2_cluster_disconnect(ptr noundef %32, i32 noundef 0) #15
  br label %if.then108

local:                                            ; preds = %if.end63.local_crit_edge, %if.then
  %status.0 = phi i32 [ 0, %if.then ], [ %call65, %if.end63.local_crit_edge ]
  %osb_super_lockres = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 66
  %33 = call ptr @memset(ptr %osb_super_lockres, i32 0, i32 392)
  %l_lock.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 66, i32 16
  call void @__raw_spin_lock_init(ptr noundef %l_lock.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @ocfs2_lock_res_init_once.__key, i16 noundef signext 3) #15
  %l_event.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 66, i32 18
  call void @__init_waitqueue_head(ptr noundef %l_event.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @ocfs2_lock_res_init_once.__key.1) #15
  %l_blocked_list.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 66, i32 2
  %34 = ptrtoint ptr %l_blocked_list.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %l_blocked_list.i.i, ptr %l_blocked_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 66, i32 2, i32 1
  %35 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %l_blocked_list.i.i, ptr %prev.i.i.i, align 4
  %l_mask_waiters.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 66, i32 3
  %36 = ptrtoint ptr %l_mask_waiters.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %l_mask_waiters.i.i, ptr %l_mask_waiters.i.i, align 4
  %prev.i8.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 66, i32 3, i32 1
  %37 = ptrtoint ptr %prev.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %l_mask_waiters.i.i, ptr %prev.i8.i.i, align 4
  %l_holders.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 66, i32 4
  %38 = ptrtoint ptr %l_holders.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %l_holders.i.i, ptr %l_holders.i.i, align 4
  %prev.i9.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 66, i32 4, i32 1
  %39 = ptrtoint ptr %prev.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %l_holders.i.i, ptr %prev.i9.i.i, align 4
  %l_name.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 66, i32 6
  %call8.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %l_name.i, i32 noundef 32, ptr noundef nonnull @.str.46, i32 noundef 83, ptr noundef nonnull @.str.47, i64 noundef 2, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call8.i.i)
  %cmp10.not.i.i = icmp eq i32 %call8.i.i, 31
  br i1 %cmp10.not.i.i, label %ocfs2_super_lock_res_init.exit, label %do.body19.i.i, !prof !376

do.body19.i.i:                                    ; preds = %local
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #15, !srcloc !377
  unreachable

ocfs2_super_lock_res_init.exit:                   ; preds = %local
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #15
  %40 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 2048, ptr %_m.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.ocfs2_build_lock_name, i32 noundef 401, ptr noundef nonnull @.str.48, ptr noundef %l_name.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #15
  call fastcc void @ocfs2_lock_res_init_common(ptr noundef %osb, ptr noundef %osb_super_lockres, i32 noundef 2, ptr noundef nonnull @ocfs2_super_lops, ptr noundef %osb) #15
  %osb_rename_lockres = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 67
  %41 = call ptr @memset(ptr %osb_rename_lockres, i32 0, i32 392)
  %l_lock.i.i170 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 67, i32 16
  call void @__raw_spin_lock_init(ptr noundef %l_lock.i.i170, ptr noundef nonnull @.str, ptr noundef nonnull @ocfs2_lock_res_init_once.__key, i16 noundef signext 3) #15
  %l_event.i.i171 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 67, i32 18
  call void @__init_waitqueue_head(ptr noundef %l_event.i.i171, ptr noundef nonnull @.str.2, ptr noundef nonnull @ocfs2_lock_res_init_once.__key.1) #15
  %l_blocked_list.i.i172 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 67, i32 2
  %42 = ptrtoint ptr %l_blocked_list.i.i172 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %l_blocked_list.i.i172, ptr %l_blocked_list.i.i172, align 4
  %prev.i.i.i173 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 67, i32 2, i32 1
  %43 = ptrtoint ptr %prev.i.i.i173 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %l_blocked_list.i.i172, ptr %prev.i.i.i173, align 4
  %l_mask_waiters.i.i174 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 67, i32 3
  %44 = ptrtoint ptr %l_mask_waiters.i.i174 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %l_mask_waiters.i.i174, ptr %l_mask_waiters.i.i174, align 4
  %prev.i8.i.i175 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 67, i32 3, i32 1
  %45 = ptrtoint ptr %prev.i8.i.i175 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %l_mask_waiters.i.i174, ptr %prev.i8.i.i175, align 4
  %l_holders.i.i176 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 67, i32 4
  %46 = ptrtoint ptr %l_holders.i.i176 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %l_holders.i.i176, ptr %l_holders.i.i176, align 4
  %prev.i9.i.i177 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 67, i32 4, i32 1
  %47 = ptrtoint ptr %prev.i9.i.i177 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %l_holders.i.i176, ptr %prev.i9.i.i177, align 4
  %l_name.i178 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 67, i32 6
  %call8.i.i179 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %l_name.i178, i32 noundef 32, ptr noundef nonnull @.str.46, i32 noundef 82, ptr noundef nonnull @.str.47, i64 noundef 0, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call8.i.i179)
  %cmp10.not.i.i180 = icmp eq i32 %call8.i.i179, 31
  br i1 %cmp10.not.i.i180, label %ocfs2_rename_lock_res_init.exit, label %do.body19.i.i181, !prof !376

do.body19.i.i181:                                 ; preds = %ocfs2_super_lock_res_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #15, !srcloc !377
  unreachable

ocfs2_rename_lock_res_init.exit:                  ; preds = %ocfs2_super_lock_res_init.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i169) #15
  %48 = ptrtoint ptr %_m.i.i169 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 2048, ptr %_m.i.i169, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i169, ptr noundef nonnull @__func__.ocfs2_build_lock_name, i32 noundef 401, ptr noundef nonnull @.str.48, ptr noundef %l_name.i178) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i169) #15
  call fastcc void @ocfs2_lock_res_init_common(ptr noundef %osb, ptr noundef %osb_rename_lockres, i32 noundef 3, ptr noundef nonnull @ocfs2_rename_lops, ptr noundef %osb) #15
  %osb_nfs_sync_lockres.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 68
  %49 = call ptr @memset(ptr %osb_nfs_sync_lockres.i, i32 0, i32 392)
  %l_lock.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 68, i32 16
  call void @__raw_spin_lock_init(ptr noundef %l_lock.i.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @ocfs2_lock_res_init_once.__key, i16 noundef signext 3) #15
  %l_event.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 68, i32 18
  call void @__init_waitqueue_head(ptr noundef %l_event.i.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @ocfs2_lock_res_init_once.__key.1) #15
  %l_blocked_list.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 68, i32 2
  %50 = ptrtoint ptr %l_blocked_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %l_blocked_list.i.i.i, ptr %l_blocked_list.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 68, i32 2, i32 1
  %51 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %l_blocked_list.i.i.i, ptr %prev.i.i.i.i, align 4
  %l_mask_waiters.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 68, i32 3
  %52 = ptrtoint ptr %l_mask_waiters.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %l_mask_waiters.i.i.i, ptr %l_mask_waiters.i.i.i, align 4
  %prev.i8.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 68, i32 3, i32 1
  %53 = ptrtoint ptr %prev.i8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %l_mask_waiters.i.i.i, ptr %prev.i8.i.i.i, align 4
  %l_holders.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 68, i32 4
  %54 = ptrtoint ptr %l_holders.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %l_holders.i.i.i, ptr %l_holders.i.i.i, align 4
  %prev.i9.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 68, i32 4, i32 1
  %55 = ptrtoint ptr %prev.i9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %l_holders.i.i.i, ptr %prev.i9.i.i.i, align 4
  %l_name.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 68, i32 6
  %call8.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %l_name.i.i, i32 noundef 32, ptr noundef nonnull @.str.46, i32 noundef 89, ptr noundef nonnull @.str.47, i64 noundef 0, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call8.i.i.i)
  %cmp10.not.i.i.i = icmp eq i32 %call8.i.i.i, 31
  br i1 %cmp10.not.i.i.i, label %ocfs2_nfs_sync_lock_init.exit, label %do.body19.i.i.i, !prof !376

do.body19.i.i.i:                                  ; preds = %ocfs2_rename_lock_res_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #15, !srcloc !377
  unreachable

ocfs2_nfs_sync_lock_init.exit:                    ; preds = %ocfs2_rename_lock_res_init.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i.i) #15
  %56 = ptrtoint ptr %_m.i.i.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 2048, ptr %_m.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i.i, ptr noundef nonnull @__func__.ocfs2_build_lock_name, i32 noundef 401, ptr noundef nonnull @.str.48, ptr noundef %l_name.i.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i.i) #15
  call fastcc void @ocfs2_lock_res_init_common(ptr noundef %osb, ptr noundef %osb_nfs_sync_lockres.i, i32 noundef 9, ptr noundef nonnull @ocfs2_nfs_sync_lops, ptr noundef %osb) #15
  %nfs_sync_rwlock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 69
  call void @__init_rwsem(ptr noundef %nfs_sync_rwlock.i, ptr noundef nonnull @.str.107, ptr noundef nonnull @ocfs2_nfs_sync_lock_init.__key) #15
  %os_lockres = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 2
  %57 = call ptr @memset(ptr %os_lockres, i32 0, i32 392)
  %l_lock.i.i183 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 2, i32 16
  call void @__raw_spin_lock_init(ptr noundef %l_lock.i.i183, ptr noundef nonnull @.str, ptr noundef nonnull @ocfs2_lock_res_init_once.__key, i16 noundef signext 3) #15
  %l_event.i.i184 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 2, i32 18
  call void @__init_waitqueue_head(ptr noundef %l_event.i.i184, ptr noundef nonnull @.str.2, ptr noundef nonnull @ocfs2_lock_res_init_once.__key.1) #15
  %l_blocked_list.i.i185 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 2, i32 2
  %58 = ptrtoint ptr %l_blocked_list.i.i185 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %l_blocked_list.i.i185, ptr %l_blocked_list.i.i185, align 4
  %prev.i.i.i186 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 2, i32 2, i32 1
  %59 = ptrtoint ptr %prev.i.i.i186 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %l_blocked_list.i.i185, ptr %prev.i.i.i186, align 4
  %l_mask_waiters.i.i187 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 2, i32 3
  %60 = ptrtoint ptr %l_mask_waiters.i.i187 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %l_mask_waiters.i.i187, ptr %l_mask_waiters.i.i187, align 4
  %prev.i8.i.i188 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 2, i32 3, i32 1
  %61 = ptrtoint ptr %prev.i8.i.i188 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %l_mask_waiters.i.i187, ptr %prev.i8.i.i188, align 4
  %l_holders.i.i189 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 2, i32 4
  %62 = ptrtoint ptr %l_holders.i.i189 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %l_holders.i.i189, ptr %l_holders.i.i189, align 4
  %prev.i9.i.i190 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 2, i32 4, i32 1
  %63 = ptrtoint ptr %prev.i9.i.i190 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %l_holders.i.i189, ptr %prev.i9.i.i190, align 4
  %l_name.i191 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 2, i32 6
  %call8.i.i192 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %l_name.i191, i32 noundef 32, ptr noundef nonnull @.str.46, i32 noundef 80, ptr noundef nonnull @.str.47, i64 noundef 0, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call8.i.i192)
  %cmp10.not.i.i193 = icmp eq i32 %call8.i.i192, 31
  br i1 %cmp10.not.i.i193, label %bail.thread206, label %do.body19.i.i194, !prof !376

do.body19.i.i194:                                 ; preds = %ocfs2_nfs_sync_lock_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #15, !srcloc !377
  unreachable

bail.thread206:                                   ; preds = %ocfs2_nfs_sync_lock_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i182) #15
  %64 = ptrtoint ptr %_m.i.i182 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 2048, ptr %_m.i.i182, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i182, ptr noundef nonnull @__func__.ocfs2_build_lock_name, i32 noundef 401, ptr noundef nonnull @.str.48, ptr noundef %l_name.i191) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i182) #15
  call fastcc void @ocfs2_lock_res_init_common(ptr noundef %osb, ptr noundef %os_lockres, i32 noundef 10, ptr noundef nonnull @ocfs2_orphan_scan_lops, ptr noundef %osb) #15
  %65 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %conn, align 4
  %cconn = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 65
  %67 = ptrtoint ptr %cconn to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %cconn, align 8
  br label %if.end115

bail:                                             ; preds = %do.body52, %if.end25.bail_crit_edge, %if.end25.bail_crit_edge213, %if.end25.bail_crit_edge214, %if.end25.bail_crit_edge215, %if.end25.bail_crit_edge216, %do.body, %if.then8.bail_crit_edge, %if.then8.bail_crit_edge209, %if.then8.bail_crit_edge210, %if.then8.bail_crit_edge211, %if.then8.bail_crit_edge212
  %status.1 = phi i32 [ %17, %if.then8.bail_crit_edge ], [ %17, %if.then8.bail_crit_edge209 ], [ %17, %if.then8.bail_crit_edge210 ], [ %17, %if.then8.bail_crit_edge211 ], [ %17, %if.then8.bail_crit_edge212 ], [ %17, %do.body ], [ %call33, %if.end25.bail_crit_edge ], [ %call33, %if.end25.bail_crit_edge213 ], [ %call33, %if.end25.bail_crit_edge214 ], [ %call33, %if.end25.bail_crit_edge215 ], [ %call33, %if.end25.bail_crit_edge216 ], [ %call33, %do.body52 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %cmp106 = icmp slt i32 %status.1, 0
  br i1 %cmp106, label %bail.if.then108_crit_edge, label %bail.if.end115_crit_edge

bail.if.end115_crit_edge:                         ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end115

bail.if.then108_crit_edge:                        ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then108

if.then108:                                       ; preds = %bail.if.then108_crit_edge, %bail.thread
  %status.1205 = phi i32 [ %call65, %bail.thread ], [ %status.1, %bail.if.then108_crit_edge ]
  %68 = ptrtoint ptr %osb_dlm_debug.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %osb_dlm_debug.i, align 4
  %tobool.not.i196 = icmp eq ptr %69, null
  br i1 %tobool.not.i196, label %if.then108.ocfs2_dlm_shutdown_debug.exit_crit_edge, label %if.then.i.i

if.then108.ocfs2_dlm_shutdown_debug.exit_crit_edge: ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_dlm_shutdown_debug.exit

if.then.i.i:                                      ; preds = %if.then108
  %call.i.i.i.i.i.i.i.i197 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %69, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !420
  call void @llvm.prefetch.p0(ptr nonnull %69, i32 1, i32 3, i32 1) #15
  %70 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %69, ptr nonnull %69, i32 1, ptr nonnull elementtype(i32) %69) #15, !srcloc !421
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i198 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i198, label %if.end5.i.i.i.i.i.i.ocfs2_dlm_shutdown_debug.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !376

if.end5.i.i.i.i.i.i.ocfs2_dlm_shutdown_debug.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_dlm_shutdown_debug.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef nonnull %69, i32 noundef 3) #15
  br label %ocfs2_dlm_shutdown_debug.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !422
  call void @kfree(ptr noundef nonnull %69) #15
  br label %ocfs2_dlm_shutdown_debug.exit

ocfs2_dlm_shutdown_debug.exit:                    ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.ocfs2_dlm_shutdown_debug.exit_crit_edge, %if.then108.ocfs2_dlm_shutdown_debug.exit_crit_edge
  %dc_task109 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 76
  %71 = ptrtoint ptr %dc_task109 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dc_task109, align 4
  %tobool110.not = icmp eq ptr %72, null
  br i1 %tobool110.not, label %ocfs2_dlm_shutdown_debug.exit.if.end115_crit_edge, label %if.then111

ocfs2_dlm_shutdown_debug.exit.if.end115_crit_edge: ; preds = %ocfs2_dlm_shutdown_debug.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end115

if.then111:                                       ; preds = %ocfs2_dlm_shutdown_debug.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call113 = call i32 @kthread_stop(ptr noundef nonnull %72) #15
  br label %if.end115

if.end115:                                        ; preds = %if.then111, %ocfs2_dlm_shutdown_debug.exit.if.end115_crit_edge, %bail.if.end115_crit_edge, %bail.thread206
  %status.1204 = phi i32 [ %status.1205, %ocfs2_dlm_shutdown_debug.exit.if.end115_crit_edge ], [ %status.1205, %if.then111 ], [ %status.1, %bail.if.end115_crit_edge ], [ %status.0, %bail.thread206 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conn) #15
  ret i32 %status.1204
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_downconvert_thread(ptr noundef %arg) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dc_task_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 75
  %blocked_lock_list.i = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 80
  %dc_work_sequence.i = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 79
  %dc_wake_sequence.i = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 78
  %dc_event = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 77
  %blocked_lock_count.i = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 81
  br label %while.cond

while.cond:                                       ; preds = %ocfs2_downconvert_thread_do_work.exit, %entry
  %call = call zeroext i1 @kthread_should_stop() #15
  br i1 %call, label %land.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

land.rhs:                                         ; preds = %while.cond
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %dc_task_lock.i) #15
  %0 = ptrtoint ptr %blocked_lock_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %blocked_lock_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %blocked_lock_list.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dc_task_lock.i, i32 noundef %call2.i) #15
  br i1 %cmp.i.not.i, label %while.end, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.38, i32 noundef 4447) #15
  %call2.i36 = call i32 @_raw_spin_lock_irqsave(ptr noundef %dc_task_lock.i) #15
  %2 = ptrtoint ptr %dc_work_sequence.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dc_work_sequence.i, align 8
  %4 = ptrtoint ptr %dc_wake_sequence.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dc_wake_sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp5.not.i.not = icmp eq i32 %3, %5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dc_task_lock.i, i32 noundef %call2.i36) #15
  br i1 %cmp5.not.i.not, label %lor.lhs.false, label %while.body.if.end19_crit_edge

while.body.if.end19_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

lor.lhs.false:                                    ; preds = %while.body
  %call7 = call zeroext i1 @kthread_should_stop() #15
  br i1 %call7, label %lor.lhs.false.if.end19_crit_edge, label %if.then

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %call956 = call i32 @prepare_to_wait_event(ptr noundef %dc_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %call2.i3957 = call i32 @_raw_spin_lock_irqsave(ptr noundef %dc_task_lock.i) #15
  %7 = ptrtoint ptr %dc_work_sequence.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dc_work_sequence.i, align 8
  %9 = ptrtoint ptr %dc_wake_sequence.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dc_wake_sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp5.not.i42.not58 = icmp eq i32 %8, %10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dc_task_lock.i, i32 noundef %call2.i3957) #15
  br i1 %cmp5.not.i42.not58, label %if.then.lor.lhs.false12_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.then.lor.lhs.false12_crit_edge:                ; preds = %if.then
  br label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %cleanup.lor.lhs.false12_crit_edge, %if.then.lor.lhs.false12_crit_edge
  %call959 = phi i32 [ %call9, %cleanup.lor.lhs.false12_crit_edge ], [ %call956, %if.then.lor.lhs.false12_crit_edge ]
  %call13 = call zeroext i1 @kthread_should_stop() #15
  br i1 %call13, label %lor.lhs.false12.for.end_crit_edge, label %if.end

lor.lhs.false12.for.end_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call959)
  %tobool15.not = icmp eq i32 %call959, 0
  br i1 %tobool15.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #15
  %call9 = call i32 @prepare_to_wait_event(ptr noundef %dc_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %call2.i39 = call i32 @_raw_spin_lock_irqsave(ptr noundef %dc_task_lock.i) #15
  %11 = ptrtoint ptr %dc_work_sequence.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dc_work_sequence.i, align 8
  %13 = ptrtoint ptr %dc_wake_sequence.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dc_wake_sequence.i, align 4
  %cmp5.not.i42.not = icmp eq i32 %12, %14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dc_task_lock.i, i32 noundef %call2.i39) #15
  br i1 %cmp5.not.i42.not, label %cleanup.lor.lhs.false12_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup.lor.lhs.false12_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false12

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false12.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef %dc_event, ptr noundef nonnull %__wq_entry) #15
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %if.end19

if.end19:                                         ; preds = %__out, %lor.lhs.false.if.end19_crit_edge, %while.body.if.end19_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %15 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 2048, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_downconvert_thread, i32 noundef 4449, ptr noundef nonnull @.str.133) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  %call2.i45 = call i32 @_raw_spin_lock_irqsave(ptr noundef %dc_task_lock.i) #15
  %16 = ptrtoint ptr %dc_wake_sequence.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dc_wake_sequence.i, align 4
  %18 = ptrtoint ptr %dc_work_sequence.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dc_work_sequence.i, align 8
  %19 = ptrtoint ptr %blocked_lock_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blocked_lock_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not55.i = icmp eq i32 %20, 0
  br i1 %tobool.not55.i, label %if.end19.ocfs2_downconvert_thread_do_work.exit_crit_edge, label %if.end19.land.rhs.i_crit_edge

if.end19.land.rhs.i_crit_edge:                    ; preds = %if.end19
  br label %land.rhs.i

if.end19.ocfs2_downconvert_thread_do_work.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_downconvert_thread_do_work.exit

land.rhs.i:                                       ; preds = %list_del_init.exit.i.land.rhs.i_crit_edge, %if.end19.land.rhs.i_crit_edge
  %processed.057.i = phi i32 [ %dec25.i, %list_del_init.exit.i.land.rhs.i_crit_edge ], [ %20, %if.end19.land.rhs.i_crit_edge ]
  %flags.056.i = phi i32 [ %call35.i, %list_del_init.exit.i.land.rhs.i_crit_edge ], [ %call2.i45, %if.end19.land.rhs.i_crit_edge ]
  %21 = ptrtoint ptr %blocked_lock_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %blocked_lock_list.i, align 4
  %cmp.i.not.i49 = icmp eq ptr %22, %blocked_lock_list.i
  br i1 %cmp.i.not.i49, label %land.rhs.i.ocfs2_downconvert_thread_do_work.exit_crit_edge, label %while.body.i

land.rhs.i.ocfs2_downconvert_thread_do_work.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_downconvert_thread_do_work.exit

while.body.i:                                     ; preds = %land.rhs.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %22) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %22, ptr %22, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %22, ptr %prev.i3.i.i, align 4
  %31 = ptrtoint ptr %blocked_lock_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %blocked_lock_count.i, align 4
  %dec.i = add i32 %32, -1
  store i32 %dec.i, ptr %blocked_lock_count.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dc_task_lock.i, i32 noundef %flags.056.i) #15
  %add.ptr.i = getelementptr i8, ptr %22, i32 -8
  %dec25.i = add i32 %processed.057.i, -1
  call fastcc void @ocfs2_process_blocked_lock(ptr noundef %arg, ptr noundef %add.ptr.i) #15
  %call35.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %dc_task_lock.i) #15
  %tobool.not.i = icmp eq i32 %dec25.i, 0
  br i1 %tobool.not.i, label %list_del_init.exit.i.ocfs2_downconvert_thread_do_work.exit_crit_edge, label %list_del_init.exit.i.land.rhs.i_crit_edge

list_del_init.exit.i.land.rhs.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i

list_del_init.exit.i.ocfs2_downconvert_thread_do_work.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_downconvert_thread_do_work.exit

ocfs2_downconvert_thread_do_work.exit:            ; preds = %list_del_init.exit.i.ocfs2_downconvert_thread_do_work.exit_crit_edge, %land.rhs.i.ocfs2_downconvert_thread_do_work.exit_crit_edge, %if.end19.ocfs2_downconvert_thread_do_work.exit_crit_edge
  %flags.0.lcssa.i = phi i32 [ %call2.i45, %if.end19.ocfs2_downconvert_thread_do_work.exit_crit_edge ], [ %flags.056.i, %land.rhs.i.ocfs2_downconvert_thread_do_work.exit_crit_edge ], [ %call35.i, %list_del_init.exit.i.ocfs2_downconvert_thread_do_work.exit_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dc_task_lock.i, i32 noundef %flags.0.lcssa.i) #15
  br label %while.cond

while.end:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  %dc_task = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 76
  %33 = ptrtoint ptr %dc_task to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %dc_task, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_cluster_connect(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_do_node_down(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_cluster_this_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_cluster_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_dlm_shutdown(ptr noundef %osb, i32 noundef %hangup_pending) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_super_lockres.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 66
  tail call void @ocfs2_mark_lockres_freeing(ptr noundef %osb, ptr noundef %osb_super_lockres.i) #15
  tail call fastcc void @ocfs2_drop_lock(ptr noundef %osb, ptr noundef %osb_super_lockres.i) #15
  %osb_rename_lockres.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 67
  tail call void @ocfs2_mark_lockres_freeing(ptr noundef %osb, ptr noundef %osb_rename_lockres.i) #15
  tail call fastcc void @ocfs2_drop_lock(ptr noundef %osb, ptr noundef %osb_rename_lockres.i) #15
  %osb_nfs_sync_lockres.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 68
  tail call void @ocfs2_mark_lockres_freeing(ptr noundef %osb, ptr noundef %osb_nfs_sync_lockres.i) #15
  tail call fastcc void @ocfs2_drop_lock(ptr noundef %osb, ptr noundef %osb_nfs_sync_lockres.i) #15
  %os_lockres.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 2
  tail call void @ocfs2_mark_lockres_freeing(ptr noundef %osb, ptr noundef %os_lockres.i) #15
  tail call fastcc void @ocfs2_drop_lock(ptr noundef %osb, ptr noundef %os_lockres.i) #15
  %dc_task = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 76
  %0 = ptrtoint ptr %dc_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc_task, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @kthread_stop(ptr noundef nonnull %1) #15
  %2 = ptrtoint ptr %dc_task to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dc_task, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @ocfs2_lock_res_free(ptr noundef %osb_super_lockres.i)
  tail call void @ocfs2_lock_res_free(ptr noundef %osb_rename_lockres.i)
  tail call void @ocfs2_lock_res_free(ptr noundef %osb_nfs_sync_lockres.i)
  tail call void @ocfs2_lock_res_free(ptr noundef %os_lockres.i)
  %cconn = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 65
  %3 = ptrtoint ptr %cconn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cconn, align 8
  %call3 = tail call i32 @ocfs2_cluster_disconnect(ptr noundef %4, i32 noundef %hangup_pending) #15
  %5 = ptrtoint ptr %cconn to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cconn, align 8
  %osb_dlm_debug.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 72
  %6 = ptrtoint ptr %osb_dlm_debug.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %osb_dlm_debug.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.ocfs2_dlm_shutdown_debug.exit_crit_edge, label %if.then.i.i

if.end.ocfs2_dlm_shutdown_debug.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_dlm_shutdown_debug.exit

if.then.i.i:                                      ; preds = %if.end
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !420
  tail call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #15
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #15, !srcloc !421
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.ocfs2_dlm_shutdown_debug.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !376

if.end5.i.i.i.i.i.i.ocfs2_dlm_shutdown_debug.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_dlm_shutdown_debug.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #15
  br label %ocfs2_dlm_shutdown_debug.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !422
  tail call void @kfree(ptr noundef nonnull %7) #15
  br label %ocfs2_dlm_shutdown_debug.exit

ocfs2_dlm_shutdown_debug.exit:                    ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.ocfs2_dlm_shutdown_debug.exit_crit_edge, %if.end.ocfs2_dlm_shutdown_debug.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_mark_lockres_freeing(ptr noundef %osb, ptr noundef %lockres) local_unnamed_addr #0 align 64 {
entry:
  %mw = alloca %struct.ocfs2_mask_waiter, align 8
  %_m = alloca i64, align 8
  %_m97 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %mw) #15
  %0 = getelementptr inbounds i8, ptr %mw, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 80)
  %2 = ptrtoint ptr %mw to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mw, ptr %mw, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mw, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mw, ptr %prev.i.i, align 4
  %mw_complete.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 2
  %4 = ptrtoint ptr %mw_complete.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mw_complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @init_completion.__key) #15
  %call.i.i = call i64 @ktime_get() #15
  %mw_lock_start.i.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 5
  %5 = ptrtoint ptr %mw_lock_start.i.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call.i.i, ptr %mw_lock_start.i.i, align 8
  %l_lock = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %6 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %l_flags, align 8
  %or = or i32 %7, 128
  store i32 %or, ptr %l_flags, align 8
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end66_crit_edge, label %land.lhs.true

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

land.lhs.true:                                    ; preds = %entry
  %8 = call i32 @llvm.read_register.i32(metadata !365) #15
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %dc_task = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 76
  %12 = ptrtoint ptr %dc_task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dc_task, align 4
  %cmp7 = icmp eq ptr %11, %13
  br i1 %cmp7, label %if.then, label %land.lhs.true.if.end66_crit_edge

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

if.then:                                          ; preds = %land.lhs.true
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call2) #15
  %dc_task_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 75
  %call18 = call i32 @_raw_spin_lock_irqsave(ptr noundef %dc_task_lock) #15
  %l_blocked_list = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 2
  %call.i.i154 = call zeroext i1 @__list_del_entry_valid(ptr noundef %l_blocked_list) #15
  br i1 %call.i.i154, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i155 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i.i155 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i155, align 4
  %16 = ptrtoint ptr %l_blocked_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %l_blocked_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %20 = ptrtoint ptr %l_blocked_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %l_blocked_list, ptr %l_blocked_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %l_blocked_list, ptr %prev.i3.i, align 4
  %blocked_lock_count = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 81
  %22 = ptrtoint ptr %blocked_lock_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blocked_lock_count, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %blocked_lock_count, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dc_task_lock, i32 noundef %call18) #15
  %l_ops = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 1
  %24 = ptrtoint ptr %l_ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %l_ops, align 4
  %post_unlock = getelementptr inbounds %struct.ocfs2_lock_res_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %post_unlock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %post_unlock, align 4
  %tobool24.not = icmp eq ptr %27, null
  br i1 %tobool24.not, label %list_del_init.exit.if.end58_crit_edge, label %land.rhs

list_del_init.exit.if.end58_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

land.rhs:                                         ; preds = %list_del_init.exit
  %.b153 = load i1, ptr @ocfs2_mark_lockres_freeing.__already_done, align 1
  br i1 %.b153, label %land.rhs.if.end58_crit_edge, label %if.then33, !prof !376

land.rhs.if.end58_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

if.then33:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ocfs2_mark_lockres_freeing.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 3543, i32 noundef 9, ptr noundef null) #15
  br label %if.end58

if.end58:                                         ; preds = %if.then33, %land.rhs.if.end58_crit_edge, %list_del_init.exit.if.end58_crit_edge
  call fastcc void @ocfs2_process_blocked_lock(ptr noundef %osb, ptr noundef %lockres)
  br label %cleanup

if.end66:                                         ; preds = %land.lhs.true.if.end66_crit_edge, %entry.if.end66_crit_edge
  %28 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %l_flags, align 8
  %and68157 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68157)
  %tobool69.not158 = icmp eq i32 %and68157, 0
  br i1 %tobool69.not158, label %if.end66.while.end_crit_edge, label %while.body.lr.ph

if.end66.while.end_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end66
  %l_name = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  %mw_status.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %do.body109.while.body_crit_edge, %while.body.lr.ph
  %flags.0159 = phi i32 [ %call2, %while.body.lr.ph ], [ %call117, %do.body109.while.body_crit_edge ]
  call fastcc void @lockres_add_mask_waiter(ptr noundef %lockres, ptr noundef nonnull %mw, i32 noundef 256)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %flags.0159) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %30 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 2048, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_mark_lockres_freeing, i32 noundef 3552, ptr noundef nonnull @.str.39, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  call void @wait_for_completion(ptr noundef %mw_complete.i) #15
  %31 = ptrtoint ptr %mw_complete.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %mw_complete.i, align 4
  %32 = ptrtoint ptr %mw_status.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mw_status.i, align 8
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %33, label %do.body96 [
    i32 0, label %while.body.do.body109_crit_edge
    i32 -512, label %while.body.do.body109_crit_edge160
    i32 -4, label %while.body.do.body109_crit_edge161
    i32 524289, label %while.body.do.body109_crit_edge162
    i32 -28, label %while.body.do.body109_crit_edge163
    i32 -122, label %while.body.do.body109_crit_edge164
  ]

while.body.do.body109_crit_edge164:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body109

while.body.do.body109_crit_edge163:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body109

while.body.do.body109_crit_edge162:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body109

while.body.do.body109_crit_edge161:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body109

while.body.do.body109_crit_edge160:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body109

while.body.do.body109_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body109

do.body96:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m97) #15
  %35 = ptrtoint ptr %_m97 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1152921504606849024, ptr %_m97, align 8
  %conv101 = sext i32 %33 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m97, ptr noundef nonnull @__func__.ocfs2_mark_lockres_freeing, i32 noundef 3556, ptr noundef nonnull @.str.17, i64 noundef %conv101) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m97) #15
  br label %do.body109

do.body109:                                       ; preds = %do.body96, %while.body.do.body109_crit_edge, %while.body.do.body109_crit_edge160, %while.body.do.body109_crit_edge161, %while.body.do.body109_crit_edge162, %while.body.do.body109_crit_edge163, %while.body.do.body109_crit_edge164
  %call117 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %36 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %l_flags, align 8
  %and68 = and i32 %37, 256
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body109.while.end_crit_edge, label %do.body109.while.body_crit_edge

do.body109.while.body_crit_edge:                  ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

do.body109.while.end_crit_edge:                   ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %do.body109.while.end_crit_edge, %if.end66.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %if.end66.while.end_crit_edge ], [ %call117, %do.body109.while.end_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %flags.0.lcssa) #15
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end58
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %mw) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_process_blocked_lock(ptr noundef %osb, ptr noundef %lockres) unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m61.i = alloca i64, align 8
  %_m103.i = alloca i64, align 8
  %_m126.i = alloca i64, align 8
  %_m147.i = alloca i64, align 8
  %_m167.i = alloca i64, align 8
  %_m189.i = alloca i64, align 8
  %_m216.i = alloca i64, align 8
  %_m251.i = alloca i64, align 8
  %_m295.i = alloca i64, align 8
  %_m324.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m67 = alloca i64, align 8
  %_m99 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %lockres, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !386

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4313, 0\0A.popsection", ""() #15, !srcloc !423
  unreachable

do.body10:                                        ; preds = %entry
  %l_ops = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 1
  %0 = ptrtoint ptr %l_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l_ops, align 4
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %do.body21, label %do.body30, !prof !386

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4314, 0\0A.popsection", ""() #15, !srcloc !424
  unreachable

do.body30:                                        ; preds = %do.body10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 34816, ptr %_m, align 8
  %l_name = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_process_blocked_lock, i32 noundef 4316, ptr noundef nonnull @.str.120, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  %l_lock = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  %call38 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %3 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %l_flags, align 8
  %and43 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end46, label %unqueue.thread

if.end46:                                         ; preds = %do.body30
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call38) #15
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %5 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %l_flags, align 8
  %and481.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and481.i)
  %tobool.not482.i = icmp eq i32 %and481.i, 0
  br i1 %tobool.not482.i, label %if.end46.do.body5.i_crit_edge, label %if.end21.lr.ph.i

if.end46.do.body5.i_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5.i

if.end21.lr.ph.i:                                 ; preds = %if.end46
  %l_level.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 9
  %l_blocking115.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 11
  %l_ex_holders143.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 8
  %l_ro_holders122.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 7
  br label %if.end21.i

do.body5.i:                                       ; preds = %do.body250.i.do.body5.i_crit_edge, %if.end46.do.body5.i_crit_edge
  %ctl.sroa.9.0 = phi i32 [ 0, %if.end46.do.body5.i_crit_edge ], [ %call210.i, %do.body250.i.do.body5.i_crit_edge ]
  %flags.0.lcssa.i = phi i32 [ %call2.i, %if.end46.do.body5.i_crit_edge ], [ %call235.i, %do.body250.i.do.body5.i_crit_edge ]
  %l_blocking.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 11
  %7 = ptrtoint ptr %l_blocking.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %l_blocking.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp7.not.i = icmp eq i8 %8, 0
  br i1 %cmp7.not.i, label %do.end19.i, label %do.body12.i, !prof !376

do.body12.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3751, 0\0A.popsection", ""() #15, !srcloc !425
  unreachable

do.end19.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %flags.0.lcssa.i) #15
  br label %unqueue

if.end21.i:                                       ; preds = %do.body250.i.if.end21.i_crit_edge, %if.end21.lr.ph.i
  %ctl.sroa.9.1 = phi i32 [ 0, %if.end21.lr.ph.i ], [ %call210.i, %do.body250.i.if.end21.i_crit_edge ]
  %9 = phi i32 [ %6, %if.end21.lr.ph.i ], [ %65, %do.body250.i.if.end21.i_crit_edge ]
  %flags.0483.i = phi i32 [ %call2.i, %if.end21.lr.ph.i ], [ %call235.i, %do.body250.i.if.end21.i_crit_edge ]
  %and23.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end73.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end21.i
  %and27.i = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end37.i, label %do.body30.i

do.body30.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #15
  %10 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 34816, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_unblock_lock, i32 noundef 3783, ptr noundef nonnull @.str.124, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #15
  br label %leave_requeue.i

if.end37.i:                                       ; preds = %if.then25.i
  %call38.i = call fastcc i32 @ocfs2_prepare_cancel_convert(ptr noundef nonnull %lockres) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %flags.0483.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool40.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool40.not.i, label %if.end37.i.unqueue_crit_edge, label %if.then41.i

if.end37.i.unqueue_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %unqueue

if.then41.i:                                      ; preds = %if.end37.i
  %call42.i = call fastcc i32 @ocfs2_cancel_convert(ptr noundef %osb, ptr noundef nonnull %lockres) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %cmp43.i = icmp slt i32 %call42.i, 0
  br i1 %cmp43.i, label %if.then45.i, label %if.then41.i.leave.i_crit_edge

if.then41.i.leave.i_crit_edge:                    ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %leave.i

if.then45.i:                                      ; preds = %if.then41.i
  %11 = zext i32 %call42.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %call42.i, label %do.body60.i [
    i32 -512, label %if.then45.i.leave.i_crit_edge
    i32 -4, label %if.then45.i.leave.i_crit_edge388
    i32 -28, label %if.then45.i.leave.i_crit_edge389
    i32 -122, label %if.then45.i.leave.i_crit_edge390
  ]

if.then45.i.leave.i_crit_edge390:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %leave.i

if.then45.i.leave.i_crit_edge389:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %leave.i

if.then45.i.leave.i_crit_edge388:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %leave.i

if.then45.i.leave.i_crit_edge:                    ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %leave.i

do.body60.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m61.i) #15
  %12 = ptrtoint ptr %_m61.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606849024, ptr %_m61.i, align 8
  %conv65.i = sext i32 %call42.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m61.i, ptr noundef nonnull @__func__.ocfs2_unblock_lock, i32 noundef 3793, ptr noundef nonnull @.str.17, i64 noundef %conv65.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m61.i) #15
  br label %leave.i

if.end73.i:                                       ; preds = %if.end21.i
  %and75.i = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %if.end78.i, label %if.end73.i.leave_requeue.i_crit_edge

if.end73.i.leave_requeue.i_crit_edge:             ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %leave_requeue.i

if.end78.i:                                       ; preds = %if.end73.i
  %13 = ptrtoint ptr %l_level.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %l_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp80.i = icmp eq i8 %14, 0
  br i1 %cmp80.i, label %do.body83.i, label %if.end114.i

do.body83.i:                                      ; preds = %if.end78.i
  %15 = ptrtoint ptr %l_ex_holders143.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %l_ex_holders143.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool84.not.i = icmp eq i32 %16, 0
  br i1 %tobool84.not.i, label %lor.rhs.i, label %do.body83.i.do.body93.i_crit_edge, !prof !376

do.body83.i.do.body93.i_crit_edge:                ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body93.i

lor.rhs.i:                                        ; preds = %do.body83.i
  %17 = ptrtoint ptr %l_ro_holders122.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %l_ro_holders122.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool85.not.i = icmp eq i32 %18, 0
  br i1 %tobool85.not.i, label %do.body102.i, label %lor.rhs.i.do.body93.i_crit_edge, !prof !376

lor.rhs.i.do.body93.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body93.i

do.body93.i:                                      ; preds = %lor.rhs.i.do.body93.i_crit_edge, %do.body83.i.do.body93.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3816, 0\0A.popsection", ""() #15, !srcloc !426
  unreachable

do.body102.i:                                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m103.i) #15
  %19 = ptrtoint ptr %_m103.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 34816, ptr %_m103.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m103.i, ptr noundef nonnull @__func__.ocfs2_unblock_lock, i32 noundef 3817, ptr noundef nonnull @.str.125, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m103.i) #15
  %20 = ptrtoint ptr %l_blocking115.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %l_blocking115.i, align 2
  %21 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %l_flags, align 8
  %and.i.i = and i32 %22, -5
  call fastcc void @lockres_set_flags(ptr noundef nonnull %lockres, i32 noundef %and.i.i) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %flags.0483.i) #15
  br label %unqueue

if.end114.i:                                      ; preds = %if.end78.i
  %23 = ptrtoint ptr %l_blocking115.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %l_blocking115.i, align 2
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.168)
  switch i8 %24, label %if.end114.i.if.end157.i_crit_edge [
    i8 5, label %land.lhs.true119.i
    i8 3, label %land.lhs.true142.i
  ]

if.end114.i.if.end157.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end157.i

land.lhs.true119.i:                               ; preds = %if.end114.i
  %26 = ptrtoint ptr %l_ex_holders143.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %l_ex_holders143.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool121.not.i = icmp eq i32 %27, 0
  br i1 %tobool121.not.i, label %lor.lhs.false.i, label %land.lhs.true119.i.do.body125.i_crit_edge

land.lhs.true119.i.do.body125.i_crit_edge:        ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body125.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true119.i
  %28 = ptrtoint ptr %l_ro_holders122.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %l_ro_holders122.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool123.not.i = icmp eq i32 %29, 0
  br i1 %tobool123.not.i, label %lor.lhs.false.i.if.end157.i_crit_edge, label %lor.lhs.false.i.do.body125.i_crit_edge

lor.lhs.false.i.do.body125.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body125.i

lor.lhs.false.i.if.end157.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end157.i

do.body125.i:                                     ; preds = %lor.lhs.false.i.do.body125.i_crit_edge, %land.lhs.true119.i.do.body125.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m126.i) #15
  %30 = ptrtoint ptr %_m126.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 34816, ptr %_m126.i, align 8
  %31 = ptrtoint ptr %l_ro_holders122.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %l_ro_holders122.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m126.i, ptr noundef nonnull @__func__.ocfs2_unblock_lock, i32 noundef 3830, ptr noundef nonnull @.str.126, ptr noundef %l_name, i32 noundef %27, i32 noundef %32) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m126.i) #15
  br label %leave_requeue.i

land.lhs.true142.i:                               ; preds = %if.end114.i
  %33 = ptrtoint ptr %l_ex_holders143.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %l_ex_holders143.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool144.not.i = icmp eq i32 %34, 0
  br i1 %tobool144.not.i, label %land.lhs.true142.i.if.end157.i_crit_edge, label %do.body146.i

land.lhs.true142.i.if.end157.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end157.i

do.body146.i:                                     ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m147.i) #15
  %35 = ptrtoint ptr %_m147.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 34816, ptr %_m147.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m147.i, ptr noundef nonnull @__func__.ocfs2_unblock_lock, i32 noundef 3839, ptr noundef nonnull @.str.127, ptr noundef %l_name, i32 noundef %34) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m147.i) #15
  br label %leave_requeue.i

if.end157.i:                                      ; preds = %land.lhs.true142.i.if.end157.i_crit_edge, %lor.lhs.false.i.if.end157.i_crit_edge, %if.end114.i.if.end157.i_crit_edge
  %36 = ptrtoint ptr %l_ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %l_ops, align 4
  %flags158.i = getelementptr inbounds %struct.ocfs2_lock_res_ops, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %flags158.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags158.i, align 4
  %and159.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159.i)
  %tobool160.not.i = icmp eq i32 %and159.i, 0
  %and163.i = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163.i)
  %tobool164.not.i = icmp eq i32 %and163.i, 0
  %or.cond.i = select i1 %tobool160.not.i, i1 true, i1 %tobool164.not.i
  br i1 %or.cond.i, label %if.end176.i, label %do.body166.i

do.body166.i:                                     ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m167.i) #15
  %40 = ptrtoint ptr %_m167.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 34816, ptr %_m167.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m167.i, ptr noundef nonnull @__func__.ocfs2_unblock_lock, i32 noundef 3850, ptr noundef nonnull @.str.128, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m167.i) #15
  br label %leave_requeue.i

if.end176.i:                                      ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %switch.selectcmp.i.i = icmp eq i8 %24, 3
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 3, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %24)
  %switch.selectcmp5.i.i = icmp eq i8 %24, 5
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 0, i32 %switch.select.i.i
  %check_downconvert.i = getelementptr inbounds %struct.ocfs2_lock_res_ops, ptr %37, i32 0, i32 2
  %41 = ptrtoint ptr %check_downconvert.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %check_downconvert.i, align 4
  %tobool181.not.i = icmp eq ptr %42, null
  br i1 %tobool181.not.i, label %if.end176.i.if.end198.i_crit_edge, label %land.lhs.true182.i

if.end176.i.if.end198.i_crit_edge:                ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end198.i

land.lhs.true182.i:                               ; preds = %if.end176.i
  %call185.i = call i32 %42(ptr noundef nonnull %lockres, i32 noundef %switch.select6.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185.i)
  %tobool186.not.i = icmp eq i32 %call185.i, 0
  br i1 %tobool186.not.i, label %do.body188.i, label %land.lhs.true182.i.if.end198.i_crit_edge

land.lhs.true182.i.if.end198.i_crit_edge:         ; preds = %land.lhs.true182.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end198.i

do.body188.i:                                     ; preds = %land.lhs.true182.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m189.i) #15
  %43 = ptrtoint ptr %_m189.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 34816, ptr %_m189.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m189.i, ptr noundef nonnull @__func__.ocfs2_unblock_lock, i32 noundef 3859, ptr noundef nonnull @.str.129, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m189.i) #15
  br label %leave_requeue.i

if.end198.i:                                      ; preds = %land.lhs.true182.i.if.end198.i_crit_edge, %if.end176.i.if.end198.i_crit_edge
  %44 = ptrtoint ptr %l_ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %l_ops, align 4
  %downconvert_worker.i = getelementptr inbounds %struct.ocfs2_lock_res_ops, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %downconvert_worker.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %downconvert_worker.i, align 4
  %tobool200.not.i = icmp eq ptr %47, null
  br i1 %tobool200.not.i, label %if.end198.i.downconvert.i_crit_edge, label %if.end202.i

if.end198.i.downconvert.i_crit_edge:              ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %downconvert.i

if.end202.i:                                      ; preds = %if.end198.i
  %48 = ptrtoint ptr %l_blocking115.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %l_blocking115.i, align 2
  %conv204.i = sext i8 %49 to i32
  %50 = ptrtoint ptr %l_level.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %l_level.i, align 4
  %conv206.i = sext i8 %51 to i32
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %flags.0483.i) #15
  %52 = ptrtoint ptr %l_ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %l_ops, align 4
  %downconvert_worker209.i = getelementptr inbounds %struct.ocfs2_lock_res_ops, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %downconvert_worker209.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %downconvert_worker209.i, align 4
  %call210.i = call i32 %55(ptr noundef nonnull %lockres, i32 noundef %conv204.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call210.i)
  %cmp212.i = icmp eq i32 %call210.i, 2
  br i1 %cmp212.i, label %do.body215.i, label %do.body227.i

do.body215.i:                                     ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m216.i) #15
  %56 = ptrtoint ptr %_m216.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 34816, ptr %_m216.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m216.i, ptr noundef nonnull @__func__.ocfs2_unblock_lock, i32 noundef 3881, ptr noundef nonnull @.str.130, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m216.i) #15
  br label %unqueue

do.body227.i:                                     ; preds = %if.end202.i
  %call235.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %57 = ptrtoint ptr %l_blocking115.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %l_blocking115.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %58)
  %cmp242.not.i = icmp eq i8 %49, %58
  br i1 %cmp242.not.i, label %lor.lhs.false244.i, label %do.body227.i.do.body250.i_crit_edge

do.body227.i.do.body250.i_crit_edge:              ; preds = %do.body227.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body250.i

lor.lhs.false244.i:                               ; preds = %do.body227.i
  %59 = ptrtoint ptr %l_level.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %l_level.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %60)
  %cmp247.not.i = icmp eq i8 %51, %60
  br i1 %cmp247.not.i, label %lor.lhs.false244.i.downconvert.i_crit_edge, label %lor.lhs.false244.i.do.body250.i_crit_edge

lor.lhs.false244.i.do.body250.i_crit_edge:        ; preds = %lor.lhs.false244.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body250.i

lor.lhs.false244.i.downconvert.i_crit_edge:       ; preds = %lor.lhs.false244.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %downconvert.i

do.body250.i:                                     ; preds = %lor.lhs.false244.i.do.body250.i_crit_edge, %do.body227.i.do.body250.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m251.i) #15
  %61 = ptrtoint ptr %_m251.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 34816, ptr %_m251.i, align 8
  %conv258.i = sext i8 %58 to i32
  %62 = ptrtoint ptr %l_level.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %l_level.i, align 4
  %conv260.i = sext i8 %63 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m251.i, ptr noundef nonnull @__func__.ocfs2_unblock_lock, i32 noundef 3891, ptr noundef nonnull @.str.131, ptr noundef %l_name, i32 noundef %conv204.i, i32 noundef %conv258.i, i32 noundef %conv206.i, i32 noundef %conv260.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m251.i) #15
  %64 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %l_flags, align 8
  %and.i = and i32 %65, 4
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body250.i.do.body5.i_crit_edge, label %do.body250.i.if.end21.i_crit_edge

do.body250.i.if.end21.i_crit_edge:                ; preds = %do.body250.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

do.body250.i.do.body5.i_crit_edge:                ; preds = %do.body250.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5.i

downconvert.i:                                    ; preds = %lor.lhs.false244.i.downconvert.i_crit_edge, %if.end198.i.downconvert.i_crit_edge
  %ctl.sroa.9.2 = phi i32 [ %ctl.sroa.9.1, %if.end198.i.downconvert.i_crit_edge ], [ %call210.i, %lor.lhs.false244.i.downconvert.i_crit_edge ]
  %flags.1.i = phi i32 [ %flags.0483.i, %if.end198.i.downconvert.i_crit_edge ], [ %call235.i, %lor.lhs.false244.i.downconvert.i_crit_edge ]
  %66 = ptrtoint ptr %l_ops to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %l_ops, align 4
  %flags267.i = getelementptr inbounds %struct.ocfs2_lock_res_ops, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %flags267.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags267.i, align 4
  %and268.i = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and268.i)
  %tobool269.not.i = icmp eq i32 %and268.i, 0
  br i1 %tobool269.not.i, label %downconvert.i.if.end286.i_crit_edge, label %if.then270.i

downconvert.i.if.end286.i_crit_edge:              ; preds = %downconvert.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end286.i

if.then270.i:                                     ; preds = %downconvert.i
  %70 = ptrtoint ptr %l_level.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %l_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %71)
  %cmp273.i = icmp eq i8 %71, 5
  br i1 %cmp273.i, label %land.lhs.true278.i, label %if.then270.i.if.end286.i_crit_edge

if.then270.i.if.end286.i_crit_edge:               ; preds = %if.then270.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end286.i

land.lhs.true278.i:                               ; preds = %if.then270.i
  %72 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %l_flags, align 8
  %and280.i = and i32 %73, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and280.i)
  %tobool281.not.i = icmp eq i32 %and280.i, 0
  br i1 %tobool281.not.i, label %if.then282.i, label %land.lhs.true278.i.if.end286.i_crit_edge

land.lhs.true278.i.if.end286.i_crit_edge:         ; preds = %land.lhs.true278.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end286.i

if.then282.i:                                     ; preds = %land.lhs.true278.i
  call void @__sanitizer_cov_trace_pc() #17
  %set_lvb284.i = getelementptr inbounds %struct.ocfs2_lock_res_ops, ptr %67, i32 0, i32 3
  %74 = ptrtoint ptr %set_lvb284.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_lvb284.i, align 4
  call void %75(ptr noundef nonnull %lockres) #15
  br label %if.end286.i

if.end286.i:                                      ; preds = %if.then282.i, %land.lhs.true278.i.if.end286.i_crit_edge, %if.then270.i.if.end286.i_crit_edge, %downconvert.i.if.end286.i_crit_edge
  %set_lvb.1.i = phi i32 [ 1, %land.lhs.true278.i.if.end286.i_crit_edge ], [ 1, %if.then282.i ], [ 0, %if.then270.i.if.end286.i_crit_edge ], [ 0, %downconvert.i.if.end286.i_crit_edge ]
  %call287.i = call fastcc i32 @ocfs2_prepare_downconvert(ptr noundef nonnull %lockres, i32 noundef %switch.select6.i.i) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %flags.1.i) #15
  %call289.i = call fastcc i32 @ocfs2_downconvert_lock(ptr noundef %osb, ptr noundef nonnull %lockres, i32 noundef %switch.select6.i.i, i32 noundef %set_lvb.1.i, i32 noundef %call287.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call289.i)
  %cmp290.i = icmp eq i32 %call289.i, -16
  br i1 %cmp290.i, label %if.then292.i, label %if.end286.i.leave.i_crit_edge

if.end286.i.leave.i_crit_edge:                    ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %leave.i

if.then292.i:                                     ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m295.i) #15
  %76 = ptrtoint ptr %_m295.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 34816, ptr %_m295.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m295.i, ptr noundef nonnull @__func__.ocfs2_unblock_lock, i32 noundef 3923, ptr noundef nonnull @.str.132, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m295.i) #15
  call void @msleep(i32 noundef 20) #15
  br label %unqueue

leave.i:                                          ; preds = %if.end286.i.leave.i_crit_edge, %do.body60.i, %if.then45.i.leave.i_crit_edge, %if.then45.i.leave.i_crit_edge388, %if.then45.i.leave.i_crit_edge389, %if.then45.i.leave.i_crit_edge390, %if.then41.i.leave.i_crit_edge
  %ctl.sroa.9.3 = phi i32 [ %ctl.sroa.9.2, %if.end286.i.leave.i_crit_edge ], [ %ctl.sroa.9.1, %do.body60.i ], [ %ctl.sroa.9.1, %if.then45.i.leave.i_crit_edge ], [ %ctl.sroa.9.1, %if.then45.i.leave.i_crit_edge388 ], [ %ctl.sroa.9.1, %if.then45.i.leave.i_crit_edge389 ], [ %ctl.sroa.9.1, %if.then45.i.leave.i_crit_edge390 ], [ %ctl.sroa.9.1, %if.then41.i.leave.i_crit_edge ]
  %ctl.sroa.0.0 = phi i32 [ 0, %if.end286.i.leave.i_crit_edge ], [ 1, %do.body60.i ], [ 1, %if.then45.i.leave.i_crit_edge ], [ 1, %if.then45.i.leave.i_crit_edge388 ], [ 1, %if.then45.i.leave.i_crit_edge389 ], [ 1, %if.then45.i.leave.i_crit_edge390 ], [ 1, %if.then41.i.leave.i_crit_edge ]
  %ret.0.i = phi i32 [ %call289.i, %if.end286.i.leave.i_crit_edge ], [ %call42.i, %do.body60.i ], [ %call42.i, %if.then45.i.leave.i_crit_edge ], [ %call42.i, %if.then45.i.leave.i_crit_edge388 ], [ %call42.i, %if.then45.i.leave.i_crit_edge389 ], [ %call42.i, %if.then45.i.leave.i_crit_edge390 ], [ %call42.i, %if.then41.i.leave.i_crit_edge ]
  %77 = zext i32 %ret.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %ret.0.i, label %do.body323.i [
    i32 0, label %leave.i.ocfs2_unblock_lock.exit_crit_edge
    i32 -512, label %leave.i.ocfs2_unblock_lock.exit_crit_edge391
    i32 -4, label %leave.i.ocfs2_unblock_lock.exit_crit_edge392
    i32 524289, label %leave.i.ocfs2_unblock_lock.exit_crit_edge393
    i32 -28, label %leave.i.ocfs2_unblock_lock.exit_crit_edge394
    i32 -122, label %leave.i.ocfs2_unblock_lock.exit_crit_edge395
  ]

leave.i.ocfs2_unblock_lock.exit_crit_edge395:     ; preds = %leave.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_unblock_lock.exit

leave.i.ocfs2_unblock_lock.exit_crit_edge394:     ; preds = %leave.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_unblock_lock.exit

leave.i.ocfs2_unblock_lock.exit_crit_edge393:     ; preds = %leave.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_unblock_lock.exit

leave.i.ocfs2_unblock_lock.exit_crit_edge392:     ; preds = %leave.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_unblock_lock.exit

leave.i.ocfs2_unblock_lock.exit_crit_edge391:     ; preds = %leave.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_unblock_lock.exit

leave.i.ocfs2_unblock_lock.exit_crit_edge:        ; preds = %leave.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_unblock_lock.exit

do.body323.i:                                     ; preds = %leave.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m324.i) #15
  %78 = ptrtoint ptr %_m324.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 1152921504606849024, ptr %_m324.i, align 8
  %conv328.i = sext i32 %ret.0.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m324.i, ptr noundef nonnull @__func__.ocfs2_unblock_lock, i32 noundef 3930, ptr noundef nonnull @.str.17, i64 noundef %conv328.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m324.i) #15
  br label %ocfs2_unblock_lock.exit

leave_requeue.i:                                  ; preds = %do.body188.i, %do.body166.i, %do.body146.i, %do.body125.i, %if.end73.i.leave_requeue.i_crit_edge, %do.body30.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %flags.0483.i) #15
  br label %unqueue

ocfs2_unblock_lock.exit:                          ; preds = %do.body323.i, %leave.i.ocfs2_unblock_lock.exit_crit_edge, %leave.i.ocfs2_unblock_lock.exit_crit_edge391, %leave.i.ocfs2_unblock_lock.exit_crit_edge392, %leave.i.ocfs2_unblock_lock.exit_crit_edge393, %leave.i.ocfs2_unblock_lock.exit_crit_edge394, %leave.i.ocfs2_unblock_lock.exit_crit_edge395
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp49 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp49, label %if.then51, label %ocfs2_unblock_lock.exit.unqueue_crit_edge

ocfs2_unblock_lock.exit.unqueue_crit_edge:        ; preds = %ocfs2_unblock_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %unqueue

if.then51:                                        ; preds = %ocfs2_unblock_lock.exit
  %79 = zext i32 %ret.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %ret.0.i, label %do.body66 [
    i32 -512, label %if.then51.unqueue_crit_edge
    i32 -4, label %if.then51.unqueue_crit_edge396
    i32 -122, label %if.then51.unqueue_crit_edge397
    i32 -28, label %if.then51.unqueue_crit_edge398
  ]

if.then51.unqueue_crit_edge398:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  br label %unqueue

if.then51.unqueue_crit_edge397:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  br label %unqueue

if.then51.unqueue_crit_edge396:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  br label %unqueue

if.then51.unqueue_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  br label %unqueue

do.body66:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m67) #15
  %80 = ptrtoint ptr %_m67 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 1152921504606849024, ptr %_m67, align 8
  %conv71 = sext i32 %ret.0.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m67, ptr noundef nonnull @__func__.ocfs2_process_blocked_lock, i32 noundef 4330, ptr noundef nonnull @.str.17, i64 noundef %conv71) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m67) #15
  br label %unqueue

unqueue:                                          ; preds = %do.body66, %if.then51.unqueue_crit_edge, %if.then51.unqueue_crit_edge396, %if.then51.unqueue_crit_edge397, %if.then51.unqueue_crit_edge398, %ocfs2_unblock_lock.exit.unqueue_crit_edge, %leave_requeue.i, %if.then292.i, %do.body215.i, %do.body102.i, %if.end37.i.unqueue_crit_edge, %do.end19.i
  %ctl.sroa.0.1153 = phi i32 [ %ctl.sroa.0.0, %do.body66 ], [ %ctl.sroa.0.0, %if.then51.unqueue_crit_edge ], [ %ctl.sroa.0.0, %if.then51.unqueue_crit_edge396 ], [ %ctl.sroa.0.0, %if.then51.unqueue_crit_edge397 ], [ %ctl.sroa.0.0, %if.then51.unqueue_crit_edge398 ], [ %ctl.sroa.0.0, %ocfs2_unblock_lock.exit.unqueue_crit_edge ], [ 1, %if.end37.i.unqueue_crit_edge ], [ 1, %leave_requeue.i ], [ 0, %do.body215.i ], [ 1, %if.then292.i ], [ 0, %do.body102.i ], [ 0, %do.end19.i ]
  %ctl.sroa.9.4152 = phi i32 [ %ctl.sroa.9.3, %do.body66 ], [ %ctl.sroa.9.3, %if.then51.unqueue_crit_edge ], [ %ctl.sroa.9.3, %if.then51.unqueue_crit_edge396 ], [ %ctl.sroa.9.3, %if.then51.unqueue_crit_edge397 ], [ %ctl.sroa.9.3, %if.then51.unqueue_crit_edge398 ], [ %ctl.sroa.9.3, %ocfs2_unblock_lock.exit.unqueue_crit_edge ], [ %ctl.sroa.9.1, %if.end37.i.unqueue_crit_edge ], [ %ctl.sroa.9.1, %leave_requeue.i ], [ 2, %do.body215.i ], [ %ctl.sroa.9.2, %if.then292.i ], [ %ctl.sroa.9.1, %do.body102.i ], [ %ctl.sroa.9.0, %do.end19.i ]
  %call87 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %81 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %l_flags, align 8
  %and93 = and i32 %82, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %lor.lhs.false, label %unqueue.do.body98_crit_edge

unqueue.do.body98_crit_edge:                      ; preds = %unqueue
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body98

unqueue.thread:                                   ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #17
  %83 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %l_flags, align 8
  br label %do.body98

lor.lhs.false:                                    ; preds = %unqueue
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctl.sroa.0.1153)
  %tobool95.not = icmp eq i32 %ctl.sroa.0.1153, 0
  br i1 %tobool95.not, label %lor.lhs.false.do.body98_crit_edge, label %do.body98.thread

lor.lhs.false.do.body98_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body98

do.body98.thread:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ocfs2_schedule_blocked_lock(ptr noundef %osb, ptr noundef nonnull %lockres)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m99) #15
  %85 = ptrtoint ptr %_m99 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 34816, ptr %_m99, align 8
  br label %88

do.body98:                                        ; preds = %lor.lhs.false.do.body98_crit_edge, %unqueue.thread, %unqueue.do.body98_crit_edge
  %86 = phi i32 [ %82, %lor.lhs.false.do.body98_crit_edge ], [ %82, %unqueue.do.body98_crit_edge ], [ %84, %unqueue.thread ]
  %flags.0166 = phi i32 [ %call87, %lor.lhs.false.do.body98_crit_edge ], [ %call87, %unqueue.do.body98_crit_edge ], [ %call38, %unqueue.thread ]
  %ctl.sroa.0.2164 = phi i32 [ 0, %lor.lhs.false.do.body98_crit_edge ], [ %ctl.sroa.0.1153, %unqueue.do.body98_crit_edge ], [ 0, %unqueue.thread ]
  %ctl.sroa.9.5160 = phi i32 [ %ctl.sroa.9.4152, %lor.lhs.false.do.body98_crit_edge ], [ %ctl.sroa.9.4152, %unqueue.do.body98_crit_edge ], [ 0, %unqueue.thread ]
  %and.i146 = and i32 %86, -257
  call fastcc void @lockres_set_flags(ptr noundef nonnull %lockres, i32 noundef %and.i146) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m99) #15
  %87 = ptrtoint ptr %_m99 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 34816, ptr %_m99, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctl.sroa.0.2164)
  %tobool106.not = icmp eq i32 %ctl.sroa.0.2164, 0
  %spec.select = select i1 %tobool106.not, ptr @.str.123, ptr @.str.122
  br label %88

88:                                               ; preds = %do.body98, %do.body98.thread
  %ctl.sroa.9.5159247 = phi i32 [ %ctl.sroa.9.4152, %do.body98.thread ], [ %ctl.sroa.9.5160, %do.body98 ]
  %flags.0165246 = phi i32 [ %call87, %do.body98.thread ], [ %flags.0166, %do.body98 ]
  %89 = phi ptr [ @.str.122, %do.body98.thread ], [ %spec.select, %do.body98 ]
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m99, ptr noundef nonnull @__func__.ocfs2_process_blocked_lock, i32 noundef 4340, ptr noundef nonnull @.str.121, ptr noundef %l_name, ptr noundef nonnull %89) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m99) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %flags.0165246) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctl.sroa.9.5159247)
  %cmp111.not = icmp eq i32 %ctl.sroa.9.5159247, 0
  br i1 %cmp111.not, label %.if.end119_crit_edge, label %land.lhs.true113

.if.end119_crit_edge:                             ; preds = %88
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end119

land.lhs.true113:                                 ; preds = %88
  %90 = ptrtoint ptr %l_ops to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %l_ops, align 4
  %post_unlock = getelementptr inbounds %struct.ocfs2_lock_res_ops, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %post_unlock to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %post_unlock, align 4
  %tobool115.not = icmp eq ptr %93, null
  br i1 %tobool115.not, label %land.lhs.true113.if.end119_crit_edge, label %if.then116

land.lhs.true113.if.end119_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end119

if.then116:                                       ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #17
  call void %93(ptr noundef %osb, ptr noundef nonnull %lockres) #15
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %land.lhs.true113.if.end119_crit_edge, %.if.end119_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_drop_lock(ptr nocapture noundef readonly %osb, ptr noundef %lockres) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m23 = alloca i64, align 8
  %_m44 = alloca i64, align 8
  %_m95 = alloca i64, align 8
  %_m110 = alloca i64, align 8
  %_m146 = alloca i64, align 8
  %_m164 = alloca i64, align 8
  %_m174 = alloca i64, align 8
  %_m189 = alloca i64, align 8
  %_m206 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %0 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l_flags, align 8
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %l_ops = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 1
  %2 = ptrtoint ptr %l_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %l_ops, align 4
  %flags1 = getelementptr inbounds %struct.ocfs2_lock_res_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1, align 4
  %and2 = shl i32 %5, 2
  %6 = and i32 %and2, 8
  %l_lock = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %7 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %l_flags, align 8
  %and12 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body15, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %9 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %l_flags, align 8
  %and413 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and413)
  %tobool42.not4 = icmp eq i32 %and413, 0
  br i1 %tobool42.not4, label %while.cond.preheader.while.end_crit_edge, label %do.body43.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

do.body43.lr.ph:                                  ; preds = %while.cond.preheader
  %l_name48 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  %l_action = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 13
  %l_unlock_action = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 14
  br label %do.body43

do.body15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %11 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606849024, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_drop_lock, i32 noundef 3430, ptr noundef nonnull @.str.108) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m23) #15
  %12 = ptrtoint ptr %_m23 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606849024, ptr %_m23, align 8
  %l_name = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  %13 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %l_flags, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m23, ptr noundef nonnull @__func__.ocfs2_drop_lock, i32 noundef 3430, ptr noundef nonnull @.str.109, ptr noundef %l_name, i32 noundef %14) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m23) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3430, 0\0A.popsection", ""() #15, !srcloc !427
  unreachable

do.body43:                                        ; preds = %do.body43.do.body43_crit_edge, %do.body43.lr.ph
  %15 = phi i32 [ %10, %do.body43.lr.ph ], [ %22, %do.body43.do.body43_crit_edge ]
  %flags.05 = phi i32 [ %call7, %do.body43.lr.ph ], [ %call66, %do.body43.do.body43_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m44) #15
  %16 = ptrtoint ptr %_m44 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 2048, ptr %_m44, align 8
  %17 = ptrtoint ptr %l_action to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %l_action, align 8
  %conv51 = zext i8 %18 to i32
  %19 = ptrtoint ptr %l_unlock_action to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %l_unlock_action, align 1
  %conv52 = zext i8 %20 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m44, ptr noundef nonnull @__func__.ocfs2_drop_lock, i32 noundef 3436, ptr noundef nonnull @.str.110, ptr noundef %l_name48, i32 noundef %15, i32 noundef %conv51, i32 noundef %conv52) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m44) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %flags.05) #15
  call fastcc void @ocfs2_wait_on_busy_lock(ptr noundef %lockres)
  %call66 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %21 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %l_flags, align 8
  %and41 = and i32 %22, 2
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body43.while.end_crit_edge, label %do.body43.do.body43_crit_edge

do.body43.do.body43_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body43

do.body43.while.end_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %do.body43.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call7, %while.cond.preheader.while.end_crit_edge ], [ %call66, %do.body43.while.end_crit_edge ]
  %.lcssa = phi i32 [ %10, %while.cond.preheader.while.end_crit_edge ], [ %22, %do.body43.while.end_crit_edge ]
  %23 = ptrtoint ptr %l_ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %l_ops, align 4
  %flags72 = getelementptr inbounds %struct.ocfs2_lock_res_ops, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %flags72 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags72, align 4
  %and73 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %and77 = and i32 %.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %or.cond = select i1 %tobool74.not, i1 true, i1 %tobool78.not
  br i1 %or.cond, label %while.end.if.end89_crit_edge, label %land.lhs.true

while.end.if.end89_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

land.lhs.true:                                    ; preds = %while.end
  %l_level = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 9
  %27 = ptrtoint ptr %l_level to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %l_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %28)
  %cmp80 = icmp eq i8 %28, 5
  %and84 = and i32 %.lcssa, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %or.cond1 = select i1 %cmp80, i1 %tobool85.not, i1 false
  br i1 %or.cond1, label %if.then86, label %land.lhs.true.if.end89_crit_edge

land.lhs.true.if.end89_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

if.then86:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %set_lvb = getelementptr inbounds %struct.ocfs2_lock_res_ops, ptr %24, i32 0, i32 3
  %29 = ptrtoint ptr %set_lvb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_lvb, align 4
  call void %30(ptr noundef %lockres) #15
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %land.lhs.true.if.end89_crit_edge, %while.end.if.end89_crit_edge
  %31 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %l_flags, align 8
  %and91 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end89.if.end104_crit_edge, label %do.body94

if.end89.if.end104_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

do.body94:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m95) #15
  %33 = ptrtoint ptr %_m95 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1152921504606849024, ptr %_m95, align 8
  %l_name99 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m95, ptr noundef nonnull @__func__.ocfs2_drop_lock, i32 noundef 3457, ptr noundef nonnull @.str.111, ptr noundef %l_name99) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m95) #15
  br label %if.end104

if.end104:                                        ; preds = %do.body94, %if.end89.if.end104_crit_edge
  %34 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %l_flags, align 8
  %and106 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end104.if.end119_crit_edge, label %do.body109

if.end104.if.end119_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end119

do.body109:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m110) #15
  %36 = ptrtoint ptr %_m110 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 2048, ptr %_m110, align 8
  %l_name114 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m110, ptr noundef nonnull @__func__.ocfs2_drop_lock, i32 noundef 3459, ptr noundef nonnull @.str.112, ptr noundef %l_name114) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m110) #15
  br label %if.end119

if.end119:                                        ; preds = %do.body109, %if.end104.if.end119_crit_edge
  %37 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %l_flags, align 8
  %and121 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.then123, label %if.end125

if.then123:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %flags.0.lcssa) #15
  br label %out

if.end125:                                        ; preds = %if.end119
  %and.i = and i32 %38, -2
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %and.i) #15
  %l_action127 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 13
  %39 = ptrtoint ptr %l_action127 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %l_action127, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp129.not = icmp eq i8 %40, 0
  br i1 %cmp129.not, label %do.end142, label %do.body134, !prof !376

do.body134:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3470, 0\0A.popsection", ""() #15, !srcloc !428
  unreachable

do.end142:                                        ; preds = %if.end125
  %41 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %l_flags, align 8
  %or1.i = or i32 %42, 2
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %or1.i) #15
  %l_unlock_action143 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 14
  %43 = ptrtoint ptr %l_unlock_action143 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %l_unlock_action143, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %flags.0.lcssa) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m146) #15
  %44 = ptrtoint ptr %_m146 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 2048, ptr %_m146, align 8
  %l_name150 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m146, ptr noundef nonnull @__func__.ocfs2_drop_lock, i32 noundef 3477, ptr noundef nonnull @.str.113, ptr noundef %l_name150) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m146) #15
  %cconn = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 65
  %45 = ptrtoint ptr %cconn to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cconn, align 8
  %l_lksb = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 17
  %call155 = call i32 @ocfs2_dlm_unlock(ptr noundef %46, ptr noundef %l_lksb, i32 noundef %6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %do.body205, label %do.body158

do.body158:                                       ; preds = %do.end142
  %l_type = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 12
  %47 = ptrtoint ptr %l_type to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %l_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %48)
  %cmp160.not = icmp eq i8 %48, 5
  br i1 %cmp160.not, label %do.body173, label %do.body163

do.body163:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m164) #15
  %49 = ptrtoint ptr %_m164 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 1152921504606849024, ptr %_m164, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m164, ptr noundef nonnull @__func__.ocfs2_drop_lock, i32 noundef 3481, ptr noundef nonnull @.str.27, i32 noundef %call155, ptr noundef nonnull @.str.84, ptr noundef %l_name150) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m164) #15
  br label %do.body188

do.body173:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m174) #15
  %50 = ptrtoint ptr %_m174 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 1152921504606849024, ptr %_m174, align 8
  %arrayidx.i = getelementptr %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6, i32 18
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %inode_blkno_be.0.copyload.i = load i64, ptr %arrayidx.i, align 2
  %conv181 = trunc i64 %inode_blkno_be.0.copyload.i to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m174, ptr noundef nonnull @__func__.ocfs2_drop_lock, i32 noundef 3481, ptr noundef nonnull @.str.29, i32 noundef %call155, ptr noundef nonnull @.str.84, i32 noundef 17, ptr noundef %l_name150, i32 noundef %conv181) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m174) #15
  br label %do.body188

do.body188:                                       ; preds = %do.body173, %do.body163
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m189) #15
  %52 = ptrtoint ptr %_m189 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 1152921504606849024, ptr %_m189, align 8
  %53 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %l_flags, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m189, ptr noundef nonnull @__func__.ocfs2_drop_lock, i32 noundef 3482, ptr noundef nonnull @.str.114, i32 noundef %54) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m189) #15
  call void @ocfs2_dlm_dump_lksb(ptr noundef %l_lksb) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3484, 0\0A.popsection", ""() #15, !srcloc !429
  unreachable

do.body205:                                       ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m206) #15
  %55 = ptrtoint ptr %_m206 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 2048, ptr %_m206, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m206, ptr noundef nonnull @__func__.ocfs2_drop_lock, i32 noundef 3487, ptr noundef nonnull @.str.115, ptr noundef %l_name150) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m206) #15
  call fastcc void @ocfs2_wait_on_busy_lock(ptr noundef %lockres)
  br label %out

out:                                              ; preds = %do.body205, %if.then123, %entry.out_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_drop_inode_locks(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %ip_open_lockres = getelementptr i8, ptr %inode, i32 -816
  tail call fastcc void @ocfs2_drop_lock(ptr noundef %3, ptr noundef %ip_open_lockres)
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info15 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info15, align 16
  %ip_inode_lockres = getelementptr i8, ptr %inode, i32 -1208
  tail call fastcc void @ocfs2_drop_lock(ptr noundef %7, ptr noundef %ip_inode_lockres)
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info56 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info56 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info56, align 16
  %ip_rw_lockres = getelementptr i8, ptr %inode, i32 -1600
  tail call fastcc void @ocfs2_drop_lock(ptr noundef %11, ptr noundef %ip_rw_lockres)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_qinfo_unlock(ptr noundef %oinfo, i32 noundef %ex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dqi_gqlock = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 7
  %dqi_gi = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 13
  %0 = ptrtoint ptr %dqi_gi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dqi_gi, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ex)
  %tobool.not = icmp eq i32 %ex, 0
  %cond = select i1 %tobool.not, i32 3, i32 5
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #15
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %5, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i7 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool.not.i = icmp eq i32 %and.i7, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

ocfs2_mount_local.exit:                           ; preds = %land.lhs.true
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 28
  %8 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_mount_opt.i, align 8
  %10 = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %if.then, label %ocfs2_mount_local.exit.if.end_crit_edge

ocfs2_mount_local.exit.if.end_crit_edge:          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ocfs2_cluster_unlock(ptr noundef %3, ptr noundef %dqi_gqlock, i32 noundef %cond)
  br label %if.end

if.end:                                           ; preds = %if.then, %ocfs2_mount_local.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_qinfo_lock(ptr noundef %oinfo, i32 noundef %ex) local_unnamed_addr #0 align 64 {
entry:
  %bh.i = alloca ptr, align 4
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dqi_gqlock = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 7
  %dqi_gi = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 13
  %0 = ptrtoint ptr %dqi_gi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dqi_gi, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ex)
  %tobool.not = icmp eq i32 %ex, 0
  %cond = select i1 %tobool.not, i32 3, i32 5
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #15
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %5, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %spec.select = select i1 %tobool.not, i32 0, i32 -30
  br label %bail

if.end4:                                          ; preds = %entry
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i52 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52)
  %tobool.not.i = icmp eq i32 %and.i52, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %if.end4.bail_crit_edge

if.end4.bail_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

ocfs2_mount_local.exit:                           ; preds = %if.end4
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 28
  %8 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_mount_opt.i, align 8
  %10 = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %if.end8, label %ocfs2_mount_local.exit.bail_crit_edge

ocfs2_mount_local.exit.bail_crit_edge:            ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

if.end8:                                          ; preds = %ocfs2_mount_local.exit
  %11 = tail call ptr @llvm.returnaddress(i32 0) #15
  %12 = ptrtoint ptr %11 to i32
  %call.i = tail call fastcc i32 @__ocfs2_cluster_lock(ptr noundef %3, ptr noundef %dqi_gqlock, i32 noundef %cond, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %12) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then10, label %if.end24

if.then10:                                        ; preds = %if.end8
  %13 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %call.i, label %do.body [
    i32 -512, label %if.then10.bail_crit_edge
    i32 -4, label %if.then10.bail_crit_edge68
    i32 -28, label %if.then10.bail_crit_edge69
    i32 -122, label %if.then10.bail_crit_edge70
  ]

if.then10.bail_crit_edge70:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

if.then10.bail_crit_edge69:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

if.then10.bail_crit_edge68:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

if.then10.bail_crit_edge:                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

do.body:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %14 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606849024, ptr %_m, align 8
  %conv = sext i32 %call.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_qinfo_lock, i32 noundef 4257, ptr noundef nonnull @.str.17, i64 noundef %conv) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %bail

if.end24:                                         ; preds = %if.end8
  %call25 = tail call fastcc i32 @ocfs2_should_refresh_lock_res(ptr noundef %dqi_gqlock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.bail_crit_edge, label %if.end28

if.end24.bail_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

if.end28:                                         ; preds = %if.end24
  %15 = ptrtoint ptr %dqi_gi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dqi_gi, align 8
  %dqi_type.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 13, i32 1
  %17 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dqi_type.i, align 4
  %info.i.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 31, i32 3
  %l_lksb.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 7, i32 17
  %call2.i = tail call ptr @ocfs2_dlm_lvb(ptr noundef %l_lksb.i) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #15
  %19 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %bh.i, align 4
  %call4.i = tail call i32 @ocfs2_dlm_lvb_valid(ptr noundef %l_lksb.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i53 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i53, label %if.end28.if.else.i_crit_edge, label %land.lhs.true.i

if.end28.if.else.i_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end28
  %20 = ptrtoint ptr %call2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %call2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp.i = icmp eq i8 %21, 1
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %lvb_bgrace.i = getelementptr inbounds %struct.ocfs2_qinfo_lvb, ptr %call2.i, i32 0, i32 2
  %22 = ptrtoint ptr %lvb_bgrace.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lvb_bgrace.i, align 4
  %dqi_bgrace.i = getelementptr %struct.mem_dqinfo, ptr %info.i.i, i32 %18, i32 4
  %24 = ptrtoint ptr %dqi_bgrace.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %dqi_bgrace.i, align 4
  %lvb_igrace.i = getelementptr inbounds %struct.ocfs2_qinfo_lvb, ptr %call2.i, i32 0, i32 3
  %25 = ptrtoint ptr %lvb_igrace.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lvb_igrace.i, align 4
  %dqi_igrace.i = getelementptr %struct.mem_dqinfo, ptr %info.i.i, i32 %18, i32 5
  %27 = ptrtoint ptr %dqi_igrace.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %dqi_igrace.i, align 8
  %lvb_syncms.i = getelementptr inbounds %struct.ocfs2_qinfo_lvb, ptr %call2.i, i32 0, i32 4
  %28 = ptrtoint ptr %lvb_syncms.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lvb_syncms.i, align 4
  %dqi_syncms.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 4
  %30 = ptrtoint ptr %dqi_syncms.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %dqi_syncms.i, align 8
  %lvb_blocks.i = getelementptr inbounds %struct.ocfs2_qinfo_lvb, ptr %call2.i, i32 0, i32 5
  %31 = ptrtoint ptr %lvb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lvb_blocks.i, align 4
  %dqi_blocks.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 13, i32 2
  %33 = ptrtoint ptr %dqi_blocks.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %dqi_blocks.i, align 8
  %lvb_free_blk.i = getelementptr inbounds %struct.ocfs2_qinfo_lvb, ptr %call2.i, i32 0, i32 6
  %34 = ptrtoint ptr %lvb_free_blk.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lvb_free_blk.i, align 4
  %dqi_free_blk.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 13, i32 3
  %36 = ptrtoint ptr %dqi_free_blk.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %dqi_free_blk.i, align 4
  %lvb_free_entry.i = getelementptr inbounds %struct.ocfs2_qinfo_lvb, ptr %call2.i, i32 0, i32 7
  %37 = ptrtoint ptr %lvb_free_entry.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lvb_free_entry.i, align 4
  %dqi_free_entry.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 13, i32 4
  %39 = ptrtoint ptr %dqi_free_entry.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %dqi_free_entry.i, align 8
  br label %ocfs2_refresh_qinfo.exit.thread

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end28.if.else.i_crit_edge
  %dqi_gqinode.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 6
  %40 = ptrtoint ptr %dqi_gqinode.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dqi_gqinode.i, align 4
  %dqi_giblk.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 10
  %42 = ptrtoint ptr %dqi_giblk.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %dqi_giblk.i, align 8
  %call9.i = call i32 @ocfs2_read_quota_phys_block(ptr noundef %41, i64 noundef %43, ptr noundef nonnull %bh.i) #15
  %44 = zext i32 %call9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %call9.i, label %do.body.i [
    i32 0, label %if.end31.i
    i32 -512, label %if.else.i.ocfs2_refresh_qinfo.exit_crit_edge
    i32 -4, label %if.else.i.ocfs2_refresh_qinfo.exit_crit_edge71
    i32 524289, label %if.else.i.ocfs2_refresh_qinfo.exit_crit_edge72
    i32 -28, label %if.else.i.ocfs2_refresh_qinfo.exit_crit_edge73
    i32 -122, label %if.else.i.ocfs2_refresh_qinfo.exit_crit_edge74
  ]

if.else.i.ocfs2_refresh_qinfo.exit_crit_edge74:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_refresh_qinfo.exit

if.else.i.ocfs2_refresh_qinfo.exit_crit_edge73:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_refresh_qinfo.exit

if.else.i.ocfs2_refresh_qinfo.exit_crit_edge72:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_refresh_qinfo.exit

if.else.i.ocfs2_refresh_qinfo.exit_crit_edge71:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_refresh_qinfo.exit

if.else.i.ocfs2_refresh_qinfo.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_refresh_qinfo.exit

do.body.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #15
  %45 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 1152921504606849024, ptr %_m.i, align 8
  %conv29.i = sext i32 %call9.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_refresh_qinfo, i32 noundef 4217, ptr noundef nonnull @.str.17, i64 noundef %conv29.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #15
  br label %ocfs2_refresh_qinfo.exit

if.end31.i:                                       ; preds = %if.else.i
  %46 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %49, i32 8
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51) #15
  %dqi_bgrace33.i = getelementptr %struct.mem_dqinfo, ptr %info.i.i, i32 %18, i32 4
  %53 = ptrtoint ptr %dqi_bgrace33.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %dqi_bgrace33.i, align 4
  %dqi_igrace34.i = getelementptr i8, ptr %49, i32 12
  %54 = ptrtoint ptr %dqi_igrace34.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dqi_igrace34.i, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55) #15
  %dqi_igrace35.i = getelementptr %struct.mem_dqinfo, ptr %info.i.i, i32 %18, i32 5
  %57 = ptrtoint ptr %dqi_igrace35.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %dqi_igrace35.i, align 8
  %dqi_syncms36.i = getelementptr i8, ptr %49, i32 16
  %58 = ptrtoint ptr %dqi_syncms36.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dqi_syncms36.i, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59) #15
  %dqi_syncms37.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 4
  %61 = ptrtoint ptr %dqi_syncms37.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %dqi_syncms37.i, align 8
  %dqi_blocks38.i = getelementptr i8, ptr %49, i32 20
  %62 = ptrtoint ptr %dqi_blocks38.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dqi_blocks38.i, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63) #15
  %dqi_blocks40.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 13, i32 2
  %65 = ptrtoint ptr %dqi_blocks40.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %dqi_blocks40.i, align 8
  %dqi_free_blk41.i = getelementptr i8, ptr %49, i32 24
  %66 = ptrtoint ptr %dqi_free_blk41.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dqi_free_blk41.i, align 4
  %68 = call i32 @llvm.bswap.i32(i32 %67) #15
  %dqi_free_blk43.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 13, i32 3
  %69 = ptrtoint ptr %dqi_free_blk43.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %dqi_free_blk43.i, align 4
  %dqi_free_entry44.i = getelementptr i8, ptr %49, i32 28
  %70 = ptrtoint ptr %dqi_free_entry44.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dqi_free_entry44.i, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71) #15
  %dqi_free_entry46.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 13, i32 4
  %73 = ptrtoint ptr %dqi_free_entry46.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %dqi_free_entry46.i, align 8
  %74 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i, label %if.end31.i.brelse.exit.i_crit_edge, label %if.then.i.i

if.end31.i.brelse.exit.i_crit_edge:               ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__brelse(ptr noundef nonnull %75) #15
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %if.end31.i.brelse.exit.i_crit_edge
  %l_lock_refresh.i.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 7, i32 21
  %76 = ptrtoint ptr %l_lock_refresh.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %l_lock_refresh.i.i, align 8
  %inc.i.i = add i32 %77, 1
  store i32 %inc.i.i, ptr %l_lock_refresh.i.i, align 8
  br label %ocfs2_refresh_qinfo.exit.thread

ocfs2_refresh_qinfo.exit.thread:                  ; preds = %brelse.exit.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #15
  br label %if.end32

ocfs2_refresh_qinfo.exit:                         ; preds = %do.body.i, %if.else.i.ocfs2_refresh_qinfo.exit_crit_edge, %if.else.i.ocfs2_refresh_qinfo.exit_crit_edge71, %if.else.i.ocfs2_refresh_qinfo.exit_crit_edge72, %if.else.i.ocfs2_refresh_qinfo.exit_crit_edge73, %if.else.i.ocfs2_refresh_qinfo.exit_crit_edge74
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool30.not = icmp eq i32 %call9.i, 0
  br i1 %tobool30.not, label %ocfs2_refresh_qinfo.exit.if.end32_crit_edge, label %if.then31

ocfs2_refresh_qinfo.exit.if.end32_crit_edge:      ; preds = %ocfs2_refresh_qinfo.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then31:                                        ; preds = %ocfs2_refresh_qinfo.exit
  %78 = ptrtoint ptr %dqi_gi to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dqi_gi, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %79, i32 0, i32 33
  %80 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_fs_info.i, align 16
  %osb_lock.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %81, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %osb_lock.i.i) #15
  %osb_flags.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %81, i32 0, i32 23
  %82 = ptrtoint ptr %osb_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %osb_flags.i.i, align 8
  %and.i.i = and i32 %83, 2
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i57, label %if.then31.if.end32_crit_edge

if.then31.if.end32_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.lhs.true.i57:                                ; preds = %if.then31
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %81, i32 0, i32 19
  %84 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %s_feature_incompat.i.i, align 8
  %and.i7.i = and i32 %85, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7.i)
  %tobool.not.i.i56 = icmp eq i32 %and.i7.i, 0
  br i1 %tobool.not.i.i56, label %ocfs2_mount_local.exit.i, label %land.lhs.true.i57.if.end32_crit_edge

land.lhs.true.i57.if.end32_crit_edge:             ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

ocfs2_mount_local.exit.i:                         ; preds = %land.lhs.true.i57
  %s_mount_opt.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %81, i32 0, i32 28
  %86 = ptrtoint ptr %s_mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %s_mount_opt.i.i, align 8
  %88 = and i32 %87, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool3.not.i = icmp eq i32 %88, 0
  br i1 %tobool3.not.i, label %if.then.i58, label %ocfs2_mount_local.exit.i.if.end32_crit_edge

ocfs2_mount_local.exit.i.if.end32_crit_edge:      ; preds = %ocfs2_mount_local.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then.i58:                                      ; preds = %ocfs2_mount_local.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ocfs2_cluster_unlock(ptr noundef %81, ptr noundef %dqi_gqlock, i32 noundef %cond) #15
  br label %if.end32

if.end32:                                         ; preds = %if.then.i58, %ocfs2_mount_local.exit.i.if.end32_crit_edge, %land.lhs.true.i57.if.end32_crit_edge, %if.then31.if.end32_crit_edge, %ocfs2_refresh_qinfo.exit.if.end32_crit_edge, %ocfs2_refresh_qinfo.exit.thread
  %tobool30.not67 = phi i1 [ true, %ocfs2_refresh_qinfo.exit.thread ], [ true, %ocfs2_refresh_qinfo.exit.if.end32_crit_edge ], [ false, %if.then31.if.end32_crit_edge ], [ false, %land.lhs.true.i57.if.end32_crit_edge ], [ false, %ocfs2_mount_local.exit.i.if.end32_crit_edge ], [ false, %if.then.i58 ]
  %status.0.i66 = phi i32 [ 0, %ocfs2_refresh_qinfo.exit.thread ], [ 0, %ocfs2_refresh_qinfo.exit.if.end32_crit_edge ], [ %call9.i, %if.then31.if.end32_crit_edge ], [ %call9.i, %land.lhs.true.i57.if.end32_crit_edge ], [ %call9.i, %ocfs2_mount_local.exit.i.if.end32_crit_edge ], [ %call9.i, %if.then.i58 ]
  %l_lock.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 7, i32 16
  %call2.i59 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock.i) #15
  %l_flags.i.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 7, i32 5
  %89 = ptrtoint ptr %l_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %l_flags.i.i, align 8
  %and.i.i60 = and i32 %90, -33
  call fastcc void @lockres_set_flags(ptr noundef %dqi_gqlock, i32 noundef %and.i.i60) #15
  br i1 %tobool30.not67, label %if.then.i62, label %if.end32.ocfs2_complete_lock_res_refresh.exit_crit_edge

if.end32.ocfs2_complete_lock_res_refresh.exit_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_complete_lock_res_refresh.exit

if.then.i62:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %91 = ptrtoint ptr %l_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %l_flags.i.i, align 8
  %and.i11.i = and i32 %92, -17
  call fastcc void @lockres_set_flags(ptr noundef %dqi_gqlock, i32 noundef %and.i11.i) #15
  br label %ocfs2_complete_lock_res_refresh.exit

ocfs2_complete_lock_res_refresh.exit:             ; preds = %if.then.i62, %if.end32.ocfs2_complete_lock_res_refresh.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock.i, i32 noundef %call2.i59) #15
  %l_event.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 7, i32 18
  call void @__wake_up(ptr noundef %l_event.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %bail

bail:                                             ; preds = %ocfs2_complete_lock_res_refresh.exit, %if.end24.bail_crit_edge, %do.body, %if.then10.bail_crit_edge, %if.then10.bail_crit_edge68, %if.then10.bail_crit_edge69, %if.then10.bail_crit_edge70, %ocfs2_mount_local.exit.bail_crit_edge, %if.end4.bail_crit_edge, %if.then
  %status.0 = phi i32 [ 0, %ocfs2_mount_local.exit.bail_crit_edge ], [ %status.0.i66, %ocfs2_complete_lock_res_refresh.exit ], [ %call.i, %if.end24.bail_crit_edge ], [ %spec.select, %if.then ], [ %call.i, %if.then10.bail_crit_edge ], [ %call.i, %if.then10.bail_crit_edge68 ], [ %call.i, %if.then10.bail_crit_edge69 ], [ %call.i, %if.then10.bail_crit_edge70 ], [ %call.i, %do.body ], [ 0, %if.end4.bail_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_refcount_lock(ptr noundef %ref_tree, i32 noundef %ex) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ex)
  %tobool.not = icmp eq i32 %ex, 0
  %cond = select i1 %tobool.not, i32 3, i32 5
  %rf_lockres = getelementptr inbounds %struct.ocfs2_refcount_tree, ptr %ref_tree, i32 0, i32 5
  %0 = ptrtoint ptr %rf_lockres to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rf_lockres, align 8
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #15
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %3, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i36 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.not.i = icmp eq i32 %and.i36, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ocfs2_mount_local.exit:                           ; preds = %if.end
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_mount_opt.i, align 8
  %8 = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.end5, label %ocfs2_mount_local.exit.cleanup_crit_edge

ocfs2_mount_local.exit.cleanup_crit_edge:         ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %ocfs2_mount_local.exit
  %9 = tail call ptr @llvm.returnaddress(i32 0) #15
  %10 = ptrtoint ptr %9 to i32
  %call.i = tail call fastcc i32 @__ocfs2_cluster_lock(ptr noundef %1, ptr noundef %rf_lockres, i32 noundef %cond, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  %11 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %call.i, label %do.body [
    i32 -512, label %if.then7.cleanup_crit_edge
    i32 -4, label %if.then7.cleanup_crit_edge38
    i32 -28, label %if.then7.cleanup_crit_edge39
    i32 -122, label %if.then7.cleanup_crit_edge40
  ]

if.then7.cleanup_crit_edge40:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7.cleanup_crit_edge39:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7.cleanup_crit_edge38:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606849024, ptr %_m, align 8
  %conv = sext i32 %call.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_refcount_lock, i32 noundef 4287, ptr noundef nonnull @.str.17, i64 noundef %conv) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then7.cleanup_crit_edge, %if.then7.cleanup_crit_edge38, %if.then7.cleanup_crit_edge39, %if.then7.cleanup_crit_edge40, %if.end5.cleanup_crit_edge, %ocfs2_mount_local.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %entry.cleanup_crit_edge ], [ 0, %ocfs2_mount_local.exit.cleanup_crit_edge ], [ %call.i, %do.body ], [ %call.i, %if.then7.cleanup_crit_edge ], [ %call.i, %if.then7.cleanup_crit_edge38 ], [ %call.i, %if.then7.cleanup_crit_edge39 ], [ %call.i, %if.then7.cleanup_crit_edge40 ], [ %call.i, %if.end5.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_refcount_unlock(ptr noundef %ref_tree, i32 noundef %ex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_lockres = getelementptr inbounds %struct.ocfs2_refcount_tree, ptr %ref_tree, i32 0, i32 5
  %0 = ptrtoint ptr %rf_lockres to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rf_lockres, align 8
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

ocfs2_mount_local.exit:                           ; preds = %entry
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt.i, align 8
  %6 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.then, label %ocfs2_mount_local.exit.if.end_crit_edge

ocfs2_mount_local.exit.if.end_crit_edge:          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ex)
  %tobool.not = icmp eq i32 %ex, 0
  %cond = select i1 %tobool.not, i32 3, i32 5
  tail call fastcc void @ocfs2_cluster_unlock(ptr noundef %1, ptr noundef %rf_lockres, i32 noundef %cond)
  br label %if.end

if.end:                                           ; preds = %if.then, %ocfs2_mount_local.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_wake_downconvert_thread(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dc_task_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 75
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dc_task_lock) #15
  %dc_wake_sequence = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 78
  %0 = ptrtoint ptr %dc_wake_sequence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dc_wake_sequence, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %dc_wake_sequence, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dc_task_lock, i32 noundef %call2) #15
  %dc_event = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 77
  tail call void @__wake_up(ptr noundef %dc_event, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ocfs2_get_inode_osb(ptr nocapture noundef readonly %lockres) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_type.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 12
  %0 = ptrtoint ptr %l_type.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %l_type.i.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.174)
  switch i8 %1, label %do.body4.i [
    i8 0, label %entry.ocfs2_lock_res_inode.exit_crit_edge
    i8 4, label %entry.ocfs2_lock_res_inode.exit_crit_edge1
    i8 6, label %entry.ocfs2_lock_res_inode.exit_crit_edge2
  ], !prof !430

entry.ocfs2_lock_res_inode.exit_crit_edge2:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_lock_res_inode.exit

entry.ocfs2_lock_res_inode.exit_crit_edge1:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_lock_res_inode.exit

entry.ocfs2_lock_res_inode.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_lock_res_inode.exit

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 300, 0\0A.popsection", ""() #15, !srcloc !431
  unreachable

ocfs2_lock_res_inode.exit:                        ; preds = %entry.ocfs2_lock_res_inode.exit_crit_edge, %entry.ocfs2_lock_res_inode.exit_crit_edge1, %entry.ocfs2_lock_res_inode.exit_crit_edge2
  %3 = ptrtoint ptr %lockres to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lockres, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info, align 16
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_check_meta_downconvert(ptr nocapture noundef readonly %lockres, i32 noundef %new_level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_type.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 12
  %0 = ptrtoint ptr %l_type.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %l_type.i.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.175)
  switch i8 %1, label %do.body4.i [
    i8 0, label %entry.ocfs2_lock_res_inode.exit_crit_edge
    i8 4, label %entry.ocfs2_lock_res_inode.exit_crit_edge4
    i8 6, label %entry.ocfs2_lock_res_inode.exit_crit_edge5
  ], !prof !430

entry.ocfs2_lock_res_inode.exit_crit_edge5:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_lock_res_inode.exit

entry.ocfs2_lock_res_inode.exit_crit_edge4:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_lock_res_inode.exit

entry.ocfs2_lock_res_inode.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_lock_res_inode.exit

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 300, 0\0A.popsection", ""() #15, !srcloc !431
  unreachable

ocfs2_lock_res_inode.exit:                        ; preds = %entry.ocfs2_lock_res_inode.exit_crit_edge, %entry.ocfs2_lock_res_inode.exit_crit_edge4, %entry.ocfs2_lock_res_inode.exit_crit_edge5
  %3 = ptrtoint ptr %lockres to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lockres, align 8
  %ip_metadata_cache.i = getelementptr i8, ptr %4, i32 -56
  %call2 = tail call fastcc i32 @ocfs2_ci_checkpointed(ptr noundef %ip_metadata_cache.i, ptr noundef %lockres, i32 noundef %new_level)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_set_meta_lvb(ptr nocapture noundef readonly %lockres) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_type.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 12
  %0 = ptrtoint ptr %l_type.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %l_type.i.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.176)
  switch i8 %1, label %do.body4.i [
    i8 0, label %entry.ocfs2_lock_res_inode.exit_crit_edge
    i8 4, label %entry.ocfs2_lock_res_inode.exit_crit_edge7
    i8 6, label %entry.ocfs2_lock_res_inode.exit_crit_edge8
  ], !prof !430

entry.ocfs2_lock_res_inode.exit_crit_edge8:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_lock_res_inode.exit

entry.ocfs2_lock_res_inode.exit_crit_edge7:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_lock_res_inode.exit

entry.ocfs2_lock_res_inode.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_lock_res_inode.exit

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 300, 0\0A.popsection", ""() #15, !srcloc !431
  unreachable

ocfs2_lock_res_inode.exit:                        ; preds = %entry.ocfs2_lock_res_inode.exit_crit_edge, %entry.ocfs2_lock_res_inode.exit_crit_edge7, %entry.ocfs2_lock_res_inode.exit_crit_edge8
  %3 = ptrtoint ptr %lockres to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lockres, align 8
  %l_lksb.i = getelementptr i8, ptr %4, i32 -1076
  %call1.i = tail call ptr @ocfs2_dlm_lvb(ptr noundef %l_lksb.i) #15
  %ip_flags.i = getelementptr i8, ptr %4, i32 -76
  %5 = ptrtoint ptr %ip_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ip_flags.i, align 4
  %and.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %ocfs2_lock_res_inode.exit
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %call1.i, align 8
  br label %__ocfs2_stuff_meta_lvb.exit

if.end.i:                                         ; preds = %ocfs2_lock_res_inode.exit
  %8 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %call1.i, align 8
  %i_size_seqcount.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 23
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 23, i32 1
  %i_size18.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %if.end.i
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !432
  %and.i.i.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  %10 = tail call ptr @llvm.returnaddress(i32 0) #15
  %11 = ptrtoint ptr %10 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %11) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %11) #15
  tail call void @trace_hardirqs_on() #15
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %12 = tail call ptr @llvm.returnaddress(i32 0) #15
  %13 = ptrtoint ptr %12 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %13) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %13) #15
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !433
  %and.i.i.i.i.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !386

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #15, !srcloc !434
  %15 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and29.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool.not30.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool.not30.i.i, label %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !435
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !436
  %17 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and.i.i = and i32 %18, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %16, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge ], [ %18, %do.end.i.i.while.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !437
  %19 = ptrtoint ptr %i_size18.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_size18.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !438
  %21 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq i32 %22, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %i_size_read.exit.i, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i

i_size_read.exit.i:                               ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %lvb_isize.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i, i32 0, i32 9
  %23 = ptrtoint ptr %lvb_isize.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %20, ptr %lvb_isize.i, align 8
  %ip_clusters.i = getelementptr i8, ptr %4, i32 -176
  %24 = ptrtoint ptr %ip_clusters.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ip_clusters.i, align 8
  %lvb_iclusters.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i, i32 0, i32 3
  %26 = ptrtoint ptr %lvb_iclusters.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %lvb_iclusters.i, align 4
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 53
  %29 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 2
  %31 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack.i.i = load i32, ptr %i_uid.i.i, align 4
  %32 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call1.i.i = tail call i32 @from_kuid(ptr noundef %30, [1 x i32] %32) #15
  %lvb_iuid.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i, i32 0, i32 4
  %33 = ptrtoint ptr %lvb_iuid.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call1.i.i, ptr %lvb_iuid.i, align 8
  %34 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i37.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 53
  %36 = ptrtoint ptr %s_user_ns.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_user_ns.i.i37.i, align 8
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 3
  %38 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack.i38.i = load i32, ptr %i_gid.i.i, align 8
  %39 = insertvalue [1 x i32] undef, i32 %.unpack.i38.i, 0
  %call1.i39.i = tail call i32 @from_kgid(ptr noundef %37, [1 x i32] %39) #15
  %lvb_igid.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i, i32 0, i32 5
  %40 = ptrtoint ptr %lvb_igid.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call1.i39.i, ptr %lvb_igid.i, align 4
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %4, align 8
  %lvb_imode.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i, i32 0, i32 10
  %43 = ptrtoint ptr %lvb_imode.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %lvb_imode.i, align 8
  %44 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 12
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %conv.i = trunc i32 %46 to i16
  %lvb_inlink.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i, i32 0, i32 11
  %47 = ptrtoint ptr %lvb_inlink.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i, ptr %lvb_inlink.i, align 2
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 15
  %48 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %i_atime.i, align 8
  %50 = tail call i64 @llvm.smax.i64(i64 %49, i64 0) #15
  %51 = tail call i64 @llvm.umin.i64(i64 %50, i64 17179869183) #15
  %tv_nsec.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 15, i32 1
  %52 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tv_nsec.i.i, align 8
  %shl.i.i = shl nuw i64 %51, 30
  %54 = and i32 %53, 1073741823
  %and.i40.i = zext i32 %54 to i64
  %or.i.i = or i64 %shl.i.i, %and.i40.i
  %lvb_iatime_packed.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i, i32 0, i32 6
  %55 = ptrtoint ptr %lvb_iatime_packed.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %or.i.i, ptr %lvb_iatime_packed.i, align 8
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 17
  %56 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %i_ctime.i, align 8
  %58 = tail call i64 @llvm.smax.i64(i64 %57, i64 0) #15
  %59 = tail call i64 @llvm.umin.i64(i64 %58, i64 17179869183) #15
  %tv_nsec.i41.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 17, i32 1
  %60 = ptrtoint ptr %tv_nsec.i41.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tv_nsec.i41.i, align 8
  %shl.i42.i = shl nuw i64 %59, 30
  %62 = and i32 %61, 1073741823
  %and.i43.i = zext i32 %62 to i64
  %or.i44.i = or i64 %shl.i42.i, %and.i43.i
  %lvb_ictime_packed.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i, i32 0, i32 7
  %63 = ptrtoint ptr %lvb_ictime_packed.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %or.i44.i, ptr %lvb_ictime_packed.i, align 8
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 16
  %64 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %i_mtime.i, align 8
  %66 = tail call i64 @llvm.smax.i64(i64 %65, i64 0) #15
  %67 = tail call i64 @llvm.umin.i64(i64 %66, i64 17179869183) #15
  %tv_nsec.i45.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 16, i32 1
  %68 = ptrtoint ptr %tv_nsec.i45.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tv_nsec.i45.i, align 8
  %shl.i46.i = shl nuw i64 %67, 30
  %70 = and i32 %69, 1073741823
  %and.i47.i = zext i32 %70 to i64
  %or.i48.i = or i64 %shl.i46.i, %and.i47.i
  %lvb_imtime_packed.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i, i32 0, i32 8
  %71 = ptrtoint ptr %lvb_imtime_packed.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %or.i48.i, ptr %lvb_imtime_packed.i, align 8
  %ip_attr.i = getelementptr i8, ptr %4, i32 -72
  %72 = ptrtoint ptr %ip_attr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ip_attr.i, align 8
  %lvb_iattr.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i, i32 0, i32 12
  %74 = ptrtoint ptr %lvb_iattr.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %lvb_iattr.i, align 4
  %ip_dyn_features.i = getelementptr i8, ptr %4, i32 -172
  %75 = ptrtoint ptr %ip_dyn_features.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ip_dyn_features.i, align 4
  %lvb_idynfeatures.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i, i32 0, i32 2
  %77 = ptrtoint ptr %lvb_idynfeatures.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %lvb_idynfeatures.i, align 2
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 49
  %78 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %i_generation.i, align 8
  %lvb_igeneration.i = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call1.i, i32 0, i32 13
  %80 = ptrtoint ptr %lvb_igeneration.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %lvb_igeneration.i, align 8
  br label %__ocfs2_stuff_meta_lvb.exit

__ocfs2_stuff_meta_lvb.exit:                      ; preds = %i_size_read.exit.i, %if.then.i
  %ip_inode_lockres.i = getelementptr i8, ptr %4, i32 -1208
  tail call fastcc void @ocfs2_dump_meta_lvb_info(ptr noundef nonnull @__PRETTY_FUNCTION__.__ocfs2_stuff_meta_lvb, i32 noundef 2196, ptr noundef %ip_inode_lockres.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_data_convert_worker(ptr nocapture noundef readonly %lockres, i32 noundef %blocking) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m18 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_type.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 12
  %0 = ptrtoint ptr %l_type.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %l_type.i.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.177)
  switch i8 %1, label %do.body4.i [
    i8 0, label %entry.ocfs2_lock_res_inode.exit_crit_edge
    i8 4, label %entry.ocfs2_lock_res_inode.exit_crit_edge44
    i8 6, label %entry.ocfs2_lock_res_inode.exit_crit_edge45
  ], !prof !430

entry.ocfs2_lock_res_inode.exit_crit_edge45:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_lock_res_inode.exit

entry.ocfs2_lock_res_inode.exit_crit_edge44:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_lock_res_inode.exit

entry.ocfs2_lock_res_inode.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_lock_res_inode.exit

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 300, 0\0A.popsection", ""() #15, !srcloc !431
  unreachable

ocfs2_lock_res_inode.exit:                        ; preds = %entry.ocfs2_lock_res_inode.exit_crit_edge, %entry.ocfs2_lock_res_inode.exit_crit_edge44, %entry.ocfs2_lock_res_inode.exit_crit_edge45
  %3 = ptrtoint ptr %lockres to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lockres, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_mapping, align 8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %4, align 8
  %9 = and i16 %8, -4096
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.178)
  switch i16 %9, label %ocfs2_lock_res_inode.exit.out_crit_edge [
    i16 16384, label %if.then
    i16 -32768, label %if.end13
  ]

ocfs2_lock_res_inode.exit.out_crit_edge:          ; preds = %ocfs2_lock_res_inode.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then:                                          ; preds = %ocfs2_lock_res_inode.exit
  call void @__sanitizer_cov_trace_pc() #17
  %ip_dir_lock_gen = getelementptr i8, ptr %4, i32 840
  %11 = ptrtoint ptr %ip_dir_lock_gen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ip_dir_lock_gen, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %ip_dir_lock_gen, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %13 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 2048, ptr %_m, align 8
  %14 = ptrtoint ptr %ip_dir_lock_gen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ip_dir_lock_gen, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_data_convert_worker, i32 noundef 3953, ptr noundef nonnull @.str.44, i32 noundef %15) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %out_forget

if.end13:                                         ; preds = %ocfs2_lock_res_inode.exit
  tail call void @unmap_mapping_range(ptr noundef %6, i64 noundef 0, i64 noundef 0, i32 noundef 0) #15
  %call14 = tail call i32 @filemap_fdatawrite(ptr noundef %6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.if.end26_crit_edge, label %do.body17

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

do.body17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m18) #15
  %16 = ptrtoint ptr %_m18 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1152921504606849024, ptr %_m18, align 8
  %add.ptr.i43 = getelementptr i8, ptr %4, i32 -1608
  %17 = ptrtoint ptr %add.ptr.i43 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %add.ptr.i43, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m18, ptr noundef nonnull @__func__.ocfs2_data_convert_worker, i32 noundef 3971, ptr noundef nonnull @.str.45, i64 noundef %18) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m18) #15
  br label %if.end26

if.end26:                                         ; preds = %do.body17, %if.end13.if.end26_crit_edge
  %call27 = call i32 @sync_mapping_buffers(ptr noundef %6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %blocking)
  %cmp28 = icmp eq i32 %blocking, 5
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  call void @truncate_inode_pages(ptr noundef %6, i64 noundef 0) #15
  br label %out_forget

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call i32 @filemap_fdatawait_range(ptr noundef %6, i64 noundef 0, i64 noundef 9223372036854775807) #15
  br label %out_forget

out_forget:                                       ; preds = %if.else, %if.then30, %if.then
  call void @forget_all_cached_acls(ptr noundef %4) #15
  br label %out

out:                                              ; preds = %out_forget, %ocfs2_lock_res_inode.exit.out_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_ci_checkpointed(ptr noundef %ci, ptr nocapture noundef readonly %lockres, i32 noundef %new_level) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ocfs2_metadata_cache_get_super(ptr noundef %ci) #15
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %call.i, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %journal1.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %journal1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %journal1.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @trans_inc_lock) #15
  %ci_last_trans.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 2
  %4 = ptrtoint ptr %ci_last_trans.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ci_last_trans.i, align 8
  %j_trans_id.i = getelementptr inbounds %struct.ocfs2_journal, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %j_trans_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %j_trans_id.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @trans_inc_lock) #15
  %8 = zext i32 %new_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %new_level, label %do.body3 [
    i32 3, label %entry.do.body9_crit_edge
    i32 0, label %entry.do.body9_crit_edge41
  ]

entry.do.body9_crit_edge41:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body9

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body9

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3998, 0\0A.popsection", ""() #15, !srcloc !439
  unreachable

do.body9:                                         ; preds = %entry.do.body9_crit_edge, %entry.do.body9_crit_edge41
  %sub.i = sub i32 %5, %7
  %l_level = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 9
  %9 = ptrtoint ptr %l_level to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %l_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %10)
  %cmp10.not = icmp ne i8 %10, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %tobool13.not = icmp sgt i32 %sub.i, -1
  %spec.select40 = select i1 %cmp10.not, i1 %tobool13.not, i1 false
  br i1 %spec.select40, label %do.body24, label %do.end32, !prof !386

do.body24:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3999, 0\0A.popsection", ""() #15, !srcloc !440
  unreachable

do.end32:                                         ; preds = %do.body9
  br i1 %tobool13.not, label %if.end35, label %do.end32.cleanup_crit_edge

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end35:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #17
  %call36 = tail call ptr @ocfs2_metadata_cache_get_super(ptr noundef %ci) #15
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %call36, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info, align 16
  %checkpoint_event.i = getelementptr inbounds %struct.ocfs2_super, ptr %12, i32 0, i32 44
  tail call void @__wake_up(ptr noundef %checkpoint_event.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end32.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ 1, %do.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_metadata_cache_get_super(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_dump_meta_lvb_info(ptr noundef %function, i32 noundef %line, ptr noundef %lockres) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m2 = alloca i64, align 8
  %_m11 = alloca i64, align 8
  %_m21 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_lksb = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 17
  %call = tail call ptr @ocfs2_dlm_lvb(ptr noundef %l_lksb) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 2048, ptr %_m, align 8
  %l_name = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_dump_meta_lvb_info, i32 noundef 119, ptr noundef nonnull @.str.40, ptr noundef %l_name, ptr noundef %function, i32 noundef %line) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m2) #15
  %1 = ptrtoint ptr %_m2 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 2048, ptr %_m2, align 8
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %call, align 8
  %conv = zext i8 %3 to i32
  %lvb_iclusters = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %lvb_iclusters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lvb_iclusters, align 4
  %lvb_igeneration = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %lvb_igeneration to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lvb_igeneration, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m2, ptr noundef nonnull @__func__.ocfs2_dump_meta_lvb_info, i32 noundef 122, ptr noundef nonnull @.str.41, i32 noundef %conv, i32 noundef %5, i32 noundef %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m2) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m11) #15
  %8 = ptrtoint ptr %_m11 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 2048, ptr %_m11, align 8
  %lvb_isize = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call, i32 0, i32 9
  %9 = ptrtoint ptr %lvb_isize to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %lvb_isize, align 8
  %lvb_iuid = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call, i32 0, i32 4
  %11 = ptrtoint ptr %lvb_iuid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lvb_iuid, align 8
  %lvb_igid = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %lvb_igid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lvb_igid, align 4
  %lvb_imode = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call, i32 0, i32 10
  %15 = ptrtoint ptr %lvb_imode to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %lvb_imode, align 8
  %conv16 = zext i16 %16 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m11, ptr noundef nonnull @__func__.ocfs2_dump_meta_lvb_info, i32 noundef 126, ptr noundef nonnull @.str.42, i64 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %conv16) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m11) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m21) #15
  %17 = ptrtoint ptr %_m21 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 2048, ptr %_m21, align 8
  %lvb_inlink = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call, i32 0, i32 11
  %18 = ptrtoint ptr %lvb_inlink to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %lvb_inlink, align 2
  %conv26 = zext i16 %19 to i32
  %lvb_iatime_packed = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call, i32 0, i32 6
  %20 = ptrtoint ptr %lvb_iatime_packed to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %lvb_iatime_packed, align 8
  %lvb_ictime_packed = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call, i32 0, i32 7
  %22 = ptrtoint ptr %lvb_ictime_packed to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %lvb_ictime_packed, align 8
  %lvb_imtime_packed = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call, i32 0, i32 8
  %24 = ptrtoint ptr %lvb_imtime_packed to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %lvb_imtime_packed, align 8
  %lvb_iattr = getelementptr inbounds %struct.ocfs2_meta_lvb, ptr %call, i32 0, i32 12
  %26 = ptrtoint ptr %lvb_iattr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lvb_iattr, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m21, ptr noundef nonnull @__func__.ocfs2_dump_meta_lvb_info, i32 noundef 132, ptr noundef nonnull @.str.43, i32 noundef %conv26, i64 noundef %21, i64 noundef %23, i64 noundef %25, i32 noundef %27) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m21) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_mapping_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @forget_all_cached_acls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ocfs2_get_dentry_osb(ptr nocapture noundef readonly %lockres) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lockres to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lockres, align 8
  %dl_inode = getelementptr inbounds %struct.ocfs2_dentry_lock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dl_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dl_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_dentry_post_unlock(ptr noundef %osb, ptr nocapture noundef readonly %lockres) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_type.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 12
  %0 = ptrtoint ptr %l_type.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %l_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp.not.i = icmp eq i8 %1, 5
  br i1 %cmp.not.i, label %ocfs2_lock_res_dl.exit, label %do.body3.i, !prof !376

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 307, 0\0A.popsection", ""() #15, !srcloc !441
  unreachable

ocfs2_lock_res_dl.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %lockres to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lockres, align 8
  tail call void @ocfs2_dentry_lock_put(ptr noundef %osb, ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_dentry_convert_worker(ptr noundef %lockres, i32 noundef %blocking) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m37 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_type.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 12
  %0 = ptrtoint ptr %l_type.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %l_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp.not.i = icmp eq i8 %1, 5
  br i1 %cmp.not.i, label %ocfs2_lock_res_dl.exit, label %do.body3.i, !prof !376

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 307, 0\0A.popsection", ""() #15, !srcloc !441
  unreachable

ocfs2_lock_res_dl.exit:                           ; preds = %entry
  %2 = ptrtoint ptr %lockres to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lockres, align 8
  %dl_inode = getelementptr inbounds %struct.ocfs2_dentry_lock, ptr %3, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %blocking)
  %cmp = icmp eq i32 %blocking, 3
  br i1 %cmp, label %ocfs2_lock_res_dl.exit.cleanup_crit_edge, label %if.end

ocfs2_lock_res_dl.exit.cleanup_crit_edge:         ; preds = %ocfs2_lock_res_dl.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %ocfs2_lock_res_dl.exit
  %4 = ptrtoint ptr %dl_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dl_inode, align 8
  %ip_lock = getelementptr i8, ptr %5, i32 -232
  tail call void @_raw_spin_lock(ptr noundef %ip_lock) #15
  %ip_flags = getelementptr i8, ptr %5, i32 -76
  %6 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ip_flags, align 4
  %or = or i32 %7, 16
  store i32 %or, ptr %ip_flags, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ip_lock) #15
  %l_lock = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @dentry_attach_lock) #15
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %8 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %l_flags, align 8
  %and = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end12_crit_edge, label %if.then10

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  %inc = add i32 %11, 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc, ptr %3, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dentry_attach_lock) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call6) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %13 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 2048, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_dentry_convert_worker, i32 noundef 4099, ptr noundef nonnull @.str.64, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  call void @_raw_spin_lock(ptr noundef nonnull @dentry_attach_lock) #15
  %dl_parent_blkno = getelementptr inbounds %struct.ocfs2_dentry_lock, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %dl_inode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dl_inode, align 8
  %16 = ptrtoint ptr %dl_parent_blkno to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dl_parent_blkno, align 8
  %call2569 = call ptr @ocfs2_find_local_alias(ptr noundef %15, i64 noundef %17, i32 noundef 1) #15
  %tobool26.not70 = icmp eq ptr %call2569, null
  br i1 %tobool26.not70, label %if.then10.while.end_crit_edge, label %if.then10.if.end28_crit_edge

if.then10.if.end28_crit_edge:                     ; preds = %if.then10
  br label %if.end28

if.then10.while.end_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dentry_attach_lock) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call6) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %18 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 2048, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_dentry_convert_worker, i32 noundef 4099, ptr noundef nonnull @.str.64, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %cleanup

if.end28:                                         ; preds = %do.body36.if.end28_crit_edge, %if.then10.if.end28_crit_edge
  %call2571 = phi ptr [ %call25, %do.body36.if.end28_crit_edge ], [ %call2569, %if.then10.if.end28_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef nonnull @dentry_attach_lock) #15
  %19 = ptrtoint ptr %dl_inode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dl_inode, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 8
  %23 = and i16 %22, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %23)
  %cmp32 = icmp eq i16 %23, 16384
  br i1 %cmp32, label %if.then34, label %if.end28.do.body36_crit_edge

if.end28.do.body36_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body36

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  call void @shrink_dcache_parent(ptr noundef nonnull %call2571) #15
  br label %do.body36

do.body36:                                        ; preds = %if.then34, %if.end28.do.body36_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m37) #15
  %24 = ptrtoint ptr %_m37 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 2048, ptr %_m37, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m37, ptr noundef nonnull @__func__.ocfs2_dentry_convert_worker, i32 noundef 4120, ptr noundef nonnull @.str.65, ptr noundef nonnull %call2571) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m37) #15
  call void @d_delete(ptr noundef nonnull %call2571) #15
  call void @dput(ptr noundef nonnull %call2571) #15
  call void @_raw_spin_lock(ptr noundef nonnull @dentry_attach_lock) #15
  %25 = ptrtoint ptr %dl_inode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dl_inode, align 8
  %27 = ptrtoint ptr %dl_parent_blkno to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dl_parent_blkno, align 8
  %call25 = call ptr @ocfs2_find_local_alias(ptr noundef %26, i64 noundef %28, i32 noundef 1) #15
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.body36.while.end_crit_edge, label %do.body36.if.end28_crit_edge

do.body36.if.end28_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

do.body36.while.end_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %do.body36.while.end_crit_edge, %if.then10.while.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dentry_attach_lock) #15
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp45 = icmp eq i32 %30, 1
  %. = select i1 %cmp45, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end12, %ocfs2_lock_res_dl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ocfs2_lock_res_dl.exit.cleanup_crit_edge ], [ 0, %if.end12 ], [ %., %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_dentry_lock_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_find_local_alias(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ocfs2_get_file_osb(ptr nocapture noundef readonly %lockres) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lockres to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lockres, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_mapping, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info, align 16
  ret ptr %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ocfs2_get_qinfo_osb(ptr nocapture noundef readonly %lockres) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lockres to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lockres, align 8
  %dqi_gi = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %dqi_gi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dqi_gi, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_set_qinfo_lvb(ptr noundef %lockres) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_type.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 12
  %0 = ptrtoint ptr %l_type.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %l_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp.not.i = icmp eq i8 %1, 8
  br i1 %cmp.not.i, label %ocfs2_lock_res_qinfo.exit, label %do.body3.i, !prof !376

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 314, 0\0A.popsection", ""() #15, !srcloc !442
  unreachable

ocfs2_lock_res_qinfo.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %lockres to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lockres, align 8
  %dqi_gi = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %dqi_gi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dqi_gi, align 8
  %dqi_type = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %3, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %dqi_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dqi_type, align 4
  %info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 31, i32 3
  %l_lksb = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 17
  %call3 = tail call ptr @ocfs2_dlm_lvb(ptr noundef %l_lksb) #15
  %8 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %call3, align 4
  %dqi_bgrace = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %7, i32 4
  %9 = ptrtoint ptr %dqi_bgrace to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dqi_bgrace, align 4
  %lvb_bgrace = getelementptr inbounds %struct.ocfs2_qinfo_lvb, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %lvb_bgrace to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %lvb_bgrace, align 4
  %dqi_igrace = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %7, i32 5
  %12 = ptrtoint ptr %dqi_igrace to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dqi_igrace, align 8
  %lvb_igrace = getelementptr inbounds %struct.ocfs2_qinfo_lvb, ptr %call3, i32 0, i32 3
  %14 = ptrtoint ptr %lvb_igrace to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %lvb_igrace, align 4
  %dqi_syncms = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %dqi_syncms to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dqi_syncms, align 8
  %lvb_syncms = getelementptr inbounds %struct.ocfs2_qinfo_lvb, ptr %call3, i32 0, i32 4
  %17 = ptrtoint ptr %lvb_syncms to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %lvb_syncms, align 4
  %dqi_blocks = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %3, i32 0, i32 13, i32 2
  %18 = ptrtoint ptr %dqi_blocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dqi_blocks, align 8
  %lvb_blocks = getelementptr inbounds %struct.ocfs2_qinfo_lvb, ptr %call3, i32 0, i32 5
  %20 = ptrtoint ptr %lvb_blocks to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %lvb_blocks, align 4
  %dqi_free_blk = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %3, i32 0, i32 13, i32 3
  %21 = ptrtoint ptr %dqi_free_blk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dqi_free_blk, align 4
  %lvb_free_blk = getelementptr inbounds %struct.ocfs2_qinfo_lvb, ptr %call3, i32 0, i32 6
  %23 = ptrtoint ptr %lvb_free_blk to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %lvb_free_blk, align 4
  %dqi_free_entry = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %3, i32 0, i32 13, i32 4
  %24 = ptrtoint ptr %dqi_free_entry to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dqi_free_entry, align 8
  %lvb_free_entry = getelementptr inbounds %struct.ocfs2_qinfo_lvb, ptr %call3, i32 0, i32 7
  %26 = ptrtoint ptr %lvb_free_entry to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %lvb_free_entry, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_check_refcount_downconvert(ptr noundef %lockres, i32 noundef %new_level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_ci = getelementptr i8, ptr %lockres, i32 440
  %call1 = tail call fastcc i32 @ocfs2_ci_checkpointed(ptr noundef %rf_ci, ptr noundef %lockres, i32 noundef %new_level)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_refcount_convert_worker(ptr noundef %lockres, i32 noundef %blocking) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_ci = getelementptr i8, ptr %lockres, i32 440
  tail call void @ocfs2_metadata_cache_purge(ptr noundef %rf_ci) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_metadata_cache_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_locking_ast(ptr noundef %lksb) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m20 = alloca i64, align 8
  %_m38 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %lksb, i32 -132
  %l_ops.i = getelementptr i8, ptr %lksb, i32 -128
  %0 = ptrtoint ptr %l_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l_ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call ptr %3(ptr noundef %add.ptr.i) #15
  br label %ocfs2_get_lockres_osb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  br label %ocfs2_get_lockres_osb.exit

ocfs2_get_lockres_osb.exit:                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call.i, %if.then.i ], [ %5, %if.end.i ]
  %l_lock = getelementptr i8, ptr %lksb, i32 -44
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  %call7 = tail call i32 @ocfs2_dlm_lock_status(ptr noundef %lksb) #15
  %6 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %call7, label %do.body11 [
    i32 -11, label %if.then
    i32 0, label %do.body19
  ]

if.then:                                          ; preds = %ocfs2_get_lockres_osb.exit
  call void @__sanitizer_cov_trace_pc() #17
  %l_flags.i = getelementptr i8, ptr %lksb, i32 -100
  %7 = ptrtoint ptr %l_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %l_flags.i, align 8
  %and.i = and i32 %8, -3
  tail call fastcc void @lockres_set_flags(ptr noundef %add.ptr.i, i32 noundef %and.i) #15
  br label %out

do.body11:                                        ; preds = %ocfs2_get_lockres_osb.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %9 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606849024, ptr %_m, align 8
  %l_name = getelementptr i8, ptr %lksb, i32 -96
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_locking_ast, i32 noundef 1162, ptr noundef nonnull @.str.66, ptr noundef %l_name, i32 noundef %call7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %cleanup

do.body19:                                        ; preds = %ocfs2_get_lockres_osb.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m20) #15
  %10 = ptrtoint ptr %_m20 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 34816, ptr %_m20, align 8
  %l_name24 = getelementptr i8, ptr %lksb, i32 -96
  %l_action = getelementptr i8, ptr %lksb, i32 -52
  %11 = ptrtoint ptr %l_action to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %l_action, align 8
  %conv26 = zext i8 %12 to i32
  %l_unlock_action = getelementptr i8, ptr %lksb, i32 -51
  %13 = ptrtoint ptr %l_unlock_action to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %l_unlock_action, align 1
  %conv27 = zext i8 %14 to i32
  %l_level = getelementptr i8, ptr %lksb, i32 -56
  %15 = ptrtoint ptr %l_level to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %l_level, align 4
  %conv28 = sext i8 %16 to i32
  %l_requested = getelementptr i8, ptr %lksb, i32 -55
  %17 = ptrtoint ptr %l_requested to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %l_requested, align 1
  %conv29 = sext i8 %18 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m20, ptr noundef nonnull @__func__.ocfs2_locking_ast, i32 noundef 1169, ptr noundef nonnull @.str.67, ptr noundef %l_name24, i32 noundef %conv26, i32 noundef %conv27, i32 noundef %conv28, i32 noundef %conv29) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m20) #15
  %19 = ptrtoint ptr %l_action to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %l_action, align 8
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.181)
  switch i8 %20, label %do.body37 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb35
    i8 3, label %sw.bb36
  ]

sw.bb:                                            ; preds = %do.body19
  %l_flags.i98 = getelementptr i8, ptr %lksb, i32 -100
  %22 = ptrtoint ptr %l_flags.i98 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %l_flags.i98, align 8
  %and.i99 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool.not.i100 = icmp eq i32 %and.i99, 0
  br i1 %tobool.not.i100, label %do.body4.i, label %do.body8.i, !prof !386

do.body4.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 965, 0\0A.popsection", ""() #15, !srcloc !443
  unreachable

do.body8.i:                                       ; preds = %sw.bb
  %and10.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %do.end24.i, label %do.body19.i, !prof !376

do.body19.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 966, 0\0A.popsection", ""() #15, !srcloc !444
  unreachable

do.end24.i:                                       ; preds = %do.body8.i
  %24 = ptrtoint ptr %l_requested to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %l_requested, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i = icmp sgt i8 %25, 0
  %and27.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool28.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true29.i, label %do.end24.i.ocfs2_generic_handle_attach_action.exit_crit_edge

do.end24.i.ocfs2_generic_handle_attach_action.exit_crit_edge: ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_generic_handle_attach_action.exit

land.lhs.true29.i:                                ; preds = %do.end24.i
  %26 = ptrtoint ptr %l_ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %l_ops.i, align 4
  %flags.i = getelementptr inbounds %struct.ocfs2_lock_res_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %and30.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %land.lhs.true29.i.ocfs2_generic_handle_attach_action.exit_crit_edge, label %if.then32.i

land.lhs.true29.i.ocfs2_generic_handle_attach_action.exit_crit_edge: ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_generic_handle_attach_action.exit

if.then32.i:                                      ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #17
  %or1.i.i = or i32 %23, 16
  call fastcc void @lockres_set_flags(ptr noundef %add.ptr.i, i32 noundef %or1.i.i) #15
  br label %ocfs2_generic_handle_attach_action.exit

ocfs2_generic_handle_attach_action.exit:          ; preds = %if.then32.i, %land.lhs.true29.i.ocfs2_generic_handle_attach_action.exit_crit_edge, %do.end24.i.ocfs2_generic_handle_attach_action.exit_crit_edge
  %30 = ptrtoint ptr %l_requested to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %l_requested, align 1
  %32 = ptrtoint ptr %l_level to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %l_level, align 4
  %33 = ptrtoint ptr %l_flags.i98 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %l_flags.i98, align 8
  %or1.i45.i = or i32 %34, 1
  call fastcc void @lockres_set_flags(ptr noundef %add.ptr.i, i32 noundef %or1.i45.i) #15
  %35 = ptrtoint ptr %l_flags.i98 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %l_flags.i98, align 8
  %and.i.i = and i32 %36, -3
  call fastcc void @lockres_set_flags(ptr noundef %add.ptr.i, i32 noundef %and.i.i) #15
  %37 = ptrtoint ptr %l_flags.i98 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %l_flags.i98, align 8
  %and.i103 = and i32 %38, -9
  call fastcc void @lockres_set_flags(ptr noundef %add.ptr.i, i32 noundef %and.i103) #15
  br label %out

sw.bb35:                                          ; preds = %do.body19
  %l_flags.i104 = getelementptr i8, ptr %lksb, i32 -100
  %39 = ptrtoint ptr %l_flags.i104 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %l_flags.i104, align 8
  %and.i105 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %tobool.not.i106 = icmp eq i32 %and.i105, 0
  br i1 %tobool.not.i106, label %do.body4.i107, label %do.body8.i110, !prof !386

do.body4.i107:                                    ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 935, 0\0A.popsection", ""() #15, !srcloc !445
  unreachable

do.body8.i110:                                    ; preds = %sw.bb35
  %and10.i108 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i108)
  %tobool11.not.i109 = icmp eq i32 %and10.i108, 0
  br i1 %tobool11.not.i109, label %do.body21.i, label %do.end26.i, !prof !386

do.body21.i:                                      ; preds = %do.body8.i110
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 936, 0\0A.popsection", ""() #15, !srcloc !446
  unreachable

do.end26.i:                                       ; preds = %do.body8.i110
  %41 = ptrtoint ptr %l_level to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %l_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp.i112 = icmp eq i8 %42, 0
  br i1 %cmp.i112, label %land.lhs.true.i, label %do.end26.i.ocfs2_generic_handle_convert_action.exit_crit_edge

do.end26.i.ocfs2_generic_handle_convert_action.exit_crit_edge: ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_generic_handle_convert_action.exit

land.lhs.true.i:                                  ; preds = %do.end26.i
  %43 = ptrtoint ptr %l_ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %l_ops.i, align 4
  %flags.i114 = getelementptr inbounds %struct.ocfs2_lock_res_ops, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %flags.i114 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i114, align 4
  %and28.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true.i.ocfs2_generic_handle_convert_action.exit_crit_edge, label %if.then30.i

land.lhs.true.i.ocfs2_generic_handle_convert_action.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_generic_handle_convert_action.exit

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %or1.i.i115 = or i32 %40, 16
  call fastcc void @lockres_set_flags(ptr noundef %add.ptr.i, i32 noundef %or1.i.i115) #15
  br label %ocfs2_generic_handle_convert_action.exit

ocfs2_generic_handle_convert_action.exit:         ; preds = %if.then30.i, %land.lhs.true.i.ocfs2_generic_handle_convert_action.exit_crit_edge, %do.end26.i.ocfs2_generic_handle_convert_action.exit_crit_edge
  %47 = ptrtoint ptr %l_requested to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %l_requested, align 1
  %49 = ptrtoint ptr %l_level to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %l_level, align 4
  %50 = ptrtoint ptr %l_flags.i104 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %l_flags.i104, align 8
  %and34.i = and i32 %51, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  %and.i.i117 = and i32 %51, -4097
  %or1.i49.i = or i32 %51, 2048
  %and.i.sink.i = select i1 %tobool35.not.i, i32 %or1.i49.i, i32 %and.i.i117
  call fastcc void @lockres_set_flags(ptr noundef %add.ptr.i, i32 noundef %and.i.sink.i) #15
  %52 = ptrtoint ptr %l_flags.i104 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %l_flags.i104, align 8
  %and.i52.i = and i32 %53, -3
  call fastcc void @lockres_set_flags(ptr noundef %add.ptr.i, i32 noundef %and.i52.i) #15
  br label %out

sw.bb36:                                          ; preds = %do.body19
  %l_flags.i118 = getelementptr i8, ptr %lksb, i32 -100
  %54 = ptrtoint ptr %l_flags.i118 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %l_flags.i118, align 8
  %and.i119 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i119)
  %tobool.not.i120 = icmp eq i32 %and.i119, 0
  br i1 %tobool.not.i120, label %do.body4.i121, label %do.body8.i124, !prof !386

do.body4.i121:                                    ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 919, 0\0A.popsection", ""() #15, !srcloc !447
  unreachable

do.body8.i124:                                    ; preds = %sw.bb36
  %and10.i122 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i122)
  %tobool11.not.i123 = icmp eq i32 %and10.i122, 0
  br i1 %tobool11.not.i123, label %do.body21.i125, label %do.body27.i, !prof !386

do.body21.i125:                                   ; preds = %do.body8.i124
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 920, 0\0A.popsection", ""() #15, !srcloc !448
  unreachable

do.body27.i:                                      ; preds = %do.body8.i124
  %and29.i = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %do.body40.i, label %do.body46.i, !prof !386

do.body40.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #15, !srcloc !449
  unreachable

do.body46.i:                                      ; preds = %do.body27.i
  %l_blocking.i = getelementptr i8, ptr %lksb, i32 -54
  %56 = ptrtoint ptr %l_blocking.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %l_blocking.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp.i126 = icmp slt i8 %57, 1
  br i1 %cmp.i126, label %do.body55.i, label %do.end60.i, !prof !386

do.body55.i:                                      ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 922, 0\0A.popsection", ""() #15, !srcloc !450
  unreachable

do.end60.i:                                       ; preds = %do.body46.i
  %58 = ptrtoint ptr %l_requested to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %l_requested, align 1
  %60 = ptrtoint ptr %l_level to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %l_level, align 4
  %conv62.i = sext i8 %59 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %57)
  %switch.selectcmp.i.i = icmp eq i8 %57, 3
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 3, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %57)
  %switch.selectcmp5.i.i = icmp eq i8 %57, 5
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 0, i32 %switch.select.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.select6.i.i, i32 %conv62.i)
  %cmp65.not.i = icmp slt i32 %switch.select6.i.i, %conv62.i
  br i1 %cmp65.not.i, label %do.end60.i.ocfs2_generic_handle_downconvert_action.exit_crit_edge, label %if.then67.i

do.end60.i.ocfs2_generic_handle_downconvert_action.exit_crit_edge: ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_generic_handle_downconvert_action.exit

if.then67.i:                                      ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %l_blocking.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %l_blocking.i, align 2
  %and.i.i129 = and i32 %55, -5
  call fastcc void @lockres_set_flags(ptr noundef %add.ptr.i, i32 noundef %and.i.i129) #15
  br label %ocfs2_generic_handle_downconvert_action.exit

ocfs2_generic_handle_downconvert_action.exit:     ; preds = %if.then67.i, %do.end60.i.ocfs2_generic_handle_downconvert_action.exit_crit_edge
  %62 = ptrtoint ptr %l_flags.i118 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %l_flags.i118, align 8
  %and.i81.i = and i32 %63, -3
  call fastcc void @lockres_set_flags(ptr noundef %add.ptr.i, i32 noundef %and.i81.i) #15
  br label %out

do.body37:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m38) #15
  %64 = ptrtoint ptr %_m38 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 1152921504606849024, ptr %_m38, align 8
  %conv45 = zext i8 %20 to i32
  %l_flags = getelementptr i8, ptr %lksb, i32 -100
  %65 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %l_flags, align 8
  %67 = ptrtoint ptr %l_unlock_action to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %l_unlock_action, align 1
  %conv47 = zext i8 %68 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m38, ptr noundef nonnull @__func__.ocfs2_locking_ast, i32 noundef 1186, ptr noundef nonnull @.str.68, ptr noundef %l_name24, i32 noundef %conv45, i32 noundef %66, i32 noundef %conv47) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m38) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #15, !srcloc !451
  unreachable

out:                                              ; preds = %ocfs2_generic_handle_downconvert_action.exit, %ocfs2_generic_handle_convert_action.exit, %ocfs2_generic_handle_attach_action.exit, %if.then
  %l_action57 = getelementptr i8, ptr %lksb, i32 -52
  %69 = ptrtoint ptr %l_action57 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %l_action57, align 8
  %l_unlock_action58 = getelementptr i8, ptr %lksb, i32 -51
  %70 = ptrtoint ptr %l_unlock_action58 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %l_unlock_action58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %cmp60 = icmp eq i8 %71, 1
  br i1 %cmp60, label %if.then62, label %out.if.end64_crit_edge

out.if.end64_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then62:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %72 = ptrtoint ptr %l_unlock_action58 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %l_unlock_action58, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %out.if.end64_crit_edge
  %l_pending_gen = getelementptr i8, ptr %lksb, i32 -48
  %73 = ptrtoint ptr %l_pending_gen to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %l_pending_gen, align 4
  call fastcc void @__lockres_clear_pending(ptr noundef %add.ptr.i, i32 noundef %74, ptr noundef %retval.0.i)
  %l_event = getelementptr i8, ptr %lksb, i32 84
  call void @__wake_up(ptr noundef %l_event, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %do.body11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_blocking_ast(ptr noundef %lksb, i32 noundef %level) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m.i = alloca i64, align 8
  %_m36.i = alloca i64, align 8
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %lksb, i32 -132
  %l_ops.i = getelementptr i8, ptr %lksb, i32 -128
  %0 = ptrtoint ptr %l_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l_ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call ptr %3(ptr noundef %add.ptr.i) #15
  br label %ocfs2_get_lockres_osb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  br label %ocfs2_get_lockres_osb.exit

ocfs2_get_lockres_osb.exit:                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call.i, %if.then.i ], [ %5, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level)
  %cmp = icmp slt i32 %level, 1
  br i1 %cmp, label %do.body3, label %do.body9, !prof !386

do.body3:                                         ; preds = %ocfs2_get_lockres_osb.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1120, 0\0A.popsection", ""() #15, !srcloc !452
  unreachable

do.body9:                                         ; preds = %ocfs2_get_lockres_osb.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 34816, ptr %_m, align 8
  %l_name = getelementptr i8, ptr %lksb, i32 -96
  %l_level = getelementptr i8, ptr %lksb, i32 -56
  %l_type = getelementptr i8, ptr %lksb, i32 -53
  %7 = ptrtoint ptr %l_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %l_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %8)
  %cmp.i = icmp ugt i8 %8, 12
  br i1 %cmp.i, label %do.body2.i, label %ocfs2_lock_type_string.exit, !prof !386

do.body2.i:                                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/ocfs2_lockid.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #15, !srcloc !453
  unreachable

ocfs2_lock_type_string.exit:                      ; preds = %do.body9
  %conv12 = zext i8 %8 to i32
  %9 = ptrtoint ptr %l_level to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %l_level, align 4
  %conv = sext i8 %10 to i32
  %arrayidx.i = getelementptr [13 x ptr], ptr @ocfs2_lock_type_strings, i32 0, i32 %conv12
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_blocking_ast, i32 noundef 1124, ptr noundef nonnull @.str.69, ptr noundef %l_name, i32 noundef %level, i32 noundef %conv, ptr noundef %12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  %l_flags = getelementptr i8, ptr %lksb, i32 -100
  %13 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %l_flags, align 8
  %and17 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body22, label %ocfs2_lock_type_string.exit.cleanup_crit_edge

ocfs2_lock_type_string.exit.cleanup_crit_edge:    ; preds = %ocfs2_lock_type_string.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body22:                                        ; preds = %ocfs2_lock_type_string.exit
  %l_lock = getelementptr i8, ptr %lksb, i32 -44
  %call26 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %15 = ptrtoint ptr %l_lock to i32
  call void @__asan_load4_noabort(i32 %15)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %l_lock, align 4
  %16 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !386

do.body4.i:                                       ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 983, 0\0A.popsection", ""() #15, !srcloc !454
  unreachable

do.end9.i:                                        ; preds = %do.body22
  %l_blocking.i = getelementptr i8, ptr %lksb, i32 -54
  %17 = ptrtoint ptr %l_blocking.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %l_blocking.i, align 2
  %conv.i = sext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %level)
  %cmp.i51 = icmp slt i32 %conv.i, %level
  br i1 %cmp.i51, label %if.then11.i, label %do.end9.i.do.body23.i_crit_edge

do.end9.i.do.body23.i_crit_edge:                  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body23.i

if.then11.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %level)
  %switch.selectcmp.i.i = icmp eq i32 %level, 3
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 3, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %level)
  %switch.selectcmp5.i.i = icmp eq i32 %level, 5
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 0, i32 %switch.select.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %switch.selectcmp.i56.i = icmp eq i8 %18, 3
  %switch.select.i57.i = select i1 %switch.selectcmp.i56.i, i32 3, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %18)
  %switch.selectcmp5.i58.i = icmp eq i8 %18, 5
  %switch.select6.i59.i = select i1 %switch.selectcmp5.i58.i, i32 0, i32 %switch.select.i57.i
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.select6.i.i, i32 %switch.select6.i59.i)
  %cmp16.i = icmp ult i32 %switch.select6.i.i, %switch.select6.i59.i
  %conv20.i = trunc i32 %level to i8
  %19 = ptrtoint ptr %l_blocking.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv20.i, ptr %l_blocking.i, align 2
  %spec.select.i = zext i1 %cmp16.i to i32
  br label %do.body23.i

do.body23.i:                                      ; preds = %if.then11.i, %do.end9.i.do.body23.i_crit_edge
  %needs_downconvert.1.i = phi i32 [ 0, %do.end9.i.do.body23.i_crit_edge ], [ %spec.select.i, %if.then11.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #15
  %20 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 34816, ptr %_m.i, align 8
  %21 = ptrtoint ptr %l_level to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %l_level, align 4
  %conv26.i = sext i8 %22 to i32
  %23 = ptrtoint ptr %l_blocking.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %l_blocking.i, align 2
  %conv28.i = sext i8 %24 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_generic_handle_bast, i32 noundef 999, ptr noundef nonnull @.str.70, ptr noundef %l_name, i32 noundef %level, i32 noundef %conv26.i, i32 noundef %conv28.i, i32 noundef %needs_downconvert.1.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %needs_downconvert.1.i)
  %tobool32.not.i = icmp eq i32 %needs_downconvert.1.i, 0
  br i1 %tobool32.not.i, label %ocfs2_generic_handle_bast.exit.thread, label %if.then33

ocfs2_generic_handle_bast.exit.thread:            ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m36.i) #15
  %25 = ptrtoint ptr %_m36.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 2048, ptr %_m36.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m36.i, ptr noundef nonnull @__func__.ocfs2_generic_handle_bast, i32 noundef 1003, ptr noundef nonnull @.str.71, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m36.i) #15
  br label %if.end34

if.then33:                                        ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %l_flags, align 8
  %or1.i.i = or i32 %27, 4
  call fastcc void @lockres_set_flags(ptr noundef %add.ptr.i, i32 noundef %or1.i.i) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m36.i) #15
  %28 = ptrtoint ptr %_m36.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 2048, ptr %_m36.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m36.i, ptr noundef nonnull @__func__.ocfs2_generic_handle_bast, i32 noundef 1003, ptr noundef nonnull @.str.71, i32 noundef %needs_downconvert.1.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m36.i) #15
  call fastcc void @ocfs2_schedule_blocked_lock(ptr noundef %retval.0.i, ptr noundef %add.ptr.i)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %ocfs2_generic_handle_bast.exit.thread
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call26) #15
  %l_event = getelementptr i8, ptr %lksb, i32 84
  call void @__wake_up(ptr noundef %l_event, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  %dc_task_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %retval.0.i, i32 0, i32 75
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %dc_task_lock.i) #15
  %dc_wake_sequence.i = getelementptr inbounds %struct.ocfs2_super, ptr %retval.0.i, i32 0, i32 78
  %29 = ptrtoint ptr %dc_wake_sequence.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dc_wake_sequence.i, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %dc_wake_sequence.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dc_task_lock.i, i32 noundef %call2.i) #15
  %dc_event.i = getelementptr inbounds %struct.ocfs2_super, ptr %retval.0.i, i32 0, i32 77
  call void @__wake_up(ptr noundef %dc_event.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %ocfs2_lock_type_string.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_unlock_ast(ptr noundef %lksb, i32 noundef %error) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m13 = alloca i64, align 8
  %_m29 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %lksb, i32 -132
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 34816, ptr %_m, align 8
  %l_name = getelementptr i8, ptr %lksb, i32 -96
  %l_unlock_action = getelementptr i8, ptr %lksb, i32 -51
  %1 = ptrtoint ptr %l_unlock_action to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %l_unlock_action, align 1
  %conv = zext i8 %2 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_unlock_ast, i32 noundef 1216, ptr noundef nonnull @.str.73, ptr noundef %l_name, i32 noundef %conv) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  %l_lock = getelementptr i8, ptr %lksb, i32 -44
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool10.not = icmp eq i32 %error, 0
  br i1 %tobool10.not, label %if.end25, label %do.body12

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m13) #15
  %3 = ptrtoint ptr %_m13 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606849024, ptr %_m13, align 8
  %4 = ptrtoint ptr %l_unlock_action to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %l_unlock_action, align 1
  %conv20 = zext i8 %5 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m13, ptr noundef nonnull @__func__.ocfs2_unlock_ast, i32 noundef 1222, ptr noundef nonnull @.str.74, i32 noundef %error, ptr noundef %l_name, i32 noundef %conv20) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m13) #15
  br label %cleanup

if.end25:                                         ; preds = %entry
  %6 = ptrtoint ptr %l_unlock_action to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %l_unlock_action, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.182)
  switch i8 %7, label %do.body44 [
    i8 1, label %do.body28
    i8 2, label %sw.bb43
  ]

do.body28:                                        ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m29) #15
  %9 = ptrtoint ptr %_m29 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 2048, ptr %_m29, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m29, ptr noundef nonnull @__func__.ocfs2_unlock_ast, i32 noundef 1229, ptr noundef nonnull @.str.75, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m29) #15
  %l_action = getelementptr i8, ptr %lksb, i32 -52
  %10 = ptrtoint ptr %l_action to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %l_action, align 8
  %l_flags = getelementptr i8, ptr %lksb, i32 -100
  %11 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %l_flags, align 8
  %and38 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body28.sw.epilog_crit_edge, label %if.then40

do.body28.sw.epilog_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then40:                                        ; preds = %do.body28
  %l_ops.i = getelementptr i8, ptr %lksb, i32 -128
  %13 = ptrtoint ptr %l_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %l_ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call ptr %16(ptr noundef %add.ptr.i) #15
  br label %ocfs2_get_lockres_osb.exit

if.end.i:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  br label %ocfs2_get_lockres_osb.exit

ocfs2_get_lockres_osb.exit:                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call.i, %if.then.i ], [ %18, %if.end.i ]
  %dc_task_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %retval.0.i, i32 0, i32 75
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %dc_task_lock.i) #15
  %dc_wake_sequence.i = getelementptr inbounds %struct.ocfs2_super, ptr %retval.0.i, i32 0, i32 78
  %19 = ptrtoint ptr %dc_wake_sequence.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dc_wake_sequence.i, align 4
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %dc_wake_sequence.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dc_task_lock.i, i32 noundef %call2.i) #15
  %dc_event.i = getelementptr inbounds %struct.ocfs2_super, ptr %retval.0.i, i32 0, i32 77
  call void @__wake_up(ptr noundef %dc_event.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %l_level = getelementptr i8, ptr %lksb, i32 -56
  %21 = ptrtoint ptr %l_level to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %l_level, align 4
  br label %sw.epilog

do.body44:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1240, 0\0A.popsection", ""() #15, !srcloc !455
  unreachable

sw.epilog:                                        ; preds = %sw.bb43, %ocfs2_get_lockres_osb.exit, %do.body28.sw.epilog_crit_edge
  %l_flags.i = getelementptr i8, ptr %lksb, i32 -100
  %22 = ptrtoint ptr %l_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %l_flags.i, align 8
  %and.i = and i32 %23, -3
  call fastcc void @lockres_set_flags(ptr noundef %add.ptr.i, i32 noundef %and.i) #15
  %24 = ptrtoint ptr %l_unlock_action to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %l_unlock_action, align 1
  %l_event = getelementptr i8, ptr %lksb, i32 84
  call void @__wake_up(ptr noundef %l_event, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.body12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock, i32 noundef %call5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_dlm_lock_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__lockres_clear_pending(ptr noundef %lockres, i32 noundef %generation, ptr noundef %osb) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_lock = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %l_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %l_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end7, !prof !386

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1070, 0\0A.popsection", ""() #15, !srcloc !456
  unreachable

do.end7:                                          ; preds = %entry
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %2 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %l_flags, align 8
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.end7.if.end16_crit_edge, label %lor.lhs.false

do.end7.if.end16_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

lor.lhs.false:                                    ; preds = %do.end7
  %l_pending_gen = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 15
  %4 = ptrtoint ptr %l_pending_gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %l_pending_gen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %generation)
  %cmp.not = icmp eq i32 %5, %generation
  br i1 %cmp.not, label %if.end10, label %lor.lhs.false.if.end16_crit_edge

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.end10:                                         ; preds = %lor.lhs.false
  %and.i = and i32 %3, -1025
  tail call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %and.i) #15
  %6 = ptrtoint ptr %l_pending_gen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %l_pending_gen, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %l_pending_gen, align 4
  %8 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %l_flags, align 8
  %and13 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end10.if.end16_crit_edge, label %if.then15

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %dc_task_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 75
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dc_task_lock.i) #15
  %dc_wake_sequence.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 78
  %10 = ptrtoint ptr %dc_wake_sequence.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dc_wake_sequence.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %dc_wake_sequence.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dc_task_lock.i, i32 noundef %call2.i) #15
  %dc_event.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 77
  tail call void @__wake_up(ptr noundef %dc_event.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end10.if.end16_crit_edge, %lor.lhs.false.if.end16_crit_edge, %do.end7.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %newflags) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_lock = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %l_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %l_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !386

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 893, 0\0A.popsection", ""() #15, !srcloc !457
  unreachable

do.end9:                                          ; preds = %entry
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %2 = ptrtoint ptr %l_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %newflags, ptr %l_flags, align 8
  %l_mask_waiters = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 3
  %3 = ptrtoint ptr %l_mask_waiters to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %l_mask_waiters, align 8
  %cmp.not43 = icmp eq ptr %4, %l_mask_waiters
  br i1 %cmp.not43, label %do.end9.for.end_crit_edge, label %for.body.lr.ph

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end9
  %5 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mw.044 = phi ptr [ %4, %for.body.lr.ph ], [ %tmp.046, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %mw.044 to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.046 = load ptr, ptr %mw.044, align 8
  %7 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %l_flags, align 8
  %mw_mask = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw.044, i32 0, i32 3
  %9 = ptrtoint ptr %mw_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mw_mask, align 4
  %and = and i32 %10, %8
  %mw_goal = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw.044, i32 0, i32 4
  %11 = ptrtoint ptr %mw_goal to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mw_goal, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %12)
  %cmp20.not = icmp eq i32 %and, %12
  br i1 %cmp20.not, label %if.end22, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end22:                                         ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mw.044) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end22.list_del_init.exit_crit_edge

if.end22.list_del_init.exit_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mw.044, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %mw.044 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mw.044, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end22.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %mw.044 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %mw.044, ptr %mw.044, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %mw.044, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %mw.044, ptr %prev.i3.i, align 4
  %mw_status = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw.044, i32 0, i32 1
  %21 = ptrtoint ptr %mw_status to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %mw_status, align 8
  %mw_complete = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw.044, i32 0, i32 2
  tail call void @complete(ptr noundef %mw_complete) #15
  %22 = ptrtoint ptr %l_mask_waiters to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %l_mask_waiters, align 4
  %cmp.i.not.i = icmp eq ptr %23, %l_mask_waiters
  br i1 %cmp.i.not.i, label %list_del_init.exit.ocfs2_track_lock_wait.exit_crit_edge, label %if.end.i

list_del_init.exit.ocfs2_track_lock_wait.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_track_lock_wait.exit

if.end.i:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %mw_lock_start.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %mw_lock_start.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %mw_lock_start.i, align 8
  %call.i.i41 = tail call i64 @ktime_mono_to_any(i64 noundef %25, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i41)
  %cmp8.i.i.i = icmp slt i64 %call.i.i41, 0
  %26 = tail call i64 @llvm.abs.i64(i64 %call.i.i41, i1 false) #15
  %27 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %26, i32 0) #18, !srcloc !397
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %27, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %27, 1
  %28 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %26, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #18, !srcloc !398
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %28, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  br label %ocfs2_track_lock_wait.exit

ocfs2_track_lock_wait.exit:                       ; preds = %if.end.i, %list_del_init.exit.ocfs2_track_lock_wait.exit_crit_edge
  %cond213.i.i.sink.i = phi i64 [ %cond213.i.i.i, %if.end.i ], [ 0, %list_del_init.exit.ocfs2_track_lock_wait.exit_crit_edge ]
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %cond213.i.i.sink.i, ptr %5, align 8
  br label %for.inc

for.inc:                                          ; preds = %ocfs2_track_lock_wait.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.046, %l_mask_waiters
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end9.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_mono_to_any(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_schedule_blocked_lock(ptr noundef %osb, ptr noundef %lockres) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_lock = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %l_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %l_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !386

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4353, 0\0A.popsection", ""() #15, !srcloc !458
  unreachable

do.end9:                                          ; preds = %entry
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %2 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %l_flags, align 8
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end20, label %do.body12

do.body12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 34816, ptr %_m, align 8
  %l_name = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_schedule_blocked_lock, i32 noundef 4360, ptr noundef nonnull @.str.72, ptr noundef %l_name, i32 noundef %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %cleanup

if.end20:                                         ; preds = %do.end9
  %or1.i = or i32 %3, 256
  tail call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %or1.i) #15
  %dc_task_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 75
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dc_task_lock) #15
  %l_blocked_list = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 2
  %5 = ptrtoint ptr %l_blocked_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %l_blocked_list, align 4
  %cmp.i.not = icmp eq ptr %6, %l_blocked_list
  br i1 %cmp.i.not, label %if.then31, label %if.end20.if.end33_crit_edge

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then31:                                        ; preds = %if.end20
  %blocked_lock_list = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 80
  %prev.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 80, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l_blocked_list, ptr noundef %8, ptr noundef %blocked_lock_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then31.list_add_tail.exit_crit_edge

if.then31.list_add_tail.exit_crit_edge:           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %l_blocked_list, ptr %prev.i, align 4
  %10 = ptrtoint ptr %l_blocked_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %blocked_lock_list, ptr %l_blocked_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %l_blocked_list, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then31.list_add_tail.exit_crit_edge
  %blocked_lock_count = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 81
  %13 = ptrtoint ptr %blocked_lock_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %blocked_lock_count, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %blocked_lock_count, align 4
  br label %if.end33

if.end33:                                         ; preds = %list_add_tail.exit, %if.end20.if.end33_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dc_task_lock, i32 noundef %call24) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.body12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__lockres_remove_mask_waiter(ptr noundef %lockres, ptr noundef %mw) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_lock = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %l_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %l_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !386

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1426, 0\0A.popsection", ""() #15, !srcloc !459
  unreachable

do.end9:                                          ; preds = %entry
  %2 = ptrtoint ptr %mw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mw, align 4
  %cmp.i.not = icmp eq ptr %3, %mw
  br i1 %cmp.i.not, label %do.end9.if.end16_crit_edge, label %if.then12

do.end9.if.end16_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then12:                                        ; preds = %do.end9
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %4 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %l_flags, align 8
  %mw_mask = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 3
  %6 = ptrtoint ptr %mw_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mw_mask, align 4
  %and = and i32 %7, %5
  %mw_goal = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 4
  %8 = ptrtoint ptr %mw_goal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mw_goal, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %9)
  %cmp.not = icmp eq i32 %and, %9
  %spec.select = select i1 %cmp.not, i32 0, i32 -16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mw) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then12.list_del_init.exit_crit_edge

if.then12.list_del_init.exit_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mw, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %mw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mw, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then12.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %mw to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %mw, ptr %mw, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %mw, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %mw, ptr %prev.i3.i, align 4
  %mw_complete = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 2
  %18 = ptrtoint ptr %mw_complete to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %mw_complete, align 4
  %wait.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %mw, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @init_completion.__key) #15
  %l_mask_waiters.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 3
  %19 = ptrtoint ptr %l_mask_waiters.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %l_mask_waiters.i, align 4
  %cmp.i.not.i = icmp eq ptr %20, %l_mask_waiters.i
  br i1 %cmp.i.not.i, label %list_del_init.exit.ocfs2_track_lock_wait.exit_crit_edge, label %if.end.i

list_del_init.exit.ocfs2_track_lock_wait.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_track_lock_wait.exit

if.end.i:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %mw_lock_start.i = getelementptr inbounds %struct.ocfs2_mask_waiter, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %mw_lock_start.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %mw_lock_start.i, align 8
  %call.i.i23 = tail call i64 @ktime_mono_to_any(i64 noundef %22, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i23)
  %cmp8.i.i.i = icmp slt i64 %call.i.i23, 0
  %23 = tail call i64 @llvm.abs.i64(i64 %call.i.i23, i1 false) #15
  %24 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %23, i32 0) #18, !srcloc !397
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %24, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %24, 1
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %23, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #18, !srcloc !398
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %25, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  br label %ocfs2_track_lock_wait.exit

ocfs2_track_lock_wait.exit:                       ; preds = %if.end.i, %list_del_init.exit.ocfs2_track_lock_wait.exit_crit_edge
  %cond213.i.i.sink.i = phi i64 [ %cond213.i.i.i, %if.end.i ], [ 0, %list_del_init.exit.ocfs2_track_lock_wait.exit_crit_edge ]
  %26 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 22
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %cond213.i.i.sink.i, ptr %26, align 8
  br label %if.end16

if.end16:                                         ; preds = %ocfs2_track_lock_wait.exit, %do.end9.if.end16_crit_edge
  %ret.1 = phi i32 [ 0, %do.end9.if.end16_crit_edge ], [ %spec.select, %ocfs2_track_lock_wait.exit ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_prepare_cancel_convert(ptr noundef %lockres) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m43 = alloca i64, align 8
  %_m50 = alloca i64, align 8
  %_m66 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l_lock = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %l_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %l_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end7, !prof !386

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3689, 0\0A.popsection", ""() #15, !srcloc !460
  unreachable

do.end7:                                          ; preds = %entry
  %l_unlock_action = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 14
  %2 = ptrtoint ptr %l_unlock_action to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %l_unlock_action, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %do.body10, label %do.body16

do.body10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 34816, ptr %_m, align 8
  %l_name = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_prepare_cancel_convert, i32 noundef 3695, ptr noundef nonnull @.str.80, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %return

do.body16:                                        ; preds = %do.end7
  %l_action = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 13
  %5 = ptrtoint ptr %l_action to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %l_action, align 8
  %7 = add i8 %6, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %7)
  %8 = icmp ult i8 %7, -2
  br i1 %8, label %do.body31, label %do.end36, !prof !386

do.body31:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3701, 0\0A.popsection", ""() #15, !srcloc !461
  unreachable

do.end36:                                         ; preds = %do.body16
  %9 = ptrtoint ptr %l_unlock_action to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %l_unlock_action, align 1
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %10 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %l_flags, align 8
  %and39 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body42, label %do.body65

do.body42:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m43) #15
  %12 = ptrtoint ptr %_m43 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606849024, ptr %_m43, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m43, ptr noundef nonnull @__func__.ocfs2_prepare_cancel_convert, i32 noundef 3708, ptr noundef nonnull @.str.81) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m43) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m50) #15
  %13 = ptrtoint ptr %_m50 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1152921504606849024, ptr %_m50, align 8
  %l_name54 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  %14 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %l_flags, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m50, ptr noundef nonnull @__func__.ocfs2_prepare_cancel_convert, i32 noundef 3708, ptr noundef nonnull @.str.82, ptr noundef %l_name54, i32 noundef %15) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m50) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3708, 0\0A.popsection", ""() #15, !srcloc !462
  unreachable

do.body65:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m66) #15
  %16 = ptrtoint ptr %_m66 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 34816, ptr %_m66, align 8
  %l_name70 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m66, ptr noundef nonnull @__func__.ocfs2_prepare_cancel_convert, i32 noundef 3710, ptr noundef nonnull @.str.83, ptr noundef %l_name70) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m66) #15
  br label %return

return:                                           ; preds = %do.body65, %do.body10
  %retval.0 = phi i32 [ 0, %do.body10 ], [ 1, %do.body65 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_cancel_convert(ptr nocapture noundef readonly %osb, ptr noundef %lockres) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m7 = alloca i64, align 8
  %_m23 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cconn = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 65
  %0 = ptrtoint ptr %cconn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cconn, align 8
  %l_lksb = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 17
  %call = tail call i32 @ocfs2_dlm_unlock(ptr noundef %1, ptr noundef %l_lksb, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.body22_crit_edge, label %do.body

entry.do.body22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body22

do.body:                                          ; preds = %entry
  %l_type = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 12
  %2 = ptrtoint ptr %l_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %l_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp.not = icmp eq i8 %3, 5
  br i1 %cmp.not, label %do.body6, label %do.body3

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1152921504606849024, ptr %_m, align 8
  %l_name = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_cancel_convert, i32 noundef 3723, ptr noundef nonnull @.str.27, i32 noundef %call, ptr noundef nonnull @.str.84, ptr noundef %l_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %do.end20

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m7) #15
  %5 = ptrtoint ptr %_m7 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1152921504606849024, ptr %_m7, align 8
  %l_name11 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  %arrayidx.i = getelementptr %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6, i32 18
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %inode_blkno_be.0.copyload.i = load i64, ptr %arrayidx.i, align 2
  %conv14 = trunc i64 %inode_blkno_be.0.copyload.i to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m7, ptr noundef nonnull @__func__.ocfs2_cancel_convert, i32 noundef 3723, ptr noundef nonnull @.str.29, i32 noundef %call, ptr noundef nonnull @.str.84, i32 noundef 17, ptr noundef %l_name11, i32 noundef %conv14) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m7) #15
  br label %do.end20

do.end20:                                         ; preds = %do.body6, %do.body3
  %l_lock.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock.i) #15
  %l_flags.i.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %7 = ptrtoint ptr %l_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %l_flags.i.i, align 8
  %and.i.i = and i32 %8, -3
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %and.i.i) #15
  %9 = ptrtoint ptr %l_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %l_flags.i.i, align 8
  %and.i13.i = and i32 %10, -2049
  call fastcc void @lockres_set_flags(ptr noundef %lockres, i32 noundef %and.i13.i) #15
  %l_unlock_action.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 14
  %11 = ptrtoint ptr %l_unlock_action.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %l_unlock_action.i, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock.i, i32 noundef %call2.i) #15
  %l_event.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 18
  call void @__wake_up(ptr noundef %l_event.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %do.body22

do.body22:                                        ; preds = %do.end20, %entry.do.body22_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m23) #15
  %12 = ptrtoint ptr %_m23 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 34816, ptr %_m23, align 8
  %l_name27 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m23, ptr noundef nonnull @__func__.ocfs2_cancel_convert, i32 noundef 3727, ptr noundef nonnull @.str.83, ptr noundef %l_name27) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m23) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_dlm_unlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_extent_map_trunc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_inode_block(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_refresh_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_set_inode_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_dlm_debug_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__seq_open_private(ptr noundef %file, ptr noundef nonnull @ocfs2_dlm_seq_ops, i32 noundef 792) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #15
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1152921504606849024, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_dlm_debug_open, i32 noundef 3282, ptr noundef nonnull @.str.17, i64 noundef -12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #15
  br label %cleanup

if.end12:                                         ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %1 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_private, align 4
  %osb_dlm_debug = getelementptr inbounds %struct.ocfs2_super, ptr %2, i32 0, i32 72
  %3 = ptrtoint ptr %osb_dlm_debug to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %osb_dlm_debug, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %4, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #15, !srcloc !418
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end12.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !386

if.end12.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end12
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.ocfs2_get_dlm_debug.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !376

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.ocfs2_get_dlm_debug.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_get_dlm_debug.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end12.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end12.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %.sink.i.i.i.i.i) #15
  br label %ocfs2_get_dlm_debug.exit

ocfs2_get_dlm_debug.exit:                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.ocfs2_get_dlm_debug.exit_crit_edge
  %7 = ptrtoint ptr %osb_dlm_debug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %osb_dlm_debug, align 4
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %call, align 8
  %l_debug_list = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, ptr %call, i32 0, i32 1, i32 19
  %10 = ptrtoint ptr %l_debug_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %l_debug_list, ptr %l_debug_list, align 4
  %prev.i = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, ptr %call, i32 0, i32 1, i32 19, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %l_debug_list, ptr %prev.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #15
  %12 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 2048, ptr %_m.i, align 8
  %l_name.i = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, ptr %call, i32 0, i32 1, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_add_lockres_tracking, i32 noundef 409, ptr noundef nonnull @.str.49, ptr noundef %l_name.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #15
  call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_dlm_tracking_lock) #15
  %d_lockres_tracking.i = getelementptr inbounds %struct.ocfs2_dlm_debug, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %d_lockres_tracking.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_lockres_tracking.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %l_debug_list, ptr noundef %d_lockres_tracking.i, ptr noundef %14) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %ocfs2_get_dlm_debug.exit.ocfs2_add_lockres_tracking.exit_crit_edge

ocfs2_get_dlm_debug.exit.ocfs2_add_lockres_tracking.exit_crit_edge: ; preds = %ocfs2_get_dlm_debug.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_add_lockres_tracking.exit

if.end.i.i.i:                                     ; preds = %ocfs2_get_dlm_debug.exit
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %l_debug_list, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %l_debug_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %l_debug_list, align 4
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %d_lockres_tracking.i, ptr %prev.i, align 4
  %18 = ptrtoint ptr %d_lockres_tracking.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %l_debug_list, ptr %d_lockres_tracking.i, align 4
  br label %ocfs2_add_lockres_tracking.exit

ocfs2_add_lockres_tracking.exit:                  ; preds = %if.end.i.i.i, %ocfs2_get_dlm_debug.exit.ocfs2_add_lockres_tracking.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_dlm_tracking_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %ocfs2_add_lockres_tracking.exit, %do.body
  %retval.0 = phi i32 [ 0, %ocfs2_add_lockres_tracking.exit ], [ -12, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_dlm_debug_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_dlm_tracking_lock) #15
  %l_debug_list.i = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, ptr %3, i32 0, i32 1, i32 19
  %4 = ptrtoint ptr %l_debug_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %l_debug_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %l_debug_list.i
  br i1 %cmp.i.not.i, label %entry.ocfs2_remove_lockres_tracking.exit_crit_edge, label %if.then.i

entry.ocfs2_remove_lockres_tracking.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_remove_lockres_tracking.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l_debug_list.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, ptr %3, i32 0, i32 1, i32 19, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %l_debug_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %l_debug_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %12 = ptrtoint ptr %l_debug_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %l_debug_list.i, ptr %l_debug_list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, ptr %3, i32 0, i32 1, i32 19, i32 1
  %13 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %l_debug_list.i, ptr %prev.i3.i.i, align 4
  br label %ocfs2_remove_lockres_tracking.exit

ocfs2_remove_lockres_tracking.exit:               ; preds = %list_del_init.exit.i, %entry.ocfs2_remove_lockres_tracking.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_dlm_tracking_lock) #15
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %ocfs2_remove_lockres_tracking.exit.ocfs2_put_dlm_debug.exit_crit_edge, label %if.then.i3

ocfs2_remove_lockres_tracking.exit.ocfs2_put_dlm_debug.exit_crit_edge: ; preds = %ocfs2_remove_lockres_tracking.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_put_dlm_debug.exit

if.then.i3:                                       ; preds = %ocfs2_remove_lockres_tracking.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !420
  tail call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #15
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 1, ptr nonnull elementtype(i32) %15) #15, !srcloc !421
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ocfs2_put_dlm_debug.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !376

if.end5.i.i.i.i.i.ocfs2_put_dlm_debug.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_put_dlm_debug.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef 3) #15
  br label %ocfs2_put_dlm_debug.exit

if.then.i.i:                                      ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !422
  tail call void @kfree(ptr noundef nonnull %15) #15
  br label %ocfs2_put_dlm_debug.exit

ocfs2_put_dlm_debug.exit:                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ocfs2_put_dlm_debug.exit_crit_edge, %ocfs2_remove_lockres_tracking.exit.ocfs2_put_dlm_debug.exit_crit_edge
  %call = tail call i32 @seq_release_private(ptr noundef %inode, ptr noundef %file) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ocfs2_dlm_seq_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_dlm_tracking_lock) #15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @ocfs2_dlm_tracking_lock, align 4
  %4 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !386

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3058, 0\0A.popsection", ""() #15, !srcloc !463
  unreachable

do.end9.i:                                        ; preds = %entry
  %l_debug_list.i = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, ptr %1, i32 0, i32 1, i32 19
  %d_lockres_tracking.i = getelementptr inbounds %struct.ocfs2_dlm_debug, ptr %3, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end23.i.for.cond.i_crit_edge, %do.end9.i
  %.pn.in.i = phi ptr [ %l_debug_list.i, %do.end9.i ], [ %.pn.i, %if.end23.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %l_debug_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %cmp15.i = icmp eq ptr %.pn.i, %d_lockres_tracking.i
  br i1 %cmp15.i, label %do.body17.i, label %if.end23.i

do.body17.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #15
  %6 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 2048, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_dlm_next_res, i32 noundef 3063, ptr noundef nonnull @.str.100, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #15
  br label %if.end

if.end23.i:                                       ; preds = %for.body.i
  %l_ops.i = getelementptr i8, ptr %.pn.i, i32 -264
  %7 = ptrtoint ptr %l_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %l_ops.i, align 4
  %cmp24.not.i = icmp eq ptr %8, null
  br i1 %cmp24.not.i, label %if.end23.i.for.cond.i_crit_edge, label %ocfs2_dlm_next_res.exit

if.end23.i.for.cond.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

ocfs2_dlm_next_res.exit:                          ; preds = %if.end23.i
  %iter.0.le.i = getelementptr i8, ptr %.pn.i, i32 -268
  %tobool.not = icmp eq ptr %iter.0.le.i, null
  br i1 %tobool.not, label %ocfs2_dlm_next_res.exit.if.end_crit_edge, label %if.then

ocfs2_dlm_next_res.exit.if.end_crit_edge:         ; preds = %ocfs2_dlm_next_res.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %ocfs2_dlm_next_res.exit
  call void @__sanitizer_cov_trace_pc() #17
  %p_tmp_res = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, ptr %1, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %p_tmp_res, ptr %iter.0.le.i, i32 392)
  br label %if.end

if.end:                                           ; preds = %if.then, %ocfs2_dlm_next_res.exit.if.end_crit_edge, %do.body17.i, %for.cond.i.if.end_crit_edge
  %iter.0 = phi ptr [ %p_tmp_res, %if.then ], [ null, %ocfs2_dlm_next_res.exit.if.end_crit_edge ], [ null, %do.body17.i ], [ null, %for.cond.i.if.end_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_dlm_tracking_lock) #15
  ret ptr %iter.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ocfs2_dlm_seq_stop(ptr nocapture noundef %m, ptr nocapture noundef %v) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ocfs2_dlm_seq_next(ptr nocapture noundef readonly %m, ptr noundef readonly %v, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_dlm_tracking_lock) #15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @ocfs2_dlm_tracking_lock, align 4
  %4 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !386

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3058, 0\0A.popsection", ""() #15, !srcloc !463
  unreachable

do.end9.i:                                        ; preds = %entry
  %l_debug_list.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 19
  %d_lockres_tracking.i = getelementptr inbounds %struct.ocfs2_dlm_debug, ptr %3, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end23.i.for.cond.i_crit_edge, %do.end9.i
  %.pn.in.i = phi ptr [ %l_debug_list.i, %do.end9.i ], [ %.pn.i, %if.end23.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %l_debug_list.i
  br i1 %cmp.not.i, label %for.cond.i.ocfs2_dlm_next_res.exit_crit_edge, label %for.body.i

for.cond.i.ocfs2_dlm_next_res.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ocfs2_dlm_next_res.exit

for.body.i:                                       ; preds = %for.cond.i
  %cmp15.i = icmp eq ptr %.pn.i, %d_lockres_tracking.i
  br i1 %cmp15.i, label %do.body17.i, label %if.end23.i

do.body17.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #15
  %6 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 2048, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_dlm_next_res, i32 noundef 3063, ptr noundef nonnull @.str.100, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #15
  br label %ocfs2_dlm_next_res.exit

if.end23.i:                                       ; preds = %for.body.i
  %l_ops.i = getelementptr i8, ptr %.pn.i, i32 -264
  %7 = ptrtoint ptr %l_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %l_ops.i, align 4
  %cmp24.not.i = icmp eq ptr %8, null
  br i1 %cmp24.not.i, label %if.end23.i.for.cond.i_crit_edge, label %for.end.loopexit.split.loop.exit38.i

if.end23.i.for.cond.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

for.end.loopexit.split.loop.exit38.i:             ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  %iter.0.le.i = getelementptr i8, ptr %.pn.i, i32 -268
  br label %ocfs2_dlm_next_res.exit

ocfs2_dlm_next_res.exit:                          ; preds = %for.end.loopexit.split.loop.exit38.i, %do.body17.i, %for.cond.i.ocfs2_dlm_next_res.exit_crit_edge
  %ret.0.i = phi ptr [ null, %do.body17.i ], [ %iter.0.le.i, %for.end.loopexit.split.loop.exit38.i ], [ null, %for.cond.i.ocfs2_dlm_next_res.exit_crit_edge ]
  %l_debug_list = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, ptr %1, i32 0, i32 1, i32 19
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %l_debug_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %ocfs2_dlm_next_res.exit.list_del_init.exit_crit_edge

ocfs2_dlm_next_res.exit.list_del_init.exit_crit_edge: ; preds = %ocfs2_dlm_next_res.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %ocfs2_dlm_next_res.exit
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, ptr %1, i32 0, i32 1, i32 19, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %l_debug_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %l_debug_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %ocfs2_dlm_next_res.exit.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %l_debug_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %l_debug_list, ptr %l_debug_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, ptr %1, i32 0, i32 1, i32 19, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %l_debug_list, ptr %prev.i3.i, align 4
  %tobool.not = icmp eq ptr %ret.0.i, null
  br i1 %tobool.not, label %list_del_init.exit.if.end_crit_edge, label %if.then

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  %l_debug_list2 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %ret.0.i, i32 0, i32 19
  %17 = ptrtoint ptr %l_debug_list2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %l_debug_list2, align 4
  %call.i.i12 = call zeroext i1 @__list_add_valid(ptr noundef %l_debug_list, ptr noundef %l_debug_list2, ptr noundef %18) #15
  br i1 %call.i.i12, label %if.end.i.i13, label %if.then.list_add.exit_crit_edge

if.then.list_add.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i13:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %l_debug_list, ptr %prev1.i.i, align 4
  %20 = ptrtoint ptr %l_debug_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %l_debug_list, align 4
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %l_debug_list2, ptr %prev.i3.i, align 4
  %22 = ptrtoint ptr %l_debug_list2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %l_debug_list, ptr %l_debug_list2, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i13, %if.then.list_add.exit_crit_edge
  %p_tmp_res = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, ptr %1, i32 0, i32 2
  %23 = call ptr @memcpy(ptr %p_tmp_res, ptr %ret.0.i, i32 392)
  br label %if.end

if.end:                                           ; preds = %list_add.exit, %list_del_init.exit.if.end_crit_edge
  %iter.0 = phi ptr [ %p_tmp_res, %list_add.exit ], [ null, %list_del_init.exit.if.end_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_dlm_tracking_lock) #15
  ret ptr %iter.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_dlm_seq_show(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool.not = icmp eq ptr %v, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %l_lock_wait = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 22
  %4 = ptrtoint ptr %l_lock_wait to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %l_lock_wait, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool1.not = icmp eq i64 %5, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %d_filter_secs = getelementptr inbounds %struct.ocfs2_dlm_debug, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %d_filter_secs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d_filter_secs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end18_crit_edge, label %if.then3

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then3:                                         ; preds = %land.lhs.true
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp8.i.i = icmp slt i64 %call.i, 0
  %8 = tail call i64 @llvm.abs.i64(i64 %call.i, i1 false) #15
  %9 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %8, i32 0) #18, !srcloc !397
  %asmresult.i.i.i = extractvalue { i64, i32 } %9, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %9, 1
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %8, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #18, !srcloc !398
  %asmresult10.i.i.i = extractvalue { i64, i32 } %10, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %ls_last = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 20, i32 4
  %11 = ptrtoint ptr %ls_last to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ls_last, align 8
  %ls_last5 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 23, i32 4
  %13 = ptrtoint ptr %ls_last5 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ls_last5, align 8
  %15 = tail call i64 @llvm.umax.i64(i64 %12, i64 %14)
  %sub = sub i64 %cond213.i.i, %15
  %16 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub) #18, !srcloc !464
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub, i64 %16, i32 0) #18, !srcloc !398
  %asmresult10.i.i.i101 = extractvalue { i64, i32 } %17, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i101, 18
  %18 = ptrtoint ptr %d_filter_secs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %d_filter_secs, align 4
  %conv = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %div1581.i.i, i64 %conv)
  %cmp14 = icmp ugt i64 %div1581.i.i, %conv
  br i1 %cmp14, label %if.then3.cleanup_crit_edge, label %if.then3.if.end18_crit_edge

if.then3.if.end18_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end18:                                         ; preds = %if.then3.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.101, i32 noundef 4) #15
  %l_type = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 12
  %20 = ptrtoint ptr %l_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %l_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %21)
  %cmp20 = icmp eq i8 %21, 5
  %l_name = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 6
  br i1 %cmp20, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr %struct.ocfs2_lock_res, ptr %v, i32 0, i32 6, i32 18
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %inode_blkno_be.0.copyload.i = load i64, ptr %arrayidx.i, align 2
  %conv24 = trunc i64 %inode_blkno_be.0.copyload.i to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.102, i32 noundef 17, ptr noundef %l_name, i32 noundef %conv24) #15
  br label %if.end28

if.else25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.103, i32 noundef 32, ptr noundef %l_name) #15
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.then22
  %l_level = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 9
  %23 = ptrtoint ptr %l_level to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %l_level, align 4
  %conv29 = sext i8 %24 to i32
  %l_flags = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 5
  %25 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %l_flags, align 8
  %l_action = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 13
  %27 = ptrtoint ptr %l_action to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %l_action, align 8
  %conv30 = zext i8 %28 to i32
  %l_unlock_action = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 14
  %29 = ptrtoint ptr %l_unlock_action to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %l_unlock_action, align 1
  %conv31 = zext i8 %30 to i32
  %l_ro_holders = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 7
  %31 = ptrtoint ptr %l_ro_holders to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %l_ro_holders, align 4
  %l_ex_holders = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 8
  %33 = ptrtoint ptr %l_ex_holders to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %l_ex_holders, align 8
  %l_requested = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 10
  %35 = ptrtoint ptr %l_requested to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %l_requested, align 1
  %conv32 = sext i8 %36 to i32
  %l_blocking = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 11
  %37 = ptrtoint ptr %l_blocking to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %l_blocking, align 2
  %conv33 = sext i8 %38 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.104, i32 noundef %conv29, i32 noundef %26, i32 noundef %conv30, i32 noundef %conv31, i32 noundef %32, i32 noundef %34, i32 noundef %conv32, i32 noundef %conv33) #15
  %l_lksb = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 17
  %call34 = tail call ptr @ocfs2_dlm_lvb(ptr noundef %l_lksb) #15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end28
  %i.0102 = phi i32 [ 0, %if.end28 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %call34, i32 %i.0102
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx, align 1
  %conv37 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.101, i32 noundef %conv37) #15
  %inc = add nuw nsw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %l_lock_prmode38 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 20
  %ls_gets = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 20, i32 1
  %41 = ptrtoint ptr %ls_gets to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ls_gets, align 8
  %l_lock_exmode39 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 23
  %ls_gets40 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 23, i32 1
  %43 = ptrtoint ptr %ls_gets40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ls_gets40, align 8
  %ls_fail = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 20, i32 2
  %45 = ptrtoint ptr %ls_fail to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ls_fail, align 4
  %ls_fail43 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 23, i32 2
  %47 = ptrtoint ptr %ls_fail43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ls_fail43, align 4
  %49 = ptrtoint ptr %l_lock_prmode38 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %l_lock_prmode38, align 8
  %51 = ptrtoint ptr %l_lock_exmode39 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %l_lock_exmode39, align 8
  %ls_max = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 20, i32 3
  %53 = ptrtoint ptr %ls_max to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ls_max, align 8
  %ls_max49 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 23, i32 3
  %55 = ptrtoint ptr %ls_max49 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ls_max49, align 8
  %l_lock_refresh = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 21
  %57 = ptrtoint ptr %l_lock_refresh to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %l_lock_refresh, align 8
  %ls_last51 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 20, i32 4
  %59 = ptrtoint ptr %ls_last51 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %ls_last51, align 8
  %ls_last53 = getelementptr inbounds %struct.ocfs2_lock_res, ptr %v, i32 0, i32 23, i32 4
  %61 = ptrtoint ptr %ls_last53 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %ls_last53, align 8
  %63 = ptrtoint ptr %l_lock_wait to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %l_lock_wait, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.105, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48, i64 noundef %50, i64 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i64 noundef %60, i64 noundef %62, i64 noundef %64) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.106) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_wait_on_busy_lock(ptr noundef %lockres) unnamed_addr #4 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__might_sleep(ptr noundef nonnull @.str.38, i32 noundef 1368) #15
  %l_lock.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock.i) #15
  %l_flags.i = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 5
  %0 = ptrtoint ptr %l_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l_flags.i, align 8
  %and.i = and i32 %1, 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock.i, i32 noundef %call2.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %if.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %l_event = getelementptr inbounds %struct.ocfs2_lock_res, ptr %lockres, i32 0, i32 18
  %call420 = call i32 @prepare_to_wait_event(ptr noundef %l_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %call2.i1521 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock.i) #15
  %3 = ptrtoint ptr %l_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %l_flags.i, align 8
  %and.i1722 = and i32 %4, 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock.i, i32 noundef %call2.i1521) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1722)
  %tobool6.not23 = icmp eq i32 %and.i1722, 0
  br i1 %tobool6.not23, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #15
  %call4 = call i32 @prepare_to_wait_event(ptr noundef %l_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %call2.i15 = call i32 @_raw_spin_lock_irqsave(ptr noundef %l_lock.i) #15
  %5 = ptrtoint ptr %l_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %l_flags.i, align 8
  %and.i17 = and i32 %6, 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %l_lock.i, i32 noundef %call2.i15) #15
  %tobool6.not = icmp eq i32 %and.i17, 0
  br i1 %tobool6.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %l_event, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %do.end10

do.end10:                                         ; preds = %for.end, %entry.do.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_dlm_dump_lksb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_quota_phys_block(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 155)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 155)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !12, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !35, !36, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !60, !62, !64, !65, !67, !68, !70, !72, !73, !75, !77, !79, !81, !83, !84, !86, !88, !90, !92, !94, !96, !98, !99, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !121, !123, !125, !127, !128, !130, !132, !134, !136, !138, !139, !141, !142, !144, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !180, !182, !184, !186, !188, !190, !192, !194, !195, !197, !199, !201, !202, !204, !205, !207, !209, !210, !212, !213, !215, !217, !219, !220, !222, !223, !225, !227, !229, !231, !232, !234, !235, !237, !239, !240, !242, !244, !245, !247, !249, !251, !253, !254, !256, !258, !259, !261, !262, !264, !266, !267, !269, !271, !272, !274, !276, !278, !280, !282, !284, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !304, !306, !308, !310, !311, !312, !314, !316, !318, !320, !322, !324, !326, !327, !329, !331, !332, !334, !336, !338, !339, !341, !342, !343, !345, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364}
!llvm.named.register.sp = !{!365}
!llvm.module.flags = !{!366, !367, !368, !369, !370, !371, !372, !373}
!llvm.ident = !{!374}

!0 = !{ptr @ocfs2_lock_res_init_once.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/dlmglue.c", i32 544, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ocfs2_lock_res_init_once.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/dlmglue.c", i32 545, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__func__.ocfs2_inode_lock_res_init, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ocfs2/dlmglue.c", i32 569, i32 4}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/dlmglue.c", i32 643, i32 10}
!12 = !{ptr @__func__.ocfs2_lock_res_free, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ocfs2/dlmglue.c", i32 773, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ocfs2/dlmglue.c", i32 776, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/dlmglue.c", i32 779, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ocfs2/dlmglue.c", i32 782, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/dlmglue.c", i32 785, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__func__.ocfs2_create_new_inode_locks, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ocfs2/dlmglue.c", i32 1729, i32 2}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/dlmglue.c", i32 1741, i32 3}
!33 = !{ptr @__func__.ocfs2_rw_lock, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/dlmglue.c", i32 1769, i32 2}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__func__.ocfs2_try_rw_lock, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ocfs2/dlmglue.c", i32 1793, i32 2}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__func__.ocfs2_rw_unlock, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ocfs2/dlmglue.c", i32 1814, i32 2}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @__func__.ocfs2_open_lock, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ocfs2/dlmglue.c", i32 1831, i32 2}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__func__.ocfs2_try_open_lock, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ocfs2/dlmglue.c", i32 1853, i32 2}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @__func__.ocfs2_open_unlock, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ocfs2/dlmglue.c", i32 1890, i32 2}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @__func__.ocfs2_file_lock, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/dlmglue.c", i32 1987, i32 3}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ocfs2/dlmglue.c", i32 2029, i32 4}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ocfs2/dlmglue.c", i32 2064, i32 2}
!62 = !{ptr @__func__.ocfs2_file_unlock, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ocfs2/dlmglue.c", i32 2087, i32 2}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @__func__.ocfs2_inode_lock_full_nested, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ocfs2/dlmglue.c", i32 2435, i32 2}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @__func__.ocfs2_inode_lock_atime, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ocfs2/dlmglue.c", i32 2582, i32 4}
!70 = !{ptr @__func__.ocfs2_inode_unlock, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ocfs2/dlmglue.c", i32 2621, i32 2}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @__func__.ocfs2_inode_lock_tracker, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ocfs2/dlmglue.c", i32 2693, i32 5}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ocfs2/dlmglue.c", i32 2706, i32 3}
!77 = !{ptr @__func__.ocfs2_super_lock, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ocfs2/dlmglue.c", i32 2803, i32 3}
!79 = !{ptr @__func__.ocfs2_rename_lock, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ocfs2/dlmglue.c", i32 2850, i32 3}
!81 = !{ptr @__func__.ocfs2_nfs_sync_lock, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ocfs2/dlmglue.c", i32 2882, i32 3}
!83 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @__func__.ocfs2_trim_fs_lock, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ocfs2/dlmglue.c", i32 2926, i32 4}
!86 = !{ptr @__func__.ocfs2_dentry_lock, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ocfs2/dlmglue.c", i32 2990, i32 3}
!88 = !{ptr @__func__.ocfs2_new_dlm_debug, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/ocfs2/dlmglue.c", i32 3034, i32 3}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ocfs2/dlmglue.c", i32 3337, i32 17}
!92 = !{ptr @__func__.ocfs2_dlm_init, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ocfs2/dlmglue.c", i32 3342, i32 3}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ocfs2/dlmglue.c", i32 3362, i32 3}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../fs/ocfs2/dlmglue.c", i32 3543, i32 3}
!98 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @__func__.ocfs2_mark_lockres_freeing, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ocfs2/dlmglue.c", i32 3552, i32 3}
!101 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!102 = distinct !{null, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ocfs2/dlmglue.c", i32 3571, i32 3}
!104 = distinct !{null, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ocfs2/dlmglue.c", i32 3592, i32 3}
!106 = !{ptr @__func__.ocfs2_qinfo_lock, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/ocfs2/dlmglue.c", i32 4257, i32 3}
!108 = !{ptr @__func__.ocfs2_refcount_lock, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/ocfs2/dlmglue.c", i32 4287, i32 3}
!110 = !{ptr @ocfs2_inode_rw_lops, !111, !"ocfs2_inode_rw_lops", i1 false, i1 false}
!111 = !{!"../fs/ocfs2/dlmglue.c", i32 224, i32 34}
!112 = !{ptr @ocfs2_inode_inode_lops, !113, !"ocfs2_inode_inode_lops", i1 false, i1 false}
!113 = !{!"../fs/ocfs2/dlmglue.c", i32 229, i32 34}
!114 = !{ptr @__PRETTY_FUNCTION__.__ocfs2_stuff_meta_lvb, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ocfs2/dlmglue.c", i32 2196, i32 2}
!116 = !{ptr @__func__.ocfs2_dump_meta_lvb_info, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/ocfs2/dlmglue.c", i32 118, i32 2}
!118 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/ocfs2/dlmglue.c", i32 120, i32 2}
!121 = !{ptr @.str.42, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/ocfs2/dlmglue.c", i32 123, i32 2}
!123 = !{ptr @.str.43, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/ocfs2/dlmglue.c", i32 127, i32 2}
!125 = !{ptr @__func__.ocfs2_data_convert_worker, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/ocfs2/dlmglue.c", i32 3953, i32 3}
!127 = !{ptr @.str.44, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/ocfs2/dlmglue.c", i32 3970, i32 3}
!130 = !{ptr @ocfs2_inode_open_lops, !131, !"ocfs2_inode_open_lops", i1 false, i1 false}
!131 = !{!"../fs/ocfs2/dlmglue.c", i32 264, i32 34}
!132 = !{ptr @.str.46, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/ocfs2/dlmglue.c", i32 395, i32 46}
!134 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/ocfs2/dlmglue.c", i32 396, i32 38}
!136 = !{ptr @__func__.ocfs2_build_lock_name, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/ocfs2/dlmglue.c", i32 401, i32 2}
!138 = !{ptr @.str.48, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @__func__.ocfs2_add_lockres_tracking, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/ocfs2/dlmglue.c", i32 409, i32 2}
!141 = !{ptr @.str.49, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.50, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/ocfs2/dlmglue.c", i32 404, i32 8}
!144 = !{ptr @ocfs2_dlm_tracking_lock, !143, !"ocfs2_dlm_tracking_lock", i1 false, i1 false}
!145 = !{ptr @.str.51, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/ocfs2/ocfs2_lockid.h", i32 92, i32 27}
!147 = !{ptr @.str.52, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/ocfs2/ocfs2_lockid.h", i32 93, i32 27}
!149 = !{ptr @.str.53, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/ocfs2/ocfs2_lockid.h", i32 94, i32 28}
!151 = !{ptr @.str.54, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/ocfs2/ocfs2_lockid.h", i32 95, i32 29}
!153 = !{ptr @.str.55, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/ocfs2/ocfs2_lockid.h", i32 98, i32 25}
!155 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/ocfs2/ocfs2_lockid.h", i32 99, i32 29}
!157 = !{ptr @.str.57, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/ocfs2/ocfs2_lockid.h", i32 100, i32 27}
!159 = !{ptr @.str.58, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/ocfs2/ocfs2_lockid.h", i32 101, i32 28}
!161 = !{ptr @.str.59, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/ocfs2/ocfs2_lockid.h", i32 102, i32 28}
!163 = !{ptr @.str.60, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/ocfs2/ocfs2_lockid.h", i32 103, i32 31}
!165 = !{ptr @.str.61, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/ocfs2/ocfs2_lockid.h", i32 104, i32 34}
!167 = !{ptr @.str.62, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/ocfs2/ocfs2_lockid.h", i32 105, i32 31}
!169 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/ocfs2/ocfs2_lockid.h", i32 106, i32 30}
!171 = !{ptr @ocfs2_lock_type_strings, !172, !"ocfs2_lock_type_strings", i1 false, i1 false}
!172 = !{!"../fs/ocfs2/ocfs2_lockid.h", i32 91, i32 14}
!173 = !{ptr @lockdep_keys, !174, !"lockdep_keys", i1 false, i1 false}
!174 = !{!"../fs/ocfs2/dlmglue.c", i32 85, i32 30}
!175 = !{ptr @ocfs2_dentry_lops, !176, !"ocfs2_dentry_lops", i1 false, i1 false}
!176 = !{!"../fs/ocfs2/dlmglue.c", i32 257, i32 34}
!177 = !{ptr @__func__.ocfs2_dentry_convert_worker, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/ocfs2/dlmglue.c", i32 4099, i32 2}
!179 = !{ptr @.str.64, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.65, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/ocfs2/dlmglue.c", i32 4120, i32 3}
!182 = !{ptr @ocfs2_trim_fs_lops, !183, !"ocfs2_trim_fs_lops", i1 false, i1 false}
!183 = !{!"../fs/ocfs2/dlmglue.c", i32 249, i32 34}
!184 = !{ptr @ocfs2_flock_lops, !185, !"ocfs2_flock_lops", i1 false, i1 false}
!185 = !{!"../fs/ocfs2/dlmglue.c", i32 269, i32 34}
!186 = !{ptr @ocfs2_qinfo_lops, !187, !"ocfs2_qinfo_lops", i1 false, i1 false}
!187 = !{!"../fs/ocfs2/dlmglue.c", i32 274, i32 34}
!188 = !{ptr @ocfs2_refcount_block_lops, !189, !"ocfs2_refcount_block_lops", i1 false, i1 false}
!189 = !{!"../fs/ocfs2/dlmglue.c", i32 280, i32 34}
!190 = !{ptr @lproto, !191, !"lproto", i1 false, i1 false}
!191 = !{!"../fs/ocfs2/dlmglue.c", i32 1272, i32 38}
!192 = !{ptr @__func__.ocfs2_locking_ast, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/ocfs2/dlmglue.c", i32 1161, i32 3}
!194 = !{ptr @.str.66, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.67, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/ocfs2/dlmglue.c", i32 1167, i32 2}
!197 = !{ptr @.str.68, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/ocfs2/dlmglue.c", i32 1183, i32 3}
!199 = !{ptr @__func__.ocfs2_blocking_ast, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/ocfs2/dlmglue.c", i32 1122, i32 2}
!201 = !{ptr @.str.69, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @__func__.ocfs2_generic_handle_bast, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/ocfs2/dlmglue.c", i32 997, i32 2}
!204 = !{ptr @.str.70, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.71, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/ocfs2/dlmglue.c", i32 1003, i32 2}
!207 = !{ptr @__func__.ocfs2_schedule_blocked_lock, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/ocfs2/dlmglue.c", i32 4359, i32 3}
!209 = !{ptr @.str.72, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @__func__.ocfs2_unlock_ast, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../fs/ocfs2/dlmglue.c", i32 1215, i32 2}
!212 = !{ptr @.str.73, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.74, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/ocfs2/dlmglue.c", i32 1220, i32 3}
!215 = !{ptr @.str.75, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/ocfs2/dlmglue.c", i32 1229, i32 3}
!217 = !{ptr @init_completion.__key, !218, !"__key", i1 false, i1 false}
!218 = !{!"../include/linux/completion.h", i32 87, i32 2}
!219 = !{ptr @.str.76, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @__func__.ocfs2_lock_create, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/ocfs2/dlmglue.c", i32 1317, i32 2}
!222 = !{ptr @.str.77, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.78, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/ocfs2/dlmglue.c", i32 1345, i32 2}
!225 = !{ptr @__func__.ocfs2_flock_handle_signal, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/ocfs2/dlmglue.c", i32 1923, i32 5}
!227 = !{ptr @.str.79, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/ocfs2/dlmglue.c", i32 1943, i32 2}
!229 = !{ptr @__func__.ocfs2_prepare_cancel_convert, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/ocfs2/dlmglue.c", i32 3695, i32 3}
!231 = !{ptr @.str.80, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.81, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../fs/ocfs2/dlmglue.c", i32 3706, i32 2}
!234 = !{ptr @.str.82, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.83, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/ocfs2/dlmglue.c", i32 3710, i32 2}
!237 = !{ptr @__func__.ocfs2_cancel_convert, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/ocfs2/dlmglue.c", i32 3723, i32 3}
!239 = !{ptr @.str.84, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @__func__.__ocfs2_cluster_lock, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/ocfs2/dlmglue.c", i32 1486, i32 3}
!242 = !{ptr @.str.85, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/ocfs2/dlmglue.c", i32 1505, i32 2}
!244 = !{ptr @.str.86, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.87, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/ocfs2/dlmglue.c", i32 1558, i32 4}
!247 = !{ptr @.str.88, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/ocfs2/dlmglue.c", i32 1577, i32 3}
!249 = !{ptr @.str.89, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/ocfs2/dlmglue.c", i32 1599, i32 3}
!251 = !{ptr @__func__.ocfs2_inode_lock_update, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/ocfs2/dlmglue.c", i32 2326, i32 3}
!253 = !{ptr @.str.90, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.91, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../fs/ocfs2/dlmglue.c", i32 2345, i32 3}
!256 = !{ptr @.str.92, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../fs/ocfs2/dlmglue.c", i32 2372, i32 3}
!258 = !{ptr @.str.93, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.94, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../fs/ocfs2/dlmglue.c", i32 2379, i32 3}
!261 = !{ptr @.str.95, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @__PRETTY_FUNCTION__.ocfs2_refresh_inode_from_lvb, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../fs/ocfs2/dlmglue.c", i32 2212, i32 2}
!264 = distinct !{null, !265, !"__already_done", i1 false, i1 false}
!265 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!266 = !{ptr @.str.96, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @__func__.ocfs2_assign_bh, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../fs/ocfs2/dlmglue.c", i32 2414, i32 3}
!269 = !{ptr @__func__.ocfs2_should_refresh_lock_res, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../fs/ocfs2/dlmglue.c", i32 2291, i32 2}
!271 = !{ptr @.str.97, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.98, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../fs/ocfs2/dlmglue.c", i32 3308, i32 22}
!274 = !{ptr @.str.99, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../fs/ocfs2/dlmglue.c", i32 3311, i32 21}
!276 = !{ptr @ocfs2_dlm_debug_fops, !277, !"ocfs2_dlm_debug_fops", i1 false, i1 false}
!277 = !{!"../fs/ocfs2/dlmglue.c", i32 3297, i32 37}
!278 = !{ptr @__func__.ocfs2_dlm_debug_open, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../fs/ocfs2/dlmglue.c", i32 3282, i32 3}
!280 = !{ptr @ocfs2_dlm_seq_ops, !281, !"ocfs2_dlm_seq_ops", i1 false, i1 false}
!281 = !{!"../fs/ocfs2/dlmglue.c", i32 3257, i32 36}
!282 = !{ptr @__func__.ocfs2_dlm_next_res, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/ocfs2/dlmglue.c", i32 3063, i32 4}
!284 = !{ptr @.str.100, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.101, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../fs/ocfs2/dlmglue.c", i32 3168, i32 16}
!287 = !{ptr @.str.102, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../fs/ocfs2/dlmglue.c", i32 3171, i32 17}
!289 = !{ptr @.str.103, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../fs/ocfs2/dlmglue.c", i32 3175, i32 17}
!291 = !{ptr @.str.104, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../fs/ocfs2/dlmglue.c", i32 3177, i32 16}
!293 = !{ptr @.str.105, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../fs/ocfs2/dlmglue.c", i32 3227, i32 16}
!295 = !{ptr @.str.106, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../fs/ocfs2/dlmglue.c", i32 3253, i32 16}
!297 = !{ptr @ocfs2_super_lops, !298, !"ocfs2_super_lops", i1 false, i1 false}
!298 = !{!"../fs/ocfs2/dlmglue.c", i32 237, i32 34}
!299 = !{ptr @ocfs2_rename_lops, !300, !"ocfs2_rename_lops", i1 false, i1 false}
!300 = !{!"../fs/ocfs2/dlmglue.c", i32 241, i32 34}
!301 = !{ptr @ocfs2_nfs_sync_lock_init.__key, !302, !"__key", i1 false, i1 false}
!302 = !{!"../fs/ocfs2/dlmglue.c", i32 694, i32 2}
!303 = !{ptr @.str.107, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @ocfs2_nfs_sync_lops, !305, !"ocfs2_nfs_sync_lops", i1 false, i1 false}
!305 = !{!"../fs/ocfs2/dlmglue.c", i32 245, i32 34}
!306 = !{ptr @ocfs2_orphan_scan_lops, !307, !"ocfs2_orphan_scan_lops", i1 false, i1 false}
!307 = !{!"../fs/ocfs2/dlmglue.c", i32 253, i32 34}
!308 = !{ptr @__func__.ocfs2_drop_lock, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../fs/ocfs2/dlmglue.c", i32 3428, i32 2}
!310 = !{ptr @.str.108, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.109, !309, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.110, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../fs/ocfs2/dlmglue.c", i32 3433, i32 3}
!314 = !{ptr @.str.111, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../fs/ocfs2/dlmglue.c", i32 3456, i32 3}
!316 = !{ptr @.str.112, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../fs/ocfs2/dlmglue.c", i32 3459, i32 3}
!318 = !{ptr @.str.113, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../fs/ocfs2/dlmglue.c", i32 3477, i32 2}
!320 = !{ptr @.str.114, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../fs/ocfs2/dlmglue.c", i32 3482, i32 3}
!322 = !{ptr @.str.115, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../fs/ocfs2/dlmglue.c", i32 3486, i32 2}
!324 = !{ptr @__func__.ocfs2_prepare_downconvert, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../fs/ocfs2/dlmglue.c", i32 3621, i32 3}
!326 = !{ptr @.str.116, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.117, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../fs/ocfs2/dlmglue.c", i32 3633, i32 2}
!329 = !{ptr @__func__.ocfs2_downconvert_lock, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../fs/ocfs2/dlmglue.c", i32 3651, i32 2}
!331 = !{ptr @.str.118, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.119, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../fs/ocfs2/ocfs2.h", i32 653, i32 37}
!334 = !{ptr @__func__.ocfs2_refresh_qinfo, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../fs/ocfs2/dlmglue.c", i32 4217, i32 4}
!336 = !{ptr @__func__.ocfs2_process_blocked_lock, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../fs/ocfs2/dlmglue.c", i32 4316, i32 2}
!338 = !{ptr @.str.120, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @.str.121, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../fs/ocfs2/dlmglue.c", i32 4339, i32 2}
!341 = !{ptr @.str.122, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @.str.123, !340, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @__func__.ocfs2_unblock_lock, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../fs/ocfs2/dlmglue.c", i32 3782, i32 4}
!345 = !{ptr @.str.124, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @.str.125, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../fs/ocfs2/dlmglue.c", i32 3817, i32 3}
!348 = !{ptr @.str.126, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../fs/ocfs2/dlmglue.c", i32 3828, i32 3}
!350 = !{ptr @.str.127, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../fs/ocfs2/dlmglue.c", i32 3838, i32 3}
!352 = !{ptr @.str.128, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../fs/ocfs2/dlmglue.c", i32 3849, i32 3}
!354 = !{ptr @.str.129, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../fs/ocfs2/dlmglue.c", i32 3858, i32 3}
!356 = !{ptr @.str.130, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../fs/ocfs2/dlmglue.c", i32 3880, i32 3}
!358 = !{ptr @.str.131, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../fs/ocfs2/dlmglue.c", i32 3889, i32 3}
!360 = !{ptr @.str.132, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../fs/ocfs2/dlmglue.c", i32 3922, i32 3}
!362 = !{ptr @__func__.ocfs2_downconvert_thread, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../fs/ocfs2/dlmglue.c", i32 4449, i32 3}
!364 = !{ptr @.str.133, !363, !"<string literal>", i1 false, i1 false}
!365 = !{!"sp"}
!366 = !{i32 1, !"wchar_size", i32 2}
!367 = !{i32 1, !"min_enum_size", i32 4}
!368 = !{i32 8, !"branch-target-enforcement", i32 0}
!369 = !{i32 8, !"sign-return-address", i32 0}
!370 = !{i32 8, !"sign-return-address-all", i32 0}
!371 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!372 = !{i32 7, !"uwtable", i32 1}
!373 = !{i32 7, !"frame-pointer", i32 2}
!374 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!375 = !{i64 2155032742, i64 2155033225, i64 2155032779, i64 2155032835, i64 2155032869, i64 2155032893, i64 2155032934, i64 2155032955, i64 2155032983, i64 2155033017}
!376 = !{!"branch_weights", i32 2000, i32 1}
!377 = !{i64 2155026566, i64 2155027049, i64 2155026603, i64 2155026659, i64 2155026693, i64 2155026717, i64 2155026758, i64 2155026779, i64 2155026807, i64 2155026841}
!378 = !{i64 2155034759, i64 2155035242, i64 2155034796, i64 2155034852, i64 2155034886, i64 2155034910, i64 2155034951, i64 2155034972, i64 2155035000, i64 2155035034}
!379 = !{i64 2155037570, i64 2155038053, i64 2155037607, i64 2155037663, i64 2155037697, i64 2155037721, i64 2155037762, i64 2155037783, i64 2155037811, i64 2155037845}
!380 = !{i64 2155039974, i64 2155040457, i64 2155040011, i64 2155040067, i64 2155040101, i64 2155040125, i64 2155040166, i64 2155040187, i64 2155040215, i64 2155040249}
!381 = !{i64 2155042333, i64 2155042816, i64 2155042370, i64 2155042426, i64 2155042460, i64 2155042484, i64 2155042525, i64 2155042546, i64 2155042574, i64 2155042608}
!382 = !{i64 2155044713, i64 2155045196, i64 2155044750, i64 2155044806, i64 2155044840, i64 2155044864, i64 2155044905, i64 2155044926, i64 2155044954, i64 2155044988}
!383 = !{i64 2155047093, i64 2155047576, i64 2155047130, i64 2155047186, i64 2155047220, i64 2155047244, i64 2155047285, i64 2155047306, i64 2155047334, i64 2155047368}
!384 = !{i64 2155135707, i64 2155136191, i64 2155135744, i64 2155135800, i64 2155135834, i64 2155135858, i64 2155135899, i64 2155135920, i64 2155135948, i64 2155135982}
!385 = !{i64 2155134034, i64 2155134518, i64 2155134071, i64 2155134127, i64 2155134161, i64 2155134185, i64 2155134226, i64 2155134247, i64 2155134275, i64 2155134309}
!386 = !{!"branch_weights", i32 1, i32 2000}
!387 = !{i64 2155059874, i64 2155060357, i64 2155059911, i64 2155059967, i64 2155060001, i64 2155060025, i64 2155060066, i64 2155060087, i64 2155060115, i64 2155060149}
!388 = !{i64 2155061473, i64 2155061956, i64 2155061510, i64 2155061566, i64 2155061600, i64 2155061624, i64 2155061665, i64 2155061686, i64 2155061714, i64 2155061748}
!389 = !{i64 2155063072, i64 2155063555, i64 2155063109, i64 2155063165, i64 2155063199, i64 2155063223, i64 2155063264, i64 2155063285, i64 2155063313, i64 2155063347}
!390 = !{i64 2155064547, i64 2155065030, i64 2155064584, i64 2155064640, i64 2155064674, i64 2155064698, i64 2155064739, i64 2155064760, i64 2155064788, i64 2155064822}
!391 = !{i64 2155151519, i64 2155152003, i64 2155151556, i64 2155151612, i64 2155151646, i64 2155151670, i64 2155151711, i64 2155151732, i64 2155151760, i64 2155151794}
!392 = !{!"branch_weights", i32 2001, i32 2000}
!393 = !{!"branch_weights", i32 4001, i32 1}
!394 = !{i64 2155147757, i64 2155148241, i64 2155147794, i64 2155147850, i64 2155147884, i64 2155147908, i64 2155147949, i64 2155147970, i64 2155147998, i64 2155148032}
!395 = !{i64 2155116639, i64 2155117123, i64 2155116676, i64 2155116732, i64 2155116766, i64 2155116790, i64 2155116831, i64 2155116852, i64 2155116880, i64 2155116914}
!396 = !{i64 2155118511, i64 2155118995, i64 2155118548, i64 2155118604, i64 2155118638, i64 2155118662, i64 2155118703, i64 2155118724, i64 2155118752, i64 2155118786}
!397 = !{i64 1071447, i64 1071474, i64 1071496, i64 1071524}
!398 = !{i64 1071855, i64 1071882, i64 1071915, i64 1071936, i64 1071963, i64 1071989}
!399 = !{i64 2155092072, i64 2155092556, i64 2155092109, i64 2155092165, i64 2155092199, i64 2155092223, i64 2155092264, i64 2155092285, i64 2155092313, i64 2155092347}
!400 = !{i64 2155093711, i64 2155094195, i64 2155093748, i64 2155093804, i64 2155093838, i64 2155093862, i64 2155093903, i64 2155093924, i64 2155093952, i64 2155093986}
!401 = !{i64 2155220327, i64 2155220811, i64 2155220364, i64 2155220420, i64 2155220454, i64 2155220478, i64 2155220519, i64 2155220540, i64 2155220568, i64 2155220602}
!402 = !{i64 2155221933, i64 2155222417, i64 2155221970, i64 2155222026, i64 2155222060, i64 2155222084, i64 2155222125, i64 2155222146, i64 2155222174, i64 2155222208}
!403 = !{i64 2155224164, i64 2155224648, i64 2155224201, i64 2155224257, i64 2155224291, i64 2155224315, i64 2155224356, i64 2155224377, i64 2155224405, i64 2155224439}
!404 = !{i64 2153040273}
!405 = !{i64 2149778937}
!406 = !{i64 2149783869}
!407 = !{i64 2149805581}
!408 = !{i64 2149810473}
!409 = !{i64 2149886930}
!410 = !{i64 2149887255}
!411 = !{i64 2153052135}
!412 = !{i64 2155172523, i64 2155173007, i64 2155172560, i64 2155172616, i64 2155172650, i64 2155172674, i64 2155172715, i64 2155172736, i64 2155172764, i64 2155172798}
!413 = !{i64 2155179969, i64 2155180453, i64 2155180006, i64 2155180062, i64 2155180096, i64 2155180120, i64 2155180161, i64 2155180182, i64 2155180210, i64 2155180244}
!414 = !{i64 2148707206, i64 2148707232, i64 2148707261, i64 2148707295, i64 2148707326, i64 2148707349}
!415 = !{i64 2155124272, i64 2155124756, i64 2155124309, i64 2155124365, i64 2155124399, i64 2155124423, i64 2155124464, i64 2155124485, i64 2155124513, i64 2155124547}
!416 = !{i64 2155052596, i64 2155053079, i64 2155052633, i64 2155052689, i64 2155052723, i64 2155052747, i64 2155052788, i64 2155052809, i64 2155052837, i64 2155052871}
!417 = !{i64 2155054075, i64 2155054558, i64 2155054112, i64 2155054168, i64 2155054202, i64 2155054226, i64 2155054267, i64 2155054288, i64 2155054316, i64 2155054350}
!418 = !{i64 2148708736, i64 2148708768, i64 2148708797, i64 2148708831, i64 2148708862, i64 2148708885}
!419 = !{i64 2155191491, i64 2155191975, i64 2155191528, i64 2155191584, i64 2155191618, i64 2155191642, i64 2155191683, i64 2155191704, i64 2155191732, i64 2155191766}
!420 = !{i64 2148796761}
!421 = !{i64 2148711201, i64 2148711233, i64 2148711262, i64 2148711296, i64 2148711327, i64 2148711350}
!422 = !{i64 2149994534}
!423 = !{i64 2155257082, i64 2155257566, i64 2155257119, i64 2155257175, i64 2155257209, i64 2155257233, i64 2155257274, i64 2155257295, i64 2155257323, i64 2155257357}
!424 = !{i64 2155258668, i64 2155259152, i64 2155258705, i64 2155258761, i64 2155258795, i64 2155258819, i64 2155258860, i64 2155258881, i64 2155258909, i64 2155258943}
!425 = !{i64 2155236572, i64 2155237056, i64 2155236609, i64 2155236665, i64 2155236699, i64 2155236723, i64 2155236764, i64 2155236785, i64 2155236813, i64 2155236847}
!426 = !{i64 2155239134, i64 2155239618, i64 2155239171, i64 2155239227, i64 2155239261, i64 2155239285, i64 2155239326, i64 2155239347, i64 2155239375, i64 2155239409}
!427 = !{i64 2155206249, i64 2155206733, i64 2155206286, i64 2155206342, i64 2155206376, i64 2155206400, i64 2155206441, i64 2155206462, i64 2155206490, i64 2155206524}
!428 = !{i64 2155209333, i64 2155209817, i64 2155209370, i64 2155209426, i64 2155209460, i64 2155209484, i64 2155209525, i64 2155209546, i64 2155209574, i64 2155209608}
!429 = !{i64 2155212718, i64 2155213202, i64 2155212755, i64 2155212811, i64 2155212845, i64 2155212869, i64 2155212910, i64 2155212931, i64 2155212959, i64 2155212993}
!430 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!431 = !{i64 2155016912, i64 2155017395, i64 2155016949, i64 2155017005, i64 2155017039, i64 2155017063, i64 2155017104, i64 2155017125, i64 2155017153, i64 2155017187}
!432 = !{i64 1111886, i64 1111947}
!433 = !{i64 1114618}
!434 = !{i64 1114903}
!435 = !{i64 2153038342}
!436 = !{i64 2153038184}
!437 = !{i64 2153038512}
!438 = !{i64 2149886605}
!439 = !{i64 2155245211, i64 2155245695, i64 2155245248, i64 2155245304, i64 2155245338, i64 2155245362, i64 2155245403, i64 2155245424, i64 2155245452, i64 2155245486}
!440 = !{i64 2155250906, i64 2155251390, i64 2155250943, i64 2155250999, i64 2155251033, i64 2155251057, i64 2155251098, i64 2155251119, i64 2155251147, i64 2155251181}
!441 = !{i64 2155018716, i64 2155019199, i64 2155018753, i64 2155018809, i64 2155018843, i64 2155018867, i64 2155018908, i64 2155018929, i64 2155018957, i64 2155018991}
!442 = !{i64 2155020518, i64 2155021001, i64 2155020555, i64 2155020611, i64 2155020645, i64 2155020669, i64 2155020710, i64 2155020731, i64 2155020759, i64 2155020793}
!443 = !{i64 2155083676, i64 2155084159, i64 2155083713, i64 2155083769, i64 2155083803, i64 2155083827, i64 2155083868, i64 2155083889, i64 2155083917, i64 2155083951}
!444 = !{i64 2155085304, i64 2155085787, i64 2155085341, i64 2155085397, i64 2155085431, i64 2155085455, i64 2155085496, i64 2155085517, i64 2155085545, i64 2155085579}
!445 = !{i64 2155080160, i64 2155080643, i64 2155080197, i64 2155080253, i64 2155080287, i64 2155080311, i64 2155080352, i64 2155080373, i64 2155080401, i64 2155080435}
!446 = !{i64 2155081796, i64 2155082279, i64 2155081833, i64 2155081889, i64 2155081923, i64 2155081947, i64 2155081988, i64 2155082009, i64 2155082037, i64 2155082071}
!447 = !{i64 2155073452, i64 2155073935, i64 2155073489, i64 2155073545, i64 2155073579, i64 2155073603, i64 2155073644, i64 2155073665, i64 2155073693, i64 2155073727}
!448 = !{i64 2155075088, i64 2155075571, i64 2155075125, i64 2155075181, i64 2155075215, i64 2155075239, i64 2155075280, i64 2155075301, i64 2155075329, i64 2155075363}
!449 = !{i64 2155076724, i64 2155077207, i64 2155076761, i64 2155076817, i64 2155076851, i64 2155076875, i64 2155076916, i64 2155076937, i64 2155076965, i64 2155076999}
!450 = !{i64 2155078327, i64 2155078810, i64 2155078364, i64 2155078420, i64 2155078454, i64 2155078478, i64 2155078519, i64 2155078540, i64 2155078568, i64 2155078602}
!451 = !{i64 2155103369, i64 2155103853, i64 2155103406, i64 2155103462, i64 2155103496, i64 2155103520, i64 2155103561, i64 2155103582, i64 2155103610, i64 2155103644}
!452 = !{i64 2155099363, i64 2155099847, i64 2155099400, i64 2155099456, i64 2155099490, i64 2155099514, i64 2155099555, i64 2155099576, i64 2155099604, i64 2155099638}
!453 = !{i64 2154871867, i64 2154872355, i64 2154871904, i64 2154871960, i64 2154871994, i64 2154872018, i64 2154872059, i64 2154872080, i64 2154872108, i64 2154872142}
!454 = !{i64 2155087231, i64 2155087714, i64 2155087268, i64 2155087324, i64 2155087358, i64 2155087382, i64 2155087423, i64 2155087444, i64 2155087472, i64 2155087506}
!455 = !{i64 2155106378, i64 2155106862, i64 2155106415, i64 2155106471, i64 2155106505, i64 2155106529, i64 2155106570, i64 2155106591, i64 2155106619, i64 2155106653}
!456 = !{i64 2155089797, i64 2155090281, i64 2155089834, i64 2155089890, i64 2155089924, i64 2155089948, i64 2155089989, i64 2155090010, i64 2155090038, i64 2155090072}
!457 = !{i64 2155066595, i64 2155067078, i64 2155066632, i64 2155066688, i64 2155066722, i64 2155066746, i64 2155066787, i64 2155066808, i64 2155066836, i64 2155066870}
!458 = !{i64 2155262526, i64 2155263010, i64 2155262563, i64 2155262619, i64 2155262653, i64 2155262677, i64 2155262718, i64 2155262739, i64 2155262767, i64 2155262801}
!459 = !{i64 2155120383, i64 2155120867, i64 2155120420, i64 2155120476, i64 2155120510, i64 2155120534, i64 2155120575, i64 2155120596, i64 2155120624, i64 2155120658}
!460 = !{i64 2155228130, i64 2155228614, i64 2155228167, i64 2155228223, i64 2155228257, i64 2155228281, i64 2155228322, i64 2155228343, i64 2155228371, i64 2155228405}
!461 = !{i64 2155230184, i64 2155230668, i64 2155230221, i64 2155230277, i64 2155230311, i64 2155230335, i64 2155230376, i64 2155230397, i64 2155230425, i64 2155230459}
!462 = !{i64 2155232648, i64 2155233132, i64 2155232685, i64 2155232741, i64 2155232775, i64 2155232799, i64 2155232840, i64 2155232861, i64 2155232889, i64 2155232923}
!463 = !{i64 2155196012, i64 2155196496, i64 2155196049, i64 2155196105, i64 2155196139, i64 2155196163, i64 2155196204, i64 2155196225, i64 2155196253, i64 2155196287}
!464 = !{i64 1071160, i64 1071187}
