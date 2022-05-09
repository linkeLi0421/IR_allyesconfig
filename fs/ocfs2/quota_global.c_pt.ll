; ModuleID = '/llk/IR_all_yes/fs/ocfs2/quota_global.c_pt.bc'
source_filename = "../fs/ocfs2/quota_global.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qtree_fmt_operations = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.dquot_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%union.anon.70 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, ptr, %struct.kqid, i64, i32, %struct.mem_dqblk }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kqid = type { %union.anon.81, i32 }
%union.anon.81 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ocfs2_dquot = type { %struct.dquot, i64, i64, ptr, i32, i64, i64, %struct.llist_node }
%struct.llist_node = type { ptr }
%struct.ocfs2_global_disk_dqblk = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.ocfs2_mem_dqinfo = type { i32, i32, i32, i32, i32, %struct.list_head, ptr, %struct.ocfs2_lock_res, ptr, i32, i64, ptr, ptr, %struct.qtree_mem_dqinfo, %struct.delayed_work, ptr }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.83, ptr }
%union.anon.83 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
%struct.qtree_mem_dqinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.76 = type { ptr }
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
%struct.ocfs2_global_disk_dqinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ocfs2_node_map = type { i16, [8 x i32] }
%struct.ocfs2_orphan_scan = type { %struct.mutex, ptr, %struct.ocfs2_lock_res, %struct.delayed_work, i64, i32, i32, %struct.atomic_t }
%struct.ocfs2_filecheck_sysfs_entry = type { %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@ocfs2_global_ops = dso_local constant { %struct.qtree_fmt_operations, [20 x i8] } { %struct.qtree_fmt_operations { ptr @ocfs2_global_mem2diskdqb, ptr @ocfs2_global_disk2memdqb, ptr @ocfs2_global_is_id }, [20 x i8] zeroinitializer }, align 32
@__func__.ocfs2_read_quota_phys_block = private unnamed_addr constant [28 x i8] c"ocfs2_read_quota_phys_block\00", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.ocfs2_quota_read = private unnamed_addr constant [17 x i8] c"ocfs2_quota_read\00", align 1
@__func__.ocfs2_quota_write = private unnamed_addr constant [18 x i8] c"ocfs2_quota_write\00", align 1
@.str.1 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Quota write (off=%llu, len=%llu) cancelled because transaction was not started.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/ocfs2/quota_global.c\00", [40 x i8] zeroinitializer }, align 32
@dq_data_lock = external dso_local global %struct.spinlock, align 4
@__const.ocfs2_global_read_info.ino = private unnamed_addr constant [2 x i32] [i32 5, i32 6], align 4
@__func__.ocfs2_global_read_info = private unnamed_addr constant [23 x i8] c"ocfs2_global_read_info\00", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to get global quota inode (type=%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot read global quota info (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@ocfs2_global_read_info.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&oinfo->dqi_sync_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@ocfs2_global_read_info.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&oinfo->dqi_sync_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@__func__.__ocfs2_sync_dquot = private unnamed_addr constant [19 x i8] c"__ocfs2_sync_dquot\00", align 1
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Short read from global quota file (%u read)\0A\00", [51 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.9 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Failed to lock quota info, losing quota write (type=%d, id=%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@ocfs2_quota_operations = dso_local constant { %struct.dquot_operations, [52 x i8] } { %struct.dquot_operations { ptr null, ptr @ocfs2_alloc_dquot, ptr @ocfs2_destroy_dquot, ptr @ocfs2_acquire_dquot, ptr @ocfs2_release_dquot, ptr @ocfs2_mark_dquot_dirty, ptr @ocfs2_write_info, ptr null, ptr null, ptr null, ptr @ocfs2_get_next_id }, [52 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_validate_quota_block = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/ocfs2_trace.h\00", [41 x i8] zeroinitializer }, align 32
@trace_ocfs2_validate_quota_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__func__.__ocfs2_global_write_info = private unnamed_addr constant [26 x i8] c"__ocfs2_global_write_info\00", align 1
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot write global quota info structure\0A\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_sync_dquot = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_sync_dquot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_sync_dquot_helper = private unnamed_addr constant [24 x i8] c"ocfs2_sync_dquot_helper\00", align 1
@__tracepoint_ocfs2_sync_dquot_helper = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_sync_dquot_helper.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ocfs2_dquot_cachep = external dso_local local_unnamed_addr global ptr, align 4
@__func__.ocfs2_acquire_dquot = private unnamed_addr constant [20 x i8] c"ocfs2_acquire_dquot\00", align 1
@__tracepoint_ocfs2_acquire_dquot = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_acquire_dquot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_release_dquot = private unnamed_addr constant [20 x i8] c"ocfs2_release_dquot\00", align 1
@__tracepoint_ocfs2_release_dquot = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_release_dquot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dqgrab.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/quotaops.h\00", [39 x i8] zeroinitializer }, align 32
@dqgrab.__already_done.16 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ocfs2_mark_dquot_dirty = private unnamed_addr constant [23 x i8] c"ocfs2_mark_dquot_dirty\00", align 1
@__tracepoint_ocfs2_mark_dquot_dirty = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_mark_dquot_dirty.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_write_dquot = private unnamed_addr constant [18 x i8] c"ocfs2_write_dquot\00", align 1
@__tracepoint_ocfs2_write_dquot = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_write_dquot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_write_info = private unnamed_addr constant [17 x i8] c"ocfs2_write_info\00", align 1
@__func__.ocfs2_get_next_id = private unnamed_addr constant [18 x i8] c"ocfs2_get_next_id\00", align 1
@__tracepoint_ocfs2_get_next_id = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_get_next_id.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.18 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.19 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.20 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.21 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.22 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.27 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.31 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.35 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.36 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.37 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.38 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292, i64 4294967293, i64 4294967294]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"ocfs2_global_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 128, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 160, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 230, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 236, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 353, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 385, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 402, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 498, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 567, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [23 x i8] c"ocfs2_quota_operations\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1007, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant [26 x i8] c"../fs/ocfs2/ocfs2_trace.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1982, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 108, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 366, i32 2 }
@___asan_gen_.94 = private constant [27 x i8] c"../fs/ocfs2/quota_global.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 436, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [28 x i8] c"../include/linux/quotaops.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 49, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @ocfs2_global_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ocfs2_global_read_info.__key, ptr @.str.5, ptr @ocfs2_global_read_info.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ocfs2_quota_operations, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_global_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_global_read_info.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_global_read_info.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_quota_operations to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_global_mem2diskdqb(ptr nocapture noundef writeonly %dp, ptr nocapture noundef readonly %dquot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_dqb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %0 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %.unpack = load i32, ptr %dq_id, align 8
  %1 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt30 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %.elt30 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack31 = load i32, ptr %.elt30, align 4
  %3 = insertvalue [2 x i32] %1, i32 %.unpack31, 1
  %call = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %3) #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %call)
  %5 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dp, align 8
  %dq_use_count = getelementptr inbounds %struct.ocfs2_dquot, ptr %dquot, i32 0, i32 4
  %6 = ptrtoint ptr %dq_use_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dq_use_count, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %dqb_use_count = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 1
  %9 = ptrtoint ptr %dqb_use_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dqb_use_count, align 4
  %dqb_ihardlimit = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 4
  %10 = ptrtoint ptr %dqb_ihardlimit to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dqb_ihardlimit, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %dqb_ihardlimit2 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 2
  %13 = ptrtoint ptr %dqb_ihardlimit2 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %dqb_ihardlimit2, align 8
  %dqb_isoftlimit = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 5
  %14 = ptrtoint ptr %dqb_isoftlimit to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dqb_isoftlimit, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  %dqb_isoftlimit3 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 3
  %17 = ptrtoint ptr %dqb_isoftlimit3 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %dqb_isoftlimit3, align 8
  %dqb_curinodes = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 6
  %18 = ptrtoint ptr %dqb_curinodes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dqb_curinodes, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19)
  %dqb_curinodes4 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 4
  %21 = ptrtoint ptr %dqb_curinodes4 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %dqb_curinodes4, align 8
  %22 = ptrtoint ptr %dq_dqb to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dq_dqb, align 8
  %24 = tail call i64 @llvm.bswap.i64(i64 %23)
  %dqb_bhardlimit5 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 5
  %25 = ptrtoint ptr %dqb_bhardlimit5 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %dqb_bhardlimit5, align 8
  %dqb_bsoftlimit = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 1
  %26 = ptrtoint ptr %dqb_bsoftlimit to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dqb_bsoftlimit, align 8
  %28 = tail call i64 @llvm.bswap.i64(i64 %27)
  %dqb_bsoftlimit6 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 6
  %29 = ptrtoint ptr %dqb_bsoftlimit6 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %dqb_bsoftlimit6, align 8
  %dqb_curspace = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 2
  %30 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %dqb_curspace, align 8
  %32 = tail call i64 @llvm.bswap.i64(i64 %31)
  %dqb_curspace7 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 7
  %33 = ptrtoint ptr %dqb_curspace7 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %dqb_curspace7, align 8
  %dqb_btime = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 7
  %34 = ptrtoint ptr %dqb_btime to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %dqb_btime, align 8
  %36 = tail call i64 @llvm.bswap.i64(i64 %35)
  %dqb_btime8 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 8
  %37 = ptrtoint ptr %dqb_btime8 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %dqb_btime8, align 8
  %dqb_itime = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 8
  %38 = ptrtoint ptr %dqb_itime to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %dqb_itime, align 8
  %40 = tail call i64 @llvm.bswap.i64(i64 %39)
  %dqb_itime9 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 9
  %41 = ptrtoint ptr %dqb_itime9 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %dqb_itime9, align 8
  %dqb_pad1 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 10
  %42 = call ptr @memset(ptr %dqb_pad1, i32 0, i32 16)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ocfs2_global_disk2memdqb(ptr noundef %dquot, ptr nocapture noundef readonly %dp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_dqb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11
  %dq_flags = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  %0 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dq_flags, align 4
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dqb_ihardlimit = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 2
  %3 = ptrtoint ptr %dqb_ihardlimit to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %dqb_ihardlimit, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %dqb_ihardlimit1 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 4
  %6 = ptrtoint ptr %dqb_ihardlimit1 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %dqb_ihardlimit1, align 8
  %dqb_isoftlimit = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 3
  %7 = ptrtoint ptr %dqb_isoftlimit to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dqb_isoftlimit, align 8
  %9 = tail call i64 @llvm.bswap.i64(i64 %8)
  %dqb_isoftlimit2 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 5
  %10 = ptrtoint ptr %dqb_isoftlimit2 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %dqb_isoftlimit2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %dq_flags, align 4
  %13 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dqb_curinodes = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 4
  %14 = ptrtoint ptr %dqb_curinodes to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dqb_curinodes, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  %dqb_curinodes7 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 6
  %17 = ptrtoint ptr %dqb_curinodes7 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %dqb_curinodes7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %18 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %dq_flags, align 4
  %20 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool11.not = icmp eq i32 %20, 0
  br i1 %tobool11.not, label %if.then12, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dqb_bhardlimit = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 5
  %21 = ptrtoint ptr %dqb_bhardlimit to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %dqb_bhardlimit, align 8
  %23 = tail call i64 @llvm.bswap.i64(i64 %22)
  %24 = ptrtoint ptr %dq_dqb to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %dq_dqb, align 8
  %dqb_bsoftlimit = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 6
  %25 = ptrtoint ptr %dqb_bsoftlimit to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %dqb_bsoftlimit, align 8
  %27 = tail call i64 @llvm.bswap.i64(i64 %26)
  %dqb_bsoftlimit14 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 1
  %28 = ptrtoint ptr %dqb_bsoftlimit14 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %dqb_bsoftlimit14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end8.if.end15_crit_edge
  %29 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %dq_flags, align 4
  %31 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool18.not = icmp eq i32 %31, 0
  br i1 %tobool18.not, label %if.then19, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %dqb_curspace = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 7
  %32 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %dqb_curspace, align 8
  %34 = tail call i64 @llvm.bswap.i64(i64 %33)
  %dqb_curspace20 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 2
  %35 = ptrtoint ptr %dqb_curspace20 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %dqb_curspace20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end15.if.end21_crit_edge
  %36 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %dq_flags, align 4
  %38 = and i32 %37, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool24.not = icmp eq i32 %38, 0
  br i1 %tobool24.not, label %if.then25, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %dqb_btime = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 8
  %39 = ptrtoint ptr %dqb_btime to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %dqb_btime, align 8
  %41 = tail call i64 @llvm.bswap.i64(i64 %40)
  %dqb_btime26 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 7
  %42 = ptrtoint ptr %dqb_btime26 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %dqb_btime26, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end21.if.end27_crit_edge
  %43 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %dq_flags, align 4
  %45 = and i32 %44, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool30.not = icmp eq i32 %45, 0
  br i1 %tobool30.not, label %if.then31, label %if.end27.if.end33_crit_edge

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %dqb_itime = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 9
  %46 = ptrtoint ptr %dqb_itime to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %dqb_itime, align 8
  %48 = tail call i64 @llvm.bswap.i64(i64 %47)
  %dqb_itime32 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 8
  %49 = ptrtoint ptr %dqb_itime32 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %dqb_itime32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end27.if.end33_crit_edge
  %dqb_use_count = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dp, i32 0, i32 1
  %50 = ptrtoint ptr %dqb_use_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dqb_use_count, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %dq_use_count = getelementptr inbounds %struct.ocfs2_dquot, ptr %dquot, i32 0, i32 4
  %53 = ptrtoint ptr %dq_use_count to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %dq_use_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_global_is_id(ptr noundef %dp, ptr nocapture noundef readonly %dquot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %type = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %3, i32 8
  %4 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dqi_priv, align 8
  %dqi_gi = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %5, i32 0, i32 13
  %call1 = tail call i32 @qtree_entry_unused(ptr noundef %dqi_gi, ptr noundef %dp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dp, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %10) #9, !noalias !92
  br label %make_kqid.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %10) #9, !noalias !92
  br label %make_kqid.exit

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = tail call i32 @make_kprojid(ptr noundef nonnull @init_user_ns, i32 noundef %10) #9, !noalias !92
  br label %make_kqid.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/quota.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !noalias !92, !srcloc !95
  unreachable

make_kqid.exit:                                   ; preds = %sw.bb6.i, %sw.bb2.i, %sw.bb.i
  %call8.sink.i = phi i32 [ %call8.i, %sw.bb6.i ], [ %call4.i, %sw.bb2.i ], [ %call.i, %sw.bb.i ]
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %call8.sink.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %7, 1
  %12 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack = load i32, ptr %dq_id, align 8
  %13 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack12 = load i32, ptr %type, align 4
  %15 = insertvalue [2 x i32] %13, i32 %.unpack12, 1
  %call5 = tail call zeroext i1 @qid_eq([2 x i32] %.fca.1.insert, [2 x i32] %15) #9
  %conv = zext i1 %call5 to i32
  br label %cleanup

cleanup:                                          ; preds = %make_kqid.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %make_kqid.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_validate_quota_block(ptr noundef %sb, ptr noundef %bh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_blocksize, align 16
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %4 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %b_blocknr, align 8
  tail call fastcc void @trace_ocfs2_validate_quota_block(i64 noundef %5)
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !96

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/quota_global.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #9, !srcloc !97
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %1, -8
  %add.ptr.i = getelementptr i8, ptr %3, i32 %sub.i
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  %call12 = tail call i32 @ocfs2_validate_meta_ecc(ptr noundef %sb, ptr noundef %9, ptr noundef %add.ptr.i) #9
  ret i32 %call12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_validate_quota_block(i64 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_validate_quota_block, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_validate_quota_block, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !98

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !99

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !100
  %call42 = tail call i32 @__traceiter_ocfs2_validate_quota_block(ptr noundef null, i64 noundef %num) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !99

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_validate_quota_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_validate_quota_block, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_validate_quota_block.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_validate_quota_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 1982, ptr noundef nonnull @.str.11) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
declare dso_local i32 @ocfs2_validate_meta_ecc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_read_quota_phys_block(ptr noundef %inode, i64 noundef %p_block, ptr noundef %bhp) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bhp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bhp, align 4
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  %call1 = tail call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i, i64 noundef %p_block, i32 noundef 1, ptr noundef %bhp, i32 noundef 0, ptr noundef nonnull @ocfs2_validate_quota_block) #9
  %1 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call1, label %do.body [
    i32 0, label %entry.if.end13_crit_edge
    i32 -512, label %entry.if.end13_crit_edge23
    i32 -4, label %entry.if.end13_crit_edge24
    i32 524289, label %entry.if.end13_crit_edge25
    i32 -28, label %entry.if.end13_crit_edge26
    i32 -122, label %entry.if.end13_crit_edge27
  ]

entry.if.end13_crit_edge27:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

entry.if.end13_crit_edge26:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

entry.if.end13_crit_edge25:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

entry.if.end13_crit_edge24:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

entry.if.end13_crit_edge23:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_read_quota_phys_block, i32 noundef 160, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %if.end13

if.end13:                                         ; preds = %do.body, %entry.if.end13_crit_edge, %entry.if.end13_crit_edge23, %entry.if.end13_crit_edge24, %entry.if.end13_crit_edge25, %entry.if.end13_crit_edge26, %entry.if.end13_crit_edge27
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_blocks(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_quota_read(ptr nocapture noundef readonly %sb, i32 noundef %type, ptr nocapture noundef writeonly %data, i32 noundef %len, i64 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %bh = alloca ptr, align 4
  %pblock = alloca i64, align 8
  %pcount = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m65 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 8
  %0 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dqi_priv, align 8
  %dqi_gqinode = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dqi_gqinode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dqi_gqinode, align 4
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %6 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_blocksize_bits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #9
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pblock) #9
  %9 = ptrtoint ptr %pblock to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %pblock, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pcount) #9
  %10 = ptrtoint ptr %pcount to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %pcount, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %off)
  %cmp = icmp slt i64 %call1, %off
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv5 = zext i32 %len to i64
  %add = add i64 %conv5, %off
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call1)
  %cmp6 = icmp sgt i64 %add, %call1
  %sub9 = sub i64 %call1, %off
  %conv10 = trunc i64 %sub9 to i32
  %len.addr.0 = select i1 %cmp6, i32 %conv10, i32 %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %cmp12.not128 = icmp eq i32 %len.addr.0, 0
  br i1 %cmp12.not128, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %sub = add i32 %5, -1
  %11 = trunc i64 %off to i32
  %conv2 = and i32 %sub, %11
  %sh_prom = zext i8 %7 to i64
  %shr = ashr i64 %off, %sh_prom
  %ip_metadata_cache.i.i = getelementptr i8, ptr %3, i32 -56
  br label %while.body

while.body:                                       ; preds = %brelse.exit.while.body_crit_edge, %while.body.lr.ph
  %data.addr.0133 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr77, %brelse.exit.while.body_crit_edge ]
  %toread.0132 = phi i32 [ %len.addr.0, %while.body.lr.ph ], [ %sub76, %brelse.exit.while.body_crit_edge ]
  %blk.0130 = phi i64 [ %shr, %while.body.lr.ph ], [ %inc78, %brelse.exit.while.body_crit_edge ]
  %offset.0129 = phi i32 [ %conv2, %while.body.lr.ph ], [ 0, %brelse.exit.while.body_crit_edge ]
  %12 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize, align 16
  %sub15 = sub i32 %13, %offset.0129
  %14 = call i32 @llvm.umin.i32(i32 %sub15, i32 %toread.0132)
  %15 = ptrtoint ptr %pcount to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %pcount, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool.not = icmp eq i64 %16, 0
  br i1 %tobool.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %while.body
  %call19 = call i32 @ocfs2_extent_map_get_blocks(ptr noundef %3, i64 noundef %blk.0130, ptr noundef nonnull %pblock, ptr noundef nonnull %pcount, ptr noundef null) #9
  %17 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call19, label %do.body [
    i32 0, label %if.then18.if.end44_crit_edge
    i32 -512, label %if.then18.cleanup_crit_edge
    i32 -4, label %if.then18.cleanup_crit_edge152
    i32 524289, label %if.then18.cleanup_crit_edge153
    i32 -28, label %if.then18.cleanup_crit_edge154
    i32 -122, label %if.then18.cleanup_crit_edge155
  ]

if.then18.cleanup_crit_edge155:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18.cleanup_crit_edge154:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18.cleanup_crit_edge153:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18.cleanup_crit_edge152:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18.if.end44_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.body:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %18 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv39 = sext i32 %call19 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_quota_read, i32 noundef 191, ptr noundef nonnull @.str, i64 noundef %conv39) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %cleanup

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i64 %16, -1
  %19 = ptrtoint ptr %pcount to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %dec, ptr %pcount, align 8
  %20 = ptrtoint ptr %pblock to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pblock, align 8
  %inc = add i64 %21, 1
  store i64 %inc, ptr %pblock, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then18.if.end44_crit_edge
  %22 = ptrtoint ptr %pblock to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %pblock, align 8
  %24 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %bh, align 4
  %call1.i = call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i.i, i64 noundef %23, i32 noundef 1, ptr noundef nonnull %bh, i32 noundef 0, ptr noundef nonnull @ocfs2_validate_quota_block) #9
  %25 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %call1.i, label %do.body.i [
    i32 0, label %if.end75
    i32 -512, label %if.end44.cleanup_crit_edge
    i32 -4, label %if.end44.cleanup_crit_edge156
    i32 524289, label %if.end44.cleanup_crit_edge157
    i32 -28, label %if.end44.cleanup_crit_edge158
    i32 -122, label %if.end44.cleanup_crit_edge159
  ]

if.end44.cleanup_crit_edge159:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44.cleanup_crit_edge158:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44.cleanup_crit_edge157:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44.cleanup_crit_edge156:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #9
  %26 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv.i = sext i32 %call1.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_read_quota_phys_block, i32 noundef 160, ptr noundef nonnull @.str, i64 noundef %conv.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m65) #9
  %27 = ptrtoint ptr %_m65 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 1152921504606846976, ptr %_m65, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m65, ptr noundef nonnull @__func__.ocfs2_quota_read, i32 noundef 201, ptr noundef nonnull @.str, i64 noundef %conv.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m65) #9
  br label %cleanup

if.end75:                                         ; preds = %if.end44
  %28 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %31, i32 %offset.0129
  %32 = call ptr @memcpy(ptr %data.addr.0133, ptr %add.ptr, i32 %14)
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end75.brelse.exit_crit_edge, label %if.then.i

if.end75.brelse.exit_crit_edge:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %29) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end75.brelse.exit_crit_edge
  %sub76 = sub i32 %toread.0132, %14
  %add.ptr77 = getelementptr i8, ptr %data.addr.0133, i32 %14
  %inc78 = add i64 %blk.0130, 1
  %cmp12.not = icmp eq i32 %sub76, 0
  br i1 %cmp12.not, label %brelse.exit.cleanup_crit_edge, label %brelse.exit.while.body_crit_edge

brelse.exit.while.body_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit.cleanup_crit_edge, %do.body.i, %if.end44.cleanup_crit_edge, %if.end44.cleanup_crit_edge156, %if.end44.cleanup_crit_edge157, %if.end44.cleanup_crit_edge158, %if.end44.cleanup_crit_edge159, %do.body, %if.then18.cleanup_crit_edge, %if.then18.cleanup_crit_edge152, %if.then18.cleanup_crit_edge153, %if.then18.cleanup_crit_edge154, %if.then18.cleanup_crit_edge155, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call19, %do.body ], [ %call1.i, %do.body.i ], [ 0, %if.end.cleanup_crit_edge ], [ %call19, %if.then18.cleanup_crit_edge ], [ %call19, %if.then18.cleanup_crit_edge152 ], [ %call19, %if.then18.cleanup_crit_edge153 ], [ %call19, %if.then18.cleanup_crit_edge154 ], [ %call19, %if.then18.cleanup_crit_edge155 ], [ %len.addr.0, %brelse.exit.cleanup_crit_edge ], [ %call1.i, %if.end44.cleanup_crit_edge ], [ %call1.i, %if.end44.cleanup_crit_edge156 ], [ %call1.i, %if.end44.cleanup_crit_edge157 ], [ %call1.i, %if.end44.cleanup_crit_edge158 ], [ %call1.i, %if.end44.cleanup_crit_edge159 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pcount) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pblock) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #9
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !105
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %1 = tail call ptr @llvm.returnaddress(i32 0) #9
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call ptr @llvm.returnaddress(i32 0) #9
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #9
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !106
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !96

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !107
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !109
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !110
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !111
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_extent_map_get_blocks(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_quota_write(ptr nocapture noundef readonly %sb, i32 noundef %type, ptr nocapture noundef readonly %data, i32 noundef %len, i64 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %bh = alloca ptr, align 4
  %pblock = alloca i64, align 8
  %pcount = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m70 = alloca i64, align 8
  %_m114 = alloca i64, align 8
  %_m156 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 8
  %0 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dqi_priv, align 8
  %dqi_gqinode = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dqi_gqinode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dqi_gqinode, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %5, -1
  %6 = trunc i64 %off to i32
  %conv1 = and i32 %sub, %6
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %7 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %8 to i64
  %shr = ashr i64 %off, %sh_prom
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #9
  %9 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %bh, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 146
  %14 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %journal_info.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pblock) #9
  %16 = ptrtoint ptr %pblock to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %pblock, align 8, !annotation !104
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pcount) #9
  %17 = ptrtoint ptr %pcount to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %pcount, align 8, !annotation !104
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %18 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv7 = zext i32 %len to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_quota_write, i32 noundef 232, ptr noundef nonnull @.str.1, i64 noundef %off, i64 noundef %conv7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %cleanup169

if.end8:                                          ; preds = %entry
  %sub10 = add i32 %5, -8
  %sub11 = sub i32 %sub10, %conv1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub11, i32 %len)
  %cmp = icmp ult i32 %sub11, %len
  br i1 %cmp, label %do.end21, label %if.end8.if.end37_crit_edge

if.end8.if.end37_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.end21:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 236, i32 noundef 9, ptr noundef null) #9
  %19 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_blocksize, align 16
  %sub35 = sub i32 -8, %conv1
  %sub36 = add i32 %sub35, %20
  br label %if.end37

if.end37:                                         ; preds = %do.end21, %if.end8.if.end37_crit_edge
  %len.addr.0 = phi i32 [ %sub36, %do.end21 ], [ %len, %if.end8.if.end37_crit_edge ]
  %call38 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %conv39 = zext i32 %len.addr.0 to i64
  %add = add i64 %conv39, %off
  call void @__sanitizer_cov_trace_cmp8(i64 %call38, i64 %add)
  %cmp40 = icmp slt i64 %call38, %add
  br i1 %cmp40, label %if.then42, label %if.end37.if.end51_crit_edge

if.end37.if.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then42:                                        ; preds = %if.end37
  %21 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_blocksize, align 16
  %sub.i.i = add i32 %22, -1
  %conv.i.i = zext i32 %sub.i.i to i64
  %add.i.i = add i64 %add, %conv.i.i
  %23 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom.i.i = zext i8 %24 to i64
  %25 = shl nsw i64 -1, %sh_prom.i.i
  %shl.i = and i64 %25, %add.i.i
  %dqi_gqi_bh = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %dqi_gqi_bh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dqi_gqi_bh, align 8
  %call46 = tail call i32 @ocfs2_simple_size_update(ptr noundef %3, ptr noundef %27, i64 noundef %shl.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then42.out_crit_edge, label %if.then42.if.end51_crit_edge

if.then42.if.end51_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then42.out_crit_edge:                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end51:                                         ; preds = %if.then42.if.end51_crit_edge, %if.end37.if.end51_crit_edge
  %28 = xor i1 %cmp40, true
  %call52 = call i32 @ocfs2_extent_map_get_blocks(ptr noundef %3, i64 noundef %shr, ptr noundef nonnull %pblock, ptr noundef nonnull %pcount, ptr noundef null) #9
  %29 = zext i32 %call52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call52, label %do.body69 [
    i32 0, label %if.end80
    i32 -512, label %if.end51.out_crit_edge
    i32 -4, label %if.end51.out_crit_edge260
    i32 524289, label %if.end51.out_crit_edge261
    i32 -28, label %if.end51.out_crit_edge262
    i32 -122, label %if.end51.out_crit_edge263
  ]

if.end51.out_crit_edge263:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end51.out_crit_edge262:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end51.out_crit_edge261:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end51.out_crit_edge260:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body69:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m70) #9
  %30 = ptrtoint ptr %_m70 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 1152921504606846976, ptr %_m70, align 8
  %conv74 = sext i32 %call52 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m70, ptr noundef nonnull @__func__.ocfs2_quota_write, i32 noundef 254, ptr noundef nonnull @.str, i64 noundef %conv74) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m70) #9
  br label %out

if.end80:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool81.not = icmp eq i32 %conv1, 0
  br i1 %tobool81.not, label %lor.lhs.false, label %land.lhs.true86

lor.lhs.false:                                    ; preds = %if.end80
  %31 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_blocksize, align 16
  %sub83 = add i32 %32, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0, i32 %sub83)
  %cmp84 = icmp ult i32 %len.addr.0, %sub83
  %or.cond = select i1 %cmp84, i1 %28, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then88_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

lor.lhs.false.if.then88_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then88

land.lhs.true86:                                  ; preds = %if.end80
  br i1 %cmp40, label %land.lhs.true86.if.else_crit_edge, label %land.lhs.true86.if.then88_crit_edge

land.lhs.true86.if.then88_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then88

land.lhs.true86.if.else_crit_edge:                ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then88:                                        ; preds = %land.lhs.true86.if.then88_crit_edge, %lor.lhs.false.if.then88_crit_edge
  %33 = ptrtoint ptr %pblock to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %pblock, align 8
  %35 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %bh, align 4
  %ip_metadata_cache.i.i = getelementptr i8, ptr %3, i32 -56
  %call1.i = call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i.i, i64 noundef %34, i32 noundef 1, ptr noundef nonnull %bh, i32 noundef 0, ptr noundef nonnull @ocfs2_validate_quota_block) #9
  %36 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call1.i, label %do.body.i [
    i32 0, label %if.end124.thread
    i32 -512, label %if.then88.out_crit_edge
    i32 -4, label %if.then88.out_crit_edge264
    i32 524289, label %if.then88.out_crit_edge265
    i32 -28, label %if.then88.out_crit_edge266
    i32 -122, label %if.then88.out_crit_edge267
  ]

if.then88.out_crit_edge267:                       ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then88.out_crit_edge266:                       ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then88.out_crit_edge265:                       ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then88.out_crit_edge264:                       ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then88.out_crit_edge:                          ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body.i:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #9
  %37 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv.i = sext i32 %call1.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_read_quota_phys_block, i32 noundef 160, ptr noundef nonnull @.str, i64 noundef %conv.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #9
  br label %do.body113

if.else:                                          ; preds = %land.lhs.true86.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %38 = ptrtoint ptr %pblock to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %pblock, align 8
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %40 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_bdev.i, align 4
  %42 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_blocksize, align 16
  %call.i = call ptr @__getblk_gfp(ptr noundef %41, i64 noundef %39, i32 noundef %43, i32 noundef 8) #9
  %44 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %bh, align 4
  %tobool91.not = icmp eq ptr %call.i, null
  br i1 %tobool91.not, label %if.else.do.body113_crit_edge, label %if.end124

if.else.do.body113_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body113

if.end124.thread:                                 ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bh, align 4
  call fastcc void @lock_buffer(ptr noundef %46)
  br label %if.end128

do.body113:                                       ; preds = %if.else.do.body113_crit_edge, %do.body.i
  %err.1252 = phi i32 [ %call1.i, %do.body.i ], [ -12, %if.else.do.body113_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m114) #9
  %47 = ptrtoint ptr %_m114 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 1152921504606846976, ptr %_m114, align 8
  %conv118 = sext i32 %err.1252 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m114, ptr noundef nonnull @__func__.ocfs2_quota_write, i32 noundef 269, ptr noundef nonnull @.str, i64 noundef %conv118) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m114) #9
  br label %out

if.end124:                                        ; preds = %if.else
  %48 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bh, align 4
  call fastcc void @lock_buffer(ptr noundef %49)
  br i1 %cmp40, label %if.then126, label %if.end124.if.end128_crit_edge

if.end124.if.end128_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.then126:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %b_data, align 4
  %54 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_blocksize, align 16
  %56 = call ptr @memset(ptr %53, i32 0, i32 %55)
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.end124.if.end128_crit_edge, %if.end124.thread
  %ja_type.0256259 = phi i32 [ 1, %if.end124.thread ], [ 0, %if.then126 ], [ 0, %if.end124.if.end128_crit_edge ]
  %57 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bh, align 4
  %b_data129 = getelementptr inbounds %struct.buffer_head, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %b_data129 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_data129, align 4
  %add.ptr = getelementptr i8, ptr %60, i32 %conv1
  %61 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %len.addr.0)
  %62 = load ptr, ptr %bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %b_page, align 8
  call void @flush_dcache_page(ptr noundef %64) #9
  %65 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bh, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  %and1.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end128.set_buffer_uptodate.exit_crit_edge

if.end128.set_buffer_uptodate.exit_crit_edge:     ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 0, ptr noundef %66) #9
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %if.end128.set_buffer_uptodate.exit_crit_edge
  %69 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bh, align 4
  call void @unlock_buffer(ptr noundef %70) #9
  %ip_metadata_cache.i = getelementptr i8, ptr %3, i32 -56
  %71 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bh, align 4
  call void @ocfs2_set_buffer_uptodate(ptr noundef %ip_metadata_cache.i, ptr noundef %72) #9
  %73 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bh, align 4
  %call132 = call i32 @ocfs2_journal_access_dq(ptr noundef nonnull %15, ptr noundef %ip_metadata_cache.i, ptr noundef %74, i32 noundef %ja_type.0256259) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp slt i32 %call132, 0
  %75 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bh, align 4
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %set_buffer_uptodate.exit
  %tobool.not.i244 = icmp eq ptr %76, null
  br i1 %tobool.not.i244, label %if.then135.out_crit_edge, label %if.then.i245

if.then135.out_crit_edge:                         ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i245:                                     ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %76) #9
  br label %out

if.end136:                                        ; preds = %set_buffer_uptodate.exit
  call void @ocfs2_journal_dirty(ptr noundef nonnull %15, ptr noundef %76) #9
  %77 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bh, align 4
  %tobool.not.i246 = icmp eq ptr %78, null
  br i1 %tobool.not.i246, label %if.end136.out_crit_edge, label %if.then.i247

if.end136.out_crit_edge:                          ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i247:                                     ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %78) #9
  br label %out

out:                                              ; preds = %if.then.i247, %if.end136.out_crit_edge, %if.then.i245, %if.then135.out_crit_edge, %do.body113, %if.then88.out_crit_edge, %if.then88.out_crit_edge264, %if.then88.out_crit_edge265, %if.then88.out_crit_edge266, %if.then88.out_crit_edge267, %do.body69, %if.end51.out_crit_edge, %if.end51.out_crit_edge260, %if.end51.out_crit_edge261, %if.end51.out_crit_edge262, %if.end51.out_crit_edge263, %if.then42.out_crit_edge
  %err.2 = phi i32 [ %call46, %if.then42.out_crit_edge ], [ %call52, %if.end51.out_crit_edge ], [ %call52, %if.end51.out_crit_edge260 ], [ %call52, %if.end51.out_crit_edge261 ], [ %call52, %if.end51.out_crit_edge262 ], [ %call52, %if.end51.out_crit_edge263 ], [ %call52, %do.body69 ], [ %err.1252, %do.body113 ], [ %call132, %if.then135.out_crit_edge ], [ %call132, %if.then.i245 ], [ %call132, %if.end136.out_crit_edge ], [ %call132, %if.then.i247 ], [ %call1.i, %if.then88.out_crit_edge ], [ %call1.i, %if.then88.out_crit_edge264 ], [ %call1.i, %if.then88.out_crit_edge265 ], [ %call1.i, %if.then88.out_crit_edge266 ], [ %call1.i, %if.then88.out_crit_edge267 ]
  %79 = zext i32 %err.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %err.2, label %do.body155 [
    i32 0, label %if.end166
    i32 -512, label %out.cleanup169_crit_edge
    i32 -4, label %out.cleanup169_crit_edge268
    i32 524289, label %out.cleanup169_crit_edge269
    i32 -28, label %out.cleanup169_crit_edge270
    i32 -122, label %out.cleanup169_crit_edge271
  ]

out.cleanup169_crit_edge271:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup169

out.cleanup169_crit_edge270:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup169

out.cleanup169_crit_edge269:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup169

out.cleanup169_crit_edge268:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup169

out.cleanup169_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup169

do.body155:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m156) #9
  %80 = ptrtoint ptr %_m156 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 1152921504606846976, ptr %_m156, align 8
  %conv160 = sext i32 %err.2 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m156, ptr noundef nonnull @__func__.ocfs2_quota_write, i32 noundef 290, ptr noundef nonnull @.str, i64 noundef %conv160) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m156) #9
  br label %cleanup169

if.end166:                                        ; preds = %out
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !112
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 38
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i1.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #9
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end166
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %if.end166 ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %81 = add i64 %cur.0.i.i, 2
  %add.i.i249 = and i64 %81, -2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i249) #9
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !99

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dqi_gqi_bh167 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 8
  %82 = ptrtoint ptr %dqi_gqi_bh167 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dqi_gqi_bh167, align 8
  %call168 = call i32 @ocfs2_mark_inode_dirty(ptr noundef nonnull %15, ptr noundef %3, ptr noundef %83) #9
  br label %cleanup169

cleanup169:                                       ; preds = %inode_inc_iversion.exit, %do.body155, %out.cleanup169_crit_edge, %out.cleanup169_crit_edge268, %out.cleanup169_crit_edge269, %out.cleanup169_crit_edge270, %out.cleanup169_crit_edge271, %do.body
  %retval.0 = phi i32 [ %len.addr.0, %inode_inc_iversion.exit ], [ -5, %do.body ], [ %err.2, %out.cleanup169_crit_edge ], [ %err.2, %out.cleanup169_crit_edge268 ], [ %err.2, %out.cleanup169_crit_edge269 ], [ %err.2, %out.cleanup169_crit_edge270 ], [ %err.2, %out.cleanup169_crit_edge271 ], [ %err.2, %do.body155 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pcount) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pblock) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_simple_size_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lock_buffer(ptr noundef %bh) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 366) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #9
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %and.i.i.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %trylock_buffer.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

trylock_buffer.exit:                              ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #9, !srcloc !113
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !114
  %3 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %trylock_buffer.exit.if.end_crit_edge, label %trylock_buffer.exit.if.then_crit_edge

trylock_buffer.exit.if.then_crit_edge:            ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

trylock_buffer.exit.if.end_crit_edge:             ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %trylock_buffer.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %trylock_buffer.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_set_buffer_uptodate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_journal_access_dq(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_journal_dirty(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_lock_global_qf(ptr nocapture noundef %oinfo, i32 noundef %ex) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #9
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bh, align 4
  %dqi_gqinode = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 6
  %1 = ptrtoint ptr %dqi_gqinode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dqi_gqinode, align 4
  %call = call i32 @ocfs2_inode_lock_full_nested(ptr noundef %2, ptr noundef nonnull %bh, i32 noundef %ex, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #9
  %dqi_gqi_count = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 9
  %3 = ptrtoint ptr %dqi_gqi_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dqi_gqi_count, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %dqi_gqi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %5 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bh, align 4
  %dqi_gqi_bh = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 8
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %dqi_gqi_bh to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %dqi_gqi_bh, align 8
  br label %if.end25

if.else:                                          ; preds = %if.end
  %8 = ptrtoint ptr %dqi_gqi_bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dqi_gqi_bh, align 8
  %cmp3.not = icmp eq ptr %6, %9
  br i1 %cmp3.not, label %if.else.if.end25_crit_edge, label %do.end, !prof !99

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 310, i32 noundef 9, ptr noundef null) #9
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.else.if.end25_crit_edge, %if.then1
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ex)
  %tobool26.not = icmp eq i32 %ex, 0
  %10 = ptrtoint ptr %dqi_gqinode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dqi_gqinode, align 4
  br i1 %tobool26.not, label %if.else31, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i) #9
  %12 = ptrtoint ptr %dqi_gqinode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dqi_gqinode, align 4
  %ip_alloc_sem = getelementptr i8, ptr %13, i32 -424
  call void @down_write(ptr noundef %ip_alloc_sem) #9
  br label %cleanup

if.else31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %ip_alloc_sem34 = getelementptr i8, ptr %11, i32 -424
  call void @down_read(ptr noundef %ip_alloc_sem34) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else31, %if.then27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.else31 ], [ 0, %if.then27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_lock_full_nested(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_unlock_global_qf(ptr nocapture noundef %oinfo, i32 noundef %ex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ex)
  %tobool.not = icmp eq i32 %ex, 0
  %dqi_gqinode2 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 6
  %0 = ptrtoint ptr %dqi_gqinode2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dqi_gqinode2, align 4
  %ip_alloc_sem4 = getelementptr i8, ptr %1, i32 -424
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @up_write(ptr noundef %ip_alloc_sem4) #9
  %2 = ptrtoint ptr %dqi_gqinode2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dqi_gqinode2, align 4
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @up_read(ptr noundef %ip_alloc_sem4) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dqi_gqinode5 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 6
  %4 = ptrtoint ptr %dqi_gqinode5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dqi_gqinode5, align 4
  tail call void @ocfs2_inode_unlock(ptr noundef %5, i32 noundef %ex) #9
  %dqi_gqi_bh = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 8
  %6 = ptrtoint ptr %dqi_gqi_bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dqi_gqi_bh, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.brelse.exit_crit_edge, label %if.then.i

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %7) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end.brelse.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #9
  %dqi_gqi_count = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %oinfo, i32 0, i32 9
  %8 = ptrtoint ptr %dqi_gqi_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dqi_gqi_count, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %dqi_gqi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %if.then7, label %brelse.exit.if.end9_crit_edge

brelse.exit.if.end9_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dqi_gqi_bh to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dqi_gqi_bh, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %brelse.exit.if.end9_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_inode_unlock(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_global_read_info(ptr noundef %sb, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %dinfo = alloca %struct.ocfs2_global_disk_dqinfo, align 4
  %pcount = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m20 = alloca i64, align 8
  %_m44 = alloca i64, align 8
  %_m72 = alloca i64, align 8
  %_m138 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dinfo) #9
  %0 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, ptr %dinfo, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, ptr %dinfo, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, ptr %dinfo, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, ptr %dinfo, i32 0, i32 4
  %4 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, ptr %dinfo, i32 0, i32 5
  %info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 8
  %5 = call ptr @memset(ptr %dinfo, i32 255, i32 24)
  %6 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dqi_priv, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pcount) #9
  %8 = ptrtoint ptr %pcount to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %pcount, align 8, !annotation !104
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info, align 16
  %arrayidx = getelementptr [2 x i32], ptr @__const.ocfs2_global_read_info.ino, i32 0, i32 %type
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %call1 = tail call ptr @ocfs2_get_system_file_inode(ptr noundef %10, i32 noundef %12, i32 noundef 65535) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %13 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_global_read_info, i32 noundef 354, ptr noundef nonnull @.str.3, i32 noundef %type) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %out_err

if.end4:                                          ; preds = %entry
  %dqi_gi = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 13
  %14 = ptrtoint ptr %dqi_gi to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sb, ptr %dqi_gi, align 8
  %dqi_type = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %dqi_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %type, ptr %dqi_type, align 4
  %dqi_entry_size = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 13, i32 6
  %16 = ptrtoint ptr %dqi_entry_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 88, ptr %dqi_entry_size, align 8
  %dqi_ops = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 13, i32 9
  %17 = ptrtoint ptr %dqi_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ocfs2_global_ops, ptr %dqi_ops, align 4
  %dqi_gqi_bh = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 8
  %18 = ptrtoint ptr %dqi_gqi_bh to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %dqi_gqi_bh, align 8
  %dqi_gqi_count = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 9
  %19 = ptrtoint ptr %dqi_gqi_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dqi_gqi_count, align 4
  %dqi_gqinode = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 6
  %20 = ptrtoint ptr %dqi_gqinode to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call1, ptr %dqi_gqinode, align 4
  %call8 = tail call i32 @ocfs2_lock_global_qf(ptr noundef %7, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.then9, label %if.end28

if.then9:                                         ; preds = %if.end4
  %21 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call8, label %do.body19 [
    i32 -512, label %if.then9.out_err_crit_edge
    i32 -4, label %if.then9.out_err_crit_edge234
    i32 -28, label %if.then9.out_err_crit_edge235
    i32 -122, label %if.then9.out_err_crit_edge236
  ]

if.then9.out_err_crit_edge236:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.then9.out_err_crit_edge235:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.then9.out_err_crit_edge234:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.then9.out_err_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

do.body19:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m20) #9
  %22 = ptrtoint ptr %_m20 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1152921504606846976, ptr %_m20, align 8
  %conv = sext i32 %call8 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m20, ptr noundef nonnull @__func__.ocfs2_global_read_info, i32 noundef 367, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m20) #9
  br label %out_err

if.end28:                                         ; preds = %if.end4
  %dqi_giblk = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 10
  %call29 = call i32 @ocfs2_extent_map_get_blocks(ptr noundef nonnull %call1, i64 noundef 0, ptr noundef %dqi_giblk, ptr noundef nonnull %pcount, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.out_unlock_crit_edge, label %if.end33

if.end28.out_unlock_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end33:                                         ; preds = %if.end28
  %call34 = call i32 @ocfs2_qinfo_lock(ptr noundef %7, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end33.out_unlock_crit_edge, label %if.end38

if.end33.out_unlock_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end38:                                         ; preds = %if.end33
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %23 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_op, align 4
  %quota_read = getelementptr inbounds %struct.super_operations, ptr %24, i32 0, i32 20
  %25 = ptrtoint ptr %quota_read to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %quota_read, align 4
  %call39 = call i32 %26(ptr noundef %sb, i32 noundef %type, ptr noundef nonnull %dinfo, i32 noundef 24, i64 noundef 8) #9
  call void @ocfs2_qinfo_unlock(ptr noundef %7, i32 noundef 0) #9
  %27 = ptrtoint ptr %dqi_gqinode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dqi_gqinode, align 4
  %ip_alloc_sem4.i = getelementptr i8, ptr %28, i32 -424
  call void @up_read(ptr noundef %ip_alloc_sem4.i) #9
  %29 = ptrtoint ptr %dqi_gqinode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dqi_gqinode, align 4
  call void @ocfs2_inode_unlock(ptr noundef %30, i32 noundef 0) #9
  %31 = ptrtoint ptr %dqi_gqi_bh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dqi_gqi_bh, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end38.brelse.exit.i_crit_edge, label %if.then.i.i

if.end38.brelse.exit.i_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %32) #9
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %if.end38.brelse.exit.i_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #9
  %33 = ptrtoint ptr %dqi_gqi_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dqi_gqi_count, align 4
  %dec.i = add i32 %34, -1
  store i32 %dec.i, ptr %dqi_gqi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool6.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %brelse.exit.i.ocfs2_unlock_global_qf.exit_crit_edge

brelse.exit.i.ocfs2_unlock_global_qf.exit_crit_edge: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_unlock_global_qf.exit

if.then7.i:                                       ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %dqi_gqi_bh to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %dqi_gqi_bh, align 8
  br label %ocfs2_unlock_global_qf.exit

ocfs2_unlock_global_qf.exit:                      ; preds = %if.then7.i, %brelse.exit.i.ocfs2_unlock_global_qf.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 24
  br i1 %cmp40.not, label %if.end82, label %do.body43

do.body43:                                        ; preds = %ocfs2_unlock_global_qf.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m44) #9
  %36 = ptrtoint ptr %_m44 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1152921504606846976, ptr %_m44, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m44, ptr noundef nonnull @__func__.ocfs2_global_read_info, i32 noundef 386, ptr noundef nonnull @.str.4, i32 noundef %call39) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m44) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call39)
  %cmp51 = icmp sgt i32 %call39, -1
  %spec.store.select = select i1 %cmp51, i32 -5, i32 %call39
  %37 = zext i32 %spec.store.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %spec.store.select, label %do.body71 [
    i32 -512, label %do.body43.out_err_crit_edge
    i32 -4, label %do.body43.out_err_crit_edge237
    i32 -122, label %do.body43.out_err_crit_edge238
    i32 -28, label %do.body43.out_err_crit_edge239
  ]

do.body43.out_err_crit_edge239:                   ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

do.body43.out_err_crit_edge238:                   ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

do.body43.out_err_crit_edge237:                   ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

do.body43.out_err_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

do.body71:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m72) #9
  %38 = ptrtoint ptr %_m72 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1152921504606846976, ptr %_m72, align 8
  %conv76 = sext i32 %spec.store.select to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m72, ptr noundef nonnull @__func__.ocfs2_global_read_info, i32 noundef 389, ptr noundef nonnull @.str, i64 noundef %conv76) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m72) #9
  br label %out_err

if.end82:                                         ; preds = %ocfs2_unlock_global_qf.exit
  %39 = ptrtoint ptr %dinfo to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dinfo, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %dqi_bgrace83 = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 4
  %42 = ptrtoint ptr %dqi_bgrace83 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %dqi_bgrace83, align 4
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %0, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %dqi_igrace84 = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 5
  %46 = ptrtoint ptr %dqi_igrace84 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %dqi_igrace84, align 8
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %1, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %dqi_syncms85 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 4
  %50 = ptrtoint ptr %dqi_syncms85 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %dqi_syncms85, align 8
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %2, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  %dqi_blocks87 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 13, i32 2
  %54 = ptrtoint ptr %dqi_blocks87 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %dqi_blocks87, align 8
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %3, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %dqi_free_blk89 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 13, i32 3
  %58 = ptrtoint ptr %dqi_free_blk89 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %dqi_free_blk89, align 4
  %59 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %4, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  %dqi_free_entry91 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 13, i32 4
  %62 = ptrtoint ptr %dqi_free_entry91 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %dqi_free_entry91, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %63 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %s_blocksize_bits, align 4
  %conv92 = zext i8 %64 to i32
  %dqi_blocksize_bits = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 13, i32 5
  %65 = ptrtoint ptr %dqi_blocksize_bits to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv92, ptr %dqi_blocksize_bits, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %66 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %67, -8
  %dqi_usable_bs = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 13, i32 7
  %68 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub, ptr %dqi_usable_bs, align 4
  %shr.i = lshr i32 %sub, 2
  %conv.i = zext i32 %shr.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end82
  %i.07.i = phi i32 [ 1, %if.end82 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %entries.06.i = phi i64 [ %conv.i, %if.end82 ], [ %mul.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = mul i64 %entries.06.i, %conv.i
  %inc.i = add i32 %i.07.i, 1
  %cmp.i219 = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp.i219, label %for.body.i.for.body.i_crit_edge, label %qtree_depth.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

qtree_depth.exit:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dqi_qtree_depth = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 13, i32 8
  %69 = ptrtoint ptr %dqi_qtree_depth to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %inc.i, ptr %dqi_qtree_depth, align 8
  %dqi_sync_work = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 14
  call void @__init_work(ptr noundef %dqi_sync_work, i32 noundef 0) #9
  %70 = ptrtoint ptr %dqi_sync_work to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -64, ptr %dqi_sync_work, align 8
  %lockdep_map = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 14, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @ocfs2_global_read_info.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry106 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 14, i32 0, i32 1
  %71 = ptrtoint ptr %entry106 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %entry106, ptr %entry106, align 4
  %prev.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 14, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %entry106, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 14, i32 0, i32 2
  %73 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @qsync_work_fn, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 14, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @ocfs2_global_read_info.__key.6) #9
  %74 = ptrtoint ptr %dqi_syncms85 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dqi_syncms85, align 8
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %75) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %76 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %76, ptr noundef %dqi_sync_work, i32 noundef %call2.i) #9
  br label %out_err

out_err:                                          ; preds = %do.body137, %ocfs2_unlock_global_qf.exit233.out_err_crit_edge, %ocfs2_unlock_global_qf.exit233.out_err_crit_edge240, %ocfs2_unlock_global_qf.exit233.out_err_crit_edge241, %ocfs2_unlock_global_qf.exit233.out_err_crit_edge242, %qtree_depth.exit, %do.body71, %do.body43.out_err_crit_edge, %do.body43.out_err_crit_edge237, %do.body43.out_err_crit_edge238, %do.body43.out_err_crit_edge239, %do.body19, %if.then9.out_err_crit_edge, %if.then9.out_err_crit_edge234, %if.then9.out_err_crit_edge235, %if.then9.out_err_crit_edge236, %do.body
  %status.0 = phi i32 [ 24, %qtree_depth.exit ], [ -22, %do.body ], [ %call8, %if.then9.out_err_crit_edge ], [ %call8, %if.then9.out_err_crit_edge234 ], [ %call8, %if.then9.out_err_crit_edge235 ], [ %call8, %if.then9.out_err_crit_edge236 ], [ %call8, %do.body19 ], [ %spec.store.select, %do.body43.out_err_crit_edge ], [ %spec.store.select, %do.body43.out_err_crit_edge237 ], [ %spec.store.select, %do.body43.out_err_crit_edge238 ], [ %spec.store.select, %do.body43.out_err_crit_edge239 ], [ %spec.store.select, %do.body71 ], [ %status.1, %ocfs2_unlock_global_qf.exit233.out_err_crit_edge ], [ %status.1, %ocfs2_unlock_global_qf.exit233.out_err_crit_edge240 ], [ %status.1, %ocfs2_unlock_global_qf.exit233.out_err_crit_edge241 ], [ %status.1, %ocfs2_unlock_global_qf.exit233.out_err_crit_edge242 ], [ %status.1, %do.body137 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pcount) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dinfo) #9
  ret i32 %status.0

out_unlock:                                       ; preds = %if.end33.out_unlock_crit_edge, %if.end28.out_unlock_crit_edge
  %status.1 = phi i32 [ %call29, %if.end28.out_unlock_crit_edge ], [ %call34, %if.end33.out_unlock_crit_edge ]
  %77 = ptrtoint ptr %dqi_gqinode to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dqi_gqinode, align 4
  %ip_alloc_sem4.i221 = getelementptr i8, ptr %78, i32 -424
  call void @up_read(ptr noundef %ip_alloc_sem4.i221) #9
  %79 = ptrtoint ptr %dqi_gqinode to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dqi_gqinode, align 4
  call void @ocfs2_inode_unlock(ptr noundef %80, i32 noundef 0) #9
  %81 = ptrtoint ptr %dqi_gqi_bh to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dqi_gqi_bh, align 8
  %tobool.not.i.i225 = icmp eq ptr %82, null
  br i1 %tobool.not.i.i225, label %out_unlock.brelse.exit.i231_crit_edge, label %if.then.i.i227

out_unlock.brelse.exit.i231_crit_edge:            ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i231

if.then.i.i227:                                   ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %82) #9
  br label %brelse.exit.i231

brelse.exit.i231:                                 ; preds = %if.then.i.i227, %out_unlock.brelse.exit.i231_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #9
  %83 = ptrtoint ptr %dqi_gqi_count to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dqi_gqi_count, align 4
  %dec.i229 = add i32 %84, -1
  store i32 %dec.i229, ptr %dqi_gqi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i229)
  %tobool6.not.i230 = icmp eq i32 %dec.i229, 0
  br i1 %tobool6.not.i230, label %if.then7.i232, label %brelse.exit.i231.ocfs2_unlock_global_qf.exit233_crit_edge

brelse.exit.i231.ocfs2_unlock_global_qf.exit233_crit_edge: ; preds = %brelse.exit.i231
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_unlock_global_qf.exit233

if.then7.i232:                                    ; preds = %brelse.exit.i231
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %dqi_gqi_bh to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %dqi_gqi_bh, align 8
  br label %ocfs2_unlock_global_qf.exit233

ocfs2_unlock_global_qf.exit233:                   ; preds = %if.then7.i232, %brelse.exit.i231.ocfs2_unlock_global_qf.exit233_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #9
  %86 = zext i32 %status.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %status.1, label %do.body137 [
    i32 -512, label %ocfs2_unlock_global_qf.exit233.out_err_crit_edge
    i32 -4, label %ocfs2_unlock_global_qf.exit233.out_err_crit_edge240
    i32 -28, label %ocfs2_unlock_global_qf.exit233.out_err_crit_edge241
    i32 -122, label %ocfs2_unlock_global_qf.exit233.out_err_crit_edge242
  ]

ocfs2_unlock_global_qf.exit233.out_err_crit_edge242: ; preds = %ocfs2_unlock_global_qf.exit233
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

ocfs2_unlock_global_qf.exit233.out_err_crit_edge241: ; preds = %ocfs2_unlock_global_qf.exit233
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

ocfs2_unlock_global_qf.exit233.out_err_crit_edge240: ; preds = %ocfs2_unlock_global_qf.exit233
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

ocfs2_unlock_global_qf.exit233.out_err_crit_edge: ; preds = %ocfs2_unlock_global_qf.exit233
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

do.body137:                                       ; preds = %ocfs2_unlock_global_qf.exit233
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m138) #9
  %87 = ptrtoint ptr %_m138 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 1152921504606846976, ptr %_m138, align 8
  %conv142 = sext i32 %status.1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m138, ptr noundef nonnull @__func__.ocfs2_global_read_info, i32 noundef 410, ptr noundef nonnull @.str, i64 noundef %conv142) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m138) #9
  br label %out_err
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_get_system_file_inode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_qinfo_lock(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_qinfo_unlock(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qsync_work_fn(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dqi_gqinode = getelementptr i8, ptr %work, i32 -460
  %0 = ptrtoint ptr %dqi_gqinode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dqi_gqinode, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_umount = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 14
  %call = tail call i32 @down_read_trylock(ptr noundef %s_umount) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.else.i_crit_edge, label %if.then

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %work, i32 -488
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 8
  %call1 = tail call i32 @dquot_scan_active(ptr noundef %3, ptr noundef nonnull @ocfs2_sync_dquot_helper, i32 noundef %5) #9
  tail call void @up_read(ptr noundef %s_umount) #9
  br label %if.else.i

if.else.i:                                        ; preds = %if.then, %entry.if.else.i_crit_edge
  %dqi_syncms = getelementptr i8, ptr %work, i32 -472
  %6 = ptrtoint ptr %dqi_syncms to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dqi_syncms, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %7) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work, i32 noundef %call2.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_global_write_info(ptr noundef %sb, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dqi_priv = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 8
  %0 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dqi_priv, align 8
  %dqio_sem = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 1
  tail call void @down_write(ptr noundef %dqio_sem) #9
  %call2 = tail call i32 @ocfs2_qinfo_lock(ptr noundef %1, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.out_sem_crit_edge, label %if.end

entry.out_sem_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sem

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call fastcc i32 @__ocfs2_global_write_info(ptr noundef %sb, i32 noundef %type)
  tail call void @ocfs2_qinfo_unlock(ptr noundef %1, i32 noundef 1) #9
  br label %out_sem

out_sem:                                          ; preds = %if.end, %entry.out_sem_crit_edge
  %err.0 = phi i32 [ %call2, %entry.out_sem_crit_edge ], [ %call3, %if.end ]
  tail call void @up_write(ptr noundef %dqio_sem) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ocfs2_global_write_info(ptr noundef %sb, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %dinfo = alloca %struct.ocfs2_global_disk_dqinfo, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 8
  %0 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dqi_priv, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dinfo) #9
  %2 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, ptr %dinfo, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, ptr %dinfo, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, ptr %dinfo, i32 0, i32 3
  %5 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, ptr %dinfo, i32 0, i32 4
  %6 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, ptr %dinfo, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #9
  %dqi_flags = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 3
  %7 = ptrtoint ptr %dqi_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dqi_flags, align 8
  %and = and i32 %8, -131073
  store i32 %and, ptr %dqi_flags, align 8
  %dqi_bgrace = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 4
  %9 = ptrtoint ptr %dqi_bgrace to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dqi_bgrace, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %dinfo to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %dinfo, align 4
  %dqi_igrace = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 5
  %13 = ptrtoint ptr %dqi_igrace to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dqi_igrace, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %2, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #9
  %dqi_syncms = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %dqi_syncms to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dqi_syncms, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %3, align 4
  %dqi_blocks = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 13, i32 2
  %21 = ptrtoint ptr %dqi_blocks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dqi_blocks, align 8
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %4, align 4
  %dqi_free_blk = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 13, i32 3
  %25 = ptrtoint ptr %dqi_free_blk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dqi_free_blk, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %5, align 4
  %dqi_free_entry = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 13, i32 4
  %29 = ptrtoint ptr %dqi_free_entry to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dqi_free_entry, align 8
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %6, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %33 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_op, align 4
  %quota_write = getelementptr inbounds %struct.super_operations, ptr %34, i32 0, i32 21
  %35 = ptrtoint ptr %quota_write to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %quota_write, align 4
  %call9 = call i32 %36(ptr noundef %sb, i32 noundef %type, ptr noundef nonnull %dinfo, i32 noundef 24, i64 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 24
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %37 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__ocfs2_global_write_info, i32 noundef 436, ptr noundef nonnull @.str.14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp12 = icmp sgt i32 %call9, -1
  %spec.store.select = select i1 %cmp12, i32 -5, i32 %call9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dinfo) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ocfs2_sync_dquot(ptr noundef %dquot, i32 noundef %freeing) local_unnamed_addr #0 align 64 {
entry:
  %dqblk = alloca %struct.ocfs2_global_disk_dqblk, align 8
  %_m = alloca i64, align 8
  %_m124 = alloca i64, align 8
  %_m175 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %type1 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type1, align 4
  %info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %3, i32 8
  %4 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dqi_priv, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %dqblk) #9
  %6 = call ptr @memset(ptr %dqblk, i32 255, i32 88)
  %s_op = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_op, align 4
  %quota_read = getelementptr inbounds %struct.super_operations, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %quota_read to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %quota_read, align 4
  %dq_off = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 9
  %11 = ptrtoint ptr %dq_off to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %dq_off, align 8
  %call2 = call i32 %10(ptr noundef %1, i32 noundef %3, ptr noundef nonnull %dqblk, i32 noundef 88, i64 noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 88
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp3 = icmp sgt i32 %call2, -1
  br i1 %cmp3, label %if.then163.thread, label %if.then.if.then163_crit_edge

if.then.if.then163_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then163

if.then163.thread:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %13 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__ocfs2_sync_dquot, i32 noundef 499, ptr noundef nonnull @.str.8, i32 noundef %call2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %do.body174

if.end7:                                          ; preds = %entry
  %dq_dqb_lock = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %dq_dqb_lock) #9
  %dqb_curspace = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dqb_curspace, align 8
  %dq_origspace = getelementptr inbounds %struct.ocfs2_dquot, ptr %dquot, i32 0, i32 5
  %16 = ptrtoint ptr %dq_origspace to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dq_origspace, align 8
  %sub = sub i64 %15, %17
  %dqb_curinodes = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 6
  %18 = ptrtoint ptr %dqb_curinodes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dqb_curinodes, align 8
  %dq_originodes = getelementptr inbounds %struct.ocfs2_dquot, ptr %dquot, i32 0, i32 6
  %20 = ptrtoint ptr %dq_originodes to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dq_originodes, align 8
  %sub11 = sub i64 %19, %21
  %dqb_itime = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 8
  %22 = ptrtoint ptr %dqb_itime to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dqb_itime, align 8
  %dqb_btime = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 7
  %24 = ptrtoint ptr %dqb_btime to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dqb_btime, align 8
  %dq_dqb.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11
  %dq_flags.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  %26 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %dq_flags.i, align 4
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end7.if.end.i_crit_edge

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %dqb_ihardlimit.i = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dqblk, i32 0, i32 2
  %29 = ptrtoint ptr %dqb_ihardlimit.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %dqb_ihardlimit.i, align 8
  %31 = call i64 @llvm.bswap.i64(i64 %30) #9
  %dqb_ihardlimit1.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 4
  %32 = ptrtoint ptr %dqb_ihardlimit1.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %dqb_ihardlimit1.i, align 8
  %dqb_isoftlimit.i = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dqblk, i32 0, i32 3
  %33 = ptrtoint ptr %dqb_isoftlimit.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %dqb_isoftlimit.i, align 8
  %35 = call i64 @llvm.bswap.i64(i64 %34) #9
  %dqb_isoftlimit2.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 5
  %36 = ptrtoint ptr %dqb_isoftlimit2.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %dqb_isoftlimit2.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end7.if.end.i_crit_edge
  %37 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %dq_flags.i, align 4
  %39 = and i32 %38, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool5.not.i = icmp eq i32 %39, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dqb_curinodes.i = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dqblk, i32 0, i32 4
  %40 = ptrtoint ptr %dqb_curinodes.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %dqb_curinodes.i, align 8
  %42 = call i64 @llvm.bswap.i64(i64 %41) #9
  %43 = ptrtoint ptr %dqb_curinodes to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %dqb_curinodes, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i.if.end8.i_crit_edge
  %44 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %dq_flags.i, align 4
  %46 = and i32 %45, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool11.not.i = icmp eq i32 %46, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end8.i.if.end15.i_crit_edge

if.end8.i.if.end15.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %dqb_bhardlimit.i = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dqblk, i32 0, i32 5
  %47 = ptrtoint ptr %dqb_bhardlimit.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %dqb_bhardlimit.i, align 8
  %49 = call i64 @llvm.bswap.i64(i64 %48) #9
  %50 = ptrtoint ptr %dq_dqb.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %dq_dqb.i, align 8
  %dqb_bsoftlimit.i = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dqblk, i32 0, i32 6
  %51 = ptrtoint ptr %dqb_bsoftlimit.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %dqb_bsoftlimit.i, align 8
  %53 = call i64 @llvm.bswap.i64(i64 %52) #9
  %dqb_bsoftlimit14.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 1
  %54 = ptrtoint ptr %dqb_bsoftlimit14.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %dqb_bsoftlimit14.i, align 8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end15.i_crit_edge
  %55 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %dq_flags.i, align 4
  %57 = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool18.not.i = icmp eq i32 %57, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end15.i.if.end21.i_crit_edge

if.end15.i.if.end21.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %dqb_curspace.i = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dqblk, i32 0, i32 7
  %58 = ptrtoint ptr %dqb_curspace.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %dqb_curspace.i, align 8
  %60 = call i64 @llvm.bswap.i64(i64 %59) #9
  %61 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %dqb_curspace, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end15.i.if.end21.i_crit_edge
  %62 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %dq_flags.i, align 4
  %64 = and i32 %63, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool24.not.i = icmp eq i32 %64, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end21.i.if.end27.i_crit_edge

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %dqb_btime.i = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dqblk, i32 0, i32 8
  %65 = ptrtoint ptr %dqb_btime.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %dqb_btime.i, align 8
  %67 = call i64 @llvm.bswap.i64(i64 %66) #9
  %68 = ptrtoint ptr %dqb_btime to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %dqb_btime, align 8
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end21.i.if.end27.i_crit_edge
  %69 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %dq_flags.i, align 4
  %71 = and i32 %70, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool30.not.i = icmp eq i32 %71, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end27.i.ocfs2_global_disk2memdqb.exit_crit_edge

if.end27.i.ocfs2_global_disk2memdqb.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_global_disk2memdqb.exit

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %dqb_itime.i = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dqblk, i32 0, i32 9
  %72 = ptrtoint ptr %dqb_itime.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %dqb_itime.i, align 8
  %74 = call i64 @llvm.bswap.i64(i64 %73) #9
  %75 = ptrtoint ptr %dqb_itime to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %dqb_itime, align 8
  br label %ocfs2_global_disk2memdqb.exit

ocfs2_global_disk2memdqb.exit:                    ; preds = %if.then31.i, %if.end27.i.ocfs2_global_disk2memdqb.exit_crit_edge
  %dqb_use_count.i = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, ptr %dqblk, i32 0, i32 1
  %76 = ptrtoint ptr %dqb_use_count.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dqb_use_count.i, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77) #9
  %dq_use_count.i = getelementptr inbounds %struct.ocfs2_dquot, ptr %dquot, i32 0, i32 4
  %79 = ptrtoint ptr %dq_use_count.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %dq_use_count.i, align 4
  %80 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %80)
  %.unpack = load i32, ptr %dq_id, align 8
  %81 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %82 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.unpack282 = load i32, ptr %type1, align 4
  %83 = insertvalue [2 x i32] %81, i32 %.unpack282, 1
  %call15 = call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %83) #9
  %84 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %dqb_curspace, align 8
  %86 = ptrtoint ptr %dqb_curinodes to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %dqb_curinodes, align 8
  call fastcc void @trace_ocfs2_sync_dquot(i32 noundef %call15, i64 noundef %85, i64 noundef %sub, i64 noundef %87, i64 noundef %sub11)
  %88 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %dq_flags.i, align 4
  %90 = and i32 %89, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool21.not = icmp eq i32 %90, 0
  br i1 %tobool21.not, label %if.then22, label %ocfs2_global_disk2memdqb.exit.if.end25_crit_edge

ocfs2_global_disk2memdqb.exit.if.end25_crit_edge: ; preds = %ocfs2_global_disk2memdqb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then22:                                        ; preds = %ocfs2_global_disk2memdqb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %dqb_curspace, align 8
  %add = add i64 %92, %sub
  store i64 %add, ptr %dqb_curspace, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %ocfs2_global_disk2memdqb.exit.if.end25_crit_edge
  %93 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %dq_flags.i, align 4
  %95 = and i32 %94, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool28.not = icmp eq i32 %95, 0
  br i1 %tobool28.not, label %if.then29, label %if.end25.if.end33_crit_edge

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %dqb_curinodes to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %dqb_curinodes, align 8
  %add32 = add i64 %97, %sub11
  store i64 %add32, ptr %dqb_curinodes, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end25.if.end33_crit_edge
  %dqb_bsoftlimit = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 1
  %98 = ptrtoint ptr %dqb_bsoftlimit to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %dqb_bsoftlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %99)
  %tobool35.not = icmp eq i64 %99, 0
  br i1 %tobool35.not, label %if.end33.if.else61_crit_edge, label %land.lhs.true

if.end33.if.else61_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else61

land.lhs.true:                                    ; preds = %if.end33
  %100 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %dqb_curspace, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %101, i64 %99)
  %cmp40 = icmp sgt i64 %101, %99
  br i1 %cmp40, label %if.then41, label %land.lhs.true.if.else61_crit_edge

land.lhs.true.if.else61_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else61

if.then41:                                        ; preds = %land.lhs.true
  %102 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %dq_flags.i, align 4
  %104 = and i32 %103, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool44.not = icmp eq i32 %104, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %cmp46 = icmp sgt i64 %25, 0
  %or.cond = select i1 %tobool44.not, i1 %cmp46, i1 false
  br i1 %or.cond, label %if.then47, label %if.then41.if.end65_crit_edge

if.then41.if.end65_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then47:                                        ; preds = %if.then41
  %105 = ptrtoint ptr %dqb_btime to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %dqb_btime, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %106)
  %cmp50 = icmp sgt i64 %106, 0
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %107 = call i64 @llvm.umin.i64(i64 %106, i64 %25)
  %108 = ptrtoint ptr %dqb_btime to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %107, ptr %dqb_btime, align 8
  br label %if.end65

if.else:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %dqb_btime to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %25, ptr %dqb_btime, align 8
  br label %if.end65

if.else61:                                        ; preds = %land.lhs.true.if.else61_crit_edge, %if.end33.if.else61_crit_edge
  %110 = ptrtoint ptr %dqb_btime to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 0, ptr %dqb_btime, align 8
  call void @_clear_bit(i32 noundef 1, ptr noundef %dq_flags.i) #9
  br label %if.end65

if.end65:                                         ; preds = %if.else61, %if.else, %if.then51, %if.then41.if.end65_crit_edge
  %dqb_isoftlimit = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 5
  %111 = ptrtoint ptr %dqb_isoftlimit to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %dqb_isoftlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %112)
  %tobool67.not = icmp eq i64 %112, 0
  br i1 %tobool67.not, label %if.end65.if.else100_crit_edge, label %land.lhs.true68

if.end65.if.else100_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else100

land.lhs.true68:                                  ; preds = %if.end65
  %113 = ptrtoint ptr %dqb_curinodes to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %dqb_curinodes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %114, i64 %112)
  %cmp73 = icmp sgt i64 %114, %112
  br i1 %cmp73, label %if.then74, label %land.lhs.true68.if.else100_crit_edge

land.lhs.true68.if.else100_crit_edge:             ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else100

if.then74:                                        ; preds = %land.lhs.true68
  %115 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %dq_flags.i, align 4
  %117 = and i32 %116, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool77.not = icmp eq i32 %117, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp79 = icmp sgt i64 %23, 0
  %or.cond286 = select i1 %tobool77.not, i1 %cmp79, i1 false
  br i1 %or.cond286, label %if.then80, label %if.then74.if.end104_crit_edge

if.then74.if.end104_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then80:                                        ; preds = %if.then74
  %118 = ptrtoint ptr %dqb_itime to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %dqb_itime, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %119)
  %cmp83 = icmp sgt i64 %119, 0
  br i1 %cmp83, label %if.then84, label %if.else95

if.then84:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  %120 = call i64 @llvm.umin.i64(i64 %119, i64 %23)
  %121 = ptrtoint ptr %dqb_itime to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %120, ptr %dqb_itime, align 8
  br label %if.end104

if.else95:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %dqb_itime to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %23, ptr %dqb_itime, align 8
  br label %if.end104

if.else100:                                       ; preds = %land.lhs.true68.if.else100_crit_edge, %if.end65.if.else100_crit_edge
  %123 = ptrtoint ptr %dqb_itime to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 0, ptr %dqb_itime, align 8
  call void @_clear_bit(i32 noundef 2, ptr noundef %dq_flags.i) #9
  br label %if.end104

if.end104:                                        ; preds = %if.else100, %if.else95, %if.then84, %if.then74.if.end104_crit_edge
  %124 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dq_flags.i, align 4
  %and.i298 = and i32 %125, -4033
  store i32 %and.i298, ptr %dq_flags.i, align 4
  %126 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %dqb_curspace, align 8
  %128 = ptrtoint ptr %dq_origspace to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %127, ptr %dq_origspace, align 8
  %129 = ptrtoint ptr %dqb_curinodes to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %dqb_curinodes, align 8
  %131 = ptrtoint ptr %dq_originodes to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %130, ptr %dq_originodes, align 8
  call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock) #9
  %call120 = call i32 @ocfs2_qinfo_lock(ptr noundef %5, i32 noundef %freeing) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %do.body123, label %if.end135

do.body123:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m124) #9
  %132 = ptrtoint ptr %_m124 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 1152921504606846976, ptr %_m124, align 8
  %133 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %type1, align 4
  %135 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %135)
  %.unpack283 = load i32, ptr %dq_id, align 8
  %136 = insertvalue [2 x i32] undef, i32 %.unpack283, 0
  %137 = insertvalue [2 x i32] %136, i32 %134, 1
  %call131 = call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %137) #9
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m124, ptr noundef nonnull @__func__.__ocfs2_sync_dquot, i32 noundef 569, ptr noundef nonnull @.str.9, i32 noundef %134, i32 noundef %call131) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m124) #9
  br label %if.then163

if.end135:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freeing)
  %tobool136.not = icmp eq i32 %freeing, 0
  br i1 %tobool136.not, label %if.end135.if.end139_crit_edge, label %if.then137

if.end135.if.end139_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

if.then137:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  %138 = ptrtoint ptr %dq_use_count.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %dq_use_count.i, align 4
  %dec = add i32 %139, -1
  store i32 %dec, ptr %dq_use_count.i, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then137, %if.end135.if.end139_crit_edge
  %dqi_gi = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %5, i32 0, i32 13
  %call140 = call i32 @qtree_write_dquot(ptr noundef %dqi_gi, ptr noundef %dquot) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp141 = icmp slt i32 %call140, 0
  %brmerge = or i1 %tobool136.not, %cmp141
  br i1 %brmerge, label %if.end139.out_crit_edge, label %land.lhs.true145

if.end139.out_crit_edge:                          ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true145:                                 ; preds = %if.end139
  %140 = ptrtoint ptr %dq_use_count.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dq_use_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool148.not = icmp eq i32 %141, 0
  br i1 %tobool148.not, label %if.then149, label %out.thread305

out.thread305:                                    ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #11
  call void @ocfs2_qinfo_unlock(ptr noundef %5, i32 noundef %freeing) #9
  br label %if.end184

if.then149:                                       ; preds = %land.lhs.true145
  %call151 = call i32 @qtree_release_dquot(ptr noundef %dqi_gi, ptr noundef %dquot) #9
  %dqi_flags.i = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %3, i32 3
  %142 = ptrtoint ptr %dqi_flags.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %dqi_flags.i, align 4
  %144 = and i32 %143, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool154.not = icmp eq i32 %144, 0
  br i1 %tobool154.not, label %if.then149.out_crit_edge, label %if.then155

if.then149.out_crit_edge:                         ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then155:                                       ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #11
  %call156 = call fastcc i32 @__ocfs2_global_write_info(ptr noundef %1, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool157.not = icmp eq i32 %call151, 0
  %spec.select = select i1 %tobool157.not, i32 %call156, i32 %call151
  br label %out

out:                                              ; preds = %if.then155, %if.then149.out_crit_edge, %if.end139.out_crit_edge
  %err.0 = phi i32 [ %call140, %if.end139.out_crit_edge ], [ %call151, %if.then149.out_crit_edge ], [ %spec.select, %if.then155 ]
  call void @ocfs2_qinfo_unlock(ptr noundef %5, i32 noundef %freeing) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp162 = icmp slt i32 %err.0, 0
  br i1 %cmp162, label %out.if.then163_crit_edge, label %out.if.end184_crit_edge

out.if.end184_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

out.if.then163_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then163

if.then163:                                       ; preds = %out.if.then163_crit_edge, %do.body123, %if.then.if.then163_crit_edge
  %err.1304 = phi i32 [ %err.0, %out.if.then163_crit_edge ], [ %call120, %do.body123 ], [ %call2, %if.then.if.then163_crit_edge ]
  %145 = zext i32 %err.1304 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %err.1304, label %if.then163.do.body174_crit_edge [
    i32 -512, label %if.then163.if.end184_crit_edge
    i32 -4, label %if.then163.if.end184_crit_edge310
    i32 -28, label %if.then163.if.end184_crit_edge311
    i32 -122, label %if.then163.if.end184_crit_edge312
  ]

if.then163.if.end184_crit_edge312:                ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.then163.if.end184_crit_edge311:                ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.then163.if.end184_crit_edge310:                ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.then163.if.end184_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.then163.do.body174_crit_edge:                  ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body174

do.body174:                                       ; preds = %if.then163.do.body174_crit_edge, %if.then163.thread
  %err.1304309 = phi i32 [ -5, %if.then163.thread ], [ %err.1304, %if.then163.do.body174_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m175) #9
  %146 = ptrtoint ptr %_m175 to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 1152921504606846976, ptr %_m175, align 8
  %conv = sext i32 %err.1304309 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m175, ptr noundef nonnull @__func__.__ocfs2_sync_dquot, i32 noundef 589, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m175) #9
  br label %if.end184

if.end184:                                        ; preds = %do.body174, %if.then163.if.end184_crit_edge, %if.then163.if.end184_crit_edge310, %if.then163.if.end184_crit_edge311, %if.then163.if.end184_crit_edge312, %out.if.end184_crit_edge, %out.thread305
  %err.1303 = phi i32 [ %err.1304309, %do.body174 ], [ %err.1304, %if.then163.if.end184_crit_edge ], [ %err.1304, %if.then163.if.end184_crit_edge310 ], [ %err.1304, %if.then163.if.end184_crit_edge311 ], [ %err.1304, %if.then163.if.end184_crit_edge312 ], [ %err.0, %out.if.end184_crit_edge ], [ %call140, %out.thread305 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %dqblk) #9
  ret i32 %err.1303
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_sync_dquot(i32 noundef %dq_id, i64 noundef %dqb_curspace, i64 noundef %spacechange, i64 noundef %curinodes, i64 noundef %inodechange) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_sync_dquot, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_sync_dquot, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !98

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !99

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !115
  %call42 = tail call i32 @__traceiter_ocfs2_sync_dquot(ptr noundef null, i32 noundef %dq_id, i64 noundef %dqb_curspace, i64 noundef %spacechange, i64 noundef %curinodes, i64 noundef %inodechange) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !116
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !99

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_sync_dquot, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_sync_dquot, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_sync_dquot.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_sync_dquot.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2006, ptr noundef nonnull @.str.11) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
declare dso_local i32 @from_kqid(ptr noundef, [2 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtree_write_dquot(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtree_release_dquot(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_drop_dquot_refs(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dquot_drop_list = getelementptr i8, ptr %work, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dquot_drop_list, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @llvm.prefetch.p0(ptr %dquot_drop_list, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %dquot_drop_list) #9, !srcloc !118
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  %1 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !119
  %odquot.010 = getelementptr i8, ptr %1, i32 -312
  %cmp.not11 = icmp eq ptr %odquot.010, inttoptr (i32 -312 to ptr)
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %odquot.013 = phi ptr [ %odquot.0, %land.rhs.land.rhs_crit_edge ], [ %odquot.010, %entry.land.rhs_crit_edge ]
  %call.pn12 = phi ptr [ %3, %land.rhs.land.rhs_crit_edge ], [ %1, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %call.pn12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.pn12, align 8
  tail call void @dqput(ptr noundef %odquot.013) #9
  %odquot.0 = getelementptr i8, ptr %3, i32 -312
  %cmp.not = icmp eq ptr %odquot.0, inttoptr (i32 -312 to ptr)
  br i1 %cmp.not, label %land.rhs.for.end_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dqput(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @ocfs2_alloc_dquot(ptr nocapture noundef readnone %sb, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ocfs2_dquot_cachep to i32))
  %0 = load ptr, ptr @ocfs2_dquot_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3392) #9
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_destroy_dquot(ptr noundef %dquot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ocfs2_dquot_cachep to i32))
  %0 = load ptr, ptr @ocfs2_dquot_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %dquot) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_acquire_dquot(ptr noundef %dquot) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %type1 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type1, align 4
  %info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %5, i32 8
  %6 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dqi_priv, align 8
  %dqi_gqinode = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %dqi_gqinode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dqi_gqinode, align 4
  %dqi_qtree_depth.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 13, i32 8
  %10 = ptrtoint ptr %dqi_qtree_depth.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dqi_qtree_depth.i, align 8
  %12 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack = load i32, ptr %dq_id, align 8
  %13 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %14 = insertvalue [2 x i32] %13, i32 %5, 1
  %call4 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %14) #9
  tail call fastcc void @trace_ocfs2_acquire_dquot(i32 noundef %call4, i32 noundef %5)
  %dq_lock = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dq_lock, i32 noundef 0) #9
  %call5 = tail call i32 @ocfs2_lock_global_qf(ptr noundef %7, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @ocfs2_qinfo_lock(ptr noundef %7, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.out_dq.thread_crit_edge, label %if.end9

if.end.out_dq.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dq.thread

if.end9:                                          ; preds = %if.end
  %dqi_gi = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %7, i32 0, i32 13
  %call10 = tail call i32 @qtree_read_dquot(ptr noundef %dqi_gi, ptr noundef %dquot) #9
  tail call void @ocfs2_qinfo_unlock(ptr noundef %7, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.out_dq.thread_crit_edge, label %if.end13

if.end9.out_dq.thread_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dq.thread

if.end13:                                         ; preds = %if.end9
  %dq_use_count = getelementptr inbounds %struct.ocfs2_dquot, ptr %dquot, i32 0, i32 4
  %15 = ptrtoint ptr %dq_use_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dq_use_count, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %dq_use_count, align 4
  %dqb_curspace = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 2
  %17 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %dqb_curspace, align 8
  %dq_origspace = getelementptr inbounds %struct.ocfs2_dquot, ptr %dquot, i32 0, i32 5
  %19 = ptrtoint ptr %dq_origspace to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %dq_origspace, align 8
  %dqb_curinodes = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 6
  %20 = ptrtoint ptr %dqb_curinodes to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dqb_curinodes, align 8
  %dq_originodes = getelementptr inbounds %struct.ocfs2_dquot, ptr %dquot, i32 0, i32 6
  %22 = ptrtoint ptr %dq_originodes to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %dq_originodes, align 8
  %dq_off = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 9
  %23 = ptrtoint ptr %dq_off to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %dq_off, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool.not = icmp eq i64 %24, 0
  br i1 %tobool.not, label %if.then18, label %if.end13.if.end50_crit_edge

if.end13.if.end50_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then18:                                        ; preds = %if.end13
  %25 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 146
  %29 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %journal_info.i, align 4
  %tobool20.not = icmp eq ptr %30, null
  br i1 %tobool20.not, label %if.then18.if.end35_crit_edge, label %do.end, !prof !99

if.then18.if.end35_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 834, i32 noundef 9, ptr noundef null) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end, %if.then18.if.end35_crit_edge
  %call42 = tail call fastcc i64 @i_size_read(ptr noundef %9)
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %32 to i32
  %shl = shl i32 %11, %conv
  %conv43 = sext i32 %shl to i64
  %add = add i64 %call42, %conv43
  %call44 = tail call fastcc i64 @i_size_read(ptr noundef %9)
  %call45 = tail call i32 @ocfs2_extend_no_holes(ptr noundef %9, ptr noundef null, i64 noundef %add, i64 noundef %call44) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end35.out_dq.thread_crit_edge, label %if.end35.if.end50_crit_edge

if.end35.if.end50_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end35.out_dq.thread_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dq.thread

if.end50:                                         ; preds = %if.end35.if.end50_crit_edge, %if.end13.if.end50_crit_edge
  %ex.0 = phi i32 [ 0, %if.end13.if.end50_crit_edge ], [ 1, %if.end35.if.end50_crit_edge ]
  %33 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dqi_priv, align 8
  %dqi_qtree_depth.i.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %34, i32 0, i32 13, i32 8
  %35 = ptrtoint ptr %dqi_qtree_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dqi_qtree_depth.i.i, align 8
  %add1.i = add i32 %36, 3
  %call52 = tail call ptr @ocfs2_start_trans(ptr noundef %3, i32 noundef %add1.i) #9
  %cmp.i = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %call52 to i32
  br label %out_dq

if.end56:                                         ; preds = %if.end50
  %call57 = tail call i32 @ocfs2_qinfo_lock(ptr noundef %7, i32 noundef %ex.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end56.out_trans_crit_edge, label %if.end61

if.end56.out_trans_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans

if.end61:                                         ; preds = %if.end56
  %call63 = tail call i32 @qtree_write_dquot(ptr noundef %dqi_gi, ptr noundef %dquot) #9
  br i1 %tobool.not, label %land.lhs.true, label %if.end61.if.end73_crit_edge

if.end61.if.end73_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

land.lhs.true:                                    ; preds = %if.end61
  %dqi_flags.i = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %5, i32 3
  %38 = ptrtoint ptr %dqi_flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %dqi_flags.i, align 4
  %40 = and i32 %39, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool67.not = icmp eq i32 %40, 0
  br i1 %tobool67.not, label %land.lhs.true.if.end73_crit_edge, label %if.then68

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then68:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call69 = tail call fastcc i32 @__ocfs2_global_write_info(ptr noundef %1, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool70.not = icmp eq i32 %call63, 0
  %spec.select = select i1 %tobool70.not, i32 %call69, i32 %call63
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %land.lhs.true.if.end73_crit_edge, %if.end61.if.end73_crit_edge
  %status.0 = phi i32 [ %call63, %land.lhs.true.if.end73_crit_edge ], [ %call63, %if.end61.if.end73_crit_edge ], [ %spec.select, %if.then68 ]
  tail call void @ocfs2_qinfo_unlock(ptr noundef %7, i32 noundef %ex.0) #9
  br label %out_trans

out_trans:                                        ; preds = %if.end73, %if.end56.out_trans_crit_edge
  %status.1 = phi i32 [ %call57, %if.end56.out_trans_crit_edge ], [ %status.0, %if.end73 ]
  %call74 = tail call i32 @ocfs2_commit_trans(ptr noundef %3, ptr noundef %call52) #9
  br label %out_dq

out_dq.thread:                                    ; preds = %if.end35.out_dq.thread_crit_edge, %if.end9.out_dq.thread_crit_edge, %if.end.out_dq.thread_crit_edge
  %status.2.ph = phi i32 [ %call45, %if.end35.out_dq.thread_crit_edge ], [ %call10, %if.end9.out_dq.thread_crit_edge ], [ %call6, %if.end.out_dq.thread_crit_edge ]
  tail call void @ocfs2_unlock_global_qf(ptr noundef %7, i32 noundef 1)
  br label %out

out_dq:                                           ; preds = %out_trans, %if.then54
  %status.2 = phi i32 [ %37, %if.then54 ], [ %status.1, %out_trans ]
  tail call void @ocfs2_unlock_global_qf(ptr noundef %7, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2)
  %cmp75 = icmp slt i32 %status.2, 0
  br i1 %cmp75, label %out_dq.out_crit_edge, label %if.end78

out_dq.out_crit_edge:                             ; preds = %out_dq
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end78:                                         ; preds = %out_dq
  %call79 = tail call i32 @ocfs2_create_local_dquot(ptr noundef %dquot) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.end78.out_crit_edge, label %if.end83

if.end78.out_crit_edge:                           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end83:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %dq_flags = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 5, ptr noundef %dq_flags) #9
  br label %out

out:                                              ; preds = %if.end83, %if.end78.out_crit_edge, %out_dq.out_crit_edge, %out_dq.thread, %entry.out_crit_edge
  %status.3 = phi i32 [ %call5, %entry.out_crit_edge ], [ %status.2, %out_dq.out_crit_edge ], [ %call79, %if.end78.out_crit_edge ], [ %call79, %if.end83 ], [ %status.2.ph, %out_dq.thread ]
  tail call void @mutex_unlock(ptr noundef %dq_lock) #9
  %41 = zext i32 %status.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %status.3, label %do.body102 [
    i32 0, label %out.if.end111_crit_edge
    i32 -512, label %out.if.end111_crit_edge175
    i32 -4, label %out.if.end111_crit_edge176
    i32 524289, label %out.if.end111_crit_edge177
    i32 -28, label %out.if.end111_crit_edge178
    i32 -122, label %out.if.end111_crit_edge179
  ]

out.if.end111_crit_edge179:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

out.if.end111_crit_edge178:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

out.if.end111_crit_edge177:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

out.if.end111_crit_edge176:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

out.if.end111_crit_edge175:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

out.if.end111_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

do.body102:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %42 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv105 = sext i32 %status.3 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_acquire_dquot, i32 noundef 872, ptr noundef nonnull @.str, i64 noundef %conv105) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %if.end111

if.end111:                                        ; preds = %do.body102, %out.if.end111_crit_edge, %out.if.end111_crit_edge175, %out.if.end111_crit_edge176, %out.if.end111_crit_edge177, %out.if.end111_crit_edge178, %out.if.end111_crit_edge179
  ret i32 %status.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_release_dquot(ptr noundef %dquot) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m62 = alloca i64, align 8
  %_m94 = alloca i64, align 8
  %_m126 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %type = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %3, i32 8
  %4 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dqi_priv, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %8 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %dq_id, align 8
  %9 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %10 = insertvalue [2 x i32] %9, i32 %3, 1
  %call3 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %10) #9
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  tail call fastcc void @trace_ocfs2_release_dquot(i32 noundef %call3, i32 noundef %12)
  %dq_lock = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dq_lock, i32 noundef 0) #9
  %dq_flags.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  %13 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dq_flags.i, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %dquot_is_busy.exit, label %entry.out.thread_crit_edge

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

dquot_is_busy.exit:                               ; preds = %entry
  %dq_count.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dq_count.i, i32 noundef 4) #9
  %15 = ptrtoint ptr %dq_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %dq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp sgt i32 %16, 1
  br i1 %cmp.i, label %dquot_is_busy.exit.out.thread_crit_edge, label %if.end

dquot_is_busy.exit.out.thread_crit_edge:          ; preds = %dquot_is_busy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end:                                           ; preds = %dquot_is_busy.exit
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %dc_task = getelementptr inbounds %struct.ocfs2_super, ptr %7, i32 0, i32 76
  %21 = ptrtoint ptr %dc_task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dc_task, align 4
  %cmp = icmp eq ptr %20, %22
  br i1 %cmp, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end
  %call.i.i.i196 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dq_count.i, i32 noundef 4) #9
  %23 = ptrtoint ptr %dq_count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %dq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i197 = icmp eq i32 %24, 0
  br i1 %tobool.not.i197, label %land.rhs.i, label %if.then8.if.end29.i_crit_edge

if.then8.if.end29.i_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

land.rhs.i:                                       ; preds = %if.then8
  %.b2.i = load i1, ptr @dqgrab.__already_done, align 1
  br i1 %.b2.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !99

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @dqgrab.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 49, i32 noundef 9, ptr noundef null) #9
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %if.then8.if.end29.i_crit_edge
  %25 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %dq_flags.i, align 4
  %27 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool39.not.i = icmp eq i32 %27, 0
  br i1 %tobool39.not.i, label %land.rhs48.i, label %if.end29.i.dqgrab.exit_crit_edge

if.end29.i.dqgrab.exit_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dqgrab.exit

land.rhs48.i:                                     ; preds = %if.end29.i
  %.b1021.i = load i1, ptr @dqgrab.__already_done.16, align 1
  br i1 %.b1021.i, label %land.rhs48.i.dqgrab.exit_crit_edge, label %if.then59.i, !prof !99

land.rhs48.i.dqgrab.exit_crit_edge:               ; preds = %land.rhs48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dqgrab.exit

if.then59.i:                                      ; preds = %land.rhs48.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @dqgrab.__already_done.16, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 50, i32 noundef 9, ptr noundef null) #9
  br label %dqgrab.exit

dqgrab.exit:                                      ; preds = %if.then59.i, %land.rhs48.i.dqgrab.exit_crit_edge, %if.end29.i.dqgrab.exit_crit_edge
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dq_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %dq_count.i, i32 1, i32 3, i32 1) #9
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dq_count.i, ptr %dq_count.i, i32 1, ptr elementtype(i32) %dq_count.i) #9, !srcloc !120
  %list = getelementptr inbounds %struct.ocfs2_dquot, ptr %dquot, i32 0, i32 7
  %dquot_drop_list = getelementptr inbounds %struct.ocfs2_super, ptr %7, i32 0, i32 82
  %call.i = tail call zeroext i1 @llist_add_batch(ptr noundef %list, ptr noundef %list, ptr noundef %dquot_drop_list) #9
  br i1 %call.i, label %if.then12, label %dqgrab.exit.out.thread_crit_edge

dqgrab.exit.out.thread_crit_edge:                 ; preds = %dqgrab.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.then12:                                        ; preds = %dqgrab.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ocfs2_wq = getelementptr inbounds %struct.ocfs2_super, ptr %7, i32 0, i32 101
  %29 = ptrtoint ptr %ocfs2_wq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ocfs2_wq, align 4
  %dquot_drop_work = getelementptr inbounds %struct.ocfs2_super, ptr %7, i32 0, i32 83
  %call.i199 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %dquot_drop_work) #9
  br label %out.thread

if.end15:                                         ; preds = %if.end
  %call16 = tail call i32 @ocfs2_lock_global_qf(ptr noundef %5, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.out_crit_edge, label %if.end19

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end19:                                         ; preds = %if.end15
  %31 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dq_sb, align 4
  %33 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type, align 4
  %info.i.i = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 31, i32 3
  %dqi_priv.i = getelementptr %struct.mem_dqinfo, ptr %info.i.i, i32 %34, i32 8
  %35 = ptrtoint ptr %dqi_priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dqi_priv.i, align 8
  %dqi_qtree_depth.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %36, i32 0, i32 13, i32 8
  %37 = ptrtoint ptr %dqi_qtree_depth.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dqi_qtree_depth.i, align 8
  %add2.i = add i32 %38, 5
  %call24 = tail call ptr @ocfs2_start_trans(ptr noundef %7, i32 noundef %add2.i) #9
  %cmp.i200 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i200, label %if.then26, label %if.end40

if.then26:                                        ; preds = %if.end19
  %39 = ptrtoint ptr %call24 to i32
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %39, label %do.body [
    i32 -512, label %if.then26.out_ilock_crit_edge
    i32 -4, label %if.then26.out_ilock_crit_edge205
    i32 524289, label %if.then26.out_ilock_crit_edge206
    i32 -28, label %if.then26.out_ilock_crit_edge207
    i32 -122, label %if.then26.out_ilock_crit_edge208
  ]

if.then26.out_ilock_crit_edge208:                 ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

if.then26.out_ilock_crit_edge207:                 ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

if.then26.out_ilock_crit_edge206:                 ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

if.then26.out_ilock_crit_edge205:                 ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

if.then26.out_ilock_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

do.body:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %41 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %39 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_release_dquot, i32 noundef 752, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %out_ilock

if.end40:                                         ; preds = %if.end19
  %call.i201 = tail call i32 @__ocfs2_sync_dquot(ptr noundef %dquot, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %cmp42 = icmp slt i32 %call.i201, 0
  br i1 %cmp42, label %if.then44, label %if.end72

if.then44:                                        ; preds = %if.end40
  %42 = zext i32 %call.i201 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call.i201, label %do.body61 [
    i32 -512, label %if.then44.out_trans_crit_edge
    i32 -4, label %if.then44.out_trans_crit_edge209
    i32 -28, label %if.then44.out_trans_crit_edge210
    i32 -122, label %if.then44.out_trans_crit_edge211
  ]

if.then44.out_trans_crit_edge211:                 ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans

if.then44.out_trans_crit_edge210:                 ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans

if.then44.out_trans_crit_edge209:                 ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans

if.then44.out_trans_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans

do.body61:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m62) #9
  %43 = ptrtoint ptr %_m62 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 1152921504606846976, ptr %_m62, align 8
  %conv66 = sext i32 %call.i201 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m62, ptr noundef nonnull @__func__.ocfs2_release_dquot, i32 noundef 758, ptr noundef nonnull @.str, i64 noundef %conv66) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m62) #9
  br label %out_trans

if.end72:                                         ; preds = %if.end40
  %call73 = tail call i32 @ocfs2_local_release_dquot(ptr noundef %call24, ptr noundef %dquot) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then76, label %if.end72.if.end104_crit_edge

if.end72.if.end104_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then76:                                        ; preds = %if.end72
  %44 = zext i32 %call73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call73, label %do.body93 [
    i32 -512, label %if.then76.if.end104_crit_edge
    i32 -4, label %if.then76.if.end104_crit_edge212
    i32 -28, label %if.then76.if.end104_crit_edge213
    i32 -122, label %if.then76.if.end104_crit_edge214
  ]

if.then76.if.end104_crit_edge214:                 ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then76.if.end104_crit_edge213:                 ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then76.if.end104_crit_edge212:                 ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then76.if.end104_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

do.body93:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m94) #9
  %45 = ptrtoint ptr %_m94 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 1152921504606846976, ptr %_m94, align 8
  %conv98 = sext i32 %call73 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m94, ptr noundef nonnull @__func__.ocfs2_release_dquot, i32 noundef 767, ptr noundef nonnull @.str, i64 noundef %conv98) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m94) #9
  br label %if.end104

if.end104:                                        ; preds = %do.body93, %if.then76.if.end104_crit_edge, %if.then76.if.end104_crit_edge212, %if.then76.if.end104_crit_edge213, %if.then76.if.end104_crit_edge214, %if.end72.if.end104_crit_edge
  %dq_off = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 9
  %46 = ptrtoint ptr %dq_off to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %dq_off, align 8
  call void @_clear_bit(i32 noundef 5, ptr noundef %dq_flags.i) #9
  br label %out_trans

out_trans:                                        ; preds = %if.end104, %do.body61, %if.then44.out_trans_crit_edge, %if.then44.out_trans_crit_edge209, %if.then44.out_trans_crit_edge210, %if.then44.out_trans_crit_edge211
  %status.0 = phi i32 [ %call73, %if.end104 ], [ %call.i201, %if.then44.out_trans_crit_edge ], [ %call.i201, %if.then44.out_trans_crit_edge209 ], [ %call.i201, %if.then44.out_trans_crit_edge210 ], [ %call.i201, %if.then44.out_trans_crit_edge211 ], [ %call.i201, %do.body61 ]
  %call105 = call i32 @ocfs2_commit_trans(ptr noundef %7, ptr noundef %call24) #9
  br label %out_ilock

out_ilock:                                        ; preds = %out_trans, %do.body, %if.then26.out_ilock_crit_edge, %if.then26.out_ilock_crit_edge205, %if.then26.out_ilock_crit_edge206, %if.then26.out_ilock_crit_edge207, %if.then26.out_ilock_crit_edge208
  %status.1 = phi i32 [ %status.0, %out_trans ], [ %39, %if.then26.out_ilock_crit_edge ], [ %39, %if.then26.out_ilock_crit_edge205 ], [ %39, %if.then26.out_ilock_crit_edge206 ], [ %39, %if.then26.out_ilock_crit_edge207 ], [ %39, %if.then26.out_ilock_crit_edge208 ], [ %39, %do.body ]
  call void @ocfs2_unlock_global_qf(ptr noundef %5, i32 noundef 1)
  br label %out

out.thread:                                       ; preds = %if.then12, %dqgrab.exit.out.thread_crit_edge, %dquot_is_busy.exit.out.thread_crit_edge, %entry.out.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %dq_lock) #9
  br label %if.end136

out:                                              ; preds = %out_ilock, %if.end15.out_crit_edge
  %status.2 = phi i32 [ %call16, %if.end15.out_crit_edge ], [ %status.1, %out_ilock ]
  call void @mutex_unlock(ptr noundef %dq_lock) #9
  %47 = zext i32 %status.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %status.2, label %do.body125 [
    i32 0, label %out.if.end136_crit_edge
    i32 -512, label %out.if.end136_crit_edge215
    i32 -4, label %out.if.end136_crit_edge216
    i32 524289, label %out.if.end136_crit_edge217
    i32 -28, label %out.if.end136_crit_edge218
    i32 -122, label %out.if.end136_crit_edge219
  ]

out.if.end136_crit_edge219:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

out.if.end136_crit_edge218:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

out.if.end136_crit_edge217:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

out.if.end136_crit_edge216:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

out.if.end136_crit_edge215:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

out.if.end136_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

do.body125:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m126) #9
  %48 = ptrtoint ptr %_m126 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 1152921504606846976, ptr %_m126, align 8
  %conv130 = sext i32 %status.2 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m126, ptr noundef nonnull @__func__.ocfs2_release_dquot, i32 noundef 782, ptr noundef nonnull @.str, i64 noundef %conv130) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m126) #9
  br label %if.end136

if.end136:                                        ; preds = %do.body125, %out.if.end136_crit_edge, %out.if.end136_crit_edge215, %out.if.end136_crit_edge216, %out.if.end136_crit_edge217, %out.if.end136_crit_edge218, %out.if.end136_crit_edge219, %out.thread
  %status.2204 = phi i32 [ 0, %out.thread ], [ %status.2, %do.body125 ], [ %status.2, %out.if.end136_crit_edge ], [ %status.2, %out.if.end136_crit_edge215 ], [ %status.2, %out.if.end136_crit_edge216 ], [ %status.2, %out.if.end136_crit_edge217 ], [ %status.2, %out.if.end136_crit_edge218 ], [ %status.2, %out.if.end136_crit_edge219 ]
  ret i32 %status.2204
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_mark_dquot_dirty(ptr noundef %dquot) #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m55 = alloca i64, align 8
  %_m89 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %type1 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type1, align 4
  %info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %3, i32 8
  %4 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dqi_priv, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %8 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %dq_id, align 8
  %9 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %10 = insertvalue [2 x i32] %9, i32 %3, 1
  %call3 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %10) #9
  tail call fastcc void @trace_ocfs2_mark_dquot_dirty(i32 noundef %call3, i32 noundef %3)
  %dq_dqb_lock = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock) #9
  %dq_flags = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  %11 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dq_flags, align 8
  %and = and i32 %12, 4032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock) #9
  br i1 %tobool.not, label %entry.if.then8_crit_edge, label %lor.lhs.false

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

lor.lhs.false:                                    ; preds = %entry
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 146
  %17 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %journal_info.i, align 4
  %tobool7.not = icmp eq ptr %18, null
  br i1 %tobool7.not, label %if.end10, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %entry.if.then8_crit_edge
  %19 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dq_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i, align 16
  %23 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack.i = load i32, ptr %dq_id, align 8
  %24 = insertvalue [2 x i32] undef, i32 %.unpack.i, 0
  %25 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack39.i = load i32, ptr %type1, align 4
  %26 = insertvalue [2 x i32] %24, i32 %.unpack39.i, 1
  %call.i = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %26) #9
  %27 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type1, align 4
  tail call fastcc void @trace_ocfs2_write_dquot(i32 noundef %call.i, i32 noundef %28) #9
  %call2.i = tail call ptr @ocfs2_start_trans(ptr noundef %22, i32 noundef 3) #9
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end15.i

if.then.i:                                        ; preds = %if.then8
  %29 = ptrtoint ptr %call2.i to i32
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %29, label %do.body.i [
    i32 -512, label %if.then.i.out_crit_edge
    i32 -4, label %if.then.i.out_crit_edge144
    i32 524289, label %if.then.i.out_crit_edge145
    i32 -28, label %if.then.i.out_crit_edge146
    i32 -122, label %if.then.i.out_crit_edge147
  ]

if.then.i.out_crit_edge147:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i.out_crit_edge146:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i.out_crit_edge145:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i.out_crit_edge144:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #9
  %31 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv.i = sext i32 %29 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_write_dquot, i32 noundef 671, ptr noundef nonnull @.str, i64 noundef %conv.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #9
  br label %out

if.end15.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dq_sb, align 4
  %dqio_sem.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 31, i32 1
  tail call void @down_write(ptr noundef %dqio_sem.i) #9
  %call18.i = tail call i32 @ocfs2_local_write_dquot(ptr noundef %dquot) #9
  %34 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dq_sb, align 4
  %dqio_sem21.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 31, i32 1
  tail call void @up_write(ptr noundef %dqio_sem21.i) #9
  %call22.i = tail call i32 @ocfs2_commit_trans(ptr noundef %22, ptr noundef %call2.i) #9
  br label %out

if.end10:                                         ; preds = %lor.lhs.false
  %call11 = tail call i32 @ocfs2_lock_global_qf(ptr noundef %5, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end10.out_crit_edge, label %if.end13

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end13:                                         ; preds = %if.end10
  %call14 = tail call ptr @ocfs2_start_trans(ptr noundef %7, i32 noundef 4) #9
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end32

if.then16:                                        ; preds = %if.end13
  %36 = ptrtoint ptr %call14 to i32
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %36, label %do.body [
    i32 -512, label %if.then16.out_ilock_crit_edge
    i32 -4, label %if.then16.out_ilock_crit_edge148
    i32 524289, label %if.then16.out_ilock_crit_edge149
    i32 -28, label %if.then16.out_ilock_crit_edge150
    i32 -122, label %if.then16.out_ilock_crit_edge151
  ]

if.then16.out_ilock_crit_edge151:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

if.then16.out_ilock_crit_edge150:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

if.then16.out_ilock_crit_edge149:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

if.then16.out_ilock_crit_edge148:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

if.then16.out_ilock_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

do.body:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %38 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %36 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_mark_dquot_dirty, i32 noundef 944, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %out_ilock

if.end32:                                         ; preds = %if.end13
  %dqio_sem = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31, i32 1
  tail call void @down_write(ptr noundef %dqio_sem) #9
  %call.i142 = tail call i32 @__ocfs2_sync_dquot(ptr noundef %dquot, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %cmp35 = icmp slt i32 %call.i142, 0
  br i1 %cmp35, label %if.then37, label %if.end65

if.then37:                                        ; preds = %if.end32
  %39 = zext i32 %call.i142 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call.i142, label %do.body54 [
    i32 -512, label %if.then37.out_dlock_crit_edge
    i32 -4, label %if.then37.out_dlock_crit_edge152
    i32 -28, label %if.then37.out_dlock_crit_edge153
    i32 -122, label %if.then37.out_dlock_crit_edge154
  ]

if.then37.out_dlock_crit_edge154:                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dlock

if.then37.out_dlock_crit_edge153:                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dlock

if.then37.out_dlock_crit_edge152:                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dlock

if.then37.out_dlock_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dlock

do.body54:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m55) #9
  %40 = ptrtoint ptr %_m55 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 1152921504606846976, ptr %_m55, align 8
  %conv59 = sext i32 %call.i142 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m55, ptr noundef nonnull @__func__.ocfs2_mark_dquot_dirty, i32 noundef 950, ptr noundef nonnull @.str, i64 noundef %conv59) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m55) #9
  br label %out_dlock

if.end65:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %call66 = tail call i32 @ocfs2_local_write_dquot(ptr noundef %dquot) #9
  br label %out_dlock

out_dlock:                                        ; preds = %if.end65, %do.body54, %if.then37.out_dlock_crit_edge, %if.then37.out_dlock_crit_edge152, %if.then37.out_dlock_crit_edge153, %if.then37.out_dlock_crit_edge154
  %status.0 = phi i32 [ %call66, %if.end65 ], [ %call.i142, %if.then37.out_dlock_crit_edge ], [ %call.i142, %if.then37.out_dlock_crit_edge152 ], [ %call.i142, %if.then37.out_dlock_crit_edge153 ], [ %call.i142, %if.then37.out_dlock_crit_edge154 ], [ %call.i142, %do.body54 ]
  call void @up_write(ptr noundef %dqio_sem) #9
  %call69 = call i32 @ocfs2_commit_trans(ptr noundef %7, ptr noundef %call14) #9
  br label %out_ilock

out_ilock:                                        ; preds = %out_dlock, %do.body, %if.then16.out_ilock_crit_edge, %if.then16.out_ilock_crit_edge148, %if.then16.out_ilock_crit_edge149, %if.then16.out_ilock_crit_edge150, %if.then16.out_ilock_crit_edge151
  %status.1 = phi i32 [ %status.0, %out_dlock ], [ %36, %if.then16.out_ilock_crit_edge ], [ %36, %if.then16.out_ilock_crit_edge148 ], [ %36, %if.then16.out_ilock_crit_edge149 ], [ %36, %if.then16.out_ilock_crit_edge150 ], [ %36, %if.then16.out_ilock_crit_edge151 ], [ %36, %do.body ]
  call void @ocfs2_unlock_global_qf(ptr noundef %5, i32 noundef 1)
  br label %out

out:                                              ; preds = %out_ilock, %if.end10.out_crit_edge, %if.end15.i, %do.body.i, %if.then.i.out_crit_edge, %if.then.i.out_crit_edge144, %if.then.i.out_crit_edge145, %if.then.i.out_crit_edge146, %if.then.i.out_crit_edge147
  %status.2 = phi i32 [ %call11, %if.end10.out_crit_edge ], [ %status.1, %out_ilock ], [ %call18.i, %if.end15.i ], [ %29, %if.then.i.out_crit_edge ], [ %29, %if.then.i.out_crit_edge144 ], [ %29, %if.then.i.out_crit_edge145 ], [ %29, %if.then.i.out_crit_edge146 ], [ %29, %if.then.i.out_crit_edge147 ], [ %29, %do.body.i ]
  %41 = zext i32 %status.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %status.2, label %do.body88 [
    i32 0, label %out.if.end99_crit_edge
    i32 -512, label %out.if.end99_crit_edge155
    i32 -4, label %out.if.end99_crit_edge156
    i32 524289, label %out.if.end99_crit_edge157
    i32 -28, label %out.if.end99_crit_edge158
    i32 -122, label %out.if.end99_crit_edge159
  ]

out.if.end99_crit_edge159:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

out.if.end99_crit_edge158:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

out.if.end99_crit_edge157:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

out.if.end99_crit_edge156:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

out.if.end99_crit_edge155:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

out.if.end99_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

do.body88:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m89) #9
  %42 = ptrtoint ptr %_m89 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 1152921504606846976, ptr %_m89, align 8
  %conv93 = sext i32 %status.2 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m89, ptr noundef nonnull @__func__.ocfs2_mark_dquot_dirty, i32 noundef 962, ptr noundef nonnull @.str, i64 noundef %conv93) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m89) #9
  br label %if.end99

if.end99:                                         ; preds = %do.body88, %out.if.end99_crit_edge, %out.if.end99_crit_edge155, %out.if.end99_crit_edge156, %out.if.end99_crit_edge157, %out.if.end99_crit_edge158, %out.if.end99_crit_edge159
  ret i32 %status.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_write_info(ptr noundef %sb, i32 noundef %type) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m41 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 8
  %0 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dqi_priv, align 8
  %call1 = tail call i32 @ocfs2_lock_global_qf(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %call2 = tail call ptr @ocfs2_start_trans(ptr noundef %3, i32 noundef 2) #9
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end18

if.then4:                                         ; preds = %if.end
  %4 = ptrtoint ptr %call2 to i32
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %4, label %do.body [
    i32 -512, label %if.then4.out_ilock_crit_edge
    i32 -4, label %if.then4.out_ilock_crit_edge75
    i32 524289, label %if.then4.out_ilock_crit_edge76
    i32 -28, label %if.then4.out_ilock_crit_edge77
    i32 -122, label %if.then4.out_ilock_crit_edge78
  ]

if.then4.out_ilock_crit_edge78:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

if.then4.out_ilock_crit_edge77:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

if.then4.out_ilock_crit_edge76:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

if.then4.out_ilock_crit_edge75:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

if.then4.out_ilock_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

do.body:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %4 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_write_info, i32 noundef 979, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %out_ilock

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 @dquot_commit_info(ptr noundef %sb, i32 noundef %type) #9
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info, align 16
  %call21 = tail call i32 @ocfs2_commit_trans(ptr noundef %8, ptr noundef %call2) #9
  br label %out_ilock

out_ilock:                                        ; preds = %if.end18, %do.body, %if.then4.out_ilock_crit_edge, %if.then4.out_ilock_crit_edge75, %if.then4.out_ilock_crit_edge76, %if.then4.out_ilock_crit_edge77, %if.then4.out_ilock_crit_edge78
  %status.0 = phi i32 [ %call19, %if.end18 ], [ %4, %if.then4.out_ilock_crit_edge ], [ %4, %if.then4.out_ilock_crit_edge75 ], [ %4, %if.then4.out_ilock_crit_edge76 ], [ %4, %if.then4.out_ilock_crit_edge77 ], [ %4, %if.then4.out_ilock_crit_edge78 ], [ %4, %do.body ]
  call void @ocfs2_unlock_global_qf(ptr noundef %1, i32 noundef 1)
  br label %out

out:                                              ; preds = %out_ilock, %entry.out_crit_edge
  %status.1 = phi i32 [ %call1, %entry.out_crit_edge ], [ %status.0, %out_ilock ]
  %9 = zext i32 %status.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %status.1, label %do.body40 [
    i32 0, label %out.if.end51_crit_edge
    i32 -512, label %out.if.end51_crit_edge79
    i32 -4, label %out.if.end51_crit_edge80
    i32 524289, label %out.if.end51_crit_edge81
    i32 -28, label %out.if.end51_crit_edge82
    i32 -122, label %out.if.end51_crit_edge83
  ]

out.if.end51_crit_edge83:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

out.if.end51_crit_edge82:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

out.if.end51_crit_edge81:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

out.if.end51_crit_edge80:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

out.if.end51_crit_edge79:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

out.if.end51_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

do.body40:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m41) #9
  %10 = ptrtoint ptr %_m41 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1152921504606846976, ptr %_m41, align 8
  %conv45 = sext i32 %status.1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m41, ptr noundef nonnull @__func__.ocfs2_write_info, i32 noundef 988, ptr noundef nonnull @.str, i64 noundef %conv45) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m41) #9
  br label %if.end51

if.end51:                                         ; preds = %do.body40, %out.if.end51_crit_edge, %out.if.end51_crit_edge79, %out.if.end51_crit_edge80, %out.if.end51_crit_edge81, %out.if.end51_crit_edge82, %out.if.end51_crit_edge83
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_get_next_id(ptr nocapture noundef readonly %sb, ptr noundef %qid) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type1 = getelementptr inbounds %struct.kqid, ptr %qid, i32 0, i32 1
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type1, align 4
  %info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %1, i32 8
  %2 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dqi_priv, align 8
  %4 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %qid, align 4
  %5 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %6 = insertvalue [2 x i32] %5, i32 %1, 1
  %call2 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %6) #9
  tail call fastcc void @trace_ocfs2_get_next_id(i32 noundef %call2, i32 noundef %1)
  %s_dquot.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31
  %7 = ptrtoint ptr %s_dquot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_dquot.i.i.i, align 8
  %shl.i.i.i = shl nuw i32 1, %1
  %and.i.i = and i32 %8, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %entry.if.end30_crit_edge, label %if.end

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @ocfs2_lock_global_qf(ptr noundef %3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @ocfs2_qinfo_lock(ptr noundef %3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.out_global_crit_edge, label %if.end10

if.end6.out_global_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_global

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %dqi_gi = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %3, i32 0, i32 13
  %call11 = tail call i32 @qtree_get_next_id(ptr noundef %dqi_gi, ptr noundef %qid) #9
  tail call void @ocfs2_qinfo_unlock(ptr noundef %3, i32 noundef 0) #9
  br label %out_global

out_global:                                       ; preds = %if.end10, %if.end6.out_global_crit_edge
  %status.0 = phi i32 [ %call7, %if.end6.out_global_crit_edge ], [ %call11, %if.end10 ]
  %dqi_gqinode2.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %dqi_gqinode2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dqi_gqinode2.i, align 4
  %ip_alloc_sem4.i = getelementptr i8, ptr %10, i32 -424
  tail call void @up_read(ptr noundef %ip_alloc_sem4.i) #9
  %11 = ptrtoint ptr %dqi_gqinode2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dqi_gqinode2.i, align 4
  tail call void @ocfs2_inode_unlock(ptr noundef %12, i32 noundef 0) #9
  %dqi_gqi_bh.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %dqi_gqi_bh.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dqi_gqi_bh.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %out_global.brelse.exit.i_crit_edge, label %if.then.i.i

out_global.brelse.exit.i_crit_edge:               ; preds = %out_global
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %out_global
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %14) #9
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %out_global.brelse.exit.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #9
  %dqi_gqi_count.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %3, i32 0, i32 9
  %15 = ptrtoint ptr %dqi_gqi_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dqi_gqi_count.i, align 4
  %dec.i = add i32 %16, -1
  store i32 %dec.i, ptr %dqi_gqi_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool6.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %brelse.exit.i.ocfs2_unlock_global_qf.exit_crit_edge

brelse.exit.i.ocfs2_unlock_global_qf.exit_crit_edge: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_unlock_global_qf.exit

if.then7.i:                                       ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %dqi_gqi_bh.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %dqi_gqi_bh.i, align 8
  br label %ocfs2_unlock_global_qf.exit

ocfs2_unlock_global_qf.exit:                      ; preds = %if.then7.i, %brelse.exit.i.ocfs2_unlock_global_qf.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #9
  br label %out

out:                                              ; preds = %ocfs2_unlock_global_qf.exit, %if.end.out_crit_edge
  %status.1 = phi i32 [ %call4, %if.end.out_crit_edge ], [ %status.0, %ocfs2_unlock_global_qf.exit ]
  %18 = zext i32 %status.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %status.1, label %do.body [
    i32 0, label %out.if.end30_crit_edge
    i32 -2, label %out.if.end30_crit_edge56
    i32 -3, label %out.if.end30_crit_edge57
    i32 -512, label %out.if.end30_crit_edge58
    i32 -4, label %out.if.end30_crit_edge59
    i32 524289, label %out.if.end30_crit_edge60
    i32 -28, label %out.if.end30_crit_edge61
    i32 -122, label %out.if.end30_crit_edge62
  ]

out.if.end30_crit_edge62:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

out.if.end30_crit_edge61:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

out.if.end30_crit_edge60:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

out.if.end30_crit_edge59:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

out.if.end30_crit_edge58:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

out.if.end30_crit_edge57:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

out.if.end30_crit_edge56:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

out.if.end30_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

do.body:                                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %19 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %status.1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_get_next_id, i32 noundef 903, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %if.end30

if.end30:                                         ; preds = %do.body, %out.if.end30_crit_edge, %out.if.end30_crit_edge56, %out.if.end30_crit_edge57, %out.if.end30_crit_edge58, %out.if.end30_crit_edge59, %out.if.end30_crit_edge60, %out.if.end30_crit_edge61, %out.if.end30_crit_edge62, %entry.if.end30_crit_edge
  %status.155 = phi i32 [ %status.1, %do.body ], [ %status.1, %out.if.end30_crit_edge ], [ %status.1, %out.if.end30_crit_edge56 ], [ %status.1, %out.if.end30_crit_edge57 ], [ %status.1, %out.if.end30_crit_edge58 ], [ %status.1, %out.if.end30_crit_edge59 ], [ %status.1, %out.if.end30_crit_edge60 ], [ %status.1, %out.if.end30_crit_edge61 ], [ %status.1, %out.if.end30_crit_edge62 ], [ -3, %entry.if.end30_crit_edge ]
  ret i32 %status.155
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtree_entry_unused(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qid_eq([2 x i32], [2 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kprojid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_validate_quota_block(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_sync_dquot(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_scan_active(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_sync_dquot_helper(ptr noundef %dquot, i32 noundef %type) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m49 = alloca i64, align 8
  %_m81 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 8
  %2 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dqi_priv, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %6 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack = load i32, ptr %dq_id, align 8
  %7 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt134 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %.elt134 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack135 = load i32, ptr %.elt134, align 4
  %9 = insertvalue [2 x i32] %7, i32 %.unpack135, 1
  %call1 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %9) #9
  %10 = ptrtoint ptr %.elt134 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %.elt134, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 39
  tail call fastcc void @trace_ocfs2_sync_dquot_helper(i32 noundef %call1, i32 noundef %11, i32 noundef %type, ptr noundef %s_id)
  %12 = ptrtoint ptr %.elt134 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %.elt134, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %type)
  %cmp.not = icmp eq i32 %13, %type
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @ocfs2_lock_global_qf(ptr noundef %3, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.out_crit_edge, label %if.end9

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @ocfs2_start_trans(ptr noundef %5, i32 noundef 4) #9
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end26

if.then12:                                        ; preds = %if.end9
  %14 = ptrtoint ptr %call10 to i32
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %14, label %do.body [
    i32 -512, label %if.then12.out_ilock_crit_edge
    i32 -4, label %if.then12.out_ilock_crit_edge137
    i32 524289, label %if.then12.out_ilock_crit_edge138
    i32 -28, label %if.then12.out_ilock_crit_edge139
    i32 -122, label %if.then12.out_ilock_crit_edge140
  ]

if.then12.out_ilock_crit_edge140:                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

if.then12.out_ilock_crit_edge139:                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

if.then12.out_ilock_crit_edge138:                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

if.then12.out_ilock_crit_edge137:                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

if.then12.out_ilock_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ilock

do.body:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %16 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %14 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_sync_dquot_helper, i32 noundef 616, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %out_ilock

if.end26:                                         ; preds = %if.end9
  %dqio_sem = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31, i32 1
  tail call void @down_write(ptr noundef %dqio_sem) #9
  %call.i = tail call i32 @__ocfs2_sync_dquot(ptr noundef %dquot, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp29 = icmp slt i32 %call.i, 0
  br i1 %cmp29, label %if.then31, label %if.end26.if.end59_crit_edge

if.end26.if.end59_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then31:                                        ; preds = %if.end26
  %17 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call.i, label %do.body48 [
    i32 -512, label %if.then31.if.end59_crit_edge
    i32 -4, label %if.then31.if.end59_crit_edge141
    i32 -28, label %if.then31.if.end59_crit_edge142
    i32 -122, label %if.then31.if.end59_crit_edge143
  ]

if.then31.if.end59_crit_edge143:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then31.if.end59_crit_edge142:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then31.if.end59_crit_edge141:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then31.if.end59_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

do.body48:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m49) #9
  %18 = ptrtoint ptr %_m49 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606846976, ptr %_m49, align 8
  %conv53 = sext i32 %call.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m49, ptr noundef nonnull @__func__.ocfs2_sync_dquot_helper, i32 noundef 622, ptr noundef nonnull @.str, i64 noundef %conv53) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m49) #9
  br label %if.end59

if.end59:                                         ; preds = %do.body48, %if.then31.if.end59_crit_edge, %if.then31.if.end59_crit_edge141, %if.then31.if.end59_crit_edge142, %if.then31.if.end59_crit_edge143, %if.end26.if.end59_crit_edge
  %call60 = call i32 @ocfs2_local_write_dquot(ptr noundef %dquot) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.end59.if.end91_crit_edge

if.end59.if.end91_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then63:                                        ; preds = %if.end59
  %19 = zext i32 %call60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call60, label %do.body80 [
    i32 -512, label %if.then63.if.end91_crit_edge
    i32 -4, label %if.then63.if.end91_crit_edge144
    i32 -28, label %if.then63.if.end91_crit_edge145
    i32 -122, label %if.then63.if.end91_crit_edge146
  ]

if.then63.if.end91_crit_edge146:                  ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then63.if.end91_crit_edge145:                  ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then63.if.end91_crit_edge144:                  ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then63.if.end91_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

do.body80:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m81) #9
  %20 = ptrtoint ptr %_m81 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 1152921504606846976, ptr %_m81, align 8
  %conv85 = sext i32 %call60 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m81, ptr noundef nonnull @__func__.ocfs2_sync_dquot_helper, i32 noundef 626, ptr noundef nonnull @.str, i64 noundef %conv85) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m81) #9
  br label %if.end91

if.end91:                                         ; preds = %do.body80, %if.then63.if.end91_crit_edge, %if.then63.if.end91_crit_edge144, %if.then63.if.end91_crit_edge145, %if.then63.if.end91_crit_edge146, %if.end59.if.end91_crit_edge
  call void @up_write(ptr noundef %dqio_sem) #9
  %call94 = call i32 @ocfs2_commit_trans(ptr noundef %5, ptr noundef %call10) #9
  br label %out_ilock

out_ilock:                                        ; preds = %if.end91, %do.body, %if.then12.out_ilock_crit_edge, %if.then12.out_ilock_crit_edge137, %if.then12.out_ilock_crit_edge138, %if.then12.out_ilock_crit_edge139, %if.then12.out_ilock_crit_edge140
  %status.0 = phi i32 [ %call60, %if.end91 ], [ %14, %if.then12.out_ilock_crit_edge ], [ %14, %if.then12.out_ilock_crit_edge137 ], [ %14, %if.then12.out_ilock_crit_edge138 ], [ %14, %if.then12.out_ilock_crit_edge139 ], [ %14, %if.then12.out_ilock_crit_edge140 ], [ %14, %do.body ]
  call void @ocfs2_unlock_global_qf(ptr noundef %3, i32 noundef 1)
  br label %out

out:                                              ; preds = %out_ilock, %if.end.out_crit_edge, %entry.out_crit_edge
  %status.1 = phi i32 [ 0, %entry.out_crit_edge ], [ %call6, %if.end.out_crit_edge ], [ %status.0, %out_ilock ]
  ret i32 %status.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_sync_dquot_helper(i32 noundef %dq_id, i32 noundef %dq_type, i32 noundef %type, ptr noundef %s_id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_sync_dquot_helper, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_sync_dquot_helper, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !98

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !99

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !121
  %call42 = tail call i32 @__traceiter_ocfs2_sync_dquot_helper(ptr noundef null, i32 noundef %dq_id, i32 noundef %dq_type, i32 noundef %type, ptr noundef %s_id) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !99

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_sync_dquot_helper, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_sync_dquot_helper, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_sync_dquot_helper.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_sync_dquot_helper.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2027, ptr noundef nonnull @.str.11) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
declare dso_local ptr @ocfs2_start_trans(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_local_write_dquot(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_commit_trans(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_sync_dquot_helper(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_acquire_dquot(i32 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_acquire_dquot, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_acquire_dquot, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !98

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !99

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %call42 = tail call i32 @__traceiter_ocfs2_acquire_dquot(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !124
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !99

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_acquire_dquot, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_acquire_dquot, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_acquire_dquot.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_acquire_dquot.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2033, ptr noundef nonnull @.str.11) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtree_read_dquot(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_extend_no_holes(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_create_local_dquot(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_acquire_dquot(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_release_dquot(i32 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_release_dquot, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_release_dquot, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !98

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !99

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !125
  %call42 = tail call i32 @__traceiter_ocfs2_release_dquot(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !99

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_release_dquot, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_release_dquot, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_release_dquot.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_release_dquot.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2031, ptr noundef nonnull @.str.11) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
declare dso_local i32 @ocfs2_local_release_dquot(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_release_dquot(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_mark_dquot_dirty(i32 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_mark_dquot_dirty, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_mark_dquot_dirty, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !98

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !99

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !127
  %call42 = tail call i32 @__traceiter_ocfs2_mark_dquot_dirty(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !128
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !99

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_mark_dquot_dirty, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_mark_dquot_dirty, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_mark_dquot_dirty.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_mark_dquot_dirty.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2037, ptr noundef nonnull @.str.11) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
declare dso_local i32 @__traceiter_ocfs2_mark_dquot_dirty(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_write_dquot(i32 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_dquot, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_write_dquot, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !98

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !99

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !129
  %call42 = tail call i32 @__traceiter_ocfs2_write_dquot(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !99

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_dquot, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_dquot, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_write_dquot.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_write_dquot.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2029, ptr noundef nonnull @.str.11) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
declare dso_local i32 @__traceiter_ocfs2_write_dquot(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_commit_info(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_get_next_id(i32 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_get_next_id, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_get_next_id, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !98

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !99

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %call42 = tail call i32 @__traceiter_ocfs2_get_next_id(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !132
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !99

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_get_next_id, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_get_next_id, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_get_next_id.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_get_next_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2035, ptr noundef nonnull @.str.11) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
declare dso_local i32 @qtree_get_next_id(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_get_next_id(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !21, !22, !24, !25, !27, !29, !31, !32, !33, !34, !36, !37, !39, !41, !42, !44, !45, !47, !49, !50, !52, !54, !55, !57, !59, !60, !62, !63, !65, !67, !69, !70, !72, !74, !75, !77, !79, !81}
!llvm.named.register.sp = !{!82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @ocfs2_global_ops, !1, !"ocfs2_global_ops", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/quota_global.c", i32 128, i32 35}
!2 = !{ptr @__func__.ocfs2_read_quota_phys_block, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ocfs2/quota_global.c", i32 160, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__func__.ocfs2_quota_read, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/quota_global.c", i32 191, i32 5}
!7 = !{ptr @__func__.ocfs2_quota_write, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ocfs2/quota_global.c", i32 230, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/quota_global.c", i32 236, i32 3}
!12 = !{ptr @__func__.ocfs2_global_read_info, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ocfs2/quota_global.c", i32 353, i32 3}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ocfs2/quota_global.c", i32 385, i32 3}
!17 = !{ptr @ocfs2_global_read_info.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/quota_global.c", i32 402, i32 2}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ocfs2_global_read_info.__key.6, !18, !"__key", i1 false, i1 false}
!21 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__func__.__ocfs2_sync_dquot, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ocfs2/quota_global.c", i32 498, i32 4}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/quota_global.c", i32 567, i32 3}
!27 = !{ptr @ocfs2_quota_operations, !28, !"ocfs2_quota_operations", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/quota_global.c", i32 1007, i32 31}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1982, i32 1}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!33 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!39 = !{ptr @__func__.__ocfs2_global_write_info, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ocfs2/quota_global.c", i32 436, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1984, i32 1}
!44 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!45 = !{ptr @__func__.ocfs2_sync_dquot_helper, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ocfs2/quota_global.c", i32 616, i32 3}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2008, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = !{ptr @__func__.ocfs2_acquire_dquot, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ocfs2/quota_global.c", i32 872, i32 3}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2033, i32 1}
!54 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!55 = !{ptr @__func__.ocfs2_release_dquot, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/quota_global.c", i32 752, i32 3}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2031, i32 1}
!59 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/quotaops.h", i32 49, i32 2}
!62 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/linux/quotaops.h", i32 50, i32 2}
!65 = !{ptr @__func__.ocfs2_mark_dquot_dirty, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ocfs2/quota_global.c", i32 944, i32 3}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2037, i32 1}
!69 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!70 = !{ptr @__func__.ocfs2_write_dquot, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ocfs2/quota_global.c", i32 671, i32 3}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2029, i32 1}
!74 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!75 = !{ptr @__func__.ocfs2_write_info, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ocfs2/quota_global.c", i32 979, i32 3}
!77 = !{ptr @__func__.ocfs2_get_next_id, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ocfs2/quota_global.c", i32 903, i32 3}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2035, i32 1}
!81 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!82 = !{!"sp"}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"make_kqid: %agg.result"}
!94 = distinct !{!94, !"make_kqid"}
!95 = !{i64 2152502350, i64 2152502836, i64 2152502387, i64 2152502443, i64 2152502477, i64 2152502501, i64 2152502542, i64 2152502563, i64 2152502591, i64 2152502625}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{i64 2161617146, i64 2161617634, i64 2161617183, i64 2161617239, i64 2161617273, i64 2161617297, i64 2161617338, i64 2161617359, i64 2161617387, i64 2161617421}
!98 = !{i64 2148330423, i64 2148330428, i64 2148330441, i64 2148330485, i64 2148330519, i64 2148330540}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i64 2159462186}
!101 = !{i64 2159462407}
!102 = !{i64 2149501730}
!103 = !{i64 2149502766}
!104 = !{!"auto-init"}
!105 = !{i64 910505, i64 910566}
!106 = !{i64 913237}
!107 = !{i64 913522}
!108 = !{i64 2152523556}
!109 = !{i64 2152523398}
!110 = !{i64 2152523726}
!111 = !{i64 2150109540}
!112 = !{i64 2154575055}
!113 = !{i64 2148514683, i64 2148514715, i64 2148514744, i64 2148514778, i64 2148514809, i64 2148514832}
!114 = !{i64 2148603788}
!115 = !{i64 2159480617}
!116 = !{i64 2159480924}
!117 = !{i64 2149123835}
!118 = !{i64 1012593, i64 1012610, i64 1012634, i64 1012660, i64 1012678}
!119 = !{i64 2149124188}
!120 = !{i64 2148505825, i64 2148505851, i64 2148505880, i64 2148505914, i64 2148505945, i64 2148505968}
!121 = !{i64 2159502699}
!122 = !{i64 2159502960}
!123 = !{i64 2159557159}
!124 = !{i64 2159557380}
!125 = !{i64 2159536387}
!126 = !{i64 2159536608}
!127 = !{i64 2159590512}
!128 = !{i64 2159590739}
!129 = !{i64 2159519784}
!130 = !{i64 2159520001}
!131 = !{i64 2159573792}
!132 = !{i64 2159574009}
